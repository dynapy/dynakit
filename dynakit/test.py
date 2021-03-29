# AUTOGENERATED! DO NOT EDIT! File to edit: 00_core.ipynb (unless otherwise specified).

__all__ = ['Test']

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