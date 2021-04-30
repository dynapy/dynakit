# AUTOGENERATED! DO NOT EDIT! File to edit: 10_FE.ipynb (unless otherwise specified).

__all__ = ['FE']

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
        self._read_user_input()

    def _read_user_input(self):
        """ gets the user input details from the settings.yaml file.

        Returns
        -------
        fin_dir         :   Final path of the created directory
        self.Run        :   Number of runs
        self.para_list  :   A .yaml file containing the parameters/ features/ variables for sampling with appropriate
                            values as subkeys in the same file.
        self.key        :   .key file containg the initial simulation details.
        """

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

        req=['baseline_directory','simulations']

        for names in req:
            if names not in inp_keys:
                raise Exception(names +" not in dynakit_FE.yaml file")
            if inp[names] == None:
                raise Exception(names +" value not in dynakit_FE.yaml file")

        if isinstance(inp['simulations'], int) == True:
            self.Run=inp['simulations']
            self.int='yes'
            self.Flag=1
        elif isinstance(inp['simulations'], str) == True:
            self.DOE=pd.read_csv(inp['simulations'])
            self.int='no'
            self.Run=len(self.DOE)
            self.Flag=1
        else:
            print('Enter either a Integer or a .csv Input')

        self.cwd=os.getcwd()

        base_dir=inp['baseline_directory']
        self.base_dir=os.path.abspath(base_dir)
        self.fin_dir=os.path.dirname(self.base_dir)


        self.basename=[name for name in os.listdir(self.fin_dir) if not (name.startswith('.'))][0]

        self.dyna_dir = os.path.join(self.fin_dir,'.dynakit')
        self.para_list='FE_parameters.yaml'


        self.basepath=os.path.join(self.fin_dir,self.basename)
        self.key=[name for name in os.listdir(self.basepath) if name.endswith(".key")][0]


        self.basepath=os.path.join(self.fin_dir,self.basename)
        self.fol_name=self.basename.split('_')[0]

        if os.path.exists(self.dyna_dir):
            if [name for name in os.listdir(self.dyna_dir) if name.endswith(".csv")] == []:
                os.rmdir(self.dyna_dir)

        try:
            os.mkdir(self.dyna_dir)
        except OSError as err:
            print('Adding new samples to the existing directory')
            self.Flag=0

        return self.fin_dir , self.Run , self.key , self.para_list


    def read_parameters(self):
        """ converts the .yaml file to a dictionary

        Parameters
        ----------
        self.para_list : the config.yaml file  with the user inputs

        Returns
        -------
        z : the .yaml file in dictionary format

        """
        os.chdir(self.fin_dir)
        with open(self.para_list,'r') as file:
            parameter_list  = yaml.load(file, Loader=yaml.FullLoader)
        dynParams = {k: v for k, v in parameter_list['parameters'].items() if parameter_list['parameters'][k]['type'] == 'dynaParameter'}
        self.dynaParameters = pd.DataFrame.from_dict(dynParams)

        onparams = {k: v for k, v in dynParams.items() if dynParams[k]['status'] == True }
        self.new_par=pd.DataFrame.from_dict(onparams)
        on=self.new_par.loc['parameter']
        self.on_params=on.to_list()

        return self.dynaParameters


    def get_samples(self):
        """ samples the data based on the .yaml file using normal / uniform  distribution and lhs library

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

            DOE_s = lhs(len(self.new_par.loc['parameter']),samples = self.Run)
            j=0
            self.DOE=np.zeros((self.Run,len(self.dynaParameters.loc['parameter'])))
            for i in range(0,len(self.dynaParameters.loc['parameter'])):
                if self.dynaParameters.loc['parameter'][i] in self.on_params:
                    self.DOE[:,i]=DOE_s[:,j]
                    j+=1
                else:
                    self.DOE[:,i]=1

            save_file=pd.DataFrame(self.DOE)
            os.chdir(self.dyna_dir)
            save_file.to_csv('DOE.csv', index=False)
            minimum_val = self.dynaParameters.loc['min']
            maximum_val = self.dynaParameters.loc['max']

            for j in range(0,len(self.dynaParameters.loc['parameter'])):
                if self.dynaParameters.loc['parameter'][j] in self.on_params:
                    if self.dynaParameters.loc['distribution'][j]=='Uniform':
                        self.DOE[:,j]=uniform(self.dynaParameters.loc['min'][j], self.dynaParameters.loc['max'][j] - self.dynaParameters.loc['min'][j]).ppf(self.DOE[:, j])
                    elif self.dynaParameters.loc['distribution'][j]=='Normal':
                        self.DOE[:, j] = norm(loc=self.dynaParameters.loc['mean'][j], scale=self.dynaParameters.loc['SD'][j]).ppf(self.DOE[:, j])
                else:
                    self.DOE[:,j]=self.dynaParameters.loc['default'][j]

        elif self.int=='no':
            os.chdir(self.dyna_dir)
            df=self.DOE
            df.to_csv('DOE.csv', index=False)
            self.DOE=np.array(self.DOE)

        return self.DOE

    def add_samples(self):
        """ adds samples of the data based on the .yaml file using normal / uniform distribution and lhs library

        Parameters
        ----------
        vars      : values assigned to the sub keys in the .yaml file
        self.Run  : Number of samples required
        self.fin_dir     : final path of the created directory

        Returns
        -------
        Data   : samples matrix in a list

        """
        os.chdir(self.cwd)
        os.chdir(self.fin_dir)
        self.folders_count =len([name for name in os.listdir(os.getcwd()) if name.startswith(self.fol_name)])-1
        os.chdir(self.dyna_dir)

        if os.path.isfile('DOE.csv'):
            old_DOE_s=pd.read_csv('DOE.csv')
        else:
            print('No preexisting DOE found!')

        if self.int=='yes':
            self.col_names=self.dynaParameters.loc['parameter']
        elif self.int=='no':
            self.col_names=self.DOE.columns
        if self.int=='yes':
            old_DOE=np.zeros((self.folders_count,len(self.new_par.loc['parameter'])))
            old=old_DOE_s.values
            j=0
            for i in range(0,len(self.dynaParameters.loc['parameter'])):
                if self.dynaParameters.loc['parameter'][i] in self.on_params:
                    old_DOE[:,j]=old[:,i]
                    j+=1
            data_add=lhs(len(self.new_par.loc['parameter']),samples = self.Run)
            DOE_new_add= maxmin(self.Run,len(self.new_par.loc['parameter']), num_steps=None, initial_points=data_add, existing_points=old_DOE, use_reflection_edge_correction=None, dist_matrix_function=None, callback=None)

            new_DOE=np.zeros((self.Run,len(self.dynaParameters.loc['parameter'])))
            j=0
            for i in range(0,len(self.dynaParameters.loc['parameter'])):
                if self.dynaParameters.loc['parameter'][i] in self.on_params:
                    new_DOE[:,i]=DOE_new_add[:,j]
                    j+=1
                else:
                    new_DOE[:,i]=1
            df=pd.DataFrame(new_DOE)

            os.chdir(self.dyna_dir)
            df.to_csv('DOE.csv', mode='a', header=False, index=False)

            self.DOE= pd.read_csv('DOE.csv')

            for j in range(0,len(self.dynaParameters.loc['parameter'])):
                if self.dynaParameters.loc['parameter'][j] in self.on_params:
                    if self.dynaParameters.loc['distribution'][j]=='Uniform':
                        self.DOE.values[:,j]=uniform(self.dynaParameters.loc['min'][j], self.dynaParameters.loc['max'][j] - self.dynaParameters.loc['min'][j]).ppf(self.DOE.values[:, j])
                    elif self.dynaParameters.loc['distribution'][j]=='Normal':
                        self.DOE.values[:, j] = norm(loc=self.dynaParameters.loc['mean'][j], scale=self.dynaParameters.loc['SD'][j]).ppf(self.DOE.values[:, j])
                else:
                    self.DOE.values[:,j]=self.dynaParameters.loc['default'][j]

            self.DOE=self.DOE.values

        elif self.int=='no':
            os.chdir(self.dyna_dir)
            df=self.DOE
            df.to_csv('DOE.csv', mode='a', header=False, index=False)
            self.DOE=np.array(self.DOE)

        return self.DOE

    def generate_keyfile(self):
        """ Generate the new updated .key file and a FE_Parameters.yaml file containing respective sampled values
        for each parameters in new folders.

        Parameters
        ----------
        self.newkey      : a new key file with an updated file path.
        self.fin_dir     : final path of the created directory
        self.Run         : Number of samples required
        self.para_num    : number of parameters/variables/features
        self.para_names  : Names of parameters/variables/features
        self.DOE         : samples matrix in a list

        Returns
        -------
        fldolder in the directory

        """
        os.chdir(self.basepath)
        kf=KeyFile(self.key)
        os.chdir(self.fin_dir)
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
        self.folders_count =len([name for name in os.listdir(os.getcwd()) if name.startswith(self.fol_name)])


        for run in range(0,self.Run):

            os.mkdir('{}_{:03}'.format(self.fol_name,(run+self.folders_count)))
            os.chdir('{}_{:03}'.format(self.fol_name,(run+self.folders_count)))
            FE_Parameters = {}

            for para in range(0,len(self.col_names)):

                for i in range(0,len(R_index)):

                    if par_lis[i] == self.col_names[para]:

                        key_parameters[i+1,1] = self.DOE[run+self.folders_count-1,para]
                        kf.save("run_main_{:03}.key".format((run+self.folders_count)))
                        FE_Parameters[par_lis[i]] =  key_parameters[i+1,1]
                    with open('simulation_Parameters.yaml','w') as FE_file:
                        yaml.dump(FE_Parameters,FE_file,default_flow_style = False)
            os.chdir(self.fin_dir)

    def get_simulation_files(self):
        """
        Runs all the methods of pre-process class

        """
        self.read_parameters()
        if self.Flag==1:
            self.get_samples()
        elif self.Flag==0:
            self.add_samples()
        self.generate_keyfile()
