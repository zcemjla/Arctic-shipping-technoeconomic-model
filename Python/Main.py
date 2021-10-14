#This is the Python version of the Arctic shipping techno-economic model, this variant produces 
#deterministic outputs that are based off discrete inputs. The key output is a log normalised performance metric.
#This metric is the natural logarithm of the unit Arctic transport cost, divdied by the unit Suez transport cost,
#the reference unit cost (Suez unit cost) can be varied according to the user's specifications. By default the cost
#corresponds with the same operating fuel mix as the Arctic ship, however for certain scenarios this is not salient 
#and a 2-stroke/LSHFO mix is preferred.

#The unit transport cost is in $ tonne voyages and is inclusive of climatic and air pollution externalities.

#The model must be run twice to visualise the outputs, the first run computes the outputs and the second
#returns the illustrations. 

#First step is import the packages and functions required to run the model

import numpy as np 
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import scipy 

#Importing the module functions 
import Arctic_ice_data_processor as AIP
# import Pre_processor as PP

#Firstly import the reference specifications of each vessel considered, these specifications were obtained from 
#WSM, Calleya et al., (2017)

#These parameters are set to be global (given by the prefig g)
#so they can be used across all the functions

g_design_specs_df = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/design_specifications.csv")

#Then import the POLARIS risk indices for different vessels

g_POLARIS_Risk_indices_df = pd.read_csv("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/Risk_index.csv")

#Import the route input assumptions too 

g_input_assumptions = pd.read_excel("C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/Routeinputs.xlsx")

#The output arrays are pre-allocated to make the computational
#processes more efficient - saving time in calculations

if g_input_assumptions['SSP119'].item() == 0:
    
    #Only bulkers, containers and wet bulkers are considered
    #However both ice class and open water outputs can be analysed
    
    #Year - 
    #t0 - 2020
    #tm - 2035
    #tf - 2050
    
    #This model produces a deterministic output for each considered year,
    #as opposed to a timeseries. 
    
    #Nomenclature - 
    
    #Financial cost all scenarios - FCAS
    #Total cost all scenarios - TCAS
    #Northern Sea Route - NSR
    #Suez Canal Route - SCR
    #Intermediary route - INT
    #Transpolar passage - TPP
    #Ice class - Ice
    #Open water - OW/NonIce
    #Nationally determined contributions - NDCs
    #Greenhouse gases - GHGs
    #Air pollutants - APs
    #Global warming potential - GWP
    
    #Considered fuels 
    #Heavy Fuel Oil - HFO
    #Low Sulphur Heavy Fuel Oil - LSHFO
    #Marine Diesel Oil - MDO
    #Liquefied Natual Gas - LNG
    #Ammonia - Amm
    #Fuel cell - FC
    #Difference - Diff
    
    #Three behavioural senarios are considered
    #Scenario 1 - Year round transits through the Arctic - SCE1
    #Scenario 2 - Transits through the Arctic during the navigable season, and through the Suez when it is 
    #not navigable - SCE2
    #Scenario 3 - Year round transits through the SCR - SCE3
    
    #Financial cost is sum of voyage, capital and operating expenses
    #Total cost is equal to financial costs plus climatic and air pollutant damages
    #Output units are dimensionless, 
    #This is because the unit cost in dollars per tonne voyage($ per tonne voyage)
    #is normalised against a unit baseline reference cost taken to be the unit OW cost of
    #transiting through the Suez route 
    
    #The dimensions of the pre allocated arrays are 3 rows by 60 columns,
    #this number arises from there being 3 years considered (2020, 2035 and 2050) and
    #that five socioeconomic - warming pathways are considered along with 12 operating fuels for each pathway
       
    Ice_Bulker_FCAS_Normalised_NSR = np.zeros((3,5*12)); Ice_Container_FCAS_Normalised_NSR = np.zeros((3,5*12)); Ice_Wet_Bulker_FCAS_Normalised_NSR = np.zeros((3,5*12));
    Ice_Bulker_TCAS_Normalised_NSR = np.zeros((3,5*12)); Ice_Container_TCAS_Normalised_NSR = np.zeros((3,5*12)); Ice_Wet_Bulker_TCAS_Normalised_NSR = np.zeros((3,5*12));
    
    #This model also considers a benchmark using LSHFO as its operating fuel, since this is 
    #more salient to some scenarios 
    
    Ice_LSHFO_Bulker_FCAS_Normalised_NSR = np.zeros((3,5*12)); Ice_LSHFO_Container_FCAS_Normalised_NSR = np.zeros((3,5*12)); Ice_LSHFO_Wet_Bulker_FCAS_Normalised_NSR = np.zeros((3,5*12));
    Ice_LSHFO_Bulker_TCAS_Normalised_NSR = np.zeros((3,5*12)); Ice_LSHFO_Container_TCAS_Normalised_NSR = np.zeros((3,5*12)); Ice_LSHFO_Wet_Bulker_TCAS_Normalised_NSR = np.zeros((3,5*12));
    
    #Some outputs require the calculation of the absolute differential
    
    #For these arrays, HFO is not considered due to the 2020 Sulphur cap which leaves
    #5 operating fuels for analysis
    #The outcomes for SCE1 and SCE2 are vertically concatenated in that order,
    #there are 6 costs aggregate considered across 5 scenarios which means that 
    #the dimensions for these arrays are 10 by 30 
    
    Ice_Bulker_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); Ice_Bulker_DiffAS_NSR_tm = np.zeros((2*5,6*5)); Ice_Bulker_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    Ice_Container_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); Ice_Container_DiffAS_NSR_tm = np.zeros((2*5,6*5)); Ice_Container_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    Ice_Wet_Bulker_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); Ice_Wet_Bulker_DiffAS_NSR_tm = np.zeros((2*5,6*5)); Ice_Wet_Bulker_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    
    Ice_LSHFO_Bulker_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); Ice_LSHFO_Bulker_DiffAS_NSR_tm = np.zeros((2*5,6*5)); Ice_LSHFO_Bulker_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    Ice_LSHFO_Container_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); Ice_LSHFO_Container_DiffAS_NSR_tm = np.zeros((2*5,6*5)); Ice_LSHFO_Container_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    Ice_LSHFO_Wet_Bulker_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); Ice_LSHFO_Wet_Bulker_DiffAS_NSR_tm = np.zeros((2*5,6*5)); Ice_LSHFO_Wet_Bulker_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    
    #Emission inventory differences have slightly different dimensions where 4 species are considered across 5 scenarios
    #this means the dimensions are 4 by 20 
    #The reason that there are 4 species considered is because the GHGs are converted into CO_2 eq emissions, and there are 
    #3 air pollutants
    
    Ice_Bulker_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); Ice_Bulker_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); Ice_Bulker_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    Ice_Container_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); Ice_Container_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); Ice_Container_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    Ice_Wet_Bulker_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); Ice_Wet_Bulker_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); Ice_Wet_Bulker_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    
    Ice_LSHFO_Bulker_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); Ice_LSHFO_Bulker_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); Ice_LSHFO_Bulker_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    Ice_LSHFO_Container_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); Ice_LSHFO_Container_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); Ice_LSHFO_Container_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    Ice_LSHFO_Wet_Bulker_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); Ice_LSHFO_Wet_Bulker_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); Ice_LSHFO_Wet_Bulker_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    
    #Now the same for for the intermediary route, followed by the TPP and lastly open water ships
    #Emission differences are not calculated for these routes 
    
    Ice_Bulker_FCAS_Normalised_INT = np.zeros((3,5*12)); Ice_Container_FCAS_Normalised_INT = np.zeros((3,5*12)); Ice_Wet_Bulker_FCAS_Normalised_INT = np.zeros((3,5*12));
    Ice_Bulker_TCAS_Normalised_INT = np.zeros((3,5*12)); Ice_Container_TCAS_Normalised_INT = np.zeros((3,5*12)); Ice_Wet_Bulker_TCAS_Normalised_INT = np.zeros((3,5*12));
    
    Ice_LSHFO_Bulker_FCAS_Normalised_INT = np.zeros((3,5*12)); Ice_LSHFO_Container_FCAS_Normalised_INT = np.zeros((3,5*12)); Ice_LSHFO_Wet_Bulker_FCAS_Normalised_INT = np.zeros((3,5*12));
    Ice_LSHFO_Bulker_TCAS_Normalised_INT = np.zeros((3,5*12)); Ice_LSHFO_Container_TCAS_Normalised_INT = np.zeros((3,5*12)); Ice_LSHFO_Wet_Bulker_TCAS_Normalised_INT = np.zeros((3,5*12));
    
    Ice_Bulker_DiffAS_INT_t0 = np.zeros((2*5,6*5)); Ice_Bulker_DiffAS_INT_tm = np.zeros((2*5,6*5)); Ice_Bulker_DiffAS_INT_tf = np.zeros((2*5,6*5));
    Ice_Container_DiffAS_INT_t0 = np.zeros((2*5,6*5)); Ice_Container_DiffAS_INT_tm = np.zeros((2*5,6*5)); Ice_Container_DiffAS_INT_tf = np.zeros((2*5,6*5));
    Ice_Wet_Bulker_DiffAS_INT_t0 = np.zeros((2*5,6*5)); Ice_Wet_Bulker_DiffAS_INT_tm = np.zeros((2*5,6*5)); Ice_Wet_Bulker_DiffAS_INT_tf = np.zeros((2*5,6*5));
    
    Ice_LSHFO_Bulker_DiffAS_INT_t0 = np.zeros((2*5,6*5)); Ice_LSHFO_Bulker_DiffAS_INT_tm = np.zeros((2*5,6*5)); Ice_LSHFO_Bulker_DiffAS_INT_tf = np.zeros((2*5,6*5));
    Ice_LSHFO_Container_DiffAS_INT_t0 = np.zeros((2*5,6*5)); Ice_LSHFO_Container_DiffAS_INT_tm = np.zeros((2*5,6*5)); Ice_LSHFO_Container_DiffAS_INT_tf = np.zeros((2*5,6*5));
    Ice_LSHFO_Wet_Bulker_DiffAS_INT_t0 = np.zeros((2*5,6*5)); Ice_LSHFO_Wet_Bulker_DiffAS_INT_tm = np.zeros((2*5,6*5)); Ice_LSHFO_Wet_Bulker_DiffAS_INT_tf = np.zeros((2*5,6*5));
    
    #TPP
    Ice_Bulker_FCAS_Normalised_TPP = np.zeros((3,5*12)); Ice_Container_FCAS_Normalised_TPP = np.zeros((3,5*12)); Ice_Wet_Bulker_FCAS_Normalised_TPP = np.zeros((3,5*12));
    Ice_Bulker_TCAS_Normalised_TPP = np.zeros((3,5*12)); Ice_Container_TCAS_Normalised_TPP = np.zeros((3,5*12)); Ice_Wet_Bulker_TCAS_Normalised_TPP = np.zeros((3,5*12));
    
    Ice_LSHFO_Bulker_FCAS_Normalised_TPP = np.zeros((3,5*12)); Ice_LSHFO_Container_FCAS_Normalised_TPP = np.zeros((3,5*12)); Ice_LSHFO_Wet_Bulker_FCAS_Normalised_TPP = np.zeros((3,5*12));
    Ice_LSHFO_Bulker_TCAS_Normalised_TPP = np.zeros((3,5*12)); Ice_LSHFO_Container_TCAS_Normalised_TPP = np.zeros((3,5*12)); Ice_LSHFO_Wet_Bulker_TCAS_Normalised_TPP = np.zeros((3,5*12));
    
    Ice_Bulker_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); Ice_Bulker_DiffAS_TPP_tm = np.zeros((2*5,6*5)); Ice_Bulker_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    Ice_Container_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); Ice_Container_DiffAS_TPP_tm = np.zeros((2*5,6*5)); Ice_Container_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    Ice_Wet_Bulker_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); Ice_Wet_Bulker_DiffAS_TPP_tm = np.zeros((2*5,6*5)); Ice_Wet_Bulker_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    
    Ice_LSHFO_Bulker_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); Ice_LSHFO_Bulker_DiffAS_TPP_tm = np.zeros((2*5,6*5)); Ice_LSHFO_Bulker_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    Ice_LSHFO_Container_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); Ice_LSHFO_Container_DiffAS_TPP_tm = np.zeros((2*5,6*5)); Ice_LSHFO_Container_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    Ice_LSHFO_Wet_Bulker_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); Ice_LSHFO_Wet_Bulker_DiffAS_TPP_tm = np.zeros((2*5,6*5)); Ice_LSHFO_Wet_Bulker_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    
    
    #Non ice strengthened ships 
    
    NonIce_Bulker_FCAS_Normalised_NSR = np.zeros((3,5*12)); NonIce_Container_FCAS_Normalised_NSR = np.zeros((3,5*12)); NonIce_Wet_Bulker_FCAS_Normalised_NSR = np.zeros((3,5*12));
    NonIce_Bulker_TCAS_Normalised_NSR = np.zeros((3,5*12)); NonIce_Container_TCAS_Normalised_NSR = np.zeros((3,5*12)); NonIce_Wet_Bulker_TCAS_Normalised_NSR = np.zeros((3,5*12));
    
    NonIce_LSHFO_Bulker_FCAS_Normalised_NSR = np.zeros((3,5*12)); NonIce_LSHFO_Container_FCAS_Normalised_NSR = np.zeros((3,5*12)); NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_NSR = np.zeros((3,5*12));
    NonIce_LSHFO_Bulker_TCAS_Normalised_NSR = np.zeros((3,5*12)); NonIce_LSHFO_Container_TCAS_Normalised_NSR = np.zeros((3,5*12)); NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_NSR = np.zeros((3,5*12));
    
    NonIce_Bulker_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); NonIce_Bulker_DiffAS_NSR_tm = np.zeros((2*5,6*5)); NonIce_Bulker_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    NonIce_Container_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); NonIce_Container_DiffAS_NSR_tm = np.zeros((2*5,6*5)); NonIce_Container_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    NonIce_Wet_Bulker_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); NonIce_Wet_Bulker_DiffAS_NSR_tm = np.zeros((2*5,6*5)); NonIce_Wet_Bulker_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    
    NonIce_LSHFO_Bulker_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); NonIce_LSHFO_Bulker_DiffAS_NSR_tm = np.zeros((2*5,6*5)); NonIce_LSHFO_Bulker_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    NonIce_LSHFO_Container_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); NonIce_LSHFO_Container_DiffAS_NSR_tm = np.zeros((2*5,6*5)); NonIce_LSHFO_Container_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_t0 = np.zeros((2*5,6*5)); NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_tm = np.zeros((2*5,6*5)); NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_tf = np.zeros((2*5,6*5));
    
    NonIce_Bulker_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); NonIce_Bulker_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); Ice_Bulker_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    NonIce_Container_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); NonIce_Container_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); Ice_Container_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    NonIce_Wet_Bulker_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); NonIce_Wet_Bulker_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); Ice_Wet_Bulker_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    
    NonIce_LSHFO_Bulker_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); NonIce_LSHFO_Bulker_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); NonIce_LSHFO_Bulker_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    NonIce_LSHFO_Container_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); NonIce_LSHFO_Container_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); NonIce_LSHFO_Container_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    NonIce_LSHFO_Wet_Bulker_EmDiffAS_NSR_t0 = np.zeros((2*5,4*5)); NonIce_LSHFO_Wet_Bulker_EmDiffAS_NSR_tm = np.zeros((2*5,4*5)); NonIce_LSHFO_Wet_Bulker_EmDiffAS_NSR_tf = np.zeros((2*5,4*5));
    
    #INT
    
    NonIce_Bulker_FCAS_Normalised_INT = np.zeros((3,5*12)); NonIce_Container_FCAS_Normalised_INT = np.zeros((3,5*12)); NonIce_Wet_Bulker_FCAS_Normalised_INT = np.zeros((3,5*12));
    NonIce_Bulker_TCAS_Normalised_INT = np.zeros((3,5*12)); NonIce_Container_TCAS_Normalised_INT = np.zeros((3,5*12)); NonIce_Wet_Bulker_TCAS_Normalised_INT = np.zeros((3,5*12));
    
    NonIce_LSHFO_Bulker_FCAS_Normalised_INT = np.zeros((3,5*12)); NonIce_LSHFO_Container_FCAS_Normalised_INT = np.zeros((3,5*12)); NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_INT = np.zeros((3,5*12));
    NonIce_LSHFO_Bulker_TCAS_Normalised_INT = np.zeros((3,5*12)); NonIce_LSHFO_Container_TCAS_Normalised_INT = np.zeros((3,5*12)); NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_INT = np.zeros((3,5*12));
    
    NonIce_Bulker_DiffAS_INT_t0 = np.zeros((2*5,6*5)); NonIce_Bulker_DiffAS_INT_tm = np.zeros((2*5,6*5)); NonIce_Bulker_DiffAS_INT_tf = np.zeros((2*5,6*5));
    NonIce_Container_DiffAS_INT_t0 = np.zeros((2*5,6*5)); NonIce_Container_DiffAS_INT_tm = np.zeros((2*5,6*5)); NonIce_Container_DiffAS_INT_tf = np.zeros((2*5,6*5));
    NonIce_Wet_Bulker_DiffAS_INT_t0 = np.zeros((2*5,6*5)); NonIce_Wet_Bulker_DiffAS_INT_tm = np.zeros((2*5,6*5)); NonIce_Wet_Bulker_DiffAS_INT_tf = np.zeros((2*5,6*5));
    
    NonIce_LSHFO_Bulker_DiffAS_INT_t0 = np.zeros((2*5,6*5)); NonIce_LSHFO_Bulker_DiffAS_INT_tm = np.zeros((2*5,6*5)); NonIce_LSHFO_Bulker_DiffAS_INT_tf = np.zeros((2*5,6*5));
    NonIce_LSHFO_Container_DiffAS_INT_t0 = np.zeros((2*5,6*5)); NonIce_LSHFO_Container_DiffAS_INT_tm = np.zeros((2*5,6*5)); NonIce_LSHFO_Container_DiffAS_INT_tf = np.zeros((2*5,6*5));
    NonIce_LSHFO_Wet_Bulker_DiffAS_INT_t0 = np.zeros((2*5,6*5)); NonIce_LSHFO_Wet_Bulker_DiffAS_INT_tm = np.zeros((2*5,6*5)); NonIce_LSHFO_Wet_Bulker_DiffAS_INT_tf = np.zeros((2*5,6*5));
    
    #TPP
    
    NonIce_Bulker_FCAS_Normalised_TPP = np.zeros((3,5*12)); NonIce_Container_FCAS_Normalised_TPP = np.zeros((3,5*12)); NonIce_Wet_Bulker_FCAS_Normalised_TPP = np.zeros((3,5*12));
    NonIce_Bulker_TCAS_Normalised_TPP = np.zeros((3,5*12)); NonIce_Container_TCAS_Normalised_TPP = np.zeros((3,5*12)); NonIce_Wet_Bulker_TCAS_Normalised_TPP = np.zeros((3,5*12));
    
    NonIce_LSHFO_Bulker_FCAS_Normalised_TPP = np.zeros((3,5*12)); NonIce_LSHFO_Container_FCAS_Normalised_TPP = np.zeros((3,5*12)); NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_TPP = np.zeros((3,5*12));
    NonIce_LSHFO_Bulker_TCAS_Normalised_TPP = np.zeros((3,5*12)); NonIce_LSHFO_Container_TCAS_Normalised_TPP = np.zeros((3,5*12)); NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_TPP = np.zeros((3,5*12));
    
    NonIce_Bulker_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); NonIce_Bulker_DiffAS_TPP_tm = np.zeros((2*5,6*5)); NonIce_Bulker_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    NonIce_Container_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); NonIce_Container_DiffAS_TPP_tm = np.zeros((2*5,6*5)); NonIce_Container_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    NonIce_Wet_Bulker_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); NonIce_Wet_Bulker_DiffAS_TPP_tm = np.zeros((2*5,6*5)); NonIce_Wet_Bulker_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    
    NonIce_LSHFO_Bulker_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); NonIce_LSHFO_Bulker_DiffAS_TPP_tm = np.zeros((2*5,6*5)); NonIce_LSHFO_Bulker_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    NonIce_LSHFO_Container_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); NonIce_LSHFO_Container_DiffAS_TPP_tm = np.zeros((2*5,6*5)); NonIce_LSHFO_Container_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_t0 = np.zeros((2*5,6*5)); NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_tm = np.zeros((2*5,6*5)); NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_tf = np.zeros((2*5,6*5));
    
    for z in range(6): #Each iteration processes one scenario
    
       if g_input_assumptions['SSP119'].item() == 1: #This is the greenest ~1.5 degree compatible pathway
        
        #Policy assumptions based off the socio - economic warming scenario
        # 1 - 100% reduction, 0.5 - 50% reduction in emissions 
        # Polar Code 1 - Not enforced (OW ships can transit through the Arctic), 0 - enforced 
        
        #GHGs - CO_2eq (incl. BC) 
        #AP - SOx, NOx and PM 
        
            Regional_GHG_tm = 0;
            Regional_GHG_tf = 0;
            Regional_AP_tm = 0;
            Regional_AP_tf = 0;
            Global_GHG_tm = 1; #Under this scenario, there is complete decarbonisation
            Global_GHG_tf = 1; #as 100% of GHG and air pollution emissions are addressed
            Global_AP_tm = 1;
            Global_AP_tf = 1;
            Carbon_price_t0 = 0;
            Polar_Code_t0 = 0;
            Polar_Code_tm = 0;
            Polar_Code_tf = 0;
            
       elif g_input_assumptions['SSP126'].item() == 1:  #This is the  ~2 degree compatible pathway
    
            Regional_GHG_tm = 0;
            Regional_GHG_tf = 0;
            Regional_AP_tm = 0;
            Regional_AP_tf = 0;
            Global_GHG_tm = 1; #Global policy assumptions are assumed to be the same 
            Global_GHG_tf = 1;
            Global_AP_tm = 1;
            Global_AP_tf = 1;
            Carbon_price_t0 = 0;
            Polar_Code_t0 = 0;
            Polar_Code_tm = 0;
            Polar_Code_tf = 0;
            
       elif g_input_assumptions['SSP245'].item() == 1:  #This scenario is salient to NDCs being realised
            
            Regional_GHG_tm = 0;
            Regional_GHG_tf = 0;
            Regional_AP_tm = 0;
            Regional_AP_tf = 0;
            Global_GHG_tm = 0;
            Global_GHG_tf = 1; #The status quo is assumed to prevail, until 2050 where aggressive decarbonisation takes place
            Global_AP_tm = 0;
            Global_AP_tf = 0;
            Carbon_price_t0 = 0;
            Polar_Code_t0 = 0;
            Polar_Code_tm = 0;
            Polar_Code_tf = 0;
       
       elif g_input_assumptions['SSP370'].item() == 1: #This scenario implies regional fragmentation and competing 
    #nation states or blocs
    
            Regional_GHG_tm = 0;
            Regional_GHG_tf = 0;
            Regional_AP_tm = 0.5; #Regional is specific to the Arctic, due to the scenario narrative it is assumed that policy assymetry occurs
            Regional_AP_tf = 0.5;  # this means that air pollutants must be addressed in 2035 
            Global_GHG_tm = 0;
            Global_GHG_tf = 0.5; # Minimal interpretation of the IMO GHG strategy
            Global_AP_tm = 0;
            Global_AP_tf = 0;
            Carbon_price_t0 = 0;
            Carbon_price_tm = 0;
            Carbon_price_tf = 0;
            Polar_Code_t0 = 0;
            Polar_Code_tm = 0;
            Polar_Code_tf = 0;
               
       elif g_input_assumptions['SSP585'].item() == 1: #The BAU and worst global warming case
       #here economic development is prioritised over all other areas
            
            Regional_GHG_tm = 0;
            Regional_GHG_tf = 0;
            Regional_AP_tm = 0;
            Regional_AP_tf = 0;
            Global_GHG_tm = 0;
            Global_GHG_tf = 0.5; #No additional policies are implemented
            Global_AP_tm = 0;
            Global_AP_tf = 0;
            Carbon_price_t0 = 0;
            Carbon_price_tm = 0;
            Carbon_price_tf = 0;
            Polar_Code_t0 = 0;
            Polar_Code_tm = 1; # Polar code is relaxed because development is prioritised over safety
            Polar_Code_tf = 1;
    
    #Now we can extract the Suez and Arctic tariff data, which we will interpolate 
    #based off the design specifications later
    
    DB_Suez_fee = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/DB_Suez_fee.csv')
    
    Cont_Suez_fee = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/Cont_Suez_fee.csv')
    
    WB_Suez_fee = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/WB_Suez_fee.csv')
    
    Summer_IB_fees = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/Summer_IB_fees.csv')
    
    Winter_IB_fees = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/Winter_IB_fees.csv')
    
    #The engine database from WSM is compiled and imported, this helps to 
    #ascertain whether the engine modifications alter the sfc or not 
    
    Engine_DB = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/Engine_DB.csv')
    
    IP_fee = pd.read_csv('C:/Users/lambe/OneDrive - University College London/Research/2nd year PhD/Modelling/Arctic model/Arctic shipping techno economic model_Python/Python/Input_data/IP_fees.csv')
      
    #The 100 year GWP values which are required to convert GHGs into CO_2eq
    #tonnes
    
    GWP100_CH4 = 34; GWP100_N2O = 298; 
    GWP20_BCArctic = 6200; GWP20_BCSuez = 1200; #Source Lindstad (2016)
        
    #Here we deploy the first function, which extracts the projected sea ice metrics
    #based off the socioeconomic - warming pathway
    
    (Logic_mat_Route1_IceStrength_SCE2_t0, Logic_mat_Route1_IceStrength_SCE2_tm, Logic_mat_Route1_IceStrength_SCE2_tf,
    Logic_mat_Route2_IceStrength_SCE2_t0, Logic_mat_Route2_IceStrength_SCE2_tm, Logic_mat_Route2_IceStrength_SCE2_tf,
    Logic_mat_Route3_IceStrength_SCE2_t0, Logic_mat_Route3_IceStrength_SCE2_tm, Logic_mat_Route3_IceStrength_SCE2_tf,
    Logic_mat_Route1_OW_SCE2_t0, Logic_mat_Route1_OW_SCE2_tm, Logic_mat_Route1_OW_SCE2_tf,
    Logic_mat_Route2_OW_SCE2_t0, Logic_mat_Route2_OW_SCE2_tm, Logic_mat_Route2_OW_SCE2_tf,
    Logic_mat_Route3_OW_SCE2_t0, Logic_mat_Route3_OW_SCE2_tm, Logic_mat_Route3_OW_SCE2_tf,
    SIT_Route1_t0, SIT_Route1_tm, SIT_Route1_tf, SIT_Route2_t0, SIT_Route2_tm, SIT_Route1_tf,
    SIT_Route3_t0, SIT_Route3_tm, SIT_Route3_tf, SIC_Route1_t0, SIC_Route1_tm, SIC_Route1_tf, 
    SIC_Route2_t0, SIC_Route2_tm, SIC_Route1_tf, SIC_Route3_t0, SIC_Route3_tm, SIC_Route3_tf,
    AB_Unit_Length, BD_Unit_Length, DE_Unit_Length, EF_Unit_Length, FG_Unit_Length, 
    AH_Unit_Length, HI_Unit_Length, IE_Unit_Length, AC_Unit_Length, CE_Unit_Length) = AIP.Ice_processor(g_POLARIS_Risk_indices_df,
                                                                                                        g_input_assumptions)

    #Return the number of months a ship could navigate through the Arctic, depending on its ice class for
    
    print("The summer period that a moderate ice class ship can navigate through the northern sea route in 2020 is", int(sum(Logic_mat_Route1_IceStrength_SCE2_t0)), "months long.")
    print("The summer period that a moderate ice class ship can navigate through the northern sea route in 2035 is", int(sum(Logic_mat_Route1_IceStrength_SCE2_tm)), "months long.")
    print("The summer period that a moderate ice class ship can navigate through the northern sea route in 2050 is", int(sum(Logic_mat_Route1_IceStrength_SCE2_tf)), "months long.")
          

    print("The summer period that an OW ship can navigate through the northern sea route in 2020 is", int(sum(Logic_mat_Route1_OW_SCE2_t0)), "months long.")
    print("The summer period that an OW ship can navigate through the northern sea route in 2035 is", int(sum(Logic_mat_Route1_OW_SCE2_tm)), "months long.")
    print("The summer period that an OW ship can navigate through the northern sea route in 2050 is", int(sum(Logic_mat_Route1_OW_SCE2_tf)), "months long.")

    print("Under a fossil centric, 4 degree warming scenario, ships could theoretically navigate through the North Pole.")
    print("The summer period that a moderate ice class ship can navigate through the North Pole in 2050 is", int(sum(Logic_mat_Route3_IceStrength_SCE2_tf)), "months long.")

                                                                                       
    #Pre-process the design specifications to obtain ice class traits, using
    #regression of fleet registers 
    
    #Processed_data = PP.Processor(g_design_specs_df)
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    



