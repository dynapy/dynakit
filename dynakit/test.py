# AUTOGENERATED! DO NOT EDIT! File to edit: FE.ipynb (unless otherwise specified).

__all__ = ['Test', 'FE']

# Cell

class Test():
        """
        This Class contains set of methods which follows the
        readig of the .yaml file and changing the input parameters
        in the .key file to run Ls_Dyna accordingly.
        """

        def __init__(self,para_list):

        self.para_list = para_list

        def value_read(self,par):
            """
            This function is used to read the list in the .yaml file
            by using the identifier to recognise the variable/parameter.
            """

            self.par = par
            c = [d.get(self.par) for sublists in self.para_list.values() for d in sublists]
            value = []
            for val in c:
                if val!= None:
                    value.append(val)
            return value

# Cell
from pyDOE import lhs
import numpy as np
from scipy.stats.distributions import norm
from scipy.stats import uniform
import yaml
from qd.cae.dyna import KeyFile
import os
import sys
import pandas as pd
import subprocess
import shlex
from diversipy.hycusampling import maximin_reconstruction as maxmin
import csv

class FE():
    """
    This Class contains set of methods which performs reading of the .yaml file and replaces values of the input parameters
    with newly generated sample data sets. And then, new key files are generated for simulation.

    -----------
       INPUTS
    -----------
            settigs : Input file for FE simulations to get the user input

    """

    def __init__(self, settings):

        self.settings = settings
        self.folders_count=0
        self._get_user_input()

    def _get_user_input(self):
        """ gets the user input details from the settings.yaml file.

        Returns
        -------
        fin_dir         :   Final path of the created directory
        self.Run        :   Number of runs
        self.para_list  :   A .yaml file containing the parameters/ features/ variables for sampling with appropriate
                            values as subkeys in the same file.
        self.key        :   .key file containg the initial simulation details.
        """

        with open(self.settings,'r') as file:
            inp = yaml.load(file, Loader=yaml.FullLoader)
        inp_vals=[*inp.values()]
        inp_keys=[*inp.keys()]

        req=['Newfolder_name','Runs','key','config']

        for names in req:
            if names not in inp_keys:
                raise Exception(names +" not in settings.yaml file")
            if inp[names] == None:
                raise Exception(names +" value not in settings.yaml file")

        if isinstance(inp['Runs'], int) == True:
            self.Run=inp['Runs']
            self.int='yes'
            self.Flag=1
        elif isinstance(inp['Runs'], str) == True:
            self.DOE=pd.read_csv(inp['Runs'])
            self.int='no'
            self.Run=len(self.DOE)
            self.Flag=1
        else:
            print('Enter either a Integer or a .csv Input')

        dir_main=None
        if 'Directory' in inp_keys:
            dir_main=inp['Directory']
        file_name=inp['Newfolder_name']
        self.key=inp['key']
        self.para_list=inp['config']

        if dir_main == None:
            current_directory = os.getcwd()
            self.fin_dir = os.path.join(current_directory,file_name)
            self.dyna_dir = os.path.join(self.fin_dir,'.dynakit')
        else:
            self.fin_dir = os.path.join(dir_main,file_name)
            self.dyna_dir = os.path.join(self.fin_dir,'.dynakit')
        try:
            os.mkdir(self.fin_dir)
            os.mkdir(self.dyna_dir)
        except OSError as err:
            print('Adding new samples to the existing directory')
            self.Flag=0
        self._set_keypath()

        return self.fin_dir , self.Run , self.key , self.para_list

    def _set_keypath(self):
        """ changes the *INCLUDE PATH card in the key file

        Parameters
        ----------
        dir_main : path of the directory the other .k files are present
        file_name: Name of the newly created file

        Returns
        -------
        self.newkey : a new key file with an updated file path.

        """
        k = KeyFile(self.key)
        include_path = k["*INCLUDE_PATH"][0]
        path_s=self.fin_dir
        include_path[0] =path_s.replace('\\','/')
        curr_path=os.getcwd()
        os.chdir(self.fin_dir)
        k.save("upd_key.key")
        os.chdir(curr_path)
        self.newkey ='upd_key.key'

        return self.newkey

    def Read_config(self):
        """ converts the .yaml file to a dictionary

        Parameters
        ----------
        self.para_list : the config.yaml file  with the user inputs

        Returns
        -------
        z : the .yaml file in dictionary format

        """
        with open(self.para_list,'r') as file:
            parameter_list  = yaml.load(file, Loader=yaml.FullLoader)
        dynParams = {k: v for k, v in parameter_list['parameters'].items() if parameter_list['parameters'][k]['type'] == 'dynaParameter'}
        self.dynaParameters = pd.DataFrame.from_dict(dynParams)

        return self.dynaParameters


    def get_samples(self):
        """ samples the data based on the .yaml file using normal distribution and lhs library

        Parameters
        ----------
        vars      : values assigned to the sub keys in the .yaml file
        self.Run  : Number of samples required

        Returns
        -------
        Data   : samples matrix in a list

        """
        os.chdir(self.dyna_dir)
        if self.int=='yes':
            self.col_names=self.dynaParameters.loc['parameter']
        elif self.int=='no':
            self.col_names=self.DOE.columns

        if self.int =='yes':
            self.DOE = lhs(len(self.dynaParameters.loc['parameter']),samples = self.Run)
            save_file=pd.DataFrame(self.DOE)
            os.chdir(self.dyna_dir)
            save_file.to_csv('DOE.csv', index=False)
            minimum_val = self.dynaParameters.loc['min']
            maximum_val = self.dynaParameters.loc['max']
            for i in range(0,len(self.dynaParameters.loc['parameter'])):
                self.DOE[:,i]=uniform(minimum_val[i], maximum_val[i]-minimum_val[i]).ppf(self.DOE[:, i])

        elif self.int=='no':
            os.chdir(self.dyna_dir)
            df=self.DOE
            df.to_csv('DOE.csv', index=False)
            self.DOE=np.array(self.DOE)

        return self.DOE

    def add_samples(self):
        os.chdir(self.dyna_dir)
        if os.path.isfile('DOE.csv'):
            old_DOE=pd.read_csv('DOE.csv')
        else:
            print('No preexisting DOE found!')
        if self.int=='yes':
            self.col_names=self.dynaParameters.loc['parameter']
        elif self.int=='no':
            self.col_names=self.DOE.columns
        if self.int=='yes':
            data_add = lhs(len(self.dynaParameters.loc['parameter']), samples=self.Run)
            self.DOE = maxmin(self.Run,len(self.dynaParameters.loc['parameter']), num_steps=None, initial_points=data_add, existing_points=old_DOE, use_reflection_edge_correction=None, dist_matrix_function=None, callback=None)
            df=pd.DataFrame(self.DOE)
            os.chdir(self.dyna_dir)
            df.to_csv('DOE.csv', mode='a', header=False, index=False)
            min_newsample_val = self.dynaParameters.loc['min']
            max_newsample_val = self.dynaParameters.loc['max']
            for i in range(0,len(self.dynaParameters.loc['parameter'])):
                self.DOE[:,i]=uniform(min_newsample_val[i], max_newsample_val[i]-min_newsample_val[i]).ppf(self.DOE[:, i])
        elif self.int=='no':
            os.chdir(self.dyna_dir)
            df=self.DOE
            df.to_csv('DOE.csv', mode='a', header=False, index=False)
            self.DOE=np.array(self.DOE)

        return self.DOE

    def generate_key_file(self):
        """ Generate the new updated .key file and a FE_Parameters.yaml file containing respective sampled values
        for each parameters in new folders.

        Parameters
        ----------
        self.newkey      : a new key file with an updated file path.
        fin_dir          : final path of the created directory
        self.Run         : Number of samples required
        self.para_num    : number of parameters/variables/features
        self.para_names  : Names of parameters/variables/features
        Data             : samples matrix in a list

        Returns
        -------
        Data   : samples matrix in a list

        """
        os.chdir(self.fin_dir)
        kf=KeyFile(self.newkey)
        key_parameters=kf["*PARAMETER"][0]
        key_parameters_array=np.array(kf["*PARAMETER"][0])

        # Creating a dictionary with key and it's values:
        key_dict={}
        R_index=[]
        for i in range(0,len(key_parameters_array)):
            if key_parameters_array[i].startswith('R'):
                R_index.append(i)
                f=key_parameters_array[i].split(' ')
                key_dict[f[1]]=f[-1]
        par_lis=[*key_dict.keys()]
        os.chdir(self.fin_dir)
        self.folders_count =len([name for name in os.listdir(os.getcwd()) if name.startswith('Run')])


        for run in range(0,self.Run):

            os.mkdir('Run_'+str(run+self.folders_count+1))
            os.chdir('Run_'+str(run+self.folders_count+1))
            FE_Parameters = {}

            for para in range(0,len(self.col_names)):

                for i in range(0,len(R_index)):

                    if par_lis[i] == self.col_names[para]:

                        key_parameters[i+1,1] = self.DOE[run,para]
                        kf.save("run_main_{}.key".format(str(run+self.folders_count+1)))
                        FE_Parameters[par_lis[i]] =  key_parameters[i+1,1]
                    with open('simulation_Parameters.yaml','w') as FE_file:
                        yaml.dump(FE_Parameters,FE_file,default_flow_style = False)
            os.chdir(self.fin_dir)


    def get_simulation_files(self):
        """
        Runs all the methods of pre-process class

        """
        self.Read_config()
        if self.Flag==1:
            self.get_samples()
        elif self.Flag==0:
            self.add_samples()
        self.generate_key_file()
