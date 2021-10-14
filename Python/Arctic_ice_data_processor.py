# -*- coding: utf-8 -*-
"""
Created on Wed Sep 15 16:17:49 2021

This is the function which defines the Arctic routes and extracts the corresponding sea ice data.
The ice data was previously decomposed into csv files using a MATLAB function which is not listed or used here,
the model used for the sea ice projections is the GFDL 4 model and it was chosen because its geospatial aligns with how
the Arctic routes are designed here. 

@author: lambe
"""
import numpy as np 
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import scipy 
import math 

# Firstly, the model system from the main structure must be imported here

def Ice_processor(g_POLARIS_Risk_indices_df, g_input_assumptions):

    #Now the ice data can be extracted from the csv files, there is a csv file
    #which pertains to each month and this module processes it into a cogent dataframe
    
    if g_input_assumptions['SSP119'].item() == 1:
        
        #This is for the year 2020
        
        SIT_Jan_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Jan_t0_sit_projection.csv", header = None)
        SIT_Feb_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Feb_t0_sit_projection.csv", header = None)
        SIT_March_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_March_t0_sit_projection.csv", header = None)
        SIT_April_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_April_t0_sit_projection.csv", header = None)
        SIT_May_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_May_t0_sit_projection.csv", header = None)
        SIT_June_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_June_t0_sit_projection.csv", header = None)
        SIT_July_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_July_t0_sit_projection.csv", header = None)
        SIT_Aug_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_August_t0_sit_projection.csv", header = None)
        SIT_Sep_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_September_t0_sit_projection.csv", header = None)
        SIT_Oct_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_October_t0_sit_projection.csv", header = None)
        SIT_Nov_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_November_t0_sit_projection.csv", header = None)
        SIT_Dec_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_December_t0_sit_projection.csv", header = None)
        
        SIT_t0 = np.vstack((SIT_Jan_t0, SIT_Feb_t0, SIT_March_t0, 
                            SIT_April_t0, SIT_May_t0, SIT_June_t0, 
                            SIT_July_t0, SIT_Aug_t0, SIT_Sep_t0, 
                            SIT_Oct_t0, SIT_Nov_t0, SIT_Dec_t0))
        
        #The year 2035
        
        SIT_Jan_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Jan_tm_sit_projection.csv", header = None)
        SIT_Feb_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Feb_tm_sit_projection.csv", header = None)
        SIT_March_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_March_tm_sit_projection.csv", header = None)
        SIT_April_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_April_tm_sit_projection.csv", header = None)
        SIT_May_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_May_tm_sit_projection.csv", header = None)
        SIT_June_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_June_tm_sit_projection.csv", header = None)
        SIT_July_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_July_tm_sit_projection.csv", header = None)
        SIT_Aug_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_August_tm_sit_projection.csv", header = None)
        SIT_Sep_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_September_tm_sit_projection.csv", header = None)
        SIT_Oct_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_October_tm_sit_projection.csv", header = None)
        SIT_Nov_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_November_tm_sit_projection.csv", header = None)
        SIT_Dec_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_December_tm_sit_projection.csv", header = None)
        
        SIT_tm = np.vstack((SIT_Jan_tm, SIT_Feb_tm, SIT_March_tm, 
                            SIT_April_tm, SIT_May_tm, SIT_June_tm, 
                            SIT_July_tm, SIT_Aug_tm, SIT_Sep_tm, 
                            SIT_Oct_tm, SIT_Nov_tm, SIT_Dec_tm))
        
        #The year 2050
        
        SIT_Jan_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Jan_tf_sit_projection.csv", header = None)
        SIT_Feb_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Feb_tf_sit_projection.csv", header = None)
        SIT_March_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_March_tf_sit_projection.csv", header = None)
        SIT_April_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_April_tf_sit_projection.csv", header = None)
        SIT_May_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_May_tf_sit_projection.csv", header = None)
        SIT_June_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_June_tf_sit_projection.csv", header = None)
        SIT_July_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_July_tf_sit_projection.csv", header = None)
        SIT_Aug_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_August_tf_sit_projection.csv", header = None)
        SIT_Sep_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_September_tf_sit_projection.csv", header = None)
        SIT_Oct_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_October_tf_sit_projection.csv", header = None)
        SIT_Nov_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_November_tf_sit_projection.csv", header = None)
        SIT_Dec_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_December_tf_sit_projection.csv", header = None)
        
        SIT_tf = np.vstack((SIT_Jan_tf, SIT_Feb_tf, SIT_March_tf, 
                            SIT_April_tf, SIT_May_tf, SIT_June_tf, 
                            SIT_July_tf, SIT_Aug_tf, SIT_Sep_tf, 
                            SIT_Oct_tf, SIT_Nov_tf, SIT_Dec_tf))
        
        #Repeat this process for sea ice concentration
        
        SIC_Jan_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Jan_t0_sic_projection.csv", header = None)
        SIC_Feb_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Feb_t0_sic_projection.csv", header = None)
        SIC_March_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_March_t0_sic_projection.csv", header = None)
        SIC_April_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_April_t0_sic_projection.csv", header = None)
        SIC_May_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_May_t0_sic_projection.csv", header = None)
        SIC_June_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_June_t0_sic_projection.csv", header = None)
        SIC_July_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_July_t0_sic_projection.csv", header = None)
        SIC_Aug_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_August_t0_sic_projection.csv", header = None)
        SIC_Sep_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_September_t0_sic_projection.csv", header = None)
        SIC_Oct_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_October_t0_sic_projection.csv", header = None)
        SIC_Nov_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_November_t0_sic_projection.csv", header = None)
        SIC_Dec_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_December_t0_sic_projection.csv", header = None)
        
        SIC_t0 = np.vstack((SIC_Jan_t0, SIC_Feb_t0, SIC_March_t0, 
                            SIC_April_t0, SIC_May_t0, SIC_June_t0, 
                            SIC_July_t0, SIC_Aug_t0, SIC_Sep_t0, 
                            SIC_Oct_t0, SIC_Nov_t0, SIC_Dec_t0))
        
        #The year 2035
        
        SIC_Jan_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Jan_tm_sic_projection.csv", header = None)
        SIC_Feb_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Feb_tm_sic_projection.csv", header = None)
        SIC_March_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_March_tm_sic_projection.csv", header = None)
        SIC_April_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_April_tm_sic_projection.csv", header = None)
        SIC_May_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_May_tm_sic_projection.csv", header = None)
        SIC_June_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_June_tm_sic_projection.csv", header = None)
        SIC_July_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_July_tm_sic_projection.csv", header = None)
        SIC_Aug_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_August_tm_sic_projection.csv", header = None)
        SIC_Sep_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_September_tm_sic_projection.csv", header = None)
        SIC_Oct_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_October_tm_sic_projection.csv", header = None)
        SIC_Nov_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_November_tm_sic_projection.csv", header = None)
        SIC_Dec_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_December_tm_sic_projection.csv", header = None)
        
        SIC_tm = np.vstack((SIC_Jan_tm, SIC_Feb_tm, SIC_March_tm, 
                            SIC_April_tm, SIC_May_tm, SIC_June_tm, 
                            SIC_July_tm, SIC_Aug_tm, SIC_Sep_tm, 
                            SIC_Oct_tm, SIC_Nov_tm, SIC_Dec_tm))
        
        #The year 2050
        
        SIC_Jan_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Jan_tf_sic_projection.csv", header = None)
        SIC_Feb_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_Feb_tf_sic_projection.csv", header = None)
        SIC_March_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_March_tf_sic_projection.csv", header = None)
        SIC_April_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_April_tf_sic_projection.csv", header = None)
        SIC_May_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_May_tf_sic_projection.csv", header = None)
        SIC_June_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_June_tf_sic_projection.csv", header = None)
        SIC_July_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_July_tf_sic_projection.csv", header = None)
        SIC_Aug_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_August_tf_sic_projection.csv", header = None)
        SIC_Sep_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_September_tf_sic_projection.csv", header = None)
        SIC_Oct_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_October_tf_sic_projection.csv", header = None)
        SIC_Nov_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_November_tf_sic_projection.csv", header = None)
        SIC_Dec_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP119_December_tf_sic_projection.csv", header = None)
        
        SIC_tf = np.vstack((SIC_Jan_tf, SIC_Feb_tf, SIC_March_tf, 
                            SIC_April_tf, SIC_May_tf, SIC_June_tf, 
                            SIC_July_tf, SIC_Aug_tf, SIC_Sep_tf, 
                            SIC_Oct_tf, SIC_Nov_tf, SIC_Dec_tf))
            
    elif g_input_assumptions['SSP126'].item() == 1:
            
        SIT_Jan_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Jan_t0_sit_projection.csv", header = None)
        SIT_Feb_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Feb_t0_sit_projection.csv", header = None)
        SIT_March_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_March_t0_sit_projection.csv", header = None)
        SIT_April_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_April_t0_sit_projection.csv", header = None)
        SIT_May_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_May_t0_sit_projection.csv", header = None)
        SIT_June_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_June_t0_sit_projection.csv", header = None)
        SIT_July_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_July_t0_sit_projection.csv", header = None)
        SIT_Aug_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_August_t0_sit_projection.csv", header = None)
        SIT_Sep_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_September_t0_sit_projection.csv", header = None)
        SIT_Oct_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_October_t0_sit_projection.csv", header = None)
        SIT_Nov_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_November_t0_sit_projection.csv", header = None)
        SIT_Dec_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_December_t0_sit_projection.csv", header = None)
        
        SIT_t0 = np.vstack((SIT_Jan_t0, SIT_Feb_t0, SIT_March_t0, 
                            SIT_April_t0, SIT_May_t0, SIT_June_t0, 
                            SIT_July_t0, SIT_Aug_t0, SIT_Sep_t0, 
                            SIT_Oct_t0, SIT_Nov_t0, SIT_Dec_t0))
    
        SIT_Jan_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Jan_tm_sit_projection.csv", header = None)
        SIT_Feb_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Feb_tm_sit_projection.csv", header = None)
        SIT_March_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_March_tm_sit_projection.csv", header = None)
        SIT_April_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_April_tm_sit_projection.csv", header = None)
        SIT_May_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_May_tm_sit_projection.csv", header = None)
        SIT_June_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_June_tm_sit_projection.csv", header = None)
        SIT_July_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_July_tm_sit_projection.csv", header = None)
        SIT_Aug_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_August_tm_sit_projection.csv", header = None)
        SIT_Sep_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_September_tm_sit_projection.csv", header = None)
        SIT_Oct_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_October_tm_sit_projection.csv", header = None)
        SIT_Nov_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_November_tm_sit_projection.csv", header = None)
        SIT_Dec_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_December_tm_sit_projection.csv", header = None)
        
        SIT_tm = np.vstack((SIT_Jan_tm, SIT_Feb_tm, SIT_March_tm, 
                            SIT_April_tm, SIT_May_tm, SIT_June_tm, 
                            SIT_July_tm, SIT_Aug_tm, SIT_Sep_tm, 
                            SIT_Oct_tm, SIT_Nov_tm, SIT_Dec_tm))
          
        SIT_Jan_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Jan_tf_sit_projection.csv", header = None)
        SIT_Feb_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Feb_tf_sit_projection.csv", header = None)
        SIT_March_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_March_tf_sit_projection.csv", header = None)
        SIT_April_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_April_tf_sit_projection.csv", header = None)
        SIT_May_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_May_tf_sit_projection.csv", header = None)
        SIT_June_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_June_tf_sit_projection.csv", header = None)
        SIT_July_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_July_tf_sit_projection.csv", header = None)
        SIT_Aug_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_August_tf_sit_projection.csv", header = None)
        SIT_Sep_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_September_tf_sit_projection.csv", header = None)
        SIT_Oct_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_October_tf_sit_projection.csv", header = None)
        SIT_Nov_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_November_tf_sit_projection.csv", header = None)
        SIT_Dec_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_December_tf_sit_projection.csv", header = None)
        
        SIT_tf = np.vstack((SIT_Jan_tf, SIT_Feb_tf, SIT_March_tf, 
                            SIT_April_tf, SIT_May_tf, SIT_June_tf, 
                            SIT_July_tf, SIT_Aug_tf, SIT_Sep_tf, 
                            SIT_Oct_tf, SIT_Nov_tf, SIT_Dec_tf))
        
        SIC_Jan_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Jan_t0_sic_projection.csv", header = None)
        SIC_Feb_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Feb_t0_sic_projection.csv", header = None)
        SIC_March_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_March_t0_sic_projection.csv", header = None)
        SIC_April_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_April_t0_sic_projection.csv", header = None)
        SIC_May_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_May_t0_sic_projection.csv", header = None)
        SIC_June_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_June_t0_sic_projection.csv", header = None)
        SIC_July_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_July_t0_sic_projection.csv", header = None)
        SIC_Aug_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_August_t0_sic_projection.csv", header = None)
        SIC_Sep_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_September_t0_sic_projection.csv", header = None)
        SIC_Oct_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_October_t0_sic_projection.csv", header = None)
        SIC_Nov_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_November_t0_sic_projection.csv", header = None)
        SIC_Dec_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_December_t0_sic_projection.csv", header = None)
        
        SIC_t0 = np.vstack((SIC_Jan_t0, SIC_Feb_t0, SIC_March_t0, 
                            SIC_April_t0, SIC_May_t0, SIC_June_t0, 
                            SIC_July_t0, SIC_Aug_t0, SIC_Sep_t0, 
                            SIC_Oct_t0, SIC_Nov_t0, SIC_Dec_t0))   
        
        SIC_Jan_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Jan_tm_sic_projection.csv", header = None)
        SIC_Feb_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Feb_tm_sic_projection.csv", header = None)
        SIC_March_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_March_tm_sic_projection.csv", header = None)
        SIC_April_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_April_tm_sic_projection.csv", header = None)
        SIC_May_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_May_tm_sic_projection.csv", header = None)
        SIC_June_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_June_tm_sic_projection.csv", header = None)
        SIC_July_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_July_tm_sic_projection.csv", header = None)
        SIC_Aug_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_August_tm_sic_projection.csv", header = None)
        SIC_Sep_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_September_tm_sic_projection.csv", header = None)
        SIC_Oct_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_October_tm_sic_projection.csv", header = None)
        SIC_Nov_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_November_tm_sic_projection.csv", header = None)
        SIC_Dec_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_December_tm_sic_projection.csv", header = None)
        
        SIC_tm = np.vstack((SIC_Jan_tm, SIC_Feb_tm, SIC_March_tm, 
                            SIC_April_tm, SIC_May_tm, SIC_June_tm, 
                            SIC_July_tm, SIC_Aug_tm, SIC_Sep_tm, 
                            SIC_Oct_tm, SIC_Nov_tm, SIC_Dec_tm))
        
        SIC_Jan_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Jan_tf_sic_projection.csv", header = None)
        SIC_Feb_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_Feb_tf_sic_projection.csv", header = None)
        SIC_March_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_March_tf_sic_projection.csv", header = None)
        SIC_April_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_April_tf_sic_projection.csv", header = None)
        SIC_May_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_May_tf_sic_projection.csv", header = None)
        SIC_June_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_June_tf_sic_projection.csv", header = None)
        SIC_July_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_July_tf_sic_projection.csv", header = None)
        SIC_Aug_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_August_tf_sic_projection.csv", header = None)
        SIC_Sep_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_September_tf_sic_projection.csv", header = None)
        SIC_Oct_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_October_tf_sic_projection.csv", header = None)
        SIC_Nov_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_November_tf_sic_projection.csv", header = None)
        SIC_Dec_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP126_December_tf_sic_projection.csv", header = None)
        
        SIC_tf = np.vstack((SIC_Jan_tf, SIC_Feb_tf, SIC_March_tf, 
                            SIC_April_tf, SIC_May_tf, SIC_June_tf, 
                            SIC_July_tf, SIC_Aug_tf, SIC_Sep_tf, 
                            SIC_Oct_tf, SIC_Nov_tf, SIC_Dec_tf))
        
    elif g_input_assumptions['SSP245'].item() == 1:
        
        SIT_Jan_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Jan_t0_sit_projection.csv", header = None)
        SIT_Feb_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Feb_t0_sit_projection.csv", header = None)
        SIT_March_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_March_t0_sit_projection.csv", header = None)
        SIT_April_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_April_t0_sit_projection.csv", header = None)
        SIT_May_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_May_t0_sit_projection.csv", header = None)
        SIT_June_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_June_t0_sit_projection.csv", header = None)
        SIT_July_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_July_t0_sit_projection.csv", header = None)
        SIT_Aug_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_August_t0_sit_projection.csv", header = None)
        SIT_Sep_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_September_t0_sit_projection.csv", header = None)
        SIT_Oct_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_October_t0_sit_projection.csv", header = None)
        SIT_Nov_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_November_t0_sit_projection.csv", header = None)
        SIT_Dec_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_December_t0_sit_projection.csv", header = None)
        
        SIT_t0 = np.vstack((SIT_Jan_t0, SIT_Feb_t0, SIT_March_t0, 
                            SIT_April_t0, SIT_May_t0, SIT_June_t0, 
                            SIT_July_t0, SIT_Aug_t0, SIT_Sep_t0, 
                            SIT_Oct_t0, SIT_Nov_t0, SIT_Dec_t0))
    
        SIT_Jan_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Jan_tm_sit_projection.csv", header = None)
        SIT_Feb_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Feb_tm_sit_projection.csv", header = None)
        SIT_March_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_March_tm_sit_projection.csv", header = None)
        SIT_April_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_April_tm_sit_projection.csv", header = None)
        SIT_May_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_May_tm_sit_projection.csv", header = None)
        SIT_June_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_June_tm_sit_projection.csv", header = None)
        SIT_July_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_July_tm_sit_projection.csv", header = None)
        SIT_Aug_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_August_tm_sit_projection.csv", header = None)
        SIT_Sep_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_September_tm_sit_projection.csv", header = None)
        SIT_Oct_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_October_tm_sit_projection.csv", header = None)
        SIT_Nov_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_November_tm_sit_projection.csv", header = None)
        SIT_Dec_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_December_tm_sit_projection.csv", header = None)
        
        SIT_tm = np.vstack((SIT_Jan_tm, SIT_Feb_tm, SIT_March_tm, 
                            SIT_April_tm, SIT_May_tm, SIT_June_tm, 
                            SIT_July_tm, SIT_Aug_tm, SIT_Sep_tm, 
                            SIT_Oct_tm, SIT_Nov_tm, SIT_Dec_tm))
          
        SIT_Jan_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Jan_tf_sit_projection.csv", header = None)
        SIT_Feb_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Feb_tf_sit_projection.csv", header = None)
        SIT_March_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_March_tf_sit_projection.csv", header = None)
        SIT_April_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_April_tf_sit_projection.csv", header = None)
        SIT_May_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_May_tf_sit_projection.csv", header = None)
        SIT_June_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_June_tf_sit_projection.csv", header = None)
        SIT_July_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_July_tf_sit_projection.csv", header = None)
        SIT_Aug_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_August_tf_sit_projection.csv", header = None)
        SIT_Sep_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_September_tf_sit_projection.csv", header = None)
        SIT_Oct_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_October_tf_sit_projection.csv", header = None)
        SIT_Nov_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_November_tf_sit_projection.csv", header = None)
        SIT_Dec_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_December_tf_sit_projection.csv", header = None)
        
        SIT_tf = np.vstack((SIT_Jan_tf, SIT_Feb_tf, SIT_March_tf, 
                            SIT_April_tf, SIT_May_tf, SIT_June_tf, 
                            SIT_July_tf, SIT_Aug_tf, SIT_Sep_tf, 
                            SIT_Oct_tf, SIT_Nov_tf, SIT_Dec_tf))
        
        SIC_Jan_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Jan_t0_sic_projection.csv", header = None)
        SIC_Feb_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Feb_t0_sic_projection.csv", header = None)
        SIC_March_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_March_t0_sic_projection.csv", header = None)
        SIC_April_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_April_t0_sic_projection.csv", header = None)
        SIC_May_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_May_t0_sic_projection.csv", header = None)
        SIC_June_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_June_t0_sic_projection.csv", header = None)
        SIC_July_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_July_t0_sic_projection.csv", header = None)
        SIC_Aug_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_August_t0_sic_projection.csv", header = None)
        SIC_Sep_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_September_t0_sic_projection.csv", header = None)
        SIC_Oct_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_October_t0_sic_projection.csv", header = None)
        SIC_Nov_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_November_t0_sic_projection.csv", header = None)
        SIC_Dec_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_December_t0_sic_projection.csv", header = None)
        
        SIC_t0 = np.vstack((SIC_Jan_t0, SIC_Feb_t0, SIC_March_t0, 
                            SIC_April_t0, SIC_May_t0, SIC_June_t0, 
                            SIC_July_t0, SIC_Aug_t0, SIC_Sep_t0, 
                            SIC_Oct_t0, SIC_Nov_t0, SIC_Dec_t0))   
        
        SIC_Jan_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Jan_tm_sic_projection.csv", header = None)
        SIC_Feb_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Feb_tm_sic_projection.csv", header = None)
        SIC_March_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_March_tm_sic_projection.csv", header = None)
        SIC_April_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_April_tm_sic_projection.csv", header = None)
        SIC_May_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_May_tm_sic_projection.csv", header = None)
        SIC_June_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_June_tm_sic_projection.csv", header = None)
        SIC_July_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_July_tm_sic_projection.csv", header = None)
        SIC_Aug_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_August_tm_sic_projection.csv", header = None)
        SIC_Sep_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_September_tm_sic_projection.csv", header = None)
        SIC_Oct_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_October_tm_sic_projection.csv", header = None)
        SIC_Nov_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_November_tm_sic_projection.csv", header = None)
        SIC_Dec_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_December_tm_sic_projection.csv", header = None)
        
        SIC_tm = np.vstack((SIC_Jan_tm, SIC_Feb_tm, SIC_March_tm, 
                            SIC_April_tm, SIC_May_tm, SIC_June_tm, 
                            SIC_July_tm, SIC_Aug_tm, SIC_Sep_tm, 
                            SIC_Oct_tm, SIC_Nov_tm, SIC_Dec_tm))
        
        SIC_Jan_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Jan_tf_sic_projection.csv", header = None)
        SIC_Feb_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_Feb_tf_sic_projection.csv", header = None)
        SIC_March_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_March_tf_sic_projection.csv", header = None)
        SIC_April_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_April_tf_sic_projection.csv", header = None)
        SIC_May_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_May_tf_sic_projection.csv", header = None)
        SIC_June_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_June_tf_sic_projection.csv", header = None)
        SIC_July_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_July_tf_sic_projection.csv", header = None)
        SIC_Aug_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_August_tf_sic_projection.csv", header = None)
        SIC_Sep_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_September_tf_sic_projection.csv", header = None)
        SIC_Oct_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_October_tf_sic_projection.csv", header = None)
        SIC_Nov_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_November_tf_sic_projection.csv", header = None)
        SIC_Dec_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP245_December_tf_sic_projection.csv", header = None)
        
        SIC_tf = np.vstack((SIC_Jan_tf, SIC_Feb_tf, SIC_March_tf, 
                            SIC_April_tf, SIC_May_tf, SIC_June_tf, 
                            SIC_July_tf, SIC_Aug_tf, SIC_Sep_tf, 
                            SIC_Oct_tf, SIC_Nov_tf, SIC_Dec_tf))
        
    elif g_input_assumptions['SSP370'].item() == 1:
        
        SIT_Jan_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Jan_t0_sit_projection.csv", header = None)
        SIT_Feb_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Feb_t0_sit_projection.csv", header = None)
        SIT_March_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_March_t0_sit_projection.csv", header = None)
        SIT_April_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_April_t0_sit_projection.csv", header = None)
        SIT_May_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_May_t0_sit_projection.csv", header = None)
        SIT_June_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_June_t0_sit_projection.csv", header = None)
        SIT_July_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_July_t0_sit_projection.csv", header = None)
        SIT_Aug_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_August_t0_sit_projection.csv", header = None)
        SIT_Sep_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_September_t0_sit_projection.csv", header = None)
        SIT_Oct_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_October_t0_sit_projection.csv", header = None)
        SIT_Nov_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_November_t0_sit_projection.csv", header = None)
        SIT_Dec_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_December_t0_sit_projection.csv", header = None)
        
        SIT_t0 = np.vstack((SIT_Jan_t0, SIT_Feb_t0, SIT_March_t0, 
                            SIT_April_t0, SIT_May_t0, SIT_June_t0, 
                            SIT_July_t0, SIT_Aug_t0, SIT_Sep_t0, 
                            SIT_Oct_t0, SIT_Nov_t0, SIT_Dec_t0))
    
        SIT_Jan_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Jan_tm_sit_projection.csv", header = None)
        SIT_Feb_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Feb_tm_sit_projection.csv", header = None)
        SIT_March_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_March_tm_sit_projection.csv", header = None)
        SIT_April_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_April_tm_sit_projection.csv", header = None)
        SIT_May_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_May_tm_sit_projection.csv", header = None)
        SIT_June_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_June_tm_sit_projection.csv", header = None)
        SIT_July_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_July_tm_sit_projection.csv", header = None)
        SIT_Aug_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_August_tm_sit_projection.csv", header = None)
        SIT_Sep_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_September_tm_sit_projection.csv", header = None)
        SIT_Oct_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_October_tm_sit_projection.csv", header = None)
        SIT_Nov_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_November_tm_sit_projection.csv", header = None)
        SIT_Dec_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_December_tm_sit_projection.csv", header = None)
        
        SIT_tm = np.vstack((SIT_Jan_tm, SIT_Feb_tm, SIT_March_tm, 
                            SIT_April_tm, SIT_May_tm, SIT_June_tm, 
                            SIT_July_tm, SIT_Aug_tm, SIT_Sep_tm, 
                            SIT_Oct_tm, SIT_Nov_tm, SIT_Dec_tm))
          
        SIT_Jan_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Jan_tf_sit_projection.csv", header = None)
        SIT_Feb_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Feb_tf_sit_projection.csv", header = None)
        SIT_March_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_March_tf_sit_projection.csv", header = None)
        SIT_April_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_April_tf_sit_projection.csv", header = None)
        SIT_May_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_May_tf_sit_projection.csv", header = None)
        SIT_June_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_June_tf_sit_projection.csv", header = None)
        SIT_July_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_July_tf_sit_projection.csv", header = None)
        SIT_Aug_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_August_tf_sit_projection.csv", header = None)
        SIT_Sep_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_September_tf_sit_projection.csv", header = None)
        SIT_Oct_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_October_tf_sit_projection.csv", header = None)
        SIT_Nov_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_November_tf_sit_projection.csv", header = None)
        SIT_Dec_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_December_tf_sit_projection.csv", header = None)
        
        SIT_tf = np.vstack((SIT_Jan_tf, SIT_Feb_tf, SIT_March_tf, 
                            SIT_April_tf, SIT_May_tf, SIT_June_tf, 
                            SIT_July_tf, SIT_Aug_tf, SIT_Sep_tf, 
                            SIT_Oct_tf, SIT_Nov_tf, SIT_Dec_tf))
        
        SIC_Jan_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Jan_t0_sic_projection.csv", header = None)
        SIC_Feb_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Feb_t0_sic_projection.csv", header = None)
        SIC_March_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_March_t0_sic_projection.csv", header = None)
        SIC_April_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_April_t0_sic_projection.csv", header = None)
        SIC_May_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_May_t0_sic_projection.csv", header = None)
        SIC_June_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_June_t0_sic_projection.csv", header = None)
        SIC_July_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_July_t0_sic_projection.csv", header = None)
        SIC_Aug_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_August_t0_sic_projection.csv", header = None)
        SIC_Sep_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_September_t0_sic_projection.csv", header = None)
        SIC_Oct_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_October_t0_sic_projection.csv", header = None)
        SIC_Nov_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_November_t0_sic_projection.csv", header = None)
        SIC_Dec_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_December_t0_sic_projection.csv", header = None)
        
        SIC_t0 = np.vstack((SIC_Jan_t0, SIC_Feb_t0, SIC_March_t0, 
                            SIC_April_t0, SIC_May_t0, SIC_June_t0, 
                            SIC_July_t0, SIC_Aug_t0, SIC_Sep_t0, 
                            SIC_Oct_t0, SIC_Nov_t0, SIC_Dec_t0))   
        
        SIC_Jan_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Jan_tm_sic_projection.csv", header = None)
        SIC_Feb_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Feb_tm_sic_projection.csv", header = None)
        SIC_March_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_March_tm_sic_projection.csv", header = None)
        SIC_April_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_April_tm_sic_projection.csv", header = None)
        SIC_May_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_May_tm_sic_projection.csv", header = None)
        SIC_June_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_June_tm_sic_projection.csv", header = None)
        SIC_July_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_July_tm_sic_projection.csv", header = None)
        SIC_Aug_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_August_tm_sic_projection.csv", header = None)
        SIC_Sep_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_September_tm_sic_projection.csv", header = None)
        SIC_Oct_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_October_tm_sic_projection.csv", header = None)
        SIC_Nov_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_November_tm_sic_projection.csv", header = None)
        SIC_Dec_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_December_tm_sic_projection.csv", header = None)
        
        SIC_tm = np.vstack((SIC_Jan_tm, SIC_Feb_tm, SIC_March_tm, 
                            SIC_April_tm, SIC_May_tm, SIC_June_tm, 
                            SIC_July_tm, SIC_Aug_tm, SIC_Sep_tm, 
                            SIC_Oct_tm, SIC_Nov_tm, SIC_Dec_tm))
        
        SIC_Jan_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Jan_tf_sic_projection.csv", header = None)
        SIC_Feb_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_Feb_tf_sic_projection.csv", header = None)
        SIC_March_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_March_tf_sic_projection.csv", header = None)
        SIC_April_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_April_tf_sic_projection.csv", header = None)
        SIC_May_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_May_tf_sic_projection.csv", header = None)
        SIC_June_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_June_tf_sic_projection.csv", header = None)
        SIC_July_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_July_tf_sic_projection.csv", header = None)
        SIC_Aug_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_August_tf_sic_projection.csv", header = None)
        SIC_Sep_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_September_tf_sic_projection.csv", header = None)
        SIC_Oct_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_October_tf_sic_projection.csv", header = None)
        SIC_Nov_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_November_tf_sic_projection.csv", header = None)
        SIC_Dec_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP370_December_tf_sic_projection.csv", header = None)
        
        SIC_tf = np.vstack((SIC_Jan_tf, SIC_Feb_tf, SIC_March_tf, 
                            SIC_April_tf, SIC_May_tf, SIC_June_tf, 
                            SIC_July_tf, SIC_Aug_tf, SIC_Sep_tf, 
                            SIC_Oct_tf, SIC_Nov_tf, SIC_Dec_tf))
        
    elif g_input_assumptions['SSP585'].item() == 1:
        
        SIT_Jan_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Jan_t0_sit_projection.csv", header = None)
        SIT_Feb_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Feb_t0_sit_projection.csv", header = None)
        SIT_March_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_March_t0_sit_projection.csv", header = None)
        SIT_April_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_April_t0_sit_projection.csv", header = None)
        SIT_May_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_May_t0_sit_projection.csv", header = None)
        SIT_June_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_June_t0_sit_projection.csv", header = None)
        SIT_July_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_July_t0_sit_projection.csv", header = None)
        SIT_Aug_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_August_t0_sit_projection.csv", header = None)
        SIT_Sep_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_September_t0_sit_projection.csv", header = None)
        SIT_Oct_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_October_t0_sit_projection.csv", header = None)
        SIT_Nov_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_November_t0_sit_projection.csv", header = None)
        SIT_Dec_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_December_t0_sit_projection.csv", header = None)
        
        SIT_t0 = np.vstack((SIT_Jan_t0, SIT_Feb_t0, SIT_March_t0, 
                            SIT_April_t0, SIT_May_t0, SIT_June_t0, 
                            SIT_July_t0, SIT_Aug_t0, SIT_Sep_t0, 
                            SIT_Oct_t0, SIT_Nov_t0, SIT_Dec_t0))
    
        SIT_Jan_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Jan_tm_sit_projection.csv", header = None)
        SIT_Feb_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Feb_tm_sit_projection.csv", header = None)
        SIT_March_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_March_tm_sit_projection.csv", header = None)
        SIT_April_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_April_tm_sit_projection.csv", header = None)
        SIT_May_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_May_tm_sit_projection.csv", header = None)
        SIT_June_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_June_tm_sit_projection.csv", header = None)
        SIT_July_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_July_tm_sit_projection.csv", header = None)
        SIT_Aug_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_August_tm_sit_projection.csv", header = None)
        SIT_Sep_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_September_tm_sit_projection.csv", header = None)
        SIT_Oct_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_October_tm_sit_projection.csv", header = None)
        SIT_Nov_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_November_tm_sit_projection.csv", header = None)
        SIT_Dec_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_December_tm_sit_projection.csv", header = None)
        
        SIT_tm = np.vstack((SIT_Jan_tm, SIT_Feb_tm, SIT_March_tm, 
                            SIT_April_tm, SIT_May_tm, SIT_June_tm, 
                            SIT_July_tm, SIT_Aug_tm, SIT_Sep_tm, 
                            SIT_Oct_tm, SIT_Nov_tm, SIT_Dec_tm))
          
        SIT_Jan_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Jan_tf_sit_projection.csv", header = None)
        SIT_Feb_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Feb_tf_sit_projection.csv", header = None)
        SIT_March_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_March_tf_sit_projection.csv", header = None)
        SIT_April_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_April_tf_sit_projection.csv", header = None)
        SIT_May_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_May_tf_sit_projection.csv", header = None)
        SIT_June_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_June_tf_sit_projection.csv", header = None)
        SIT_July_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_July_tf_sit_projection.csv", header = None)
        SIT_Aug_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_August_tf_sit_projection.csv", header = None)
        SIT_Sep_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_September_tf_sit_projection.csv", header = None)
        SIT_Oct_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_October_tf_sit_projection.csv", header = None)
        SIT_Nov_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_November_tf_sit_projection.csv", header = None)
        SIT_Dec_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_December_tf_sit_projection.csv", header = None)
        
        SIT_tf = np.vstack((SIT_Jan_tf, SIT_Feb_tf, SIT_March_tf, 
                            SIT_April_tf, SIT_May_tf, SIT_June_tf, 
                            SIT_July_tf, SIT_Aug_tf, SIT_Sep_tf, 
                            SIT_Oct_tf, SIT_Nov_tf, SIT_Dec_tf))
        
        SIC_Jan_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Jan_t0_sic_projection.csv", header = None)
        SIC_Feb_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Feb_t0_sic_projection.csv", header = None)
        SIC_March_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_March_t0_sic_projection.csv", header = None)
        SIC_April_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_April_t0_sic_projection.csv", header = None)
        SIC_May_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_May_t0_sic_projection.csv", header = None)
        SIC_June_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_June_t0_sic_projection.csv", header = None)
        SIC_July_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_July_t0_sic_projection.csv", header = None)
        SIC_Aug_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_August_t0_sic_projection.csv", header = None)
        SIC_Sep_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_September_t0_sic_projection.csv", header = None)
        SIC_Oct_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_October_t0_sic_projection.csv", header = None)
        SIC_Nov_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_November_t0_sic_projection.csv", header = None)
        SIC_Dec_t0 = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_December_t0_sic_projection.csv", header = None)
        
        SIC_t0 = np.vstack((SIC_Jan_t0, SIC_Feb_t0, SIC_March_t0, 
                            SIC_April_t0, SIC_May_t0, SIC_June_t0, 
                            SIC_July_t0, SIC_Aug_t0, SIC_Sep_t0, 
                            SIC_Oct_t0, SIC_Nov_t0, SIC_Dec_t0))   
        
        SIC_Jan_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Jan_tm_sic_projection.csv", header = None)
        SIC_Feb_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Feb_tm_sic_projection.csv", header = None)
        SIC_March_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_March_tm_sic_projection.csv", header = None)
        SIC_April_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_April_tm_sic_projection.csv", header = None)
        SIC_May_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_May_tm_sic_projection.csv", header = None)
        SIC_June_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_June_tm_sic_projection.csv", header = None)
        SIC_July_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_July_tm_sic_projection.csv", header = None)
        SIC_Aug_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_August_tm_sic_projection.csv", header = None)
        SIC_Sep_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_September_tm_sic_projection.csv", header = None)
        SIC_Oct_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_October_tm_sic_projection.csv", header = None)
        SIC_Nov_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_November_tm_sic_projection.csv", header = None)
        SIC_Dec_tm = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_December_tm_sic_projection.csv", header = None)
        
        SIC_tm = np.vstack((SIC_Jan_tm, SIC_Feb_tm, SIC_March_tm, 
                            SIC_April_tm, SIC_May_tm, SIC_June_tm, 
                            SIC_July_tm, SIC_Aug_tm, SIC_Sep_tm, 
                            SIC_Oct_tm, SIC_Nov_tm, SIC_Dec_tm))
        
        SIC_Jan_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Jan_tf_sic_projection.csv", header = None)
        SIC_Feb_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_Feb_tf_sic_projection.csv", header = None)
        SIC_March_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_March_tf_sic_projection.csv", header = None)
        SIC_April_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_April_tf_sic_projection.csv", header = None)
        SIC_May_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_May_tf_sic_projection.csv", header = None)
        SIC_June_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_June_tf_sic_projection.csv", header = None)
        SIC_July_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_July_tf_sic_projection.csv", header = None)
        SIC_Aug_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_August_tf_sic_projection.csv", header = None)
        SIC_Sep_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_September_tf_sic_projection.csv", header = None)
        SIC_Oct_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_October_tf_sic_projection.csv", header = None)
        SIC_Nov_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_November_tf_sic_projection.csv", header = None)
        SIC_Dec_tf = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Arctic ice data/SSP585_December_tf_sic_projection.csv", header = None)
        
        SIC_tf = np.vstack((SIC_Jan_tf, SIC_Feb_tf, SIC_March_tf, 
                            SIC_April_tf, SIC_May_tf, SIC_June_tf, 
                            SIC_July_tf, SIC_Aug_tf, SIC_Sep_tf, 
                            SIC_Oct_tf, SIC_Nov_tf, SIC_Dec_tf))
    
       #Sea ice concentration data come in percentage values, so they have to be
       #converted back into fractions
       
    SIC_t0 = SIC_t0/100; SIC_tm = SIC_tm/100; SIC_tf = SIC_tf/100;
       
        #Differences between Route 1 and Route 2, in Route 3 point C is the North
        #Pole
        #
        #       Longitude is equidistant between A and E
        #
        #
        #(40.5,84.5)H_____________ I(162.5,84.5)
        #        /                  \
        #       /                    \
        #      /                      \
        #   A /                        \ E
        #    (40.5,77.5)  ___________  (162.5,77.5)
        #            / B      R1   D \
        #           /                 \
        #          /                   \
        #         /                     \
        #        /                       \ E(190.5,66.5)
        #       /                         |
        #      /                         / F (190.5,64.5)
        #     /                         /
        #    /                         /
        #   /                         /
        #  /                         /
        # /                         /
        #/ A                       / G(174.5,60.5)
        #(5.5,60.5)
        
        #The vessel is assumed to start traversing towards the Arctic from a
        #longitude of 5 degrees and a latitude of 60 degrees to one of 40 degrees
        #longitude and 77 degrees latitude for Route 1, and 40 deg longitude 84 for
        #route 2 (portworld.com)
        #For Route 2 (the intermediary route...) a new latitude is needed (83.5 is rounded to
        #84) longitude is assumed to remain constant
        
        #Route 1 equation: lon = 2.058824*lat - 119.059
        #Route 2 equation  lon = 4.041667*lat - 237.5
        
        #The initial stage of the journey A to B for Route 1
        
    longitude1 = np.zeros((18)); latitude1 = np.arange(60.5,78.5)
        
    for i in range(0,len(latitude1)):
        
        longitude1[i] =   (2.058824*latitude1[i]) - 119.059
        
    #Route 1 - transiting from point B to D, the latit
        
    longitude_BD = np.arange(41.5,162.5); longitude1 = np.concatenate((longitude1, longitude_BD))
    
    #The latitude is constant
    
    latitude_BD = 77.5*np.ones(121); latitude1 = np.concatenate((latitude1, latitude_BD))
    
    #D to E for Route 1 
    
    longitude_DE = np.zeros(12); latitude_DE = np.arange(77.5,65.5,-1)
    
    for i in range(0,len(latitude_DE)):
        
        longitude_DE[i] = (-2.54545*latitude_DE[i]) + 359.7727
        
    longitude1 = np.concatenate((longitude1, longitude_DE)); latitude1 = np.concatenate((latitude1, latitude_DE))
    
    #E to F for Route 1 
    
    longitude_EF = 190.5*np.ones(2); latitude_EF = np.arange(65.5, 63.5,-1)

    longitude1 = np.concatenate((longitude1, longitude_EF)); latitude1 = np.concatenate((latitude1, latitude_EF))
    
    #F to G for Route 1
    
    longitude_FG = np.zeros(4); latitude_FG = np.arange(63.5, 59.5,-1)
    
    for i in range(0,len(latitude_FG)):
        
        longitude_FG[i] = (4*latitude_FG[i]) - 67.5
            
    longitude1 = np.concatenate((longitude1, longitude_FG)); latitude1 = np.concatenate((latitude1, latitude_FG))
    
    
    #This is for the 2nd route 
        
    longitude2 = np.zeros((25)); latitude2 = np.arange(60.5,85.5)
    
    for i in range(0,len(latitude2)):
        
        longitude2[i] = (1.458333*latitude2[i]) - 82.7292
      
    #The HI segment of Route 2 
    
    longitude_HI = np.arange(41.5, 162.5); latitude_HI = 84.5*np.ones(121)
    
    longitude2 = np.concatenate((longitude2, longitude_HI)); latitude2 = np.concatenate((latitude2, latitude_HI))
    
    #Segment IE for Route 2
    
    longitude_IE = np.zeros(19); latitude_IE = np.arange(84.5,65.5,-1)
    
    for i in range(0,len(latitude_IE)):
        
        longitude_IE[i] = (-1.55556*latitude_IE[i]) + 293.9444
        
    longitude2 = np.concatenate((longitude2, longitude_IE)); latitude2 = np.concatenate((latitude2, latitude_IE))
        
    #E to F and F to G have already been calculated
    
    longitude2 = np.concatenate((longitude2, longitude_EF, longitude_FG)); latitude2 = np.concatenate((latitude2, latitude_EF, latitude_FG))
     
    #The 3rd route entails going through the North Pole 
        
    longitude3 = np.zeros((29)); latitude3 = np.arange(60.5,89.5)
    
    for i in range(0,len(latitude3)):
        
        longitude3[i] = (-0.17241*latitude3[i]) + 15.931032
        
    #CE part of Route3
    
    longitude_CE = np.zeros((24)); latitude_CE = np.arange(89.5,65.5,-1)
    
    for i in range(0,len(latitude_CE)):
        
        longitude_CE[i] = (-0.45652*latitude_CE[i]) + 220.8587
        
    longitude3 = np.concatenate((longitude3, longitude_CE)); latitude3 = np.concatenate((latitude3, latitude_CE))
    
    #Finally, the E to F and F to G segments can be added
    
    longitude3 = np.concatenate((longitude3, longitude_EF, longitude_FG)); latitude3 = np.concatenate((latitude3, latitude_EF, latitude_FG))
        
    #With the routes having been defined, the longitude and latitude co-ordinates can now be converted into a set of
    #indices which can be used to extract the ice data
    
    #Firstly, the longitude must be rounded to match the co-ordinates of the ice data and 59.5
    #must be subtracted against the latitudes as a latitude of 60.5 relative to the equator is equal to 1 
    
    longitude1 = np.round(longitude1); longitude2 = np.round(longitude2); longitude3 = np.round(longitude3)
    
    latindex1 = latitude1 - 60.5; latindex2 = latitude2 - 60.5; latindex3 = latitude3 - 60.5;
    
    #As all the months have been aggregated into one array, the length of the object divided by 12 is an important index
    
    Ice_Month_length = int(len(SIT_t0)/12)
    
    #There are 12 months in a year
    
    SIT_Route1_t0 = np.zeros(12*len(longitude1)); SIC_Route1_t0 = np.zeros(12*len(longitude1));
    
    SIT_Route1_tm = np.zeros(12*len(longitude1)); SIC_Route1_tm = np.zeros(12*len(longitude1));
    
    SIT_Route1_tf = np.zeros(12*len(longitude1)); SIC_Route1_tf = np.zeros(12*len(longitude1));    
    
    for i in range(0,12):
        
        for j in range(0,len(latindex1)):
            
            SIT_Route1_t0[j + (i*len(latindex1))] = SIT_t0[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
        
            SIC_Route1_t0[j + (i*len(latindex1))] = SIC_t0[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
        
            SIT_Route1_tm[j + (i*len(latindex1))] = SIT_tm[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
        
            SIC_Route1_tm[j + (i*len(latindex1))] = SIC_tm[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
            
            SIT_Route1_tf[j + (i*len(latindex1))] = SIT_tf[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
        
            SIC_Route1_tf[j + (i*len(latindex1))] = SIC_tf[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
            
    #Route 2
      
    SIT_Route2_t0 = np.zeros(12*len(longitude2)); SIC_Route2_t0 = np.zeros(12*len(longitude2));
    
    SIT_Route2_tm = np.zeros(12*len(longitude2)); SIC_Route2_tm = np.zeros(12*len(longitude2));
    
    SIT_Route2_tf = np.zeros(12*len(longitude2)); SIC_Route2_tf = np.zeros(12*len(longitude2));    
    
    for i in range(0,12):
        
        for j in range(0,len(latindex2)):
            
            SIT_Route2_t0[j + (i*len(latindex2))] = SIT_t0[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
        
            SIC_Route2_t0[j + (i*len(latindex2))] = SIC_t0[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
        
            SIT_Route2_tm[j + (i*len(latindex2))] = SIT_tm[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
        
            SIC_Route2_tm[j + (i*len(latindex2))] = SIC_tm[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
            
            SIT_Route2_tf[j + (i*len(latindex2))] = SIT_tf[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
        
            SIC_Route2_tf[j + (i*len(latindex2))] = SIC_tf[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
                   
            
    #Route 3
    
    SIT_Route3_t0 = np.zeros(12*len(longitude3)); SIC_Route3_t0 = np.zeros(12*len(longitude3));
    
    SIT_Route3_tm = np.zeros(12*len(longitude3)); SIC_Route3_tm = np.zeros(12*len(longitude3));
    
    SIT_Route3_tf = np.zeros(12*len(longitude3)); SIC_Route3_tf = np.zeros(12*len(longitude3));    
    
    for i in range(0,12):
        
        for j in range(0,len(latindex3)):
            
            SIT_Route3_t0[j + (i*len(latindex3))] = SIT_t0[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
        
            SIC_Route3_t0[j + (i*len(latindex3))] = SIC_t0[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
        
            SIT_Route3_tm[j + (i*len(latindex3))] = SIT_tm[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
        
            SIC_Route3_tm[j + (i*len(latindex3))] = SIC_tm[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
            
            SIT_Route3_tf[j + (i*len(latindex3))] = SIT_tf[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
        
            SIC_Route3_tf[j + (i*len(latindex3))] = SIC_tf[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
    
    
    #Need to tidy up the ice data because there are some NaNs which means that the route definition intersects 
    #with land - to do this we iterate the latitude to increase by 1 degree until there are no more NaNs
    
    j = 0; count = 0
    
    while True:
                        
        if np.isnan(SIT_Route1_t0[j]) == True:
            
            latitude1[j] =  latitude1[j] + 1
               
            latindex1[j] = latitude1[j] - 60.5
                                          
            SIT_Route1_t0[j] = SIT_t0[longitude1[j].astype(int) - 1,latindex1[j].astype(int)];
                
            SIC_Route1_t0[j] = SIC_t0[longitude1[j].astype(int) - 1,latindex1[j].astype(int)];
                
            SIT_Route1_tm[j] = SIT_tm[longitude1[j].astype(int) - 1,latindex1[j].astype(int)];
                
            SIC_Route1_tm[j] = SIC_tm[longitude1[j].astype(int) - 1,latindex1[j].astype(int)];
                    
            SIT_Route1_tf[j] = SIT_tf[longitude1[j].astype(int) - 1,latindex1[j].astype(int)];
                
            SIC_Route1_tf[j] = SIC_tf[longitude1[j].astype(int) - 1,latindex1[j].astype(int)];
              
      
        j = j + 1;  count = count + 1
        
        
        if count > len(latitude1) - 1: #Python counts 0 as an index
            
            j = 0; count = 0
        
        if np.sum(SIT_Route1_t0[:len(latindex1)]) > 0:
            
          break
      
        #With the latitude having been adjusted, I need to adjust for the other 12 months using the adjusted co-ordinates

    for i in range(0,12):
        
     for j in range(0,len(latindex1)):
            
         SIT_Route1_t0[j + (i*len(latindex1))] = SIT_t0[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
        
         SIC_Route1_t0[j + (i*len(latindex1))] = SIC_t0[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
        
         SIT_Route1_tm[j + (i*len(latindex1))] = SIT_tm[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
        
         SIC_Route1_tm[j + (i*len(latindex1))] = SIC_tm[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
            
         SIT_Route1_tf[j + (i*len(latindex1))] = SIT_tf[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
        
         SIC_Route1_tf[j + (i*len(latindex1))] = SIC_tf[([i*Ice_Month_length]+longitude1[j].astype(int)) - 1,latindex1[j].astype(int)];
            
         
     #Same for Route 2
     
    j = 0; count = 0
    
    while True:
                        
        if np.isnan(SIT_Route2_t0[j]) == True:
            
            latitude2[j] =  latitude2[j] + 1
               
            latindex2[j] = latitude2[j] - 60.5
                                          
            SIT_Route2_t0[j] = SIT_t0[longitude2[j].astype(int) - 1,latindex2[j].astype(int)];
                
            SIC_Route2_t0[j] = SIC_t0[longitude2[j].astype(int) - 1,latindex2[j].astype(int)];
                
            SIT_Route2_tm[j] = SIT_tm[longitude2[j].astype(int) - 1,latindex2[j].astype(int)];
                
            SIC_Route2_tm[j] = SIC_tm[longitude2[j].astype(int) - 1,latindex2[j].astype(int)];
                    
            SIT_Route2_tf[j] = SIT_tf[longitude2[j].astype(int) - 1,latindex2[j].astype(int)];
                
            SIC_Route2_tf[j] = SIC_tf[longitude2[j].astype(int) - 1,latindex2[j].astype(int)];
              
      
        j = j + 1;  count = count + 1
        
        
        if count > len(latitude2) - 1: #Python counts 0 as an index
            
            j = 0; count = 0
        
        if np.sum(SIT_Route2_t0[:len(latindex2)]) > 0:
            
          break
      
        #With the latitude having been adjusted, I need to adjust for the other 12 months using the adjusted co-ordinates

    for i in range(0,12):
        
     for j in range(0,len(latindex2)):
            
         SIT_Route2_t0[j + (i*len(latindex2))] = SIT_t0[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
        
         SIC_Route2_t0[j + (i*len(latindex2))] = SIC_t0[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
        
         SIT_Route2_tm[j + (i*len(latindex2))] = SIT_tm[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
        
         SIC_Route2_tm[j + (i*len(latindex2))] = SIC_tm[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
            
         SIT_Route2_tf[j + (i*len(latindex2))] = SIT_tf[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
        
         SIC_Route2_tf[j + (i*len(latindex2))] = SIC_tf[([i*Ice_Month_length]+longitude2[j].astype(int)) - 1,latindex2[j].astype(int)];
            
    #Lastly, Route 3 
    
    j = 0; count = 0
    
    while True:
                        
        if np.isnan(SIT_Route3_t0[j]) == True:
            
            latitude3[j] =  latitude3[j] + 1
               
            latindex3[j] = latitude3[j] - 60.5
                                          
            SIT_Route3_t0[j] = SIT_t0[longitude3[j].astype(int) - 1,latindex3[j].astype(int)];
                
            SIC_Route3_t0[j] = SIC_t0[longitude3[j].astype(int) - 1,latindex3[j].astype(int)];
                
            SIT_Route3_tm[j] = SIT_tm[longitude3[j].astype(int) - 1,latindex3[j].astype(int)];
                
            SIC_Route3_tm[j] = SIC_tm[longitude3[j].astype(int) - 1,latindex3[j].astype(int)];
                    
            SIT_Route3_tf[j] = SIT_tf[longitude3[j].astype(int) - 1,latindex3[j].astype(int)];
                
            SIC_Route3_tf[j] = SIC_tf[longitude3[j].astype(int) - 1,latindex3[j].astype(int)];
              
      
        j = j + 1;  count = count + 1       
        
        if count > len(latitude3) - 1: #Python counts 0 as an index
            
            j = 0; count = 0
        
        if np.sum(SIT_Route3_t0[:len(latindex3)]) > 0:
            
          break
      
        #With the latitude having been adjusted, I need to adjust for the other 12 months using the adjusted co-ordinates

    for i in range(0,12):
        
     for j in range(0,len(latindex3)):
            
         SIT_Route3_t0[j + (i*len(latindex3))] = SIT_t0[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
        
         SIC_Route3_t0[j + (i*len(latindex3))] = SIC_t0[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
        
         SIT_Route3_tm[j + (i*len(latindex3))] = SIT_tm[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
        
         SIC_Route3_tm[j + (i*len(latindex3))] = SIC_tm[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
            
         SIT_Route3_tf[j + (i*len(latindex3))] = SIT_tf[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
        
         SIC_Route3_tf[j + (i*len(latindex3))] = SIC_tf[([i*Ice_Month_length]+longitude3[j].astype(int)) - 1,latindex3[j].astype(int)];
            
    
    #With the route definitions now adjusted, the function can proceed to 
    #calculatinng the equivalent ice thickness and assigning the corresponding
    #risk index
    
    SIT_Route1_t0 = SIT_Route1_t0 * SIC_Route1_t0 
    
    SIT_Route1_tm = SIT_Route1_tm * SIC_Route1_tm 
    
    SIT_Route1_tf = SIT_Route1_tf * SIC_Route1_tf 
     
    SIT_Route2_t0 = SIT_Route2_t0 * SIC_Route2_t0 
    
    SIT_Route2_tm = SIT_Route2_tm * SIC_Route2_tm 
    
    SIT_Route2_tf = SIT_Route2_tf * SIC_Route2_tf
    
    SIT_Route3_t0 = SIT_Route3_t0 * SIC_Route3_t0 
    
    SIT_Route3_tm = SIT_Route3_tm * SIC_Route3_tm 
    
    SIT_Route3_tf = SIT_Route3_tf * SIC_Route3_tf
    
    Route1_risk_matrix_t0 = np.zeros(len(SIT_Route1_t0))
    
    for i in range(0, len(Route1_risk_matrix_t0)):
        
         if SIT_Route1_t0[i] < 0.0001:
             
            Route1_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Ice_free[0];

         elif (SIT_Route1_t0[i] >= 0.0001) and (SIT_Route1_t0[i] <0.1):
                
                Route1_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.New_ice[0];
    
         elif SIT_Route1_t0[i] >= 0.1 and SIT_Route1_t0[i] <0.15:
                
                Route1_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_ice[0];
    
         elif SIT_Route1_t0[i] >= 0.15 and SIT_Route1_t0[i] <0.3:
                
                Route1_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[0];
    
         elif SIT_Route1_t0[i] >= 0.3 and SIT_Route1_t0[i] <0.5:
                
                Route1_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[0];
    
         elif SIT_Route1_t0[i] >= 0.5 and SIT_Route1_t0[i] <0.7:
                
                Route1_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[0];
    
         elif SIT_Route1_t0[i] >= 0.7 and SIT_Route1_t0[i] <1:
                
                Route1_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[0];
    
         elif SIT_Route1_t0[i] >=1  and SIT_Route1_t0[i] <1.2:
                
                Route1_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[0];
                
         elif SIT_Route1_t0[i] >=1.2  and SIT_Route1_t0[i] <2.5:
                
                Route1_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[0];
                
         elif SIT_Route1_t0[i] >=2.5  and SIT_Route1_t0[i] <3:
                
                Route1_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[0];
                
         elif SIT_Route1_t0[i] >=3:
                
                Route1_risk_matrix_t0[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[0];
                
    Route1_risk_matrix_tm = np.zeros(len(SIT_Route1_tm))
    
    for i in range(0, len(Route1_risk_matrix_tm)):
        
         if SIT_Route1_tm[i] < 0.0001:
             
            Route1_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Ice_free[0];

         elif (SIT_Route1_tm[i] >= 0.0001) and (SIT_Route1_tm[i] <0.1):
                
                Route1_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.New_ice[0];
    
         elif SIT_Route1_tm[i] >= 0.1 and SIT_Route1_tm[i] <0.15:
                
                Route1_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_ice[0];
    
         elif SIT_Route1_tm[i] >= 0.15 and SIT_Route1_tm[i] <0.3:
                
                Route1_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[0];
    
         elif SIT_Route1_tm[i] >= 0.3 and SIT_Route1_tm[i] <0.5:
                
                Route1_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[0];
    
         elif SIT_Route1_tm[i] >= 0.5 and SIT_Route1_tm[i] <0.7:
                
                Route1_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[0];
    
         elif SIT_Route1_tm[i] >= 0.7 and SIT_Route1_tm[i] <1:
                
                Route1_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[0];
    
         elif SIT_Route1_tm[i] >=1  and SIT_Route1_tm[i] <1.2:
                
                Route1_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[0];
                
         elif SIT_Route1_tm[i] >=1.2  and SIT_Route1_tm[i] <2.5:
                
                Route1_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[0];
                
         elif SIT_Route1_tm[i] >=2.5  and SIT_Route1_tm[i] <3:
                
                Route1_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[0];
                
         elif SIT_Route1_tm[i] >=3:
                
                Route1_risk_matrix_tm[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[0];         
    
    Route1_risk_matrix_tf = np.zeros(len(SIT_Route1_tf))
    
    for i in range(0, len(Route1_risk_matrix_tf)):
        
         if SIT_Route1_tf[i] < 0.0001:
             
            Route1_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Ice_free[0];

         elif (SIT_Route1_tf[i] >= 0.0001) and (SIT_Route1_tf[i] <0.1):
                
                Route1_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.New_ice[0];
    
         elif SIT_Route1_tf[i] >= 0.1 and SIT_Route1_tf[i] <0.15:
                
                Route1_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_ice[0];
    
         elif SIT_Route1_tf[i] >= 0.15 and SIT_Route1_tf[i] <0.3:
                
                Route1_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[0];
    
         elif SIT_Route1_tf[i] >= 0.3 and SIT_Route1_tf[i] <0.5:
                
                Route1_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[0];
    
         elif SIT_Route1_tf[i] >= 0.5 and SIT_Route1_tf[i] <0.7:
                
                Route1_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[0];
    
         elif SIT_Route1_tf[i] >= 0.7 and SIT_Route1_tf[i] <1:
                
                Route1_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[0];
    
         elif SIT_Route1_tf[i] >=1  and SIT_Route1_tf[i] <1.2:
                
                Route1_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[0];
                
         elif SIT_Route1_tf[i] >=1.2  and SIT_Route1_tf[i] <2.5:
                
                Route1_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[0];
                
         elif SIT_Route1_tf[i] >=2.5  and SIT_Route1_tf[i] <3:
                
                Route1_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[0];
                
         elif SIT_Route1_tf[i] >=3:
                
                Route1_risk_matrix_tf[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[0];
    
    #Route 2
    
    Route2_risk_matrix_t0 = np.zeros(len(SIT_Route2_t0))
    
    for i in range(0, len(Route2_risk_matrix_t0)):
        
         if SIT_Route2_t0[i] < 0.0001:
             
            Route2_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Ice_free[0];

         elif (SIT_Route2_t0[i] >= 0.0001) and (SIT_Route2_t0[i] <0.1):
                
                Route2_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.New_ice[0];
    
         elif SIT_Route2_t0[i] >= 0.1 and SIT_Route2_t0[i] <0.15:
                
                Route2_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_ice[0];
    
         elif SIT_Route2_t0[i] >= 0.15 and SIT_Route2_t0[i] <0.3:
                
                Route2_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[0];
    
         elif SIT_Route2_t0[i] >= 0.3 and SIT_Route2_t0[i] <0.5:
                
                Route2_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[0];
    
         elif SIT_Route2_t0[i] >= 0.5 and SIT_Route2_t0[i] <0.7:
                
                Route2_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[0];
    
         elif SIT_Route2_t0[i] >= 0.7 and SIT_Route2_t0[i] <1:
                
                Route2_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[0];
    
         elif SIT_Route2_t0[i] >=1  and SIT_Route2_t0[i] <1.2:
                
                Route2_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[0];
                
         elif SIT_Route2_t0[i] >=1.2  and SIT_Route2_t0[i] <2.5:
                
                Route2_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[0];
                
         elif SIT_Route2_t0[i] >=2.5  and SIT_Route2_t0[i] <3:
                
                Route2_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[0];
                
         elif SIT_Route2_t0[i] >=3:
                
                Route2_risk_matrix_t0[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[0];
                
    Route2_risk_matrix_tm = np.zeros(len(SIT_Route2_tm))
    
    for i in range(0, len(Route2_risk_matrix_tm)):
        
         if SIT_Route2_tm[i] < 0.0001:
             
            Route2_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Ice_free[0];

         elif (SIT_Route2_tm[i] >= 0.0001) and (SIT_Route2_tm[i] <0.1):
                
                Route2_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.New_ice[0];
    
         elif SIT_Route2_tm[i] >= 0.1 and SIT_Route2_tm[i] <0.15:
                
                Route2_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_ice[0];
    
         elif SIT_Route2_tm[i] >= 0.15 and SIT_Route2_tm[i] <0.3:
                
                Route2_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[0];
    
         elif SIT_Route2_tm[i] >= 0.3 and SIT_Route2_tm[i] <0.5:
                
                Route2_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[0];
    
         elif SIT_Route2_tm[i] >= 0.5 and SIT_Route2_tm[i] <0.7:
                
                Route2_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[0];
    
         elif SIT_Route2_tm[i] >= 0.7 and SIT_Route2_tm[i] <1:
                
                Route2_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[0];
    
         elif SIT_Route2_tm[i] >=1  and SIT_Route2_tm[i] <1.2:
                
                Route2_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[0];
                
         elif SIT_Route2_tm[i] >=1.2  and SIT_Route2_tm[i] <2.5:
                
                Route2_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[0];
                
         elif SIT_Route2_tm[i] >=2.5  and SIT_Route2_tm[i] <3:
                
                Route2_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[0];
                
         elif SIT_Route2_tm[i] >=3:
                
                Route2_risk_matrix_tm[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[0];         
    
    Route2_risk_matrix_tf = np.zeros(len(SIT_Route2_tf))
    
    for i in range(0, len(Route2_risk_matrix_tf)):
        
         if SIT_Route2_tf[i] < 0.0001:
             
            Route2_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Ice_free[0];

         elif (SIT_Route2_tf[i] >= 0.0001) and (SIT_Route2_tf[i] <0.1):
                
                Route2_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.New_ice[0];
    
         elif SIT_Route2_tf[i] >= 0.1 and SIT_Route2_tf[i] <0.15:
                
                Route2_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_ice[0];
    
         elif SIT_Route2_tf[i] >= 0.15 and SIT_Route2_tf[i] <0.3:
                
                Route2_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[0];
    
         elif SIT_Route2_tf[i] >= 0.3 and SIT_Route2_tf[i] <0.5:
                
                Route2_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[0];
    
         elif SIT_Route2_tf[i] >= 0.5 and SIT_Route2_tf[i] <0.7:
                
                Route2_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[0];
    
         elif SIT_Route2_tf[i] >= 0.7 and SIT_Route2_tf[i] <1:
                
                Route2_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[0];
    
         elif SIT_Route2_tf[i] >=1  and SIT_Route2_tf[i] <1.2:
                
                Route2_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[0];
                
         elif SIT_Route2_tf[i] >=1.2  and SIT_Route2_tf[i] <2.5:
                
                Route2_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[0];
                
         elif SIT_Route2_tf[i] >=2.5  and SIT_Route2_tf[i] <3:
                
                Route2_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[0];
                
         elif SIT_Route2_tf[i] >=3:
                
                Route2_risk_matrix_tf[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[0];
                
    #Route 3
    
    Route3_risk_matrix_t0 = np.zeros(len(SIT_Route3_t0))
    
    for i in range(0, len(Route3_risk_matrix_t0)):
        
         if SIT_Route3_t0[i] < 0.0001:
             
            Route3_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Ice_free[0];

         elif (SIT_Route3_t0[i] >= 0.0001) and (SIT_Route3_t0[i] <0.1):
                
                Route3_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.New_ice[0];
    
         elif SIT_Route3_t0[i] >= 0.1 and SIT_Route3_t0[i] <0.15:
                
                Route3_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_ice[0];
    
         elif SIT_Route3_t0[i] >= 0.15 and SIT_Route3_t0[i] <0.3:
                
                Route3_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[0];
    
         elif SIT_Route3_t0[i] >= 0.3 and SIT_Route3_t0[i] <0.5:
                
                Route3_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[0];
    
         elif SIT_Route3_t0[i] >= 0.5 and SIT_Route3_t0[i] <0.7:
                
                Route3_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[0];
    
         elif SIT_Route3_t0[i] >= 0.7 and SIT_Route3_t0[i] <1:
                
                Route3_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[0];
    
         elif SIT_Route3_t0[i] >=1  and SIT_Route3_t0[i] <1.2:
                
                Route3_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[0];
                
         elif SIT_Route3_t0[i] >=1.2  and SIT_Route3_t0[i] <2.5:
                
                Route3_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[0];
                
         elif SIT_Route3_t0[i] >=2.5  and SIT_Route3_t0[i] <3:
                
                Route3_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[0];
                
         elif SIT_Route3_t0[i] >=3:
                
                Route3_risk_matrix_t0[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[0];
                
    Route3_risk_matrix_tm = np.zeros(len(SIT_Route3_tm))
    
    for i in range(0, len(Route3_risk_matrix_tm)):
        
         if SIT_Route3_tm[i] < 0.0001:
             
            Route3_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Ice_free[0];

         elif (SIT_Route3_tm[i] >= 0.0001) and (SIT_Route3_tm[i] <0.1):
                
                Route3_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.New_ice[0];
    
         elif SIT_Route3_tm[i] >= 0.1 and SIT_Route3_tm[i] <0.15:
                
                Route3_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_ice[0];
    
         elif SIT_Route3_tm[i] >= 0.15 and SIT_Route3_tm[i] <0.3:
                
                Route3_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[0];
    
         elif SIT_Route3_tm[i] >= 0.3 and SIT_Route3_tm[i] <0.5:
                
                Route3_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[0];
    
         elif SIT_Route3_tm[i] >= 0.5 and SIT_Route3_tm[i] <0.7:
                
                Route3_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[0];
    
         elif SIT_Route3_tm[i] >= 0.7 and SIT_Route3_tm[i] <1:
                
                Route3_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[0];
    
         elif SIT_Route3_tm[i] >=1  and SIT_Route3_tm[i] <1.2:
                
                Route3_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[0];
                
         elif SIT_Route3_tm[i] >=1.2  and SIT_Route3_tm[i] <2.5:
                
                Route3_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[0];
                
         elif SIT_Route3_tm[i] >=2.5  and SIT_Route3_tm[i] <3:
                
                Route3_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[0];
                
         elif SIT_Route3_tm[i] >=3:
                
                Route3_risk_matrix_tm[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[0];         
    
    Route3_risk_matrix_tf = np.zeros(len(SIT_Route3_tf))
    
    for i in range(0, len(Route3_risk_matrix_tf)):
        
         if SIT_Route3_tf[i] < 0.0001:
             
            Route3_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Ice_free[0];

         elif (SIT_Route3_tf[i] >= 0.0001) and (SIT_Route3_tf[i] <0.1):
                
                Route3_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.New_ice[0];
    
         elif SIT_Route3_tf[i] >= 0.1 and SIT_Route3_tf[i] <0.15:
                
                Route3_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_ice[0];
    
         elif SIT_Route3_tf[i] >= 0.15 and SIT_Route3_tf[i] <0.3:
                
                Route3_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[0];
    
         elif SIT_Route3_tf[i] >= 0.3 and SIT_Route3_tf[i] <0.5:
                
                Route3_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[0];
    
         elif SIT_Route3_tf[i] >= 0.5 and SIT_Route3_tf[i] <0.7:
                
                Route3_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[0];
    
         elif SIT_Route3_tf[i] >= 0.7 and SIT_Route3_tf[i] <1:
                
                Route3_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[0];
    
         elif SIT_Route3_tf[i] >=1  and SIT_Route3_tf[i] <1.2:
                
                Route3_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[0];
                
         elif SIT_Route3_tf[i] >=1.2  and SIT_Route3_tf[i] <2.5:
                
                Route3_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[0];
                
         elif SIT_Route3_tf[i] >=2.5  and SIT_Route3_tf[i] <3:
                
                Route3_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[0];
                
         elif SIT_Route3_tf[i] >=3:
                
                Route3_risk_matrix_tf[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[0];
                
    #Now the parts of the route which are significantly inaccessible can be rendered inaccessible 
    #by the model by using a 1 or 0 indicator. Where the ship needs an icebreaker
    #because of thick ice, 1 is assigned and vice versa for 0 
    
    Route1_IB_period_t0 = Route1_risk_matrix_t0; Route1_IB_period_t0[ Route1_IB_period_t0 >= 0] = 0
    Route1_IB_period_t0[ Route1_IB_period_t0 < 0] = 1
    
    Route1_IB_period_tm = Route1_risk_matrix_tm; Route1_IB_period_tm[ Route1_IB_period_tm >= 0] = 0
    Route1_IB_period_tm[ Route1_IB_period_tm < 0] = 1
    
    Route1_IB_period_tf = Route1_risk_matrix_tf; Route1_IB_period_tf[ Route1_IB_period_tf >= 0] = 0
    Route1_IB_period_tf[ Route1_IB_period_tf < 0] = 1
    
    #Route 2
    Route2_IB_period_t0 = Route2_risk_matrix_t0; Route2_IB_period_t0[ Route2_IB_period_t0 >= 0] = 0
    Route2_IB_period_t0[ Route2_IB_period_t0 < 0] = 1
    
    Route2_IB_period_tm = Route2_risk_matrix_tm; Route2_IB_period_tm[ Route2_IB_period_tm >= 0] = 0
    Route2_IB_period_tm[ Route2_IB_period_tm < 0] = 1
    
    Route2_IB_period_tf = Route2_risk_matrix_tf; Route2_IB_period_tf[ Route2_IB_period_tf >= 0] = 0
    Route2_IB_period_tf[ Route2_IB_period_tf < 0] = 1
    
    #Route 3
    Route3_IB_period_t0 = Route3_risk_matrix_t0; Route3_IB_period_t0[ Route3_IB_period_t0 >= 0] = 0
    Route3_IB_period_t0[ Route3_IB_period_t0 < 0] = 1
    
    Route3_IB_period_tm = Route3_risk_matrix_tm; Route3_IB_period_tm[ Route3_IB_period_tm >= 0] = 0
    Route3_IB_period_tm[ Route3_IB_period_tm < 0] = 1
    
    Route3_IB_period_tf = Route3_risk_matrix_tf; Route3_IB_period_tf[ Route3_IB_period_tf >= 0] = 0
    Route3_IB_period_tf[ Route3_IB_period_tf < 0] = 1
    
    #Now we  mustcalculate the unit route length for each discrete point considered in the route definition
    #this depends on the resolution of the model (1 x 1 degree) and the great circle formula is used to 
    #find the unit route lengths 
    
    Earth_radius_NM = 0.539957*6378
    
    #First the central angle must be found and the longitudes plus latitudes,
    #need to be converted into radians
    lon1_rad = longitude1*(math.pi/180); lat1_rad = latitude1*(math.pi/180)
    
    lon2_rad = longitude2*(math.pi/180); lat2_rad = latitude2*(math.pi/180)
    
    lon3_rad = longitude3*(math.pi/180); lat3_rad = latitude3*(math.pi/180)
    
    
    Unit_Angle_Route1 = np.zeros(len(lon1_rad))
    
    for i in range(len(lon1_rad)):
        
        if i + 1 > len(lon1_rad) - 1:
            
            break
        
        else:
            
            Unit_Angle_Route1[i] = math.acos( (math.sin(lat1_rad[i]) * math.sin(lat1_rad[i+1])) + (math.cos(lat1_rad[i])
            *math.cos(lat1_rad[i+1]) * math.cos(lon1_rad[i+1] - lon1_rad[i])) )
            
    Unit_Angle_Route2 = np.zeros(len(lon2_rad))
    
    for i in range(len(lon2_rad)):
        
        if i + 1 > len(lon2_rad) - 1:
            
            break
        
        else:
            
            Unit_Angle_Route2[i] = math.acos( (math.sin(lat2_rad[i]) * math.sin(lat2_rad[i+1])) + (math.cos(lat2_rad[i])
            *math.cos(lat2_rad[i+1]) * math.cos(lon2_rad[i+1] - lon2_rad[i])) )
            
    Unit_Angle_Route3 = np.zeros(len(lon3_rad))
    
    for i in range(len(lon3_rad)):
        
        if i + 1 > len(lon3_rad) - 1:
            
            break
        
        else:
            
            Unit_Angle_Route3[i] = math.acos( (math.sin(lat3_rad[i]) * math.sin(lat3_rad[i+1])) + (math.cos(lat3_rad[i])
            *math.cos(lat3_rad[i+1]) * math.cos(lon3_rad[i+1] - lon3_rad[i])) )  
    
            
    #Using the relationship between the radius of a circle and theta, the unit distance can be found
    #Summing the cocmponents finds the total route length of the Arctic componenet of the route 
        
    Unit_Route1_length = Earth_radius_NM * Unit_Angle_Route1; Arctic_Route1_length = np.sum(Unit_Route1_length)
    
    Unit_Route2_length = Earth_radius_NM * Unit_Angle_Route2; Arctic_Route2_length = np.sum(Unit_Route2_length)
    
    Unit_Route3_length = Earth_radius_NM * Unit_Angle_Route3; Arctic_Route3_length = np.sum(Unit_Route3_length)
    
    #Array lengths
    
    L1 = len(Route1_IB_period_t0); L2 = len(Route2_IB_period_t0); L3 = len(Route3_IB_period_t0); 
    
    #The unit periods requiring IB assistance can be ascertained,
    #this is done for each calendar month so that the accessibility of the route for each of these
    #periods can be ascertained 
    
    #The indexes are retrieved using backwards induction form the values calculated by the 
    #component gespatial co-ordinate system 
    
    #AB
    
    AB_IB_period_t0 = np.zeros(17*12)
    
    for i in range(12):
               
        AB_IB_Row_index = np.arange(i*17 , (i+1) * 17)
        
        Route1_IB_period_Row_index = np.arange(i * L1/12, i * L1/12 + 17)
        
        AB_IB_period_t0[AB_IB_Row_index.astype(int)] = Route1_IB_period_t0[Route1_IB_period_Row_index.astype(int)]
        
    #BD
    
    BD_IB_period_t0 = np.zeros(122*12)
    
    for i in range(12):
               
        BD_IB_Row_index = np.arange(i*122 , (i+1) * 122)
        
        Route1_IB_period_Row_index = np.arange(i * L1/12 + 17, i * L1/12 + 122 + 17)
        
        BD_IB_period_t0[BD_IB_Row_index.astype(int)] = Route1_IB_period_t0[Route1_IB_period_Row_index.astype(int)]
        
    #DE
    
    DE_IB_period_t0 = np.zeros(12*12)
    
    for i in range(12):
               
        DE_IB_Row_index = np.arange(i*12 , (i+1) * 12)
        
        Route1_IB_period_Row_index = np.arange(i * L1/12 + 139, i * L1/12 + 10 + 141)
        
        DE_IB_period_t0[DE_IB_Row_index.astype(int)] = Route1_IB_period_t0[Route1_IB_period_Row_index.astype(int)]
    
    #EF
    
    EF_IB_period_t0 = np.zeros(2*12)
    
    for i in range(12):
               
        EF_Route_Row_inEFx = np.arange(i*2 , (i+1) * 2)
        
        Route1_IB_period_Row_inEFx = np.arange(i * L1/12 + 151, i * L1/12 + 2 + 151)
        
        EF_IB_period_t0[EF_Route_Row_inEFx.astype(int)] = Route1_IB_period_t0[Route1_IB_period_Row_inEFx.astype(int)]
    
    
    
    #FG
    
    FG_IB_period_t0 = np.zeros(4*12)
    
    for i in range(12):
               
        FG_Route_Row_inFGx = np.arange(i*4 , (i+1) * 4)
        
        Route1_IB_period_Row_inFGx = np.arange(i * L1/12 + 153, i * L1/12 + 4 + 153)
        
        FG_IB_period_t0[FG_Route_Row_inFGx.astype(int)] = Route1_IB_period_t0[Route1_IB_period_Row_inFGx.astype(int)]
        
     
    #Route 2 segments
    
    #AH
    
    AH_IB_period_t0 = np.zeros(24*12)
    
    for i in range(12):
               
        AH_IB_Row_index = np.arange(i*24 , (i+1) * 24)
        
        Route2_IB_period_Row_index = np.arange(i * L2/12, i * L2/12 + 24)
        
        AH_IB_period_t0[AH_IB_Row_index.astype(int)] = Route2_IB_period_t0[Route2_IB_period_Row_index.astype(int)]
        
    #HI 
    
    HI_IB_period_t0 = np.zeros(122*12)
    
    for i in range(12):
               
        HI_IB_Row_index = np.arange(i*122 , (i+1) * 122)
        
        Route2_IB_period_Row_index = np.arange(i * L2/12 + 24, i * L2/12 + 122 + 24)
        
        HI_IB_period_t0[HI_IB_Row_index.astype(int)] = Route2_IB_period_t0[Route2_IB_period_Row_index.astype(int)]
        
    #IE
    
    IE_IB_period_t0 = np.zeros(19*12)
    
    for i in range(12):
               
        IE_IB_Row_index = np.arange(i*19 , (i+1) * 19)
        
        Route2_IB_period_Row_index = np.arange(i * L2/12 + 122 + 24, i * L2/12 + 17 + 148)
        
        IE_IB_period_t0[IE_IB_Row_index.astype(int)] = Route2_IB_period_t0[Route2_IB_period_Row_index.astype(int)]
        
    #We don't need to recalculate EF and FG because they are the same for this route as they are for route 1
    
    #Route 3
    
    #AC
    
    AC_IB_period_t0 = np.zeros(29*12)
    
    for i in range(12):
               
        AC_IB_Row_index = np.arange(i*29 , (i+1) * 29)
        
        Route3_IB_period_Row_index = np.arange(i * L3/12, i * L3/12 + 29)
        
        AC_IB_period_t0[AC_IB_Row_index.astype(int)] = Route3_IB_period_t0[Route3_IB_period_Row_index.astype(int)]
        
    #CE
    
    CE_IB_period_t0 = np.zeros(24*12)
    
    for i in range(12):
               
        CE_IB_Row_index = np.arange(i*24 , (i+1) * 24)
        
        Route3_IB_period_Row_index = np.arange(i * L3/12 + 29, i * L3/12 + 53)
        
        CE_IB_period_t0[CE_IB_Row_index.astype(int)] = Route3_IB_period_t0[Route3_IB_period_Row_index.astype(int)]
        
    #t_m
    
    AB_IB_period_tm = np.zeros(17*12)
    
    for i in range(12):
               
        AB_IB_Row_index = np.arange(i*17 , (i+1) * 17)
        
        Route1_IB_period_Row_index = np.arange(i * L1/12, i * L1/12 + 17)
        
        AB_IB_period_tm[AB_IB_Row_index.astype(int)] = Route1_IB_period_tm[Route1_IB_period_Row_index.astype(int)]
        
    #BD
    
    BD_IB_period_tm = np.zeros(122*12)
    
    for i in range(12):
               
        BD_IB_Row_index = np.arange(i*122 , (i+1) * 122)
        
        Route1_IB_period_Row_index = np.arange(i * L1/12 + 17, i * L1/12 + 122 + 17)
        
        BD_IB_period_tm[BD_IB_Row_index.astype(int)] = Route1_IB_period_tm[Route1_IB_period_Row_index.astype(int)]
        
    #DE
    
    DE_IB_period_tm = np.zeros(12*12)
    
    for i in range(12):
               
        DE_IB_Row_index = np.arange(i*12 , (i+1) * 12)
        
        Route1_IB_period_Row_index = np.arange(i * L1/12 + 139, i * L1/12 + 10 + 141)
        
        DE_IB_period_tm[DE_IB_Row_index.astype(int)] = Route1_IB_period_tm[Route1_IB_period_Row_index.astype(int)]
    
    #EF
    
    EF_IB_period_tm = np.zeros(2*12)
    
    for i in range(12):
               
        EF_Route_Row_inEFx = np.arange(i*2 , (i+1) * 2)
        
        Route1_IB_period_Row_inEFx = np.arange(i * L1/12 + 151, i * L1/12 + 2 + 151)
        
        EF_IB_period_tm[EF_Route_Row_inEFx.astype(int)] = Route1_IB_period_tm[Route1_IB_period_Row_inEFx.astype(int)]
    
    
    
    #FG
    
    FG_IB_period_tm = np.zeros(4*12)
    
    for i in range(12):
               
        FG_Route_Row_inFGx = np.arange(i*4 , (i+1) * 4)
        
        Route1_IB_period_Row_inFGx = np.arange(i * L1/12 + 153, i * L1/12 + 4 + 153)
        
        FG_IB_period_tm[FG_Route_Row_inFGx.astype(int)] = Route1_IB_period_tm[Route1_IB_period_Row_inFGx.astype(int)]
        
     
    #Route 2 segments
    
    #AH
    
    AH_IB_period_tm = np.zeros(24*12)
    
    for i in range(12):
               
        AH_IB_Row_index = np.arange(i*24 , (i+1) * 24)
        
        Route2_IB_period_Row_index = np.arange(i * L2/12, i * L2/12 + 24)
        
        AH_IB_period_tm[AH_IB_Row_index.astype(int)] = Route2_IB_period_tm[Route2_IB_period_Row_index.astype(int)]
        
    #HI 
    
    HI_IB_period_tm = np.zeros(122*12)
    
    for i in range(12):
               
        HI_IB_Row_index = np.arange(i*122 , (i+1) * 122)
        
        Route2_IB_period_Row_index = np.arange(i * L2/12 + 24, i * L2/12 + 122 + 24)
        
        HI_IB_period_tm[HI_IB_Row_index.astype(int)] = Route2_IB_period_tm[Route2_IB_period_Row_index.astype(int)]
        
    #IE
    
    IE_IB_period_tm = np.zeros(19*12)
    
    for i in range(12):
               
        IE_IB_Row_index = np.arange(i*19 , (i+1) * 19)
        
        Route2_IB_period_Row_index = np.arange(i * L2/12 + 122 + 24, i * L2/12 + 17 + 148)
        
        IE_IB_period_tm[IE_IB_Row_index.astype(int)] = Route2_IB_period_tm[Route2_IB_period_Row_index.astype(int)]
           
    #Route 3
    
    #AC
    
    AC_IB_period_tm = np.zeros(29*12)
    
    for i in range(12):
               
        AC_IB_Row_index = np.arange(i*29 , (i+1) * 29)
        
        Route3_IB_period_Row_index = np.arange(i * L3/12, i * L3/12 + 29)
        
        AC_IB_period_tm[AC_IB_Row_index.astype(int)] = Route3_IB_period_tm[Route3_IB_period_Row_index.astype(int)]
        
    #CE
    
    CE_IB_period_tm = np.zeros(24*12)
    
    for i in range(12):
               
        CE_IB_Row_index = np.arange(i*24 , (i+1) * 24)
        
        Route3_IB_period_Row_index = np.arange(i * L3/12 + 29, i * L3/12 + 53)
        
        CE_IB_period_tm[CE_IB_Row_index.astype(int)] = Route3_IB_period_tm[Route3_IB_period_Row_index.astype(int)]
        
    
    #t_f
    
    AB_IB_period_tf = np.zeros(17*12)
    
    for i in range(12):
               
        AB_IB_Row_index = np.arange(i*17 , (i+1) * 17)
        
        Route1_IB_period_Row_index = np.arange(i * L1/12, i * L1/12 + 17)
        
        AB_IB_period_tf[AB_IB_Row_index.astype(int)] = Route1_IB_period_tf[Route1_IB_period_Row_index.astype(int)]
        
    #BD
    
    BD_IB_period_tf = np.zeros(122*12)
    
    for i in range(12):
               
        BD_IB_Row_index = np.arange(i*122 , (i+1) * 122)
        
        Route1_IB_period_Row_index = np.arange(i * L1/12 + 17, i * L1/12 + 122 + 17)
        
        BD_IB_period_tf[BD_IB_Row_index.astype(int)] = Route1_IB_period_tf[Route1_IB_period_Row_index.astype(int)]
        
    #DE
    
    DE_IB_period_tf = np.zeros(12*12)
    
    for i in range(12):
               
        DE_IB_Row_index = np.arange(i*12 , (i+1) * 12)
        
        Route1_IB_period_Row_index = np.arange(i * L1/12 + 139, i * L1/12 + 10 + 141)
        
        DE_IB_period_tf[DE_IB_Row_index.astype(int)] = Route1_IB_period_tf[Route1_IB_period_Row_index.astype(int)]
    
    #EF
    
    EF_IB_period_tf = np.zeros(2*12)
    
    for i in range(12):
               
        EF_Route_Row_inEFx = np.arange(i*2 , (i+1) * 2)
        
        Route1_IB_period_Row_inEFx = np.arange(i * L1/12 + 151, i * L1/12 + 2 + 151)
        
        EF_IB_period_tf[EF_Route_Row_inEFx.astype(int)] = Route1_IB_period_tf[Route1_IB_period_Row_inEFx.astype(int)]
    
    
    
    #FG
    
    FG_IB_period_tf = np.zeros(4*12)
    
    for i in range(12):
               
        FG_Route_Row_inFGx = np.arange(i*4 , (i+1) * 4)
        
        Route1_IB_period_Row_inFGx = np.arange(i * L1/12 + 153, i * L1/12 + 4 + 153)
        
        FG_IB_period_tf[FG_Route_Row_inFGx.astype(int)] = Route1_IB_period_tf[Route1_IB_period_Row_inFGx.astype(int)]
        
     
    #Route 2 segments
    
    #AH
    
    AH_IB_period_tf = np.zeros(24*12)
    
    for i in range(12):
               
        AH_IB_Row_index = np.arange(i*24 , (i+1) * 24)
        
        Route2_IB_period_Row_index = np.arange(i * L2/12, i * L2/12 + 24)
        
        AH_IB_period_tf[AH_IB_Row_index.astype(int)] = Route2_IB_period_tf[Route2_IB_period_Row_index.astype(int)]
        
    #HI 
    
    HI_IB_period_tf = np.zeros(122*12)
    
    for i in range(12):
               
        HI_IB_Row_index = np.arange(i*122 , (i+1) * 122)
        
        Route2_IB_period_Row_index = np.arange(i * L2/12 + 24, i * L2/12 + 122 + 24)
        
        HI_IB_period_tf[HI_IB_Row_index.astype(int)] = Route2_IB_period_tf[Route2_IB_period_Row_index.astype(int)]
        
    #IE
    
    IE_IB_period_tf = np.zeros(19*12)
    
    for i in range(12):
               
        IE_IB_Row_index = np.arange(i*19 , (i+1) * 19)
        
        Route2_IB_period_Row_index = np.arange(i * L2/12 + 122 + 24, i * L2/12 + 17 + 148)
        
        IE_IB_period_tf[IE_IB_Row_index.astype(int)] = Route2_IB_period_tf[Route2_IB_period_Row_index.astype(int)]
           
    #Route 3
    
    #AC
    
    AC_IB_period_tf = np.zeros(29*12)
    
    for i in range(12):
               
        AC_IB_Row_index = np.arange(i*29 , (i+1) * 29)
        
        Route3_IB_period_Row_index = np.arange(i * L3/12, i * L3/12 + 29)
        
        AC_IB_period_tf[AC_IB_Row_index.astype(int)] = Route3_IB_period_tf[Route3_IB_period_Row_index.astype(int)]
        
    #CE
    
    CE_IB_period_tf = np.zeros(24*12)
    
    for i in range(12):
               
        CE_IB_Row_index = np.arange(i*24 , (i+1) * 24)
        
        Route3_IB_period_Row_index = np.arange(i * L3/12 + 29, i * L3/12 + 53)
        
        CE_IB_period_tf[CE_IB_Row_index.astype(int)] = Route3_IB_period_tf[Route3_IB_period_Row_index.astype(int)]
        
    #Now the unit lengths can be extracted
    
    AB_Unit_Length = Unit_Route1_length[np.arange(0,17)]
    
    BD_Unit_Length = Unit_Route1_length[np.arange(17,139)]
    
    DE_Unit_Length = Unit_Route1_length[np.arange(139,151)]
    
    EF_Unit_Length = Unit_Route1_length[np.arange(151,153)]
    
    FG_Unit_Length = Unit_Route1_length[np.arange(153,157)]
    
       
    AB_vector_length = len(AB_IB_period_t0);
    
    BD_vector_length = len(BD_IB_period_t0);
    
    DE_vector_length = len(DE_IB_period_t0);
    
    EF_vector_length = len(EF_IB_period_t0);
    
    FG_vector_length = len(FG_IB_period_t0);
    
    #Route 2
    
    AH_Unit_Length = Unit_Route2_length[np.arange(0,24)];
    
    HI_Unit_Length = Unit_Route2_length[np.arange(24,146)];
    
    IE_Unit_Length = Unit_Route2_length[np.arange(146,165)];
    
    AH_vector_length = len(AH_IB_period_t0);
    
    HI_vector_length = len(HI_IB_period_t0);
    
    IE_vector_length = len(IE_IB_period_t0);
    
    #Route 3
    
    AC_Unit_Length = Unit_Route3_length[np.arange(0,29)];
    
    CE_Unit_Length = Unit_Route3_length[np.arange(29,53)];
    
    AC_vector_length = len(AC_IB_period_t0);
    
    CE_vector_length = len(CE_IB_period_t0);
    
    #The periods requiring IB assistance need to be reshaped
    #into an array where 
    
    #t_0
    
    AB_IB_period_t0 = np.reshape(AB_IB_period_t0, (int(AB_vector_length/12), 12), order = 'F')
    
    BD_IB_period_t0 = np.reshape(BD_IB_period_t0, (int(BD_vector_length/12), 12), order = 'F')
    
    DE_IB_period_t0 = np.reshape(DE_IB_period_t0, (int(DE_vector_length/12), 12), order = 'F')
    
    EF_IB_period_t0 = np.reshape(EF_IB_period_t0, (int(EF_vector_length/12), 12), order = 'F')
    
    FG_IB_period_t0 = np.reshape(FG_IB_period_t0, (int(FG_vector_length/12), 12), order = 'F')
    
    #t_m
    
    AB_IB_period_tm = np.reshape(AB_IB_period_tm, (int(AB_vector_length/12), 12), order = 'F')
    
    BD_IB_period_tm = np.reshape(BD_IB_period_tm, (int(BD_vector_length/12), 12), order = 'F')
    
    DE_IB_period_tm = np.reshape(DE_IB_period_tm, (int(DE_vector_length/12), 12), order = 'F')
    
    EF_IB_period_tm = np.reshape(EF_IB_period_tm, (int(EF_vector_length/12), 12), order = 'F')
    
    FG_IB_period_tm = np.reshape(FG_IB_period_tm, (int(FG_vector_length/12), 12), order = 'F')
    
    #t_f
    
    AB_IB_period_tf = np.reshape(AB_IB_period_tf, (int(AB_vector_length/12), 12), order = 'F')
    
    BD_IB_period_tf = np.reshape(BD_IB_period_tf, (int(BD_vector_length/12), 12), order = 'F')
    
    DE_IB_period_tf = np.reshape(DE_IB_period_tf, (int(DE_vector_length/12), 12), order = 'F')
    
    EF_IB_period_tf = np.reshape(EF_IB_period_tf, (int(EF_vector_length/12), 12), order = 'F')
    
    FG_IB_period_tf = np.reshape(FG_IB_period_tf, (int(FG_vector_length/12), 12), order = 'F')
    
    #Route 2
    
    #t_0
    
    AH_IB_period_t0 = np.reshape(AH_IB_period_t0, (int(AH_vector_length/12), 12), order = 'F')
    
    HI_IB_period_t0 = np.reshape(HI_IB_period_t0, (int(HI_vector_length/12), 12), order = 'F')
    
    IE_IB_period_t0 = np.reshape(IE_IB_period_t0, (int(IE_vector_length/12), 12), order = 'F')
    
    #t_m
    
    AH_IB_period_tm = np.reshape(AH_IB_period_tm, (int(AH_vector_length/12), 12), order = 'F')
    
    HI_IB_period_tm = np.reshape(HI_IB_period_tm, (int(HI_vector_length/12), 12), order = 'F')
    
    IE_IB_period_tm = np.reshape(IE_IB_period_tm, (int(IE_vector_length/12), 12), order = 'F')
    
    #t_F
    
    AH_IB_period_tf = np.reshape(AH_IB_period_tf, (int(AH_vector_length/12), 12), order = 'F')
    
    HI_IB_period_tf = np.reshape(HI_IB_period_tf, (int(HI_vector_length/12), 12), order = 'F')
    
    IE_IB_period_tf = np.reshape(IE_IB_period_tf, (int(IE_vector_length/12), 12), order = 'F')
    
    #Route 3
    
    #t_0
    
    AC_IB_period_t0 = np.reshape(AC_IB_period_t0, (int(AC_vector_length/12), 12), order = 'F')
    
    CE_IB_period_t0 = np.reshape(CE_IB_period_t0, (int(CE_vector_length/12), 12), order = 'F')
    
    #t_m 
    
    AC_IB_period_tm = np.reshape(AC_IB_period_tm, (int(AC_vector_length/12), 12), order = 'F')
    
    CE_IB_period_tm = np.reshape(CE_IB_period_tm, (int(CE_vector_length/12), 12), order = 'F')
    
    #t_f
    
    AC_IB_period_tf = np.reshape(AC_IB_period_tf, (int(AC_vector_length/12), 12), order = 'F')
    
    CE_IB_period_tf = np.reshape(CE_IB_period_tf, (int(CE_vector_length/12), 12), order = 'F')
    
    #Finally, the distances travelled when operating under ice breaker assistance can be determined
    #thanks to the binary indicators
    
    AB_IB_dist_t0 = AB_IB_period_t0 * np.tile(AB_Unit_Length, (len(AB_IB_period_t0[0]),1)).T
    
    BD_IB_dist_t0 = BD_IB_period_t0 * np.tile(BD_Unit_Length, (len(BD_IB_period_t0[0]),1)).T
    
    DE_IB_dist_t0 = DE_IB_period_t0 * np.tile(DE_Unit_Length, (len(DE_IB_period_t0[0]),1)).T
    
    EF_IB_dist_t0 = EF_IB_period_t0 * np.tile(EF_Unit_Length, (len(EF_IB_period_t0[0]),1)).T
    
    FG_IB_dist_t0 = FG_IB_period_t0 * np.tile(FG_Unit_Length, (len(FG_IB_period_t0[0]),1)).T
    
    AB_IB_dist_tm = AB_IB_period_tm * np.tile(AB_Unit_Length, (len(AB_IB_period_tm[0]),1)).T
    
    BD_IB_dist_tm = BD_IB_period_tm * np.tile(BD_Unit_Length, (len(BD_IB_period_tm[0]),1)).T
    
    DE_IB_dist_tm = DE_IB_period_tm * np.tile(DE_Unit_Length, (len(DE_IB_period_tm[0]),1)).T
    
    EF_IB_dist_tm = EF_IB_period_tm * np.tile(EF_Unit_Length, (len(EF_IB_period_tm[0]),1)).T
    
    FG_IB_dist_tm = FG_IB_period_tm * np.tile(FG_Unit_Length, (len(FG_IB_period_tm[0]),1)).T
    
    AB_IB_dist_tf = AB_IB_period_tf * np.tile(AB_Unit_Length, (len(AB_IB_period_tf[0]),1)).T
    
    BD_IB_dist_tf = BD_IB_period_tf * np.tile(BD_Unit_Length, (len(BD_IB_period_tf[0]),1)).T
    
    DE_IB_dist_tf = DE_IB_period_tf * np.tile(DE_Unit_Length, (len(DE_IB_period_tf[0]),1)).T
    
    EF_IB_dist_tf = EF_IB_period_tf * np.tile(EF_Unit_Length, (len(EF_IB_period_tf[0]),1)).T
    
    FG_IB_dist_tf = FG_IB_period_tf * np.tile(FG_Unit_Length, (len(FG_IB_period_tf[0]),1)).T
        
    #Route 2
    
    AH_IB_dist_t0 = AH_IB_period_t0 * np.tile(AH_Unit_Length, (len(AH_IB_period_t0[0]),1)).T
    
    HI_IB_dist_t0 = HI_IB_period_t0 * np.tile(HI_Unit_Length, (len(HI_IB_period_t0[0]),1)).T
    
    IE_IB_dist_t0 = IE_IB_period_t0 * np.tile(IE_Unit_Length, (len(IE_IB_period_t0[0]),1)).T
    
    AH_IB_dist_tm = AH_IB_period_tm * np.tile(AH_Unit_Length, (len(AH_IB_period_tm[0]),1)).T
    
    HI_IB_dist_tm = HI_IB_period_tm * np.tile(HI_Unit_Length, (len(HI_IB_period_tm[0]),1)).T
    
    IE_IB_dist_tm = IE_IB_period_tm * np.tile(IE_Unit_Length, (len(IE_IB_period_tm[0]),1)).T
    
    AH_IB_dist_tf = AH_IB_period_tf * np.tile(AH_Unit_Length, (len(AH_IB_period_tf[0]),1)).T
    
    HI_IB_dist_tf = HI_IB_period_tf * np.tile(HI_Unit_Length, (len(HI_IB_period_tf[0]),1)).T
    
    IE_IB_dist_tf = IE_IB_period_tf * np.tile(IE_Unit_Length, (len(IE_IB_period_tf[0]),1)).T
        
    #Route 3
    
    AC_IB_dist_t0 = AC_IB_period_t0 * np.tile(AC_Unit_Length, (len(AC_IB_period_t0[0]),1)).T
    
    CE_IB_dist_t0 = CE_IB_period_t0 * np.tile(CE_Unit_Length, (len(CE_IB_period_t0[0]),1)).T
        
    AC_IB_dist_tm = AC_IB_period_tm * np.tile(AC_Unit_Length, (len(AC_IB_period_tm[0]),1)).T
    
    CE_IB_dist_tm = CE_IB_period_tm * np.tile(CE_Unit_Length, (len(CE_IB_period_tm[0]),1)).T
    
    AC_IB_dist_tf = AC_IB_period_tf * np.tile(AC_Unit_Length, (len(AC_IB_period_tf[0]),1)).T
    
    CE_IB_dist_tf = CE_IB_period_tf * np.tile(CE_Unit_Length, (len(CE_IB_period_tf[0]),1)).T
    
   
    #The speed recommended by the IMO when tailing an icebreaker is 3 knots
    #so now we can use speed - distance - time relationship 
    
    IB_speed = 3
    
    AB_IB_time_t0 = np.sum(AB_IB_dist_t0, axis = 0)/(24*IB_speed)
    
    BD_IB_time_t0 = np.sum(BD_IB_dist_t0, axis = 0)/(24*IB_speed)
    
    DE_IB_time_t0 = np.sum(DE_IB_dist_t0, axis = 0)/(24*IB_speed)
    
    EF_IB_time_t0 = np.sum(EF_IB_dist_t0, axis = 0)/(24*IB_speed)
    
    FG_IB_time_t0 = np.sum(FG_IB_dist_t0, axis = 0)/(24*IB_speed)
    
    AB_IB_time_tm = np.sum(AB_IB_dist_tm, axis = 0)/(24*IB_speed)
    
    BD_IB_time_tm = np.sum(BD_IB_dist_tm, axis = 0)/(24*IB_speed)
    
    DE_IB_time_tm = np.sum(DE_IB_dist_tm, axis = 0)/(24*IB_speed)
    
    EF_IB_time_tm = np.sum(EF_IB_dist_tm, axis = 0)/(24*IB_speed)
    
    FG_IB_time_tm = np.sum(FG_IB_dist_tm, axis = 0)/(24*IB_speed)

    AB_IB_time_tf = np.sum(AB_IB_dist_tf, axis = 0)/(24*IB_speed)
    
    BD_IB_time_tf = np.sum(BD_IB_dist_tf, axis = 0)/(24*IB_speed)
    
    DE_IB_time_tf = np.sum(DE_IB_dist_tf, axis = 0)/(24*IB_speed)
    
    EF_IB_time_tf = np.sum(EF_IB_dist_tf, axis = 0)/(24*IB_speed)
    
    FG_IB_time_tf = np.sum(FG_IB_dist_tf, axis = 0)/(24*IB_speed)    
    
    
    #Route 2
    
    AH_IB_time_t0 = np.sum(AH_IB_dist_t0, axis = 0)/(24*IB_speed)
    
    HI_IB_time_t0 = np.sum(HI_IB_dist_t0, axis = 0)/(24*IB_speed)

    IE_IB_time_t0 = np.sum(IE_IB_dist_t0, axis = 0)/(24*IB_speed)

    AH_IB_time_tm = np.sum(AH_IB_dist_tm, axis = 0)/(24*IB_speed)
    
    HI_IB_time_tm = np.sum(HI_IB_dist_tm, axis = 0)/(24*IB_speed)

    IE_IB_time_tm = np.sum(IE_IB_dist_tm, axis = 0)/(24*IB_speed)

    AH_IB_time_tf = np.sum(AH_IB_dist_tf, axis = 0)/(24*IB_speed)
    
    HI_IB_time_tf = np.sum(HI_IB_dist_tf, axis = 0)/(24*IB_speed)

    IE_IB_time_tf = np.sum(IE_IB_dist_tf, axis = 0)/(24*IB_speed)
    
    #Route 3
    
    AC_IB_time_t0 = np.sum(AC_IB_dist_t0, axis = 0)/(24*IB_speed)
    
    CE_IB_time_t0 = np.sum(CE_IB_dist_t0, axis = 0)/(24*IB_speed)
    
    AC_IB_time_tm = np.sum(AC_IB_dist_tm, axis = 0)/(24*IB_speed)
    
    CE_IB_time_tm = np.sum(CE_IB_dist_tm, axis = 0)/(24*IB_speed)
    
    AC_IB_time_tf = np.sum(AC_IB_dist_tf, axis = 0)/(24*IB_speed)
    
    CE_IB_time_tf = np.sum(CE_IB_dist_tf, axis = 0)/(24*IB_speed)
    
    
    #Finally we can concatenate the route segments 
    
    Route1_IB_array_t0 = np.vstack((AB_IB_time_t0, BD_IB_time_t0, DE_IB_time_t0,
                                    EF_IB_time_t0, FG_IB_time_t0)).T
    
    Route2_IB_array_t0 = np.vstack((AH_IB_time_t0, HI_IB_time_t0, IE_IB_time_t0,
                                    EF_IB_time_t0, FG_IB_time_t0)).T
    
    Route3_IB_array_t0 = np.vstack((AC_IB_time_t0, CE_IB_time_t0, EF_IB_time_t0,
                                    FG_IB_time_t0)).T
    
    Route1_IB_array_tm = np.vstack((AB_IB_time_tm, BD_IB_time_tm, DE_IB_time_tm,
                                    EF_IB_time_tm, FG_IB_time_tm)).T
    
    Route2_IB_array_tm = np.vstack((AH_IB_time_tm, HI_IB_time_tm, IE_IB_time_tm,
                                    EF_IB_time_tm, FG_IB_time_tm)).T
    
    Route3_IB_array_tm = np.vstack((AC_IB_time_tm, CE_IB_time_tm, EF_IB_time_tm,
                                    FG_IB_time_tm)).T
    
    Route1_IB_array_tf = np.vstack((AB_IB_time_tf, BD_IB_time_tf, DE_IB_time_tf,
                                    EF_IB_time_tf, FG_IB_time_tf)).T
    
    Route2_IB_array_tf = np.vstack((AH_IB_time_tf, HI_IB_time_tf, IE_IB_time_tf,
                                    EF_IB_time_tf, FG_IB_time_tf)).T
    
    Route3_IB_array_tf = np.vstack((AC_IB_time_tf, CE_IB_time_tf, EF_IB_time_tf,
                                    FG_IB_time_tf)).T
    
    #Summing along each row gives the total time required for IB assistance
    
    Route1_IB_array_t0 = np.sum(Route1_IB_array_t0, axis = 1)
    
    Route1_IB_array_tm = np.sum(Route1_IB_array_tm, axis = 1)
    
    Route1_IB_array_tf = np.sum(Route1_IB_array_tf, axis = 1)
    
    Route2_IB_array_t0 = np.sum(Route2_IB_array_t0, axis = 1)
    
    Route2_IB_array_tm = np.sum(Route2_IB_array_tm, axis = 1)
    
    Route2_IB_array_tf = np.sum(Route2_IB_array_tf, axis = 1)
    
    Route3_IB_array_t0 = np.sum(Route3_IB_array_t0, axis = 1)
    
    Route3_IB_array_tm = np.sum(Route3_IB_array_tm, axis = 1)
    
    Route3_IB_array_tf = np.sum(Route3_IB_array_tf, axis = 1)
    
    #Now using a set of conditions, a binary array can be created using 
    #the values calculated to producea logical value for the navigable window 
    
    Route1_IB_array_t0[Route1_IB_array_t0 < 0.001] = 1; Route1_IB_array_t0[Route1_IB_array_t0 > 1] = 0
    Route1_IB_array_t0[Route1_IB_array_t0 != 1] = 0
    
    Route1_IB_array_tm[Route1_IB_array_tm < 0.001] = 1; Route1_IB_array_tm[Route1_IB_array_tm > 1] = 0
    Route1_IB_array_tm[Route1_IB_array_tm != 1] = 0
    
    Route1_IB_array_tf[Route1_IB_array_tf < 0.001] = 1; Route1_IB_array_tf[Route1_IB_array_tf > 1] = 0
    Route1_IB_array_tf[Route1_IB_array_tf != 1] = 0

    Route2_IB_array_t0[Route2_IB_array_t0 < 0.001] = 1; Route2_IB_array_t0[Route2_IB_array_t0 > 1] = 0
    Route2_IB_array_t0[Route2_IB_array_t0 != 1] = 0
    
    Route2_IB_array_tm[Route2_IB_array_tm < 0.001] = 1; Route2_IB_array_tm[Route2_IB_array_tm > 1] = 0
    Route2_IB_array_tm[Route2_IB_array_tm != 1] = 0
    
    Route2_IB_array_tf[Route2_IB_array_tf < 0.001] = 1; Route2_IB_array_tf[Route2_IB_array_tf > 1] = 0
    Route2_IB_array_tf[Route2_IB_array_tf != 1] = 0

    Route3_IB_array_t0[Route3_IB_array_t0 < 0.001] = 1; Route3_IB_array_t0[Route3_IB_array_t0 > 1] = 0
    Route3_IB_array_t0[Route3_IB_array_t0 != 1] = 0
    
    Route3_IB_array_tm[Route3_IB_array_tm < 0.001] = 1; Route3_IB_array_tm[Route3_IB_array_tm > 1] = 0
    Route3_IB_array_tm[Route3_IB_array_tm != 1] = 0
    
    Route3_IB_array_tf[Route3_IB_array_tf < 0.001] = 1; Route3_IB_array_tf[Route3_IB_array_tf > 1] = 0
    Route3_IB_array_tf[Route3_IB_array_tf != 1] = 0
    
    Logic_mat_Route1_IceStrength_SCE2_t0 = Route1_IB_array_t0
    
    Logic_mat_Route1_IceStrength_SCE2_tm = Route1_IB_array_tm
    
    Logic_mat_Route1_IceStrength_SCE2_tf = Route1_IB_array_tf
    
    Logic_mat_Route2_IceStrength_SCE2_t0 = Route2_IB_array_t0
    
    Logic_mat_Route2_IceStrength_SCE2_tm = Route2_IB_array_tm
    
    Logic_mat_Route2_IceStrength_SCE2_tf = Route2_IB_array_tf
    
    Logic_mat_Route3_IceStrength_SCE2_t0 = Route3_IB_array_t0
    
    Logic_mat_Route3_IceStrength_SCE2_tm = Route3_IB_array_tm
    
    Logic_mat_Route3_IceStrength_SCE2_tf = Route3_IB_array_tf
    
    #Calculating the navigable window for OW ships is a lot more straightforward, because accordign to guidelines
    #anywhere where the risk index is less than 0 it must be guided by an IB
    
    Route1_OW_risk_matrix_t0 = np.zeros(len(SIT_Route1_t0))
    
    for i in range(0, len(Route1_OW_risk_matrix_t0)):
        
         if SIT_Route1_t0[i] < 0.0001:
             
            Route1_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Ice_free[1];

         elif (SIT_Route1_t0[i] >= 0.0001) and (SIT_Route1_t0[i] <0.1):
                
                Route1_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.New_ice[1];
    
         elif SIT_Route1_t0[i] >= 0.1 and SIT_Route1_t0[i] <0.15:
                
                Route1_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_ice[1];
    
         elif SIT_Route1_t0[i] >= 0.15 and SIT_Route1_t0[i] <0.3:
                
                Route1_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[1];
    
         elif SIT_Route1_t0[i] >= 0.3 and SIT_Route1_t0[i] <0.5:
                
                Route1_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[1];
    
         elif SIT_Route1_t0[i] >= 0.5 and SIT_Route1_t0[i] <0.7:
                
                Route1_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[1];
    
         elif SIT_Route1_t0[i] >= 0.7 and SIT_Route1_t0[i] <1:
                
                Route1_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[1];
    
         elif SIT_Route1_t0[i] >=1  and SIT_Route1_t0[i] <1.2:
                
                Route1_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[1];
                
         elif SIT_Route1_t0[i] >=1.2  and SIT_Route1_t0[i] <2.5:
                
                Route1_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[1];
                
         elif SIT_Route1_t0[i] >=2.5  and SIT_Route1_t0[i] <3:
                
                Route1_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[1];
                
         elif SIT_Route1_t0[i] >=3:
                
                Route1_OW_risk_matrix_t0[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[1];
                
    Route1_OW_risk_matrix_tm = np.zeros(len(SIT_Route1_tm))
    
    for i in range(0, len(Route1_OW_risk_matrix_tm)):
        
         if SIT_Route1_tm[i] < 0.0001:
             
            Route1_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Ice_free[1];

         elif (SIT_Route1_tm[i] >= 0.0001) and (SIT_Route1_tm[i] <0.1):
                
                Route1_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.New_ice[1];
    
         elif SIT_Route1_tm[i] >= 0.1 and SIT_Route1_tm[i] <0.15:
                
                Route1_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_ice[1];
    
         elif SIT_Route1_tm[i] >= 0.15 and SIT_Route1_tm[i] <0.3:
                
                Route1_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[1];
    
         elif SIT_Route1_tm[i] >= 0.3 and SIT_Route1_tm[i] <0.5:
                
                Route1_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[1];
    
         elif SIT_Route1_tm[i] >= 0.5 and SIT_Route1_tm[i] <0.7:
                
                Route1_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[1];
    
         elif SIT_Route1_tm[i] >= 0.7 and SIT_Route1_tm[i] <1:
                
                Route1_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[1];
    
         elif SIT_Route1_tm[i] >=1  and SIT_Route1_tm[i] <1.2:
                
                Route1_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[1];
                
         elif SIT_Route1_tm[i] >=1.2  and SIT_Route1_tm[i] <2.5:
                
                Route1_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[1];
                
         elif SIT_Route1_tm[i] >=2.5  and SIT_Route1_tm[i] <3:
                
                Route1_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[1];
                
         elif SIT_Route1_tm[i] >=3:
                
                Route1_OW_risk_matrix_tm[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[1];         
    
    Route1_OW_risk_matrix_tf = np.zeros(len(SIT_Route1_tf))
    
    for i in range(0, len(Route1_OW_risk_matrix_tf)):
        
         if SIT_Route1_tf[i] < 0.0001:
             
            Route1_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Ice_free[1];

         elif (SIT_Route1_tf[i] >= 0.0001) and (SIT_Route1_tf[i] <0.1):
                
                Route1_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.New_ice[1];
    
         elif SIT_Route1_tf[i] >= 0.1 and SIT_Route1_tf[i] <0.15:
                
                Route1_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_ice[1];
    
         elif SIT_Route1_tf[i] >= 0.15 and SIT_Route1_tf[i] <0.3:
                
                Route1_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[1];
    
         elif SIT_Route1_tf[i] >= 0.3 and SIT_Route1_tf[i] <0.5:
                
                Route1_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[1];
    
         elif SIT_Route1_tf[i] >= 0.5 and SIT_Route1_tf[i] <0.7:
                
                Route1_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[1];
    
         elif SIT_Route1_tf[i] >= 0.7 and SIT_Route1_tf[i] <1:
                
                Route1_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[1];
    
         elif SIT_Route1_tf[i] >=1  and SIT_Route1_tf[i] <1.2:
                
                Route1_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[1];
                
         elif SIT_Route1_tf[i] >=1.2  and SIT_Route1_tf[i] <2.5:
                
                Route1_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[1];
                
         elif SIT_Route1_tf[i] >=2.5  and SIT_Route1_tf[i] <3:
                
                Route1_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[1];
                
         elif SIT_Route1_tf[i] >=3:
                
                Route1_OW_risk_matrix_tf[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[1];
    
    #Route 2
    
    Route2_OW_risk_matrix_t0 = np.zeros(len(SIT_Route2_t0))
    
    for i in range(0, len(Route2_OW_risk_matrix_t0)):
        
         if SIT_Route2_t0[i] < 0.0001:
             
            Route2_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Ice_free[1];

         elif (SIT_Route2_t0[i] >= 0.0001) and (SIT_Route2_t0[i] <0.1):
                
                Route2_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.New_ice[1];
    
         elif SIT_Route2_t0[i] >= 0.1 and SIT_Route2_t0[i] <0.15:
                
                Route2_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_ice[1];
    
         elif SIT_Route2_t0[i] >= 0.15 and SIT_Route2_t0[i] <0.3:
                
                Route2_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[1];
    
         elif SIT_Route2_t0[i] >= 0.3 and SIT_Route2_t0[i] <0.5:
                
                Route2_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[1];
    
         elif SIT_Route2_t0[i] >= 0.5 and SIT_Route2_t0[i] <0.7:
                
                Route2_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[1];
    
         elif SIT_Route2_t0[i] >= 0.7 and SIT_Route2_t0[i] <1:
                
                Route2_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[1];
    
         elif SIT_Route2_t0[i] >=1  and SIT_Route2_t0[i] <1.2:
                
                Route2_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[1];
                
         elif SIT_Route2_t0[i] >=1.2  and SIT_Route2_t0[i] <2.5:
                
                Route2_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[1];
                
         elif SIT_Route2_t0[i] >=2.5  and SIT_Route2_t0[i] <3:
                
                Route2_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[1];
                
         elif SIT_Route2_t0[i] >=3:
                
                Route2_OW_risk_matrix_t0[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[1];
                
    Route2_OW_risk_matrix_tm = np.zeros(len(SIT_Route2_tm))
    
    for i in range(0, len(Route2_OW_risk_matrix_tm)):
        
         if SIT_Route2_tm[i] < 0.0001:
             
            Route2_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Ice_free[1];

         elif (SIT_Route2_tm[i] >= 0.0001) and (SIT_Route2_tm[i] <0.1):
                
                Route2_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.New_ice[1];
    
         elif SIT_Route2_tm[i] >= 0.1 and SIT_Route2_tm[i] <0.15:
                
                Route2_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_ice[1];
    
         elif SIT_Route2_tm[i] >= 0.15 and SIT_Route2_tm[i] <0.3:
                
                Route2_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[1];
    
         elif SIT_Route2_tm[i] >= 0.3 and SIT_Route2_tm[i] <0.5:
                
                Route2_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[1];
    
         elif SIT_Route2_tm[i] >= 0.5 and SIT_Route2_tm[i] <0.7:
                
                Route2_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[1];
    
         elif SIT_Route2_tm[i] >= 0.7 and SIT_Route2_tm[i] <1:
                
                Route2_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[1];
    
         elif SIT_Route2_tm[i] >=1  and SIT_Route2_tm[i] <1.2:
                
                Route2_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[1];
                
         elif SIT_Route2_tm[i] >=1.2  and SIT_Route2_tm[i] <2.5:
                
                Route2_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[1];
                
         elif SIT_Route2_tm[i] >=2.5  and SIT_Route2_tm[i] <3:
                
                Route2_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[1];
                
         elif SIT_Route2_tm[i] >=3:
                
                Route2_OW_risk_matrix_tm[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[1];         
    
    Route2_OW_risk_matrix_tf = np.zeros(len(SIT_Route2_tf))
    
    for i in range(0, len(Route2_OW_risk_matrix_tf)):
        
         if SIT_Route2_tf[i] < 0.0001:
             
            Route2_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Ice_free[1];

         elif (SIT_Route2_tf[i] >= 0.0001) and (SIT_Route2_tf[i] <0.1):
                
                Route2_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.New_ice[1];
    
         elif SIT_Route2_tf[i] >= 0.1 and SIT_Route2_tf[i] <0.15:
                
                Route2_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_ice[1];
    
         elif SIT_Route2_tf[i] >= 0.15 and SIT_Route2_tf[i] <0.3:
                
                Route2_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[1];
    
         elif SIT_Route2_tf[i] >= 0.3 and SIT_Route2_tf[i] <0.5:
                
                Route2_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[1];
    
         elif SIT_Route2_tf[i] >= 0.5 and SIT_Route2_tf[i] <0.7:
                
                Route2_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[1];
    
         elif SIT_Route2_tf[i] >= 0.7 and SIT_Route2_tf[i] <1:
                
                Route2_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[1];
    
         elif SIT_Route2_tf[i] >=1  and SIT_Route2_tf[i] <1.2:
                
                Route2_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[1];
                
         elif SIT_Route2_tf[i] >=1.2  and SIT_Route2_tf[i] <2.5:
                
                Route2_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[1];
                
         elif SIT_Route2_tf[i] >=2.5  and SIT_Route2_tf[i] <3:
                
                Route2_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[1];
                
         elif SIT_Route2_tf[i] >=3:
                
                Route2_OW_risk_matrix_tf[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[1];
                
    #Route 3
    
    Route3_OW_risk_matrix_t0 = np.zeros(len(SIT_Route3_t0))
    
    for i in range(0, len(Route3_OW_risk_matrix_t0)):
        
         if SIT_Route3_t0[i] < 0.0001:
             
            Route3_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Ice_free[1];

         elif (SIT_Route3_t0[i] >= 0.0001) and (SIT_Route3_t0[i] <0.1):
                
                Route3_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.New_ice[1];
    
         elif SIT_Route3_t0[i] >= 0.1 and SIT_Route3_t0[i] <0.15:
                
                Route3_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_ice[1];
    
         elif SIT_Route3_t0[i] >= 0.15 and SIT_Route3_t0[i] <0.3:
                
                Route3_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[1];
    
         elif SIT_Route3_t0[i] >= 0.3 and SIT_Route3_t0[i] <0.5:
                
                Route3_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[1];
    
         elif SIT_Route3_t0[i] >= 0.5 and SIT_Route3_t0[i] <0.7:
                
                Route3_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[1];
    
         elif SIT_Route3_t0[i] >= 0.7 and SIT_Route3_t0[i] <1:
                
                Route3_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[1];
    
         elif SIT_Route3_t0[i] >=1  and SIT_Route3_t0[i] <1.2:
                
                Route3_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[1];
                
         elif SIT_Route3_t0[i] >=1.2  and SIT_Route3_t0[i] <2.5:
                
                Route3_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[1];
                
         elif SIT_Route3_t0[i] >=2.5  and SIT_Route3_t0[i] <3:
                
                Route3_OW_risk_matrix_t0[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[1];
                
         elif SIT_Route3_t0[i] >=3:
                
                Route3_OW_risk_matrix_t0[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[1];
                
    Route3_OW_risk_matrix_tm = np.zeros(len(SIT_Route3_tm))
    
    for i in range(0, len(Route3_OW_risk_matrix_tm)):
        
         if SIT_Route3_tm[i] < 0.0001:
             
            Route3_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Ice_free[1];

         elif (SIT_Route3_tm[i] >= 0.0001) and (SIT_Route3_tm[i] <0.1):
                
                Route3_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.New_ice[1];
    
         elif SIT_Route3_tm[i] >= 0.1 and SIT_Route3_tm[i] <0.15:
                
                Route3_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_ice[1];
    
         elif SIT_Route3_tm[i] >= 0.15 and SIT_Route3_tm[i] <0.3:
                
                Route3_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[1];
    
         elif SIT_Route3_tm[i] >= 0.3 and SIT_Route3_tm[i] <0.5:
                
                Route3_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[1];
    
         elif SIT_Route3_tm[i] >= 0.5 and SIT_Route3_tm[i] <0.7:
                
                Route3_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[1];
    
         elif SIT_Route3_tm[i] >= 0.7 and SIT_Route3_tm[i] <1:
                
                Route3_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[1];
    
         elif SIT_Route3_tm[i] >=1  and SIT_Route3_tm[i] <1.2:
                
                Route3_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[1];
                
         elif SIT_Route3_tm[i] >=1.2  and SIT_Route3_tm[i] <2.5:
                
                Route3_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[1];
                
         elif SIT_Route3_tm[i] >=2.5  and SIT_Route3_tm[i] <3:
                
                Route3_OW_risk_matrix_tm[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[1];
                
         elif SIT_Route3_tm[i] >=3:
                
                Route3_OW_risk_matrix_tm[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[1];         
    
    Route3_OW_risk_matrix_tf = np.zeros(len(SIT_Route3_tf))
    
    for i in range(0, len(Route3_OW_risk_matrix_tf)):
        
         if SIT_Route3_tf[i] < 0.0001:
             
            Route3_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Ice_free[1];

         elif (SIT_Route3_tf[i] >= 0.0001) and (SIT_Route3_tf[i] <0.1):
                
                Route3_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.New_ice[1];
    
         elif SIT_Route3_tf[i] >= 0.1 and SIT_Route3_tf[i] <0.15:
                
                Route3_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_ice[1];
    
         elif SIT_Route3_tf[i] >= 0.15 and SIT_Route3_tf[i] <0.3:
                
                Route3_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Grey_White_ice[1];
    
         elif SIT_Route3_tf[i] >= 0.3 and SIT_Route3_tf[i] <0.5:
                
                Route3_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_ice_first_stage[1];
    
         elif SIT_Route3_tf[i] >= 0.5 and SIT_Route3_tf[i] <0.7:
                
                Route3_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thin_First_year_Ice_Second_stage[1];
    
         elif SIT_Route3_tf[i] >= 0.7 and SIT_Route3_tf[i] <1:
                
                Route3_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice_less_than_onem[1];
    
         elif SIT_Route3_tf[i] >=1  and SIT_Route3_tf[i] <1.2:
                
                Route3_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Medium_First_year_Ice[1];
                
         elif SIT_Route3_tf[i] >=1.2  and SIT_Route3_tf[i] <2.5:
                
                Route3_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Thick_First_Year_Ice[1];
                
         elif SIT_Route3_tf[i] >=2.5  and SIT_Route3_tf[i] <3:
                
                Route3_OW_risk_matrix_tf[i]= g_POLARIS_Risk_indices_df.Second_Year_Ice[1];
                
         elif SIT_Route3_tf[i] >=3:
                
                Route3_OW_risk_matrix_tf[i] = g_POLARIS_Risk_indices_df.Multi_Year_Ice[1];
    
    #Route 1
    
    Route1_OW_IB_period_t0 = Route1_OW_risk_matrix_t0; Route1_OW_IB_period_t0[ Route1_OW_IB_period_t0 < 0] = -10000
        
    Route1_OW_IB_period_tm = Route1_OW_risk_matrix_tm; Route1_OW_IB_period_tm[ Route1_OW_IB_period_tm < 0] = -10000
        
    Route1_OW_IB_period_tf = Route1_OW_risk_matrix_tf; Route1_OW_IB_period_tf[ Route1_OW_IB_period_tf < 0] = -10000
        
    #Route 2
    
    Route2_OW_IB_period_t0 = Route2_OW_risk_matrix_t0; Route2_OW_IB_period_t0[ Route2_OW_IB_period_t0 < 0] = -10000
        
    Route2_OW_IB_period_tm = Route2_OW_risk_matrix_tm; Route2_OW_IB_period_tm[ Route2_OW_IB_period_tm < 0] = -10000
        
    Route2_OW_IB_period_tf = Route2_OW_risk_matrix_tf; Route2_OW_IB_period_tf[ Route2_OW_IB_period_tf < 0] = -10000
        
    #Route 3
    
    Route3_OW_IB_period_t0 = Route3_OW_risk_matrix_t0; Route3_OW_IB_period_t0[ Route3_OW_IB_period_t0 < 0] = -10000
        
    Route3_OW_IB_period_tm = Route3_OW_risk_matrix_tm; Route3_OW_IB_period_tm[ Route3_OW_IB_period_tm < 0] = -10000
        
    Route3_OW_IB_period_tf = Route3_OW_risk_matrix_tf; Route3_OW_IB_period_tf[ Route3_OW_IB_period_tf < 0] = -10000
    
    #Now the routes 
    
    OW_L1 = len(Route1_OW_IB_period_t0); OW_L2 = len(Route2_OW_IB_period_t0); OW_L3 = len(Route3_OW_IB_period_t0)
    
    Route1_OW_IB_array_t0 = np.zeros(12)
      
    for i in range(12):
        
        Route1_OW_IB_array_t0[i] = np.sum(Route1_OW_IB_period_t0[i * int(OW_L1/12) : (i+1) * int(OW_L1/12)])
        
    Route1_OW_IB_array_tm = np.zeros(12)
      
    for i in range(12):
        
        Route1_OW_IB_array_tm[i] = np.sum(Route1_OW_IB_period_tm[i * int(OW_L1/12) : (i+1) * int(OW_L1/12)])
        
    Route1_OW_IB_array_tf = np.zeros(12)
      
    for i in range(12):
        
        Route1_OW_IB_array_tf[i] = np.sum(Route1_OW_IB_period_tf[i * int(OW_L1/12) : (i+1) * int(OW_L1/12)])
        
    #Route 2
   
    Route2_OW_IB_array_t0 = np.zeros(12)
      
    for i in range(12):
        
        Route2_OW_IB_array_t0[i] = np.sum(Route2_OW_IB_period_t0[i * int(OW_L2/12) : (i+1) * int(OW_L2/12)])
        
    Route2_OW_IB_array_tm = np.zeros(12)
      
    for i in range(12):
        
        Route2_OW_IB_array_tm[i] = np.sum(Route2_OW_IB_period_tm[i * int(OW_L2/12) : (i+1) * int(OW_L2/12)])
        
    Route2_OW_IB_array_tf = np.zeros(12)
      
    for i in range(12):
        
        Route2_OW_IB_array_tf[i] = np.sum(Route2_OW_IB_period_tf[i * int(OW_L2/12) : (i+1) * int(OW_L2/12)])
        
    
    #Route 3
    
    Route3_OW_IB_array_t0 = np.zeros(12)
      
    for i in range(12):
        
        Route3_OW_IB_array_t0[i] = np.sum(Route3_OW_IB_period_t0[i * int(OW_L3/12) : (i+1) * int(OW_L3/12)])
        
    Route3_OW_IB_array_tm = np.zeros(12)
      
    for i in range(12):
        
        Route3_OW_IB_array_tm[i] = np.sum(Route3_OW_IB_period_tm[i * int(OW_L3/12) : (i+1) * int(OW_L3/12)])
        
    Route3_OW_IB_array_tf = np.zeros(12)
      
    for i in range(12):
        
        Route3_OW_IB_array_tf[i] = np.sum(Route3_OW_IB_period_tf[i * int(OW_L3/12) : (i+1) * int(OW_L3/12)])
        
       
    #Route 1
    
    Route1_OW_IB_array_t0[ Route1_OW_IB_array_t0 < 0] = 0; Route1_OW_IB_array_t0[ Route1_OW_IB_array_t0 > 0] = 1
    
    Route1_OW_IB_array_tm[ Route1_OW_IB_array_tm < 0] = 0; Route1_OW_IB_array_tm[ Route1_OW_IB_array_tm > 0] = 1
    
    Route1_OW_IB_array_tf[ Route1_OW_IB_array_tf < 0] = 0; Route1_OW_IB_array_tf[ Route1_OW_IB_array_tf > 0] = 1
    
    #Route 2
    
    Route2_OW_IB_array_t0[ Route2_OW_IB_array_t0 < 0] = 0; Route2_OW_IB_array_t0[ Route2_OW_IB_array_t0 > 0] = 1
    
    Route2_OW_IB_array_tm[ Route2_OW_IB_array_tm < 0] = 0; Route2_OW_IB_array_tm[ Route2_OW_IB_array_tm > 0] = 1
    
    Route2_OW_IB_array_tf[ Route2_OW_IB_array_tf < 0] = 0; Route2_OW_IB_array_tf[ Route2_OW_IB_array_tf > 0] = 1

    #Route 3
    
    Route3_OW_IB_array_t0[ Route3_OW_IB_array_t0 < 0] = 0; Route3_OW_IB_array_t0[ Route3_OW_IB_array_t0 > 0] = 1
    
    Route3_OW_IB_array_tm[ Route3_OW_IB_array_tm < 0] = 0; Route3_OW_IB_array_tm[ Route3_OW_IB_array_tm > 0] = 1
    
    Route3_OW_IB_array_tf[ Route3_OW_IB_array_tf < 0] = 0; Route3_OW_IB_array_tf[ Route3_OW_IB_array_tf > 0] = 1  
    
    Logic_mat_Route1_OW_SCE2_t0 = Route1_OW_IB_array_t0; Logic_mat_Route1_OW_SCE2_tm = Route1_OW_IB_array_tm; 
    Logic_mat_Route1_OW_SCE2_tf = Route1_OW_IB_array_tf; 
    
    Logic_mat_Route2_OW_SCE2_t0 = Route2_OW_IB_array_t0; Logic_mat_Route2_OW_SCE2_tm = Route2_OW_IB_array_tm; 
    Logic_mat_Route2_OW_SCE2_tf = Route2_OW_IB_array_tf; 
    
    Logic_mat_Route3_OW_SCE2_t0 = Route3_OW_IB_array_t0; Logic_mat_Route3_OW_SCE2_tm = Route3_OW_IB_array_tm; 
    Logic_mat_Route3_OW_SCE2_tf = Route3_OW_IB_array_tf;    
     
    return (Logic_mat_Route1_IceStrength_SCE2_t0, Logic_mat_Route1_IceStrength_SCE2_tm, Logic_mat_Route1_IceStrength_SCE2_tf,
            Logic_mat_Route2_IceStrength_SCE2_t0, Logic_mat_Route2_IceStrength_SCE2_tm, Logic_mat_Route2_IceStrength_SCE2_tf,
            Logic_mat_Route3_IceStrength_SCE2_t0, Logic_mat_Route3_IceStrength_SCE2_tm, Logic_mat_Route3_IceStrength_SCE2_tf,
            Logic_mat_Route1_OW_SCE2_t0, Logic_mat_Route1_OW_SCE2_tm, Logic_mat_Route1_OW_SCE2_tf,
            Logic_mat_Route2_OW_SCE2_t0, Logic_mat_Route2_OW_SCE2_tm, Logic_mat_Route2_OW_SCE2_tf,
            Logic_mat_Route3_OW_SCE2_t0, Logic_mat_Route3_OW_SCE2_tm, Logic_mat_Route3_OW_SCE2_tf,
            SIT_Route1_t0, SIT_Route1_tm, SIT_Route1_tf, SIT_Route2_t0, SIT_Route2_tm, SIT_Route1_tf,
            SIT_Route3_t0, SIT_Route3_tm, SIT_Route3_tf, SIC_Route1_t0, SIC_Route1_tm, SIC_Route1_tf, 
            SIC_Route2_t0, SIC_Route2_tm, SIC_Route1_tf, SIC_Route3_t0, SIC_Route3_tm, SIC_Route3_tf,
            AB_Unit_Length, BD_Unit_Length, DE_Unit_Length, EF_Unit_Length, FG_Unit_Length, 
            AH_Unit_Length, HI_Unit_Length, IE_Unit_Length, AC_Unit_Length, CE_Unit_Length)


        
        
        
        
        
        
        