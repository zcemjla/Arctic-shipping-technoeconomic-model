# -*- coding: utf-8 -*-
"""
Created on Wed Sep 22 11:19:52 2021

This module acquires additional data from the 4th GHG study based off the input
design specifications 

@author: lambe
"""
import numpy as np 
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import scipy 
import math 


def Processor(g_design_specs_df):
    
    #The first step entails extracting the variables from the design specifications
    #read from WSM
    
    dwt = g_design_specs_df['design_deadweight_te']; TEU = g_design_specs_df['design_TEUs']
    
    #Secondly, the csv files containing data on the specifications of various 
    #OW and ice strengthened vessels must also be read in to build regression models
    #that can then be used to modify the specifications accordingly 
    
    Ice_Bulker_vessel_ds = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/Ice_Bulker_vessels.csv')
    
    Ice_Container_vessel_ds = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/Ice_Container_vessels.csv')
    
    Ice_Wet_Bulker_vessel_ds = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/Ice_WetBulker_vessels.csv')
    
    #These tables also contain data on OW vessels
    
    OW_Bulker_vessel_ds = Ice_Bulker_vessel_ds; 
    
    OW_Container_vessel_ds = Ice_Container_vessel_ds; 
    
    OW_Wet_Bulker_vessel_ds = Ice_Wet_Bulker_vessel_ds
    
    #There is also the IHS dataset
    
    Bulker_Cont_IHS_ds = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/bulker_cont_IHS_specs.csv')
    
    #Now the data must be tiedied up so that the ice class of the vessel can be matched with 
    #the corresponding specification
    
    IC_array = Ice_Bulker_vessel_ds['Ice_class_level'] == 5; 
    
    Ice_Bulker_ME_Power_ds = Ice_Bulker_vessel_ds['Main Engine 1 (mkW)'] * IC_array
    
    Ice_Bulker_Aux_Power_ds = Ice_Bulker_vessel_ds['Auxiliary Engine 1 (mkW)'] * IC_array
    
    Ice_Bulker_GT_ds = Ice_Bulker_vessel_ds['GT'] * IC_array; Ice_Bulker_dwt_ds = Ice_Bulker_vessel_ds['Dwt'] * IC_array
    
    Ice_Bulker_ME_Power_ds = Ice_Bulker_ME_Power_ds[Ice_Bulker_dwt_ds != 0]; Ice_Bulker_Aux_Power_ds = Ice_Bulker_Aux_Power_ds[Ice_Bulker_dwt_ds != 0];
    
    Ice_Bulker_GT_ds = Ice_Bulker_GT_ds[Ice_Bulker_dwt_ds != 0]; Ice_Bulker_dwt_ds = Ice_Bulker_dwt_ds[Ice_Bulker_dwt_ds != 0]; 
    
    Ice_Class_Category = Ice_Bulker_vessel_ds['Ice_class_level']/5
    
    Ice_Bulker_Aux_dwt_ds = Ice_Bulker_dwt_ds[np.logical_not(np.isnan(Ice_Bulker_Aux_Power_ds))]
    
    #OW ship regression specifications are calculated using various datasets, from teh IHS to the clarksons one 
    
    OW_array = Ice_Bulker_vessel_ds['Ice_class_level'] == 0; 
    
    OW_Bulker_ME_Power_ds = Ice_Bulker_vessel_ds['Main Engine 1 (mkW)'] * OW_array
    
    OW_Bulker_Aux_Power_ds = OW_Bulker_vessel_ds['Auxiliary Engine 1 (mkW)'] * OW_array
    
    OW_Bulker_GT_ds = OW_Bulker_vessel_ds['GT'] * OW_array; OW_Bulker_dwt_ds = OW_Bulker_vessel_ds['Dwt'] * OW_array
    
    OW_Bulker_ME_Power_ds = OW_Bulker_ME_Power_ds[OW_Bulker_dwt_ds != 0]; OW_Bulker_Aux_Power_ds = OW_Bulker_Aux_Power_ds[OW_Bulker_dwt_ds != 0];
    
    OW_Bulker_GT_ds = OW_Bulker_GT_ds[OW_Bulker_dwt_ds != 0]; OW_Bulker_dwt_ds = OW_Bulker_dwt_ds[OW_Bulker_dwt_ds != 0];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 
    
    
    
    
    
    return()       