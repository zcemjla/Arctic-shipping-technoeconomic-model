%Main program

%This model considers 5 socio-economic and warming scenarios,
%which are indicative of future societal choices and attitudes. As well as 
% 3 vessel behaviour scenarios. 

%The five socioeconomic and warming pathways are
%SSP5 - 8.5 - A fossil centric and 4 degree warming pathway
%SSP3 - 7.0 - A world defined by competing nation states and regional
%blocks, with an ~ 3.5 degree outcome
%SSP2 - 4.5 - An intermediate case, with an ~2.5 degree warming outcome
%SSP1 - 2.6 - A global transition towards a sustainable and green society
%is achieved, with an ~ 2 degree warming 
%SSP1 - 1.9 - Similar to SSP1 - 2.6 but with an ~ 1.5 degree warming outcome. 

%The 3 vessel scenarios this model considers are:

%Scenario 1 - Arctic is operational all year round
%Scenario 2 - Arctic is used when the NonIce thickness is not risky or thick
%enough to pose a risk to the vessel
%Scenario 3 - Suez is used all year round

%Times considered

%Only three dates are considered, 2020, 2035 and 2050. The model produces
%an output for each reference year, rather than a time series. 

%Output value

%The key output is a  normalised performance metric.
%This metric is the unit Arctic transport cost, divdied by the unit Suez transport cost, the reference unit cost (Suez unit cost) can be varied according to the user's specifications. 
%By default the cost corresponds with the same operating fuel mix as the Arctic ship, however for certain scenarios this is not salient 
%and a 2-stroke/LSHFO mix is preferred.

%Nomenclature  
     
%Financial cost all scenarios - FCAS
%Total cost all scenarios - TCAS
%Northern Sea Route - NSR
%Suez Canal Route - SCR
%Intermediary route - INT
%Transpolar passage - TPP
%Ice class - Ice
%Open water - OW/NonIce
%Nationally determined contributions - NDCs
%Greenhouse gases - GHGs
%Air pollutants - APs
%Global warming potential - GWP
    
%Considered fuels 
%Heavy Fuel Oil - HFO
%Low Sulphur Heavy Fuel Oil - LSHFO
%Marine Diesel Oil - MDO
%Liquefied Natual Gas - LNG
%Ammonia - Amm
%Fuel cell - FC
%Difference - Diff

if exist('d') == 0
    d = readtable('Input_data\Main_input_data\design.csv'); %design.csv
end

if exist('inp') == 0
    inp=readtable('Input_data\Main_input_data\Routeinputs.xlsx');
end

if exist('Risk_index') == 0
    Risk_index = readtable('Input_data\Main_input_data\Risk_index.csv');
end

if inp.SSP119 == 0
    
    %Three rows for 3 dates, 12 columns per scenario because 6 fuels are
    %considered for Scenario 1 and 2
    Ice_Bulker_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_Container_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_Wet_Bulker_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);
    Ice_Bulker_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_Container_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_Wet_Bulker_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);
    Ice_Bulker_CTAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_Container_CTAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_Wet_Bulker_CTAS_Normalised_value_NSR_ptv = zeros(3,5.*12);
    Ice_LSHFO_Bulker_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_LSHFO_Container_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_LSHFO_Wet_Bulker_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);
    Ice_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_LSHFO_Container_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);
    Ice_LSHFO_Bulker_CTAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_LSHFO_Container_CTAS_Normalised_value_NSR_ptv = zeros(3,5.*12); Ice_LSHFO_Wet_Bulker_CTAS_Normalised_value_NSR_ptv = zeros(3,5.*12);
    
    Ice_Bulker_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12); Ice_Container_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12); Ice_Wet_Bulker_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12);
    Ice_Bulker_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12); Ice_Container_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12); Ice_Wet_Bulker_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12);
    Ice_LSHFO_Bulker_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12); Ice_LSHFO_Container_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12); Ice_LSHFO_Wet_Bulker_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12);
    Ice_LSHFO_Bulker_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12); Ice_LSHFO_Container_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12); Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12);
    
    Ice_Bulker_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12); Ice_Container_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12); Ice_Wet_Bulker_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);
    Ice_Bulker_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12); Ice_Container_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12); Ice_Wet_Bulker_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);
    Ice_LSHFO_Bulker_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12); Ice_LSHFO_Container_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12); Ice_LSHFO_Wet_Bulker_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);
    Ice_LSHFO_Bulker_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12); Ice_LSHFO_Container_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12); Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);
    
   NonIce_Bulker_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);NonIce_Container_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);NonIce_Wet_Bulker_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);
   NonIce_Bulker_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);NonIce_Container_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);NonIce_Wet_Bulker_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);
   NonIce_LSHFO_Bulker_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);NonIce_LSHFO_Container_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);
   NonIce_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);NonIce_LSHFO_Container_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_NSR_ptv = zeros(3,5.*12);
    
   NonIce_Bulker_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12);NonIce_Container_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12);NonIce_Wet_Bulker_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12);
   NonIce_Bulker_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12);NonIce_Container_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12);NonIce_Wet_Bulker_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12);
   NonIce_LSHFO_Bulker_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12);NonIce_LSHFO_Container_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12);NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_value_INT_ptv = zeros(3,5.*12);
   NonIce_LSHFO_Bulker_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12);NonIce_LSHFO_Container_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12);NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_INT_ptv = zeros(3,5.*12);
    
   NonIce_Bulker_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);NonIce_Container_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);NonIce_Wet_Bulker_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);
   NonIce_Bulker_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);NonIce_Container_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);NonIce_Wet_Bulker_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);
   NonIce_LSHFO_Bulker_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);NonIce_LSHFO_Container_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);
   NonIce_LSHFO_Bulker_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);NonIce_LSHFO_Container_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_TPP_ptv = zeros(3,5.*12);
    
    %HFO has been taken out so it's five fuels, SCE1 and SCE2 are vertically
    %arranged - 6 costs are considered, voyage expenses, operating
    %expenses, capital costs, carbon taxes, air pollution damages and
    %climate damages
    Ice_Bulker_DiffAS_NSR_t0 = zeros(10,6.*5); Ice_Bulker_DiffAS_NSR_tm = zeros(10,6.*5); Ice_Bulker_DiffAS_NSR_tf = zeros(10,6.*5); Ice_Container_DiffAS_NSR_t0 = zeros(10,6.*5); Ice_Container_DiffAS_NSR_tm = zeros(10,6.*5);
    Ice_Container_DiffAS_NSR_tf = zeros(10,6.*5); Ice_Wet_Bulker_DiffAS_NSR_t0 = zeros(10,6.*5); Ice_Wet_Bulker_DiffAS_NSR_tm = zeros(10,6.*5); Ice_Wet_Bulker_DiffAS_NSR_tf = zeros(10,6.*5);
    
    Ice_LSHFO_Bulker_DiffAS_NSR_t0 = zeros(10,6.*5); Ice_LSHFO_Bulker_DiffAS_NSR_tm = zeros(10,6.*5); Ice_LSHFO_Bulker_DiffAS_NSR_tf = zeros(10,6.*5); Ice_LSHFO_Container_DiffAS_NSR_t0 = zeros(10,6.*5); Ice_LSHFO_Container_DiffAS_NSR_tm = zeros(10,6.*5);
    Ice_LSHFO_Container_DiffAS_NSR_tf = zeros(10,6.*5); Ice_LSHFO_Wet_Bulker_DiffAS_NSR_t0 = zeros(10,6.*5); Ice_LSHFO_Wet_Bulker_DiffAS_NSR_tm = zeros(10,6.*5); Ice_LSHFO_Wet_Bulker_DiffAS_NSR_tf = zeros(10,6.*5);
    
    Ice_Bulker_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); Ice_Bulker_Emissions_DiffAS_NSR_tm = zeros(10,4.*5); Ice_Bulker_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);   Ice_Container_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); Ice_Container_Emissions_DiffAS_NSR_tm = zeros(10,4.*5);
    Ice_Container_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);  Ice_Wet_Bulker_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); Ice_Wet_Bulker_Emissions_DiffAS_NSR_tm = zeros(10,4.*5); Ice_Wet_Bulker_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);
    
    Ice_LSHFO_Bulker_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); Ice_LSHFO_Bulker_Emissions_DiffAS_NSR_tm = zeros(10,4.*5); Ice_LSHFO_Bulker_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);   Ice_LSHFO_Container_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); Ice_LSHFO_Container_Emissions_DiffAS_NSR_tm = zeros(10,4.*5);
    Ice_LSHFO_Container_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);  Ice_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); Ice_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tm = zeros(10,4.*5); Ice_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);
    
    Ice_Bulker_DiffAS_INT_t0 = zeros(10,6.*5); Ice_Bulker_DiffAS_INT_tm = zeros(10,6.*5); Ice_Bulker_DiffAS_INT_tf = zeros(10,6.*5); Ice_Container_DiffAS_INT_t0 = zeros(10,6.*5); Ice_Container_DiffAS_INT_tm = zeros(10,6.*5);
    Ice_Container_DiffAS_INT_tf = zeros(10,6.*5); Ice_Wet_Bulker_DiffAS_INT_t0 = zeros(10,6.*5); Ice_Wet_Bulker_DiffAS_INT_tm = zeros(10,6.*5); Ice_Wet_Bulker_DiffAS_INT_tf = zeros(10,6.*5);
    
    Ice_LSHFO_Bulker_DiffAS_INT_t0 = zeros(10,6.*5); Ice_LSHFO_Bulker_DiffAS_INT_tm = zeros(10,6.*5); Ice_LSHFO_Bulker_DiffAS_INT_tf = zeros(10,6.*5); Ice_LSHFO_Container_DiffAS_INT_t0 = zeros(10,6.*5); Ice_LSHFO_Container_DiffAS_INT_tm = zeros(10,6.*5);
    Ice_LSHFO_Container_DiffAS_INT_tf = zeros(10,6.*5); Ice_LSHFO_Wet_Bulker_DiffAS_INT_t0 = zeros(10,6.*5); Ice_LSHFO_Wet_Bulker_DiffAS_INT_tm = zeros(10,6.*5); Ice_LSHFO_Wet_Bulker_DiffAS_INT_tf = zeros(10,6.*5);
    
    Ice_Bulker_DiffAS_TPP_t0 = zeros(10,6.*5); Ice_Bulker_DiffAS_TPP_tm = zeros(10,6.*5); Ice_Bulker_DiffAS_TPP_tf = zeros(10,6.*5); Ice_Container_DiffAS_TPP_t0 = zeros(10,6.*5); Ice_Container_DiffAS_TPP_tm = zeros(10,6.*5);
    Ice_Container_DiffAS_TPP_tf = zeros(10,6.*5); Ice_Wet_Bulker_DiffAS_TPP_t0 = zeros(10,6.*5); Ice_Wet_Bulker_DiffAS_TPP_tm = zeros(10,6.*5); Ice_Wet_Bulker_DiffAS_TPP_tf = zeros(10,6.*5);
    
    Ice_LSHFO_Bulker_DiffAS_TPP_t0 = zeros(10,6.*5); Ice_LSHFO_Bulker_DiffAS_TPP_tm = zeros(10,6.*5); Ice_LSHFO_Bulker_DiffAS_TPP_tf = zeros(10,6.*5); Ice_LSHFO_Container_DiffAS_TPP_t0 = zeros(10,6.*5); Ice_LSHFO_Container_DiffAS_TPP_tm = zeros(10,6.*5);
    Ice_LSHFO_Container_DiffAS_TPP_tf = zeros(10,6.*5); Ice_LSHFO_Wet_Bulker_DiffAS_TPP_t0 = zeros(10,6.*5); Ice_LSHFO_Wet_Bulker_DiffAS_TPP_tm = zeros(10,6.*5); Ice_LSHFO_Wet_Bulker_DiffAS_TPP_tf = zeros(10,6.*5);
    
    NonIce_Bulker_DiffAS_NSR_t0 = zeros(10,6.*5); NonIce_Bulker_DiffAS_NSR_tm = zeros(10,6.*5); NonIce_Bulker_DiffAS_NSR_tf = zeros(10,6.*5); NonIce_Container_DiffAS_NSR_t0 = zeros(10,6.*5); NonIce_Container_DiffAS_NSR_tm = zeros(10,6.*5);
    NonIce_Container_DiffAS_NSR_tf = zeros(10,6.*5); NonIce_Wet_Bulker_DiffAS_NSR_t0 = zeros(10,6.*5); NonIce_Wet_Bulker_DiffAS_NSR_tm = zeros(10,6.*5); NonIce_Wet_Bulker_DiffAS_NSR_tf = zeros(10,6.*5);
    
    NonIce_LSHFO_Bulker_DiffAS_NSR_t0 = zeros(10,6.*5); NonIce_LSHFO_Bulker_DiffAS_NSR_tm = zeros(10,6.*5); NonIce_LSHFO_Bulker_DiffAS_NSR_tf = zeros(10,6.*5); NonIce_LSHFO_Container_DiffAS_NSR_t0 = zeros(10,6.*5); NonIce_LSHFO_Container_DiffAS_NSR_tm = zeros(10,6.*5);
    NonIce_LSHFO_Container_DiffAS_NSR_tf = zeros(10,6.*5); NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_t0 = zeros(10,6.*5); NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_tm = zeros(10,6.*5); NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_tf = zeros(10,6.*5);
    
    NonIce_Bulker_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); NonIce_Bulker_Emissions_DiffAS_NSR_tm = zeros(10,4.*5); NonIce_Bulker_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);   NonIce_Container_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); NonIce_Container_Emissions_DiffAS_NSR_tm = zeros(10,4.*5);
    NonIce_Container_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);  NonIce_Wet_Bulker_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); NonIce_Wet_Bulker_Emissions_DiffAS_NSR_tm = zeros(10,4.*5); NonIce_Wet_Bulker_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);
    
    NonIce_LSHFO_Bulker_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); NonIce_LSHFO_Bulker_Emissions_DiffAS_NSR_tm = zeros(10,4.*5); NonIce_LSHFO_Bulker_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);   NonIce_LSHFO_Container_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); NonIce_LSHFO_Container_Emissions_DiffAS_NSR_tm = zeros(10,4.*5);
    NonIce_LSHFO_Container_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);  NonIce_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_t0 = zeros(10,4.*5); NonIce_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tm = zeros(10,4.*5); NonIce_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tf = zeros(10,4.*5);
    
    NonIce_Bulker_DiffAS_INT_t0 = zeros(10,6.*5); NonIce_Bulker_DiffAS_INT_tm = zeros(10,6.*5); NonIce_Bulker_DiffAS_INT_tf = zeros(10,6.*5); NonIce_Container_DiffAS_INT_t0 = zeros(10,6.*5); NonIce_Container_DiffAS_INT_tm = zeros(10,6.*5);
    NonIce_Container_DiffAS_INT_tf = zeros(10,6.*5); NonIce_Wet_Bulker_DiffAS_INT_t0 = zeros(10,6.*5); NonIce_Wet_Bulker_DiffAS_INT_tm = zeros(10,6.*5); NonIce_Wet_Bulker_DiffAS_INT_tf = zeros(10,6.*5);
    
    NonIce_LSHFO_Bulker_DiffAS_INT_t0 = zeros(10,6.*5); NonIce_LSHFO_Bulker_DiffAS_INT_tm = zeros(10,6.*5); NonIce_LSHFO_Bulker_DiffAS_INT_tf = zeros(10,6.*5); NonIce_LSHFO_Container_DiffAS_INT_t0 = zeros(10,6.*5); NonIce_LSHFO_Container_DiffAS_INT_tm = zeros(10,6.*5);
    NonIce_LSHFO_Container_DiffAS_INT_tf = zeros(10,6.*5); NonIce_LSHFO_Wet_Bulker_DiffAS_INT_t0 = zeros(10,6.*5); NonIce_LSHFO_Wet_Bulker_DiffAS_INT_tm = zeros(10,6.*5); NonIce_LSHFO_Wet_Bulker_DiffAS_INT_tf = zeros(10,6.*5);
    
    NonIce_Bulker_DiffAS_TPP_t0 = zeros(10,6.*5); NonIce_Bulker_DiffAS_TPP_tm = zeros(10,6.*5); NonIce_Bulker_DiffAS_TPP_tf = zeros(10,6.*5); NonIce_Container_DiffAS_TPP_t0 = zeros(10,6.*5); NonIce_Container_DiffAS_TPP_tm = zeros(10,6.*5);
    NonIce_Container_DiffAS_TPP_tf = zeros(10,6.*5); NonIce_Wet_Bulker_DiffAS_TPP_t0 = zeros(10,6.*5); NonIce_Wet_Bulker_DiffAS_TPP_tm = zeros(10,6.*5); NonIce_Wet_Bulker_DiffAS_TPP_tf = zeros(10,6.*5);
    
    NonIce_LSHFO_Bulker_DiffAS_TPP_t0 = zeros(10,6.*5); NonIce_LSHFO_Bulker_DiffAS_TPP_tm = zeros(10,6.*5); NonIce_LSHFO_Bulker_DiffAS_TPP_tf = zeros(10,6.*5); NonIce_LSHFO_Container_DiffAS_TPP_t0 = zeros(10,6.*5); NonIce_LSHFO_Container_DiffAS_TPP_tm = zeros(10,6.*5);
    NonIce_LSHFO_Container_DiffAS_TPP_tf = zeros(10,6.*5); NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_t0 = zeros(10,6.*5); NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_tm = zeros(10,6.*5); NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_tf = zeros(10,6.*5);
    
    
    for z = 1:1:5 %Five socioeconomic and warming scenarios
        
        %Policy assumptions, based off the scenario 
        % 1 - 100% reduction, 0.5 - 50% reduction in emissions 
        % Polar Code 1 - Not enforced (OW ships can transit through the Arctic), 0 - enforced 
        
        %GHGs - CO_2eq (incl. BC) 
        %AP - SOx, NOx and PM 
        
        if inp.SSP245 == 1 %The status quo is assumed to prevail, until 2050 where aggressive decarbonisation takes place
            Regional_GHG_tm = 0;
            Regional_GHG_tf = 0;
            Regional_AP_tm = 0;
            Regional_AP_tf = 0;
            Global_GHG_tm = 0;
            Global_GHG_tf = 1; %Full decarbonisation is assumed for the maritime industry in 2050
            Global_AP_tm = 0;
            Global_AP_tf = 0;
            Carbon_price_t0 = 0;
            Polar_Code_t0 = 0;
            Polar_Code_tm = 0;
            Polar_Code_tf = 0;
            
            
        elseif inp.SSP585 == 1 %The BAU and worst global warming case here economic development is prioritised
            Regional_GHG_tm = 0;
            Regional_GHG_tf = 0;
            Regional_AP_tm = 0;
            Regional_AP_tf = 0;
            Global_GHG_tm = 0;
            Global_GHG_tf = 0.5; %No additional policies are implemented, minimal interpretation of GHG strategy 
            Global_AP_tm = 0;
            Global_AP_tf = 0;
            Carbon_price_t0 = 0;
            Carbon_price_tm = 0;
            Carbon_price_tf = 0;
            Polar_Code_t0 = 0;
            Polar_Code_tm = 1; % Polar code is relaxed from 2035 onwards
            Polar_Code_tf = 1;
            
            
        elseif inp.SSP370 == 1
            Regional_GHG_tm = 0;
            Regional_GHG_tf = 0;
            Regional_AP_tm = 0.5; %Regional Arctic air pollution measures are assumed from 2035 onwards
            Regional_AP_tf = 0.5;
            Global_GHG_tm = 0;
            Global_GHG_tf = 0.5; % Minimal interpretation of the GHG strategy, nation states do not prioritise climate change
            Global_AP_tm = 0;
            Global_AP_tf = 0;
            Carbon_price_t0 = 0;
            Carbon_price_tm = 0;
            Carbon_price_tf = 0;
            Polar_Code_t0 = 0;
            Polar_Code_tm = 0;
            Polar_Code_tf = 0;
            
        elseif inp.SSP126 == 1
            Regional_GHG_tm = 0;
            Regional_GHG_tf = 0;
            Regional_AP_tm = 0;
            Regional_AP_tf = 0;
            Global_GHG_tm = 1; % A full transition away from fossil fuels is assumed under the SSP1 narratives, from 2035 onwards
            Global_GHG_tf = 1;
            Global_AP_tm = 1; %Air pollution is also addressed completely 
            Global_AP_tf = 1;
            Carbon_price_t0 = 0;
            Polar_Code_t0 = 0;
            Polar_Code_tm = 0;
            Polar_Code_tf = 0;
            
            
        elseif inp.SSP119 == 1
            Regional_GHG_tm = 0;
            Regional_GHG_tf = 0;
            Regional_AP_tm = 0;
            Regional_AP_tf = 0;
            Global_GHG_tm = 1; %Same as above, main difference is that the carbon price in SSP126 does not completely cover the cost of carbon
            Global_GHG_tf = 1;
            Global_AP_tm = 1;
            Global_AP_tf = 1;
            Carbon_price_t0 = 0;
            Polar_Code_t0 = 0;
            Polar_Code_tm = 0;
            Polar_Code_tf = 0;
            
            
        end
        
        %Suez fees
        if exist('DB_Suez_fee') == 0
            DB_Suez_fee=readtable('Input_data\Main_input_data\DB_Suez_fee.csv');
        end
        
        if exist('Cont_Suez_fee') == 0
            Cont_Suez_fee=readtable('Input_data\Main_input_data\Cont_Suez_fee.csv');
        end
        
        if exist('WB_Suez_fee') == 0
            WB_Suez_fee=readtable('Input_data\Main_input_data\WB_Suez_fee.csv');
        end
        
        %Icebreaking fees
        if exist('Summer_IB_fee') == 0
            Summer_IB_fees=readtable('Input_data\Main_input_data\Summer_IB_fees.csv');
        end
        
        if exist('Winter_IB_fees') == 0
            Winter_IB_fees=readtable('Input_data\Main_input_data\Winter_IB_fees.csv');
        end
        
        if exist('Engine_DB') == 0
            Engine_DB = readtable('Input_data\Main_input_data\Engine_DB.csv');
        end
        
        %Ice pilot fees
        if exist('IP_fees') == 0
            IP_fees=readtable('Input_data\Main_input_data\IP_fees.csv');
        end
        
        %Global warming potentials for converting the GHGs into CO2eq
        %tonnes
        
        if exist('GWP100_CH4') == 0
            
            GWP100_CH4 = 34; GWP100_N2O = 298; GWP20_BCArctic = 6200; GWP20_BCSuez = 1200; %Source Lindstad (2016)
            
        end
        
        %Process and extract data on Arctic sea ice thickness and navigability
        %scenarios to find the navigable period 
        [latitude1, latitude2, latitude3, Arctic_Route1_length, Arctic_Route2_length, Arctic_Route3_length,...
            SIT_Route1_t0, SIT_Route1_tm, SIT_Route1_tf, SIT_Route2_t0, SIT_Route2_tm, SIT_Route2_tf,...
            SIT_Route3_t0, SIT_Route3_tm, SIT_Route3_tf, SIC_Route1_t0, SIC_Route1_tm, SIC_Route1_tf, SIC_Route2_t0, SIC_Route2_tm, SIC_Route2_tf,...
            SIC_Route3_t0, SIC_Route3_tm, SIC_Route3_tf, Unit_length_AB, Unit_length_BD,...
            Unit_length_DE, Unit_length_EF, Unit_length_FG,...
            Unit_length_AG, Unit_length_GH, Unit_length_HE,...
            Unit_length_AC, Unit_length_CE,...
            Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_tf,...
            Scenario1_Route1_IBdays_t0, Scenario1_Route1_IBdays_tm, Scenario1_Route1_IBdays_tf,...
            Scenario1_Route2_IBdays_t0, Scenario1_Route2_IBdays_tm, Scenario1_Route2_IBdays_tf,...
            Scenario1_Route3_IBdays_t0, Scenario1_Route3_IBdays_tm, Scenario1_Route3_IBdays_tf,...
            Scenario1_Route1_Total_IBdays_t0, Scenario1_Route1_Total_IBdays_tm, Scenario1_Route1_Total_IBdays_tf,...
            Scenario1_Route2_Total_IBdays_t0, Scenario1_Route2_Total_IBdays_tm, Scenario1_Route2_Total_IBdays_tf,...
            Scenario1_Route3_Total_IBdays_t0, Scenario1_Route3_Total_IBdays_tm, Scenario1_Route3_Total_IBdays_tf,...
            Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf] = Iceprojectorprocessor(Risk_index,inp);
        
        %Pre-process the inputs into variables which the model can use
        %later to find the opportunity costs incurred by ice class ships
        
        dwt = d.design_deadweight_te;
        TEU = d.designTEUs;
        
        [Ice_dwt_loss, Boil_cons, Pow_ice_rat, Pow_Nonice, Pow_ice, Aux_Pow_ice_rat, Aux_Pow_ice, gt, Ice_gt, IMO_type, IMO_size, SCE3_Suez_nav_d, Ice_dwt] = Pre_Processor(d,dwt);
        
        %Reading in inputs form the spreadsheet 'Routeinputs.xlsx'
        %Port fee/dwt
        Port_fee = inp.Port_fee; %Port fee is brought from literature Stopford 2009 et al.
        %Route tarriffs/gt %SCNT is assumed to be equal to GT
        n_ships = 20;
        Ship_design_speed_length = length(dwt)./n_ships;
        
        %Reading in the model inputs
        beam = d.design_beam_m;
        draught = d.design_draught_m;
        Total_Initial_Arctic_Route_length = inp.Arctic_route_length;
        Total_Suez_Route_length = inp.Suez_route_length;
        t_m = inp.t_m(:);
        t = inp.Useful_life_yrs(:);
        Capital_Advance = inp.Capital_Advance; %Hansen and Liu and Kronback assume 70% debt as do I
        
        %Calculating the operating performance of each reference vessel for
        %each route, this includes how many days the vessel spends in the
        %Arctic, its energy and fuel consumption and number of voyages. 
        [Arctic_Route1_Total_D_A, Arctic_Route2_Total_D_A, Arctic_Route3_Total_D_A, SCE3_Suez_Route_D_S,...
            SCE3_Suez_Route_T_S, Icesfc_design, Icesfc, NonIcesfc, NonIcesfc_design, Aux_sfc, Boiler_tpd,...
            SCE1_Ice_Total_days_Route1_t0, SCE1_Ice_Total_days_Route1_tm, SCE1_Ice_Total_days_Route1_tf,...
            SCE1_NonIce_Total_days_Route1_t0, SCE1_NonIce_Total_days_Route1_tm, SCE1_NonIce_Total_days_Route1_tf,...
            SCE1_Ice_Total_days_Route2_t0, SCE1_Ice_Total_days_Route2_tm, SCE1_Ice_Total_days_Route2_tf,...
            SCE1_NonIce_Total_days_Route2_t0, SCE1_NonIce_Total_days_Route2_tm, SCE1_NonIce_Total_days_Route2_tf,...
            SCE1_Ice_Total_days_Route3_t0, SCE1_Ice_Total_days_Route3_tm, SCE1_Ice_Total_days_Route3_tf,...
            SCE1_NonIce_Total_days_Route3_t0, SCE1_NonIce_Total_days_Route3_tm, SCE1_NonIce_Total_days_Route3_tf,...
            SCE2_Ice_Total_days_Route1_t0, SCE2_Ice_Total_days_Route1_tm, SCE2_Ice_Total_days_Route1_tf,...
            SCE2_NonIce_Total_days_Route1_t0, SCE2_NonIce_Total_days_Route1_tm, SCE2_NonIce_Total_days_Route1_tf,...
            SCE2_Ice_Total_days_Route2_t0, SCE2_Ice_Total_days_Route2_tm, SCE2_Ice_Total_days_Route2_tf,...
            SCE2_NonIce_Total_days_Route2_t0, SCE2_NonIce_Total_days_Route2_tm, SCE2_NonIce_Total_days_Route2_tf,...
            SCE2_Ice_Total_days_Route3_t0, SCE2_Ice_Total_days_Route3_tm, SCE2_Ice_Total_days_Route3_tf,...
            SCE2_NonIce_Total_days_Route3_t0, SCE2_NonIce_Total_days_Route3_tm, SCE2_NonIce_Total_days_Route3_tf,...
            SCE3_Ice_Total_days, SCE3_NonIce_Total_days,...
            Scenario1_Fuel_consumption, Scenario1_Aux_Fuel_consumption, Scenario1_Boil_Fuel_consumption,...
            Scenario2_Fuel_consumption, Scenario2_Aux_Fuel_consumption, Scenario2_Boil_Fuel_consumption,...
            Scenario3_Fuel_consumption, Scenario3_Aux_Fuel_consumption, Scenario3_Boil_Fuel_consumption,...
            Ice_Fuel_consumed_Suez_SCE2Route1_t_t0, Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0, Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0,...
            Ice_Fuel_consumed_Suez_SCE2Route1_t_tm, Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm, Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm,...
            Ice_Fuel_consumed_Suez_SCE2Route1_t_tf, Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf, Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf,...
            Ice_Fuel_consumed_Suez_SCE2Route2_t_t0, Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0, Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0,...
            Ice_Fuel_consumed_Suez_SCE2Route2_t_tm, Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm, Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm,...
            Ice_Fuel_consumed_Suez_SCE2Route2_t_tf, Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf, Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf,...
            Ice_Fuel_consumed_Suez_SCE2Route3_t_t0, Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0, Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0,...
            Ice_Fuel_consumed_Suez_SCE2Route3_t_tm, Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm, Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm,...
            Ice_Fuel_consumed_Suez_SCE2Route3_t_tf, Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf, Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf,...
            NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0, NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0, NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0,...
            NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm, NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm, NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm,...
            NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf, NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf, NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf,...
            NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0, NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0, NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0,...
            NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm, NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm, NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm,...
            NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf, NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf, NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf,...
            NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0, NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0, NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0,...
            NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm, NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm, NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm,...
            NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf, NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf, NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf,...
            Logic_mat_IceStrength_feasibility_Scenario1, Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0, Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm, Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0, Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm, Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0, Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm, Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf,...
            Ice_Energy_capacity_kWh, NonIce_Energy_capacity_kWh, v, SCE1_Ice_Route1_n_t0, SCE1_Ice_Route1_n_tm, SCE1_Ice_Route1_n_tf,...
            SCE1_Ice_Route2_n_t0, SCE1_Ice_Route2_n_tm, SCE1_Ice_Route2_n_tf,...
            SCE1_Ice_Route3_n_t0, SCE1_Ice_Route3_n_tm, SCE1_Ice_Route3_n_tf,...
            SCE1_NonIce_Route1_n_t0, SCE1_NonIce_Route1_n_tm, SCE1_NonIce_Route1_n_tf,...
            SCE1_NonIce_Route2_n_t0, SCE1_NonIce_Route2_n_tm, SCE1_NonIce_Route2_n_tf,...
            SCE1_NonIce_Route3_n_t0, SCE1_NonIce_Route3_n_tm, SCE1_NonIce_Route3_n_tf,...
            SCE2_Ice_Route1_n_t0, SCE2_Ice_Route1_n_tm, SCE2_Ice_Route1_n_tf,...
            SCE2_Ice_Route2_n_t0, SCE2_Ice_Route2_n_tm, SCE2_Ice_Route2_n_tf,...
            SCE2_Ice_Route3_n_t0, SCE2_Ice_Route3_n_tm, SCE2_Ice_Route3_n_tf,...
            SCE2_NonIce_Route1_n_t0, SCE2_NonIce_Route1_n_tm, SCE2_NonIce_Route1_n_tf,...
            SCE2_NonIce_Route2_n_t0, SCE2_NonIce_Route2_n_tm, SCE2_NonIce_Route2_n_tf,...
            SCE2_NonIce_Route3_n_t0, SCE2_NonIce_Route3_n_tm, SCE2_NonIce_Route3_n_tf,...
            SCE2_Ice_Route1_Suez_n_t0, SCE2_Ice_Route1_Suez_n_tm, SCE2_Ice_Route1_Suez_n_tf,...
            SCE2_Ice_Route2_Suez_n_t0, SCE2_Ice_Route2_Suez_n_tm, SCE2_Ice_Route2_Suez_n_tf,...
            SCE2_Ice_Route3_Suez_n_t0, SCE2_Ice_Route3_Suez_n_tm, SCE2_Ice_Route3_Suez_n_tf,...
            SCE2_NonIce_Route1_Suez_n_t0, SCE2_NonIce_Route1_Suez_n_tm, SCE2_NonIce_Route1_Suez_n_tf,...
            SCE2_NonIce_Route2_Suez_n_t0, SCE2_NonIce_Route2_Suez_n_tm, SCE2_NonIce_Route2_Suez_n_tf,...
            SCE2_NonIce_Route3_Suez_n_t0, SCE2_NonIce_Route3_Suez_n_tm, SCE2_NonIce_Route3_Suez_n_tf,...
            SCE2_Ice_Route1_Total_n_t0, SCE2_Ice_Route1_Total_n_tm, SCE2_Ice_Route1_Total_n_tf,...
            SCE2_Ice_Route2_Total_n_t0, SCE2_Ice_Route2_Total_n_tm, SCE2_Ice_Route2_Total_n_tf,...
            SCE2_Ice_Route3_Total_n_t0, SCE2_Ice_Route3_Total_n_tm, SCE2_Ice_Route3_Total_n_tf,...
            SCE2_NonIce_Route1_Total_n_t0, SCE2_NonIce_Route1_Total_n_tm, SCE2_NonIce_Route1_Total_n_tf,...
            SCE2_NonIce_Route2_Total_n_t0, SCE2_NonIce_Route2_Total_n_tm, SCE2_NonIce_Route2_Total_n_tf,...
            SCE2_NonIce_Route3_Total_n_t0, SCE2_NonIce_Route3_Total_n_tm, SCE2_NonIce_Route3_Total_n_tf,...
            SCE3_Suez_n_S, Arctic_Route1_Total_T_A, Arctic_Route2_Total_T_A, Arctic_Route3_Total_T_A] = Routeprofiler(Total_Initial_Arctic_Route_length, Total_Suez_Route_length, IMO_type, Engine_DB, Boil_cons, SIT_Route1_t0, SIT_Route1_tm, SIT_Route1_tf, SIT_Route2_t0, SIT_Route2_tm, SIT_Route2_tf,...
            SIT_Route3_t0, SIT_Route3_tm, SIT_Route3_tf,...
            SIC_Route1_t0, SIC_Route1_tm, SIC_Route1_tf, SIC_Route2_t0, SIC_Route2_tm, SIC_Route2_tf,...
            SIC_Route3_t0, SIC_Route3_tm, SIC_Route3_tf,...
            Pow_ice_rat, Pow_ice, Aux_Pow_ice, SCE3_Suez_nav_d,...
            Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf,...
            Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0,...
            Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm,...
            Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf,...
            Unit_length_AB, Unit_length_BD,...
            Unit_length_DE, Unit_length_EF, Unit_length_FG,...
            Unit_length_AG, Unit_length_GH, Unit_length_HE,...
            Unit_length_AC, Unit_length_CE,...
            Arctic_Route1_length, Arctic_Route2_length, Arctic_Route3_length,...
            Ice_dwt, dwt, Pow_Nonice, d);
        
        
        %Read in the necessary macroeconomic data, to convert the pricing
        %data to be consistent with one another. The currency and value
        %used is $_2020
        
        if exist('GDP_Deflator') == 0
            GDP_Deflator=readtable('Input_data\Main_input_data\GDP_Deflator.csv');
            GDP_Deflator_2020 = GDP_Deflator.GDP_Deflator(20)./GDP_Deflator.GDP_Deflator(15);
            GDP_Deflator_2020 = [1 GDP_Deflator_2020 GDP_Deflator_2020 GDP_Deflator_2020 GDP_Deflator_2020 GDP_Deflator_2020];
            GDP_Deflator_2020 = repmat(GDP_Deflator_2020, 1+inp.t_f - inp.t_0, 1);
        end
        
        if exist('US_GDP_Deflator') == 0
            US_GDP_Deflator=readtable('Input_data\Main_input_data\USGDPEF.csv'); %Source: https://fred.stlouisfed.org/series/GDPDEF#0
            US_GDP_Deflator_2020 = US_GDP_Deflator{12,2}./US_GDP_Deflator{7,2};
            US_GDP_Deflator_2020 = [1 US_GDP_Deflator_2020 US_GDP_Deflator_2020 US_GDP_Deflator_2020 US_GDP_Deflator_2020 US_GDP_Deflator_2020];
            US_GDP_Deflator_2020 = repmat(US_GDP_Deflator_2020, 1+inp.t_f - inp.t_0, 1);
        end
        
        if exist('XRates') == 0
            XRates=readtable('Input_data\Main_input_data\XRates.csv');
            XRates_EUR_USD_2010 = XRates{10,2}./XRates{10,3};
        end
        
        %Fuel prices are in real 2015 USD per tonne
        if inp.SSP119 == 1
            
            if exist('Fuel_price') == 0
                Fuel_price=readtable('Input_data\Main_input_data\Electrolysis_fuel_price.csv');
                Fuel_price = US_GDP_Deflator_2020.*Fuel_price{1:end,:};
            end
            
        elseif inp.SSP126 == 1
            
            if exist('Fuel_price') == 0
                Fuel_price=readtable('Input_data\Main_input_data\Electrolysis_fuel_price.csv');
                Fuel_price = US_GDP_Deflator_2020.*Fuel_price{1:end,:};
            end
            
        else
            if exist('Fuel_price') == 0
                Fuel_price=readtable('Input_data\Main_input_data\Central_fuel_price.csv');
                Fuel_price = US_GDP_Deflator_2020.*Fuel_price{1:end,:};
            end
        end
        
        %Returning fuel cost profiles
        [SCE1_Fuel_costs_t0, SCE1_Fuel_costs_tm, SCE1_Fuel_costs_tf, SCE1_Aux_Fuel_costs_t0, SCE1_Aux_Fuel_costs_tm, SCE1_Aux_Fuel_costs_tf, SCE1_Boil_Fuel_costs_t0, SCE1_Boil_Fuel_costs_tm, SCE1_Boil_Fuel_costs_tf,...
            SCE2_Fuel_costs_t0, SCE2_Fuel_costs_tm, SCE2_Fuel_costs_tf, SCE2_Aux_Fuel_costs_t0, SCE2_Aux_Fuel_costs_tm, SCE2_Aux_Fuel_costs_tf, SCE2_Boil_Fuel_costs_t0, SCE2_Boil_Fuel_costs_tm, SCE2_Boil_Fuel_costs_tf,...
            SCE3_Fuel_costs_t0, SCE3_Fuel_costs_tm, SCE3_Fuel_costs_tf, SCE3_Aux_Fuel_costs_t0, SCE3_Aux_Fuel_costs_tm, SCE3_Aux_Fuel_costs_tf, SCE3_Boil_Fuel_costs_t0, SCE3_Boil_Fuel_costs_tm, SCE3_Boil_Fuel_costs_tf,...
            SCE1_Fuel_cons_t0, SCE1_Fuel_cons_tm, SCE1_Fuel_cons_tf, SCE1_Aux_Fuel_cons_t0, SCE1_Aux_Fuel_cons_tm, SCE1_Aux_Fuel_cons_tf, SCE1_Boil_Fuel_cons_t0, SCE1_Boil_Fuel_cons_tm, SCE1_Boil_Fuel_cons_tf,...
            SCE2_Fuel_cons_t0, SCE2_Fuel_cons_tm, SCE2_Fuel_cons_tf, SCE2_Aux_Fuel_cons_t0, SCE2_Aux_Fuel_cons_tm, SCE2_Aux_Fuel_cons_tf, SCE2_Boil_Fuel_cons_t0, SCE2_Boil_Fuel_cons_tm, SCE2_Boil_Fuel_cons_tf,...
            SCE3_Fuel_cons_t0, SCE3_Fuel_cons_tm, SCE3_Fuel_cons_tf, SCE3_Aux_Fuel_cons_t0, SCE3_Aux_Fuel_cons_tm, SCE3_Aux_Fuel_cons_tf, SCE3_Boil_Fuel_cons_t0, SCE3_Boil_Fuel_cons_tm, SCE3_Boil_Fuel_cons_tf] = Fuelcost_profile(d, Fuel_price, Icesfc_design, inp, Scenario1_Fuel_consumption, Scenario1_Aux_Fuel_consumption, Scenario1_Boil_Fuel_consumption,...
            Scenario2_Fuel_consumption, Scenario2_Aux_Fuel_consumption, Scenario2_Boil_Fuel_consumption,...
            Scenario3_Fuel_consumption, Scenario3_Aux_Fuel_consumption, Scenario3_Boil_Fuel_consumption);
        
        
        if inp.SSP119 == 1 %Under the greenest scenarios, it is assumed that Ammonia is manufactured using electrolysis 
            %so this if statement ensures the correct emission factors are
            %being read, depending on the scenario
            
            if exist('EF') == 0
                EF=readtable('Input_data\Main_input_data\Electrolysis_EF.csv');
            end
            
        elseif inp.SSP126 == 1
            
            if exist('EF') == 0
                EF=readtable('Input_data\Main_input_data\Electrolysis_EF.csv');
            end
            
        else
            
            if exist('EF') == 0
                EF=readtable('Input_data\Main_input_data\Central_EF.csv');
            end
        end
        
        if exist('Loan_Interest_Rate') == 0
            Loan_Interest_Rate = 7./100; %Source: Hansen et al. 2016 and Otsuka et al. 2015;
        end
        
        if exist('Amortisation_period') == 0
            Amortisation_period = 15; %Source: OECD 2007
        end
        
        if exist('Learning_Curves') == 0
            load('Input_data\Main_input_data\Learning_Curves.mat');
            Learning_Curve_t0 = Learning_Curves(6,2:end);
            Learning_Curve_t0 = [Learning_Curve_t0(:,1) Learning_Curve_t0(:,1) Learning_Curve_t0(:,1) Learning_Curve_t0(:,2) Learning_Curve_t0(:,2:end)];
            Learning_Curve_tm = Learning_Curves(21,2:end);
            Learning_Curve_tm = [Learning_Curve_tm(:,1) Learning_Curve_tm(:,1) Learning_Curve_tm(:,1) Learning_Curve_tm(:,2) Learning_Curve_tm(:,2:end)];
            Learning_Curve_tf = Learning_Curves(36,2:end);
            Learning_Curve_tf = [Learning_Curve_tf(:,1) Learning_Curve_tf(:,1) Learning_Curve_tf(:,1) Learning_Curve_tf(:,2) Learning_Curve_tf(:,2:end)];
        end
        
        if exist('Engine_Unit_Cost_MW') == 0
            Engine_Unit_Cost_MW = [0 0 0 1.4.*10.^6 7.41.*10.^5 1.63.*10^6];
            
        end
        
        %Additional expenses, for technologies 
        if exist('TLC_PA_MW') == 0
            TLC_PA_MW = [0 0 0 0 0 1.7.*10^5]; %Through life cost per megawatt - each column refers to the fuel mix considered
        end
        
        if exist('Storage_Cost_kW') == 0
            Storage_Cost_kW = [0 0 0 7.14 0.7 0.7]; %Fuel storage cost  per kilowatt - columns pertain to fuel mix
        end
        
        if exist('Dry_Bulk_Rev_pt') == 0
            Dry_Bulk_Rev_pt = 20; %Dry bulk commodity price, Coal Rizhao to Rotterdam 2009
        end
        
        if exist('Container_Rev_pt_t0') == 0
            Container_Rev_pt = 1286.72./12; %Container commodity price Shanghai Container Freight index SCFI Shanghai to Rotterdam
        end
        
        if exist('Wet_Bulk_Rev_pt') == 0
            Wet_Bulk_Rev_pt = 10.^6.*2.3./109485; %A lump sum rotterdam to Chiba LR 2
        end
        
        if exist('dwtloss_pMWh') == 0
            dwtloss_pMWh = [0 0 0 0.09 0.06 0.06]; %The loss in deadweight capacity due to teh fuel considred
        end
        
        %The commodity prices are obtained from Clarksons SIN 2020 
        
        if exist('SCC') == 0
            SCC = [100; 392.*US_GDP_Deflator_2020(1,2); 536.*US_GDP_Deflator_2020(1,2)]; %Carbon price is in 2015 USD per tonne (except for 2020)
            
            if inp.SSP245 == 1 %Intermediate scenario - 50% of SCC is addressed through policy
                
                Carbon_price_tm = 0.5.*SCC(2); Carbon_price_tf = 0.5.*SCC(3);
                SCC(2) = SCC(2) - Carbon_price_tm; SCC(3) = SCC(3) - Carbon_price_tf;
                
            elseif inp.SSP126 == 1 %With SSP1 - 2.6 it's 75%
                
                Carbon_price_tm = 0.75.*SCC(2); Carbon_price_tf = 0.75.*SCC(3);
                SCC(2) = SCC(2) - Carbon_price_tm; SCC(3) = SCC(3) - Carbon_price_tf;
                
            elseif inp.SSP119 == 1 %With SSP1 - 2.6 it's 100%
                
                Carbon_price_tm = SCC(2); Carbon_price_tf = SCC(3);
                SCC(2) = SCC(2) - Carbon_price_tm; SCC(3) = SCC(3) - Carbon_price_tf;
                
            end
            
        end
        
        %Read in the marginal damage costs for air pollutants, which depend on the geographic region 
        
        if exist('Arctic_damage_costs') == 0
            Arctic_damage_costs = [2900 6700 2250 1850	5550 18500]; Arctic_damage_costs = Arctic_damage_costs.*XRates_EUR_USD_2010.*US_GDP_Deflator_2020(1,2);%Air pollutant damages 2010 Euros
            Arctic_damage_costs = [Arctic_damage_costs; Arctic_damage_costs.*1.02.^15]; %Uplift by 2% per year
            Arctic_damage_costs = [Arctic_damage_costs; Arctic_damage_costs(1,:).*1.02.^30];
            Arctic_damage_costs = [SCC SCC GWP100_CH4.*SCC GWP100_CH4.*SCC GWP100_N2O.*SCC GWP100_N2O.*SCC Arctic_damage_costs GWP20_BCArctic.*SCC GWP20_BCSuez.*SCC];
        end
        
        if exist('Suez_damage_costs') == 0
            Suez_damage_costs = [6700 6700 1850 1850 18500 18500]; Suez_damage_costs = Suez_damage_costs.*XRates_EUR_USD_2010.*US_GDP_Deflator_2020(1,2);%Air pollutant damages  2010 Euros
            Suez_damage_costs = [Suez_damage_costs; Suez_damage_costs.*1.02.^15]; %Uplift by 2% per year
            Suez_damage_costs = [Suez_damage_costs; Suez_damage_costs(1,:).*1.02.^30];
            Suez_damage_costs = [SCC SCC GWP100_CH4.*SCC GWP100_CH4.*SCC GWP100_N2O.*SCC GWP100_N2O.*SCC Suez_damage_costs GWP20_BCSuez.*SCC GWP20_BCSuez.*SCC];
        end
        
        %Returns the commercial performance of the vessel, which includes
        %all financial and emission costs for each vessel scenario and
        %year. The key cost parameters end with FC_ptv and TC_ptv, which
        %indicate the financial cost per tonne voyage and total cost per
        %tonne voyage. The suffix t0, tm and tf refer to 2020, 2035 and
        %2050 
        [SCE1_Ice_Total_Voyage_cost_t0, SCE1_Ice_OpEx_t0, SCE1_Ice_Total_CapEx_t0, SCE1_Global_Ice_CO2eqtax_t0, SCE1_Global_Ice_AP_Damage_matrix_t0, SCE1_Global_Ice_Clim_Damage_matrix_t0,...
            SCE1_Ice_Total_Voyage_cost_tm, SCE1_Ice_OpEx_tm, SCE1_Ice_Total_CapEx_tm, SCE1_Global_Ice_CO2eqtax_tm, SCE1_Global_Ice_AP_Damage_matrix_tm, SCE1_Global_Ice_Clim_Damage_matrix_tm,...
            SCE1_Ice_Total_Voyage_cost_tf, SCE1_Ice_OpEx_tf, SCE1_Ice_Total_CapEx_tf, SCE1_Global_Ice_CO2eqtax_tf, SCE1_Global_Ice_AP_Damage_matrix_tf, SCE1_Global_Ice_Clim_Damage_matrix_tf,...
            SCE1_NonIce_Total_Voyage_cost_t0, SCE1_NonIce_OpEx_t0, SCE1_NonIce_Total_CapEx_t0, SCE1_Global_NonIce_CO2eqtax_t0, SCE1_Global_NonIce_AP_Damage_matrix_t0, SCE1_Global_NonIce_Clim_Damage_matrix_t0,...
            SCE1_NonIce_Total_Voyage_cost_tm, SCE1_NonIce_OpEx_tm, SCE1_NonIce_Total_CapEx_tm, SCE1_Global_NonIce_CO2eqtax_tm, SCE1_Global_NonIce_AP_Damage_matrix_tm, SCE1_Global_NonIce_Clim_Damage_matrix_tm,...
            SCE1_NonIce_Total_Voyage_cost_tf, SCE1_NonIce_OpEx_tf, SCE1_NonIce_Total_CapEx_tf, SCE1_Global_NonIce_CO2eqtax_tf, SCE1_Global_NonIce_AP_Damage_matrix_tf, SCE1_Global_NonIce_Clim_Damage_matrix_tf,...
            SCE2_Ice_Total_Voyage_cost_t0, SCE2_Ice_OpEx_t0, SCE2_Ice_Total_CapEx_t0, SCE2_Global_Ice_CO2eqtax_t0, SCE2_Global_Ice_AP_Damage_matrix_t0, SCE2_Global_Ice_Clim_Damage_matrix_t0,...
            SCE2_Ice_Total_Voyage_cost_tm, SCE2_Ice_OpEx_tm, SCE2_Ice_Total_CapEx_tm, SCE2_Global_Ice_CO2eqtax_tm, SCE2_Global_Ice_AP_Damage_matrix_tm, SCE2_Global_Ice_Clim_Damage_matrix_tm,...
            SCE2_Ice_Total_Voyage_cost_tf, SCE2_Ice_OpEx_tf, SCE2_Ice_Total_CapEx_tf, SCE2_Global_Ice_CO2eqtax_tf, SCE2_Global_Ice_AP_Damage_matrix_tf, SCE2_Global_Ice_Clim_Damage_matrix_tf,...
            SCE2_NonIce_Total_Voyage_cost_t0, SCE2_NonIce_OpEx_t0, SCE2_NonIce_Total_CapEx_t0, SCE2_Global_NonIce_CO2eqtax_t0, SCE2_Global_NonIce_AP_Damage_matrix_t0, SCE2_Global_NonIce_Clim_Damage_matrix_t0,...
            SCE2_NonIce_Total_Voyage_cost_tm, SCE2_NonIce_OpEx_tm, SCE2_NonIce_Total_CapEx_tm, SCE2_Global_NonIce_CO2eqtax_tm, SCE2_Global_NonIce_AP_Damage_matrix_tm, SCE2_Global_NonIce_Clim_Damage_matrix_tm,...
            SCE2_NonIce_Total_Voyage_cost_tf, SCE2_NonIce_OpEx_tf, SCE2_NonIce_Total_CapEx_tf, SCE2_Global_NonIce_CO2eqtax_tf, SCE2_Global_NonIce_AP_Damage_matrix_tf, SCE2_Global_NonIce_Clim_Damage_matrix_tf,...
            SCE3_NonIce_Total_Voyage_cost_t0, SCE3_NonIce_OpEx_t0, SCE3_NonIce_Total_CapEx_t0, SCE3_Global_NonIce_CO2eqtax_t0, SCE3_Global_NonIce_AP_Damage_matrix_t0, SCE3_Global_NonIce_Clim_Damage_matrix_t0,...
            SCE3_NonIce_Total_Voyage_cost_tm, SCE3_NonIce_OpEx_tm, SCE3_NonIce_Total_CapEx_tm, SCE3_Global_NonIce_CO2eqtax_tm, SCE3_Global_NonIce_AP_Damage_matrix_tm, SCE3_Global_NonIce_Clim_Damage_matrix_tm,...
            SCE3_NonIce_Total_Voyage_cost_tf, SCE3_NonIce_OpEx_tf, SCE3_NonIce_Total_CapEx_tf, SCE3_Global_NonIce_CO2eqtax_tf, SCE3_Global_NonIce_AP_Damage_matrix_tf, SCE3_Global_NonIce_Clim_Damage_matrix_tf,...
            SCE1_Ice_FC_ptv_t0, SCE1_Ice_FC_ptv_tm, SCE1_Ice_FC_ptv_tf, SCE1_NonIce_FC_ptv_t0, SCE1_NonIce_FC_ptv_tm, SCE1_NonIce_FC_ptv_tf,...
            SCE2_Ice_FC_ptv_t0, SCE2_Ice_FC_ptv_tm, SCE2_Ice_FC_ptv_tf, SCE2_NonIce_FC_ptv_t0, SCE2_NonIce_FC_ptv_tm, SCE2_NonIce_FC_ptv_tf,...
            SCE3_Ice_FC_ptv_t0, SCE3_Ice_FC_ptv_tm, SCE3_Ice_FC_ptv_tf, SCE3_NonIce_FC_ptv_t0, SCE3_NonIce_FC_ptv_tm, SCE3_NonIce_FC_ptv_tf,...
            SCE1_Ice_TC_ptv_t0, SCE1_Ice_TC_ptv_tm, SCE1_Ice_TC_ptv_tf, SCE1_NonIce_TC_ptv_t0, SCE1_NonIce_TC_ptv_tm, SCE1_NonIce_TC_ptv_tf,...
            SCE2_Ice_TC_ptv_t0, SCE2_Ice_TC_ptv_tm, SCE2_Ice_TC_ptv_tf, SCE2_NonIce_TC_ptv_t0, SCE2_NonIce_TC_ptv_tm, SCE2_NonIce_TC_ptv_tf,...
            SCE3_Ice_TC_ptv_t0, SCE3_Ice_TC_ptv_tm, SCE3_Ice_TC_ptv_tf, SCE3_NonIce_TC_ptv_t0, SCE3_NonIce_TC_ptv_tm, SCE3_NonIce_TC_ptv_tf,...
            SCE1_Global_Ice_CO2eq_matrix_t0, SCE1_Global_Ice_CO2eq_matrix_tm, SCE1_Global_Ice_CO2eq_matrix_tf,...
            SCE1_Global_NonIce_CO2eq_matrix_t0, SCE1_Global_NonIce_CO2eq_matrix_tm, SCE1_Global_NonIce_CO2eq_matrix_tf,...
            SCE2_Global_Ice_CO2eq_matrix_t0, SCE2_Global_Ice_CO2eq_matrix_tm, SCE2_Global_Ice_CO2eq_matrix_tf,...
            SCE2_Global_NonIce_CO2eq_matrix_t0, SCE2_Global_NonIce_CO2eq_matrix_tm, SCE2_Global_NonIce_CO2eq_matrix_tf,...
            SCE3_Global_Ice_CO2eq_matrix_t0, SCE3_Global_Ice_CO2eq_matrix_tm, SCE3_Global_Ice_CO2eq_matrix_tf,...
            SCE3_Global_NonIce_CO2eq_matrix_t0, SCE3_Global_NonIce_CO2eq_matrix_tm, SCE3_Global_NonIce_CO2eq_matrix_tf,...
            SCE1_Ice_SOx_matrix_t0, SCE1_Ice_NOx_matrix_t0, SCE1_Ice_PM_matrix_t0, SCE1_Ice_SOx_matrix_tm, SCE1_Ice_NOx_matrix_tm, SCE1_Ice_PM_matrix_tm,...
            SCE1_Ice_SOx_matrix_tf, SCE1_Ice_NOx_matrix_tf, SCE1_Ice_PM_matrix_tf, SCE1_NonIce_SOx_matrix_t0, SCE1_NonIce_NOx_matrix_t0, SCE1_NonIce_PM_matrix_t0,...
            SCE1_NonIce_SOx_matrix_tm, SCE1_NonIce_NOx_matrix_tm, SCE1_NonIce_PM_matrix_tm, SCE1_NonIce_SOx_matrix_tf, SCE1_NonIce_NOx_matrix_tf, SCE1_NonIce_PM_matrix_tf,...
            SCE2_Ice_SOx_matrix_t0, SCE2_Ice_NOx_matrix_t0, SCE2_Ice_PM_matrix_t0, SCE2_Ice_SOx_matrix_tm, SCE2_Ice_NOx_matrix_tm, SCE2_Ice_PM_matrix_tm,...
            SCE2_Ice_SOx_matrix_tf, SCE2_Ice_NOx_matrix_tf, SCE2_Ice_PM_matrix_tf, SCE2_NonIce_SOx_matrix_t0, SCE2_NonIce_NOx_matrix_t0, SCE2_NonIce_PM_matrix_t0,...
            SCE2_NonIce_SOx_matrix_tm, SCE2_NonIce_NOx_matrix_tm, SCE2_NonIce_PM_matrix_tm, SCE2_NonIce_SOx_matrix_tf, SCE2_NonIce_NOx_matrix_tf, SCE2_NonIce_PM_matrix_tf,...
            SCE3_Ice_SOx_matrix_t0,SCE3_Ice_NOx_matrix_t0,SCE3_Ice_PM_matrix_t0,SCE3_Ice_SOx_matrix_tm,SCE3_Ice_NOx_matrix_tm,SCE3_Ice_PM_matrix_tm,...
            SCE3_Ice_SOx_matrix_tf,SCE3_Ice_NOx_matrix_tf,SCE3_Ice_PM_matrix_tf,SCE3_NonIce_SOx_matrix_t0,SCE3_NonIce_NOx_matrix_t0,SCE3_NonIce_PM_matrix_t0,...
            SCE3_NonIce_SOx_matrix_tm,SCE3_NonIce_NOx_matrix_tm,SCE3_NonIce_PM_matrix_tm,SCE3_NonIce_SOx_matrix_tf,SCE3_NonIce_NOx_matrix_tf, SCE3_NonIce_PM_matrix_tf] = Commercial_Profile(IP_fees, dwtloss_pMWh, Dry_Bulk_Rev_pt, Container_Rev_pt, Wet_Bulk_Rev_pt, Storage_Cost_kW, Engine_Unit_Cost_MW, TLC_PA_MW, Learning_Curve_t0, Learning_Curve_tm, Learning_Curve_tf, Loan_Interest_Rate, Amortisation_period, SCE3_Suez_Route_T_S, Ice_dwt,...
            Icesfc, NonIcesfc, Aux_sfc, Aux_Pow_ice, Boiler_tpd, Summer_IB_fees, Winter_IB_fees, DB_Suez_fee, Cont_Suez_fee, WB_Suez_fee, Port_fee, Logic_mat_IceStrength_feasibility_Scenario1,...
            SCE3_Suez_nav_d, d, IMO_type, TEU, dwt,gt, Ice_gt, t,Ice_Energy_capacity_kWh, NonIce_Energy_capacity_kWh, Capital_Advance, Pow_ice, Pow_ice_rat,...
            SCE1_Fuel_cons_t0, SCE1_Fuel_cons_tm, SCE1_Fuel_cons_tf, SCE1_Aux_Fuel_cons_t0, SCE1_Aux_Fuel_cons_tm, SCE1_Aux_Fuel_cons_tf, SCE1_Boil_Fuel_cons_t0, SCE1_Boil_Fuel_cons_tm, SCE1_Boil_Fuel_cons_tf,...
            SCE2_Fuel_cons_t0, SCE2_Fuel_cons_tm, SCE2_Fuel_cons_tf, SCE2_Aux_Fuel_cons_t0, SCE2_Aux_Fuel_cons_tm, SCE2_Aux_Fuel_cons_tf, SCE2_Boil_Fuel_cons_t0, SCE2_Boil_Fuel_cons_tm, SCE2_Boil_Fuel_cons_tf,...
            SCE3_Fuel_cons_t0, SCE3_Fuel_cons_tm, SCE3_Fuel_cons_tf, SCE3_Aux_Fuel_cons_t0, SCE3_Aux_Fuel_cons_tm, SCE3_Aux_Fuel_cons_tf, SCE3_Boil_Fuel_cons_t0, SCE3_Boil_Fuel_cons_tm, SCE3_Boil_Fuel_cons_tf,...
            SCE1_Fuel_costs_t0, SCE1_Fuel_costs_tm, SCE1_Fuel_costs_tf, SCE1_Aux_Fuel_costs_t0,....
            SCE1_Aux_Fuel_costs_tm, SCE1_Aux_Fuel_costs_tf, SCE1_Boil_Fuel_costs_t0, SCE1_Boil_Fuel_costs_tm, SCE1_Boil_Fuel_costs_tf,...
            SCE2_Fuel_costs_t0, SCE2_Fuel_costs_tm, SCE2_Fuel_costs_tf, SCE2_Aux_Fuel_costs_t0, SCE2_Aux_Fuel_costs_tm, SCE2_Aux_Fuel_costs_tf,...
            SCE2_Boil_Fuel_costs_t0, SCE2_Boil_Fuel_costs_tm, SCE2_Boil_Fuel_costs_tf, SCE3_Fuel_costs_t0, SCE3_Fuel_costs_tm, SCE3_Fuel_costs_tf,...
            SCE3_Aux_Fuel_costs_t0, SCE3_Aux_Fuel_costs_tm, SCE3_Aux_Fuel_costs_tf, SCE3_Boil_Fuel_costs_t0, SCE3_Boil_Fuel_costs_tm, SCE3_Boil_Fuel_costs_tf, v,...
            SCE1_Ice_Route1_n_t0, SCE1_Ice_Route1_n_tm, SCE1_Ice_Route1_n_tf,...
            SCE1_Ice_Route2_n_t0, SCE1_Ice_Route2_n_tm, SCE1_Ice_Route2_n_tf,...
            SCE1_Ice_Route3_n_t0, SCE1_Ice_Route3_n_tm, SCE1_Ice_Route3_n_tf,...
            SCE1_NonIce_Route1_n_t0, SCE1_NonIce_Route1_n_tm, SCE1_NonIce_Route1_n_tf,...
            SCE1_NonIce_Route2_n_t0, SCE1_NonIce_Route2_n_tm, SCE1_NonIce_Route2_n_tf,...
            SCE1_NonIce_Route3_n_t0, SCE1_NonIce_Route3_n_tm, SCE1_NonIce_Route3_n_tf,...
            SCE2_Ice_Route1_n_t0, SCE2_Ice_Route1_n_tm, SCE2_Ice_Route1_n_tf,...
            SCE2_Ice_Route2_n_t0, SCE2_Ice_Route2_n_tm, SCE2_Ice_Route2_n_tf,...
            SCE2_Ice_Route3_n_t0, SCE2_Ice_Route3_n_tm, SCE2_Ice_Route3_n_tf,...
            SCE2_NonIce_Route1_n_t0, SCE2_NonIce_Route1_n_tm, SCE2_NonIce_Route1_n_tf,...
            SCE2_NonIce_Route2_n_t0, SCE2_NonIce_Route2_n_tm, SCE2_NonIce_Route2_n_tf,...
            SCE2_NonIce_Route3_n_t0, SCE2_NonIce_Route3_n_tm, SCE2_NonIce_Route3_n_tf,...
            SCE2_Ice_Route1_Suez_n_t0, SCE2_Ice_Route1_Suez_n_tm, SCE2_Ice_Route1_Suez_n_tf,...
            SCE2_Ice_Route2_Suez_n_t0, SCE2_Ice_Route2_Suez_n_tm, SCE2_Ice_Route2_Suez_n_tf,...
            SCE2_Ice_Route3_Suez_n_t0, SCE2_Ice_Route3_Suez_n_tm, SCE2_Ice_Route3_Suez_n_tf,...
            SCE2_NonIce_Route1_Suez_n_t0, SCE2_NonIce_Route1_Suez_n_tm, SCE2_NonIce_Route1_Suez_n_tf,...
            SCE2_NonIce_Route2_Suez_n_t0, SCE2_NonIce_Route2_Suez_n_tm, SCE2_NonIce_Route2_Suez_n_tf,...
            SCE2_NonIce_Route3_Suez_n_t0, SCE2_NonIce_Route3_Suez_n_tm, SCE2_NonIce_Route3_Suez_n_tf,...
            SCE2_Ice_Route1_Total_n_t0, SCE2_Ice_Route1_Total_n_tm, SCE2_Ice_Route1_Total_n_tf,...
            SCE2_Ice_Route2_Total_n_t0, SCE2_Ice_Route2_Total_n_tm, SCE2_Ice_Route2_Total_n_tf,...
            SCE2_Ice_Route3_Total_n_t0, SCE2_Ice_Route3_Total_n_tm, SCE2_Ice_Route3_Total_n_tf,...
            SCE2_NonIce_Route1_Total_n_t0, SCE2_NonIce_Route1_Total_n_tm, SCE2_NonIce_Route1_Total_n_tf,...
            SCE2_NonIce_Route2_Total_n_t0, SCE2_NonIce_Route2_Total_n_tm, SCE2_NonIce_Route2_Total_n_tf,...
            SCE2_NonIce_Route3_Total_n_t0, SCE2_NonIce_Route3_Total_n_tm, SCE2_NonIce_Route3_Total_n_tf,...
            SCE3_Suez_n_S, Arctic_Route1_Total_T_A, Arctic_Route2_Total_T_A, Arctic_Route3_Total_T_A,...
            Ice_dwt_loss, EF, SCE1_Ice_Total_days_Route1_t0, SCE1_Ice_Total_days_Route1_tm, SCE1_Ice_Total_days_Route1_tf,...
            SCE1_Ice_Total_days_Route2_t0, SCE1_Ice_Total_days_Route2_tm, SCE1_Ice_Total_days_Route2_tf,...
            SCE1_Ice_Total_days_Route3_t0, SCE1_Ice_Total_days_Route3_tm, SCE1_Ice_Total_days_Route3_tf,...
            SCE1_NonIce_Total_days_Route1_t0, SCE1_NonIce_Total_days_Route1_tm, SCE1_NonIce_Total_days_Route1_tf,...
            SCE1_NonIce_Total_days_Route2_t0, SCE1_NonIce_Total_days_Route2_tm, SCE1_NonIce_Total_days_Route2_tf,...
            SCE1_NonIce_Total_days_Route3_t0, SCE1_NonIce_Total_days_Route3_tm, SCE1_NonIce_Total_days_Route3_tf,...
            SCE2_Ice_Total_days_Route1_t0, SCE2_Ice_Total_days_Route1_tm, SCE2_Ice_Total_days_Route1_tf,...
            SCE2_Ice_Total_days_Route2_t0, SCE2_Ice_Total_days_Route2_tm, SCE2_Ice_Total_days_Route2_tf,...
            SCE2_Ice_Total_days_Route3_t0, SCE2_Ice_Total_days_Route3_tm, SCE2_Ice_Total_days_Route3_tf,...
            SCE2_NonIce_Total_days_Route1_t0, SCE2_NonIce_Total_days_Route1_tm, SCE2_NonIce_Total_days_Route1_tf,...
            SCE2_NonIce_Total_days_Route2_t0, SCE2_NonIce_Total_days_Route2_tm, SCE2_NonIce_Total_days_Route2_tf,...
            SCE2_NonIce_Total_days_Route3_t0, SCE2_NonIce_Total_days_Route3_tm, SCE2_NonIce_Total_days_Route3_tf,...
            SCE3_Ice_Total_days, SCE3_NonIce_Total_days, Ice_Fuel_consumed_Suez_SCE2Route1_t_t0, Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0, Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0,...
            Ice_Fuel_consumed_Suez_SCE2Route1_t_tm, Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm, Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm,...
            Ice_Fuel_consumed_Suez_SCE2Route1_t_tf, Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf, Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf,...
            Ice_Fuel_consumed_Suez_SCE2Route2_t_t0, Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0, Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0,...
            Ice_Fuel_consumed_Suez_SCE2Route2_t_tm, Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm, Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm,...
            Ice_Fuel_consumed_Suez_SCE2Route2_t_tf, Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf, Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf,...
            Ice_Fuel_consumed_Suez_SCE2Route3_t_t0, Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0, Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0,...
            Ice_Fuel_consumed_Suez_SCE2Route3_t_tm, Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm, Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm,...
            Ice_Fuel_consumed_Suez_SCE2Route3_t_tf, Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf, Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf,...
            NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0, NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0, NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0,...
            NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm, NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm, NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm,...
            NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf, NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf, NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf,...
            NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0, NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0, NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0,...
            NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm, NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm, NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm,...
            NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf, NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf, NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf,...
            NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0, NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0, NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0,...
            NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm, NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm, NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm,...
            NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf, NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf, NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf, Icesfc_design,...
            Arctic_damage_costs, Suez_damage_costs, GWP100_CH4, GWP100_N2O, GWP20_BCArctic, GWP20_BCSuez, Carbon_price_t0, Carbon_price_tm, Carbon_price_tf,...
            Arctic_Route1_Total_D_A, Arctic_Route2_Total_D_A, Arctic_Route3_Total_D_A, SCE3_Suez_Route_D_S, inp, NonIcesfc_design);
        
        %Build a policy matrix, based off the scenario assumptions made
        %earlier and use it to rule out fuels which do not comply
        Policy_tm = [Global_GHG_tm 0 Global_GHG_tm 0 Global_GHG_tm 0 Global_AP_tm 0 Global_AP_tm 0 Global_AP_tm 0 Global_GHG_tm 0]';
        Policy_tf = [Global_GHG_tf 0 Global_GHG_tf 0 Global_GHG_tf 0 Global_AP_tf 0 Global_AP_tf 0 Global_AP_tf 0 Global_GHG_tf 0]';
        EFs = EF{:,:}'; Logic_tm = Policy_tm > 0; Logic_tf = Policy_tf > 0;
        
        EF_diff_tm = EFs(Logic_tm,:) -  (EFs(Logic_tm,1).*Policy_tm(Logic_tm)); EF_diff_tf = EFs(Logic_tf,:) -  (EFs(Logic_tf,1).*Policy_tf(Logic_tf));
        
        %Two different inequalities/equations for policy and total decarbonisation
        if Global_GHG_tm < 1
            Logic_tm = sum(abs(EF_diff_tm./(EFs(Logic_tm,1).*Policy_tm(Logic_tm)))); Logic_tm = Logic_tm <= sum(Policy_tm(Policy_tm > 0)./Policy_tm(Policy_tm > 0)); % Truncation errors
        else
            Logic_tm = sum(abs(EF_diff_tm./(EFs(Logic_tm,1).*Policy_tm(Logic_tm)))); Logic_tm(Logic_tm > 100) = 0; Logic_tm = Logic_tm == sum(Policy_tm);
        end
        
        if Global_GHG_tf < 1
            Logic_tf = sum(EF_diff_tf./(EFs(Logic_tf,1).*Policy_tf(Logic_tf))); 
            Logic_tf = Logic_tf <= 0;
        else
            Logic_tf = sum(abs(EF_diff_tf./(EFs(Logic_tf,1).*Policy_tf(Logic_tf)))); 
            Logic_tf(Logic_tf > 100) = 0; Logic_tf = Logic_tf == sum(Policy_tf);

        end
        
        %Sulphur cap means HFO isn't considered
        SCE3_Compatibility_t0 = ones(height(d), length(SCE3_NonIce_TC_ptv_t0(1,:))); SCE3_Compatibility_t0(:,1) = 0;
        SCE3_Compatibility_tm = SCE3_Compatibility_t0.*double(repmat(Logic_tm,height(d),1)); SCE3_Compatibility_tf = SCE3_Compatibility_t0.*double(repmat(Logic_tf,height(d),1));
        
                
        %Build a compatability matrix for each vessel scenario 
        if sum(Policy_tm) == 0
            SCE3_Compatibility_tm = SCE3_Compatibility_t0.*ones(height(d),length(SCE3_Compatibility_tm(1,:)));
        end
        
        if sum(Policy_tf) == 0
            SCE3_Compatibility_tf = SCE3_Compatibility_t0.*ones(height(d),length(SCE3_Compatibility_tf(1,:)));
        end
        
        SCE1_Ice_Compatibility_t0 = zeros(height(d),3.*length(SCE3_Compatibility_t0(1,:)));
        for i = 1:1:length(SCE3_Compatibility_t0(1,:))
            SCE1_Ice_Compatibility_t0(:,(3.*(i-1))+1) = SCE3_Compatibility_t0(:,i);
            SCE1_Ice_Compatibility_t0(:,(3.*(i-1))+2) = SCE3_Compatibility_t0(:,i);
            SCE1_Ice_Compatibility_t0(:,(3.*(i-1))+3) = SCE3_Compatibility_t0(:,i);
        end
        
        SCE1_Ice_Compatibility_tm = zeros(height(d),3.*length(SCE3_Compatibility_tm(1,:)));
        for i = 1:1:length(SCE3_Compatibility_tm(1,:))
            SCE1_Ice_Compatibility_tm(:,(3.*(i-1))+1) = SCE3_Compatibility_tm(:,i);
            SCE1_Ice_Compatibility_tm(:,(3.*(i-1))+2) = SCE3_Compatibility_tm(:,i);
            SCE1_Ice_Compatibility_tm(:,(3.*(i-1))+3) = SCE3_Compatibility_tm(:,i);
        end
        
        SCE1_Ice_Compatibility_tf = zeros(height(d),3.*length(SCE3_Compatibility_tf(1,:)));
        for i = 1:1:length(SCE3_Compatibility_tf(1,:))
            SCE1_Ice_Compatibility_tf(:,(3.*(i-1))+1) = SCE3_Compatibility_tf(:,i);
            SCE1_Ice_Compatibility_tf(:,(3.*(i-1))+2) = SCE3_Compatibility_tf(:,i);
            SCE1_Ice_Compatibility_tf(:,(3.*(i-1))+3) = SCE3_Compatibility_tf(:,i);
        end
        
        clear Policy_tm Logic_tm EF_diff_tm Policy_tf Logic_tf EF_diff_tf %Delete the variables so that they do not become confused 
        %with the Arctic variables 
        
        %The Arctic may have a different policy regime and this must also
        %be considered
        Policy_tm = [Regional_GHG_tm 0 Regional_GHG_tm 0 Regional_GHG_tm 0 Regional_AP_tm 0 Regional_AP_tm 0 Regional_AP_tm 0 Regional_GHG_tm 0]';
        Policy_tf = [Regional_GHG_tf 0 Regional_GHG_tf 0 Regional_GHG_tf 0 Regional_AP_tf 0 Regional_AP_tf 0 Regional_AP_tf 0 Regional_GHG_tf 0]';
        EFs = EF{:,:}'; Logic_tm = Policy_tm > 0; Logic_tf = Policy_tf > 0;
        
        EF_diff_tm = EFs(Logic_tm,:) -  (EFs(Logic_tm,1).*Policy_tm(Logic_tm)); EF_diff_tf = EFs(Logic_tf,:) -  (EFs(Logic_tf,1).*Policy_tf(Logic_tf));
        
        if Regional_AP_tm < 1
            Logic_tm = sum(EF_diff_tm./(EFs(Logic_tm,1).*Policy_tm(Logic_tm))); Logic_tm = abs(Logic_tm) >= sum(Policy_tm); % Truncation errors
        else
            Logic_tm = sum(abs(EF_diff_tm./(EFs(Logic_tm,1).*Policy_tm(Logic_tm)))); Logic_tm(Logic_tm > 100) = 0; Logic_tm = Logic_tm == sum(Policy_tm);
        end
        
        if Regional_AP_tf < 1
            Logic_tf = sum(EF_diff_tf./(EFs(Logic_tf,1).*Policy_tf(Logic_tf))); Logic_tf = abs(Logic_tf) >= sum(Policy_tf);
        else
            Logic_tf = sum(abs(EF_diff_tf./(EFs(Logic_tf,1).*Policy_tf(Logic_tf)))); Logic_tf(Logic_tf > 100) = 0; Logic_tf = Logic_tf == sum(Policy_tf);
        end
        
        Compatibility_tm = double(repmat(Logic_tm,height(d),1)); Compatibility_tf = double(repmat(Logic_tf,height(d),1));
        
        if sum(Policy_tm) == 0
            Compatibility_tm = ones(height(d),length(SCE3_Compatibility_tm(1,:)));
        end
        
        if sum(Policy_tf) == 0
            Compatibility_tf = ones(height(d),length(SCE3_Compatibility_tf(1,:)));
        end
        
        Regional_SCE1_Ice_Compatibility_tm = zeros(height(d),3.*length(Compatibility_tm(1,:)));
        for i = 1:1:length(Compatibility_tm(1,:))
            Regional_SCE1_Ice_Compatibility_tm(:,(3.*(i-1))+1) = Compatibility_tm(:,i);
            Regional_SCE1_Ice_Compatibility_tm(:,(3.*(i-1))+2) = Compatibility_tm(:,i);
            Regional_SCE1_Ice_Compatibility_tm(:,(3.*(i-1))+3) = Compatibility_tm(:,i);
        end
        
        Regional_SCE1_Ice_Compatibility_tf = zeros(height(d),3.*length(Compatibility_tf(1,:)));
        for i = 1:1:length(Compatibility_tf(1,:))
            Regional_SCE1_Ice_Compatibility_tf(:,(3.*(i-1))+1) = Compatibility_tf(:,i);
            Regional_SCE1_Ice_Compatibility_tf(:,(3.*(i-1))+2) = Compatibility_tf(:,i);
            Regional_SCE1_Ice_Compatibility_tf(:,(3.*(i-1))+3) = Compatibility_tf(:,i);
        end
        
        SCE1_Ice_Compatibility_tm = SCE1_Ice_Compatibility_tm.*Regional_SCE1_Ice_Compatibility_tm;
        SCE1_Ice_Compatibility_tf = SCE1_Ice_Compatibility_tf.*Regional_SCE1_Ice_Compatibility_tf;
        
        SCE1_NonIce_Compatibility_t0 = Polar_Code_t0.*SCE1_Ice_Compatibility_t0;
        SCE1_NonIce_Compatibility_tm = Polar_Code_tm.*SCE1_Ice_Compatibility_tm;
        SCE1_NonIce_Compatibility_tf = Polar_Code_tf.*SCE1_Ice_Compatibility_tf;
        
        SCE2_Ice_Compatibility_t0 = SCE1_Ice_Compatibility_t0;
        SCE2_Ice_Compatibility_tm = SCE1_Ice_Compatibility_tm;
        SCE2_Ice_Compatibility_tf = SCE1_Ice_Compatibility_tf;
        
        SCE2_NonIce_Compatibility_t0 = Polar_Code_t0.*SCE2_Ice_Compatibility_t0;
        SCE2_NonIce_Compatibility_tm = Polar_Code_tm.*SCE2_Ice_Compatibility_tm;
        SCE2_NonIce_Compatibility_tf = Polar_Code_tf.*SCE2_Ice_Compatibility_tf;
        
        %Lastly if the route isn't open in the summer, it can't be during the
        %winter
        if sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0) == 0
            SCE1_Ice_Compatibility_t0(:,1:3:end) = NaN;
            SCE2_Ice_Compatibility_t0(:,1:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm) == 0
            SCE1_Ice_Compatibility_tm(:,1:3:end) = NaN;
            SCE2_Ice_Compatibility_tm(:,1:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf) == 0
            SCE1_Ice_Compatibility_tf(:,1:3:end) = NaN;
            SCE2_Ice_Compatibility_tf(:,1:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0) == 0
            SCE1_Ice_Compatibility_t0(:,2:3:end) = NaN;
            SCE2_Ice_Compatibility_t0(:,2:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm) == 0
            SCE1_Ice_Compatibility_tm(:,2:3:end) = NaN;
            SCE2_Ice_Compatibility_tm(:,2:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf) == 0
            SCE1_Ice_Compatibility_tf(:,2:3:end) = NaN;
            SCE2_Ice_Compatibility_tf(:,2:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0) == 0
            SCE1_Ice_Compatibility_t0(:,3:3:end) = NaN;
            SCE2_Ice_Compatibility_t0(:,3:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm) == 0
            SCE1_Ice_Compatibility_tm(:,3:3:end) = NaN;
            SCE2_Ice_Compatibility_tm(:,3:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf) == 0
            SCE1_Ice_Compatibility_tf(:,3:3:end) = NaN;
            SCE2_Ice_Compatibility_tf(:,3:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_t0(:,1)) == 0
            SCE1_NonIce_Compatibility_t0(:,1:3:end) = NaN;
            SCE2_NonIce_Compatibility_t0(:,1:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_tm(:,1)) == 0
            SCE1_NonIce_Compatibility_tm(:,1:3:end) = NaN;
            SCE2_NonIce_Compatibility_tm(:,1:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_tf(:,1)) == 0
            SCE1_NonIce_Compatibility_tf(:,1:3:end) = NaN;
            SCE2_NonIce_Compatibility_tf(:,1:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_t0(:,1)) == 0
            SCE1_NonIce_Compatibility_t0(:,2:3:end) = NaN;
            SCE2_NonIce_Compatibility_t0(:,2:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_tm(:,1)) == 0
            SCE1_NonIce_Compatibility_tm(:,2:3:end) = NaN;
            SCE2_NonIce_Compatibility_tm(:,2:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_tf(:,1)) == 0
            SCE1_NonIce_Compatibility_tf(:,2:3:end) = NaN;
            SCE2_NonIce_Compatibility_tf(:,2:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_t0(:,1)) == 0
            SCE1_NonIce_Compatibility_t0(:,3:3:end) = NaN;
            SCE2_NonIce_Compatibility_t0(:,3:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_tm(:,1)) == 0
            SCE1_NonIce_Compatibility_tm(:,3:3:end) = NaN;
            SCE2_NonIce_Compatibility_tm(:,3:3:end) = NaN;
        end
        
        if sum(Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_tf(:,1)) == 0
            SCE1_NonIce_Compatibility_tf(:,3:3:end) = NaN;
            SCE2_NonIce_Compatibility_tf(:,3:3:end) = NaN;
        end
        
        %Replace zero values with NaNs which makes it easier for the future
        %outputs to be read
        Ice_Comp_Logic_t0 = [SCE2_Ice_Route1_n_t0 SCE2_Ice_Route2_n_t0 SCE2_Ice_Route3_n_t0]; Ice_Comp_Logic_t0 = repmat(Ice_Comp_Logic_t0, 1, length(SCE2_Ice_Compatibility_t0(1,:))./3); 
        Ice_Comp_Logic_tm = [SCE2_Ice_Route1_n_tm SCE2_Ice_Route2_n_tm SCE2_Ice_Route3_n_tm]; Ice_Comp_Logic_tm = repmat(Ice_Comp_Logic_tm, 1, length(SCE2_Ice_Compatibility_tm(1,:))./3); 
        Ice_Comp_Logic_tf = [SCE2_Ice_Route1_n_tf SCE2_Ice_Route2_n_tf SCE2_Ice_Route3_n_tf]; Ice_Comp_Logic_tf = repmat(Ice_Comp_Logic_tf, 1, length(SCE2_Ice_Compatibility_tf(1,:))./3);
 
        NonIce_Comp_Logic_t0 = [SCE2_NonIce_Route1_n_t0 SCE2_NonIce_Route2_n_t0 SCE2_NonIce_Route3_n_t0]; NonIce_Comp_Logic_t0 = repmat(NonIce_Comp_Logic_t0, 1, length(SCE2_NonIce_Compatibility_t0(1,:))./3); 
        NonIce_Comp_Logic_tm = [SCE2_NonIce_Route1_n_tm SCE2_NonIce_Route2_n_tm SCE2_NonIce_Route3_n_tm]; NonIce_Comp_Logic_tm = repmat(NonIce_Comp_Logic_tm, 1, length(SCE2_NonIce_Compatibility_tm(1,:))./3); 
        NonIce_Comp_Logic_tf = [SCE2_NonIce_Route1_n_tf SCE2_NonIce_Route2_n_tf SCE2_NonIce_Route3_n_tf]; NonIce_Comp_Logic_tf = repmat(NonIce_Comp_Logic_tf, 1, length(SCE2_NonIce_Compatibility_tf(1,:))./3); 
        
        SCE1_Ice_Compatibility_t0(SCE1_Ice_Compatibility_t0 == 0) = NaN; SCE1_Ice_Compatibility_tm(SCE1_Ice_Compatibility_tm == 0) = NaN; SCE1_Ice_Compatibility_tf(SCE1_Ice_Compatibility_tf == 0) = NaN;
        SCE1_NonIce_Compatibility_t0(SCE1_NonIce_Compatibility_t0 == 0) = NaN; SCE1_NonIce_Compatibility_tm(SCE1_NonIce_Compatibility_tm == 0) = NaN; SCE1_NonIce_Compatibility_tf(SCE1_NonIce_Compatibility_tf == 0) = NaN;
        
        SCE2_Ice_Compatibility_t0(SCE2_Ice_Compatibility_t0 == 0) = NaN; SCE2_Ice_Compatibility_tm(SCE2_Ice_Compatibility_tm == 0) = NaN; SCE2_Ice_Compatibility_tf(SCE2_Ice_Compatibility_tf == 0) = NaN;
        SCE2_NonIce_Compatibility_t0(SCE2_NonIce_Compatibility_t0 == 0) = NaN; SCE2_NonIce_Compatibility_tm(SCE2_NonIce_Compatibility_tm == 0) = NaN; SCE2_NonIce_Compatibility_tf(SCE2_NonIce_Compatibility_tf == 0) = NaN;
        
        SCE3_Compatibility_t0(SCE3_Compatibility_t0 == 0) = NaN; SCE3_Compatibility_tm(SCE3_Compatibility_tm == 0) = NaN; SCE3_Compatibility_tf(SCE3_Compatibility_tf == 0) = NaN;
        
        SCE2_Ice_Compatibility_t0(Ice_Comp_Logic_t0 == 0) = NaN; SCE2_Ice_Compatibility_tm(Ice_Comp_Logic_tm == 0) = NaN;  SCE2_Ice_Compatibility_tf(Ice_Comp_Logic_tf== 0) = NaN; 
        SCE2_NonIce_Compatibility_t0(NonIce_Comp_Logic_t0 == 0) = NaN; SCE2_NonIce_Compatibility_tm(NonIce_Comp_Logic_tm == 0) = NaN;  SCE2_NonIce_Compatibility_tf(NonIce_Comp_Logic_tf== 0) = NaN; 
        
        clear Policy_tm Logic_tm EF_diff_tm Policy_tf Logic_tf EF_diff_tf Ice_Comp_Logic_t0 Ice_Comp_Logic_tm Ice_Comp_Logic_tf NonIce_Comp_Logic_t0 NonIce_Comp_Logic_tm NonIce_Comp_Logic_tf
        
        %Returns the normalised metric, this is computed within the
        %function. The baseline ship is assumed to be an open water vessel
        %transiting through the Suez, two baselines are considered
        %depending on the operating fuel mix. One baseline considers the
        %same fuel mix between Arctic and Suez routes, whereas another
        %baseline considers a 2-stroke/LSHFO mix. 
        
        
     [Ice_Bulker_FC_Normalised_value_NSR_ptv,  Ice_Container_FC_Normalised_value_NSR_ptv, Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv,...
            Ice_Bulker_TC_Normalised_value_NSR_ptv,  Ice_Container_TC_Normalised_value_NSR_ptv, Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv,...
            Ice_LSHFO_Bulker_FC_Normalised_value_NSR_ptv,  Ice_LSHFO_Container_FC_Normalised_value_NSR_ptv, Ice_LSHFO_Wet_Bulker_FC_Normalised_value_NSR_ptv,...
            Ice_LSHFO_Bulker_TC_Normalised_value_NSR_ptv,  Ice_LSHFO_Container_TC_Normalised_value_NSR_ptv, Ice_LSHFO_Wet_Bulker_TC_Normalised_value_NSR_ptv,...
            Ice_Bulker_Diff_NSR_t0,  Ice_Bulker_Diff_NSR_tm,  Ice_Bulker_Diff_NSR_tf, Ice_Container_Diff_NSR_t0,  Ice_Container_Diff_NSR_tm,  Ice_Container_Diff_NSR_tf,...
            Ice_Wet_Bulker_Diff_NSR_t0,  Ice_Wet_Bulker_Diff_NSR_tm,  Ice_Wet_Bulker_Diff_NSR_tf, Ice_LSHFO_Bulker_Diff_NSR_t0,  Ice_LSHFO_Bulker_Diff_NSR_tm,  Ice_LSHFO_Bulker_Diff_NSR_tf,...
            Ice_LSHFO_Container_Diff_NSR_t0,  Ice_LSHFO_Container_Diff_NSR_tm,  Ice_LSHFO_Container_Diff_NSR_tf, Ice_LSHFO_Wet_Bulker_Diff_NSR_t0,  Ice_LSHFO_Wet_Bulker_Diff_NSR_tm, Ice_LSHFO_Wet_Bulker_Diff_NSR_tf,...
            Ice_Bulker_FC_Normalised_value_INT_ptv,  Ice_Container_FC_Normalised_value_INT_ptv, Ice_Wet_Bulker_FC_Normalised_value_INT_ptv,...
            Ice_Bulker_TC_Normalised_value_INT_ptv,  Ice_Container_TC_Normalised_value_INT_ptv, Ice_Wet_Bulker_TC_Normalised_value_INT_ptv,...
            Ice_LSHFO_Bulker_FC_Normalised_value_INT_ptv,  Ice_LSHFO_Container_FC_Normalised_value_INT_ptv, Ice_LSHFO_Wet_Bulker_FC_Normalised_value_INT_ptv,...
            Ice_LSHFO_Bulker_TC_Normalised_value_INT_ptv,  Ice_LSHFO_Container_TC_Normalised_value_INT_ptv, Ice_LSHFO_Wet_Bulker_TC_Normalised_value_INT_ptv,...
            Ice_Bulker_Diff_INT_t0,  Ice_Bulker_Diff_INT_tm,  Ice_Bulker_Diff_INT_tf, Ice_Container_Diff_INT_t0,  Ice_Container_Diff_INT_tm,  Ice_Container_Diff_INT_tf,...
            Ice_Wet_Bulker_Diff_INT_t0,  Ice_Wet_Bulker_Diff_INT_tm,  Ice_Wet_Bulker_Diff_INT_tf, Ice_LSHFO_Bulker_Diff_INT_t0,  Ice_LSHFO_Bulker_Diff_INT_tm,  Ice_LSHFO_Bulker_Diff_INT_tf,...
            Ice_LSHFO_Container_Diff_INT_t0,  Ice_LSHFO_Container_Diff_INT_tm,  Ice_LSHFO_Container_Diff_INT_tf, Ice_LSHFO_Wet_Bulker_Diff_INT_t0,  Ice_LSHFO_Wet_Bulker_Diff_INT_tm, Ice_LSHFO_Wet_Bulker_Diff_INT_tf,...
            Ice_Bulker_FC_Normalised_value_TPP_ptv,  Ice_Container_FC_Normalised_value_TPP_ptv, Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv,...
            Ice_Bulker_TC_Normalised_value_TPP_ptv,  Ice_Container_TC_Normalised_value_TPP_ptv, Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv,...
            Ice_LSHFO_Bulker_FC_Normalised_value_TPP_ptv,  Ice_LSHFO_Container_FC_Normalised_value_TPP_ptv, Ice_LSHFO_Wet_Bulker_FC_Normalised_value_TPP_ptv,...
            Ice_LSHFO_Bulker_TC_Normalised_value_TPP_ptv,  Ice_LSHFO_Container_TC_Normalised_value_TPP_ptv, Ice_LSHFO_Wet_Bulker_TC_Normalised_value_TPP_ptv,...
            Ice_Bulker_CT_Normalised_value_NSR_ptv, Ice_Container_CT_Normalised_value_NSR_ptv, Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv,...
            Ice_LSHFO_Bulker_CT_Normalised_value_NSR_ptv, Ice_LSHFO_Container_CT_Normalised_value_NSR_ptv, Ice_LSHFO_Wet_Bulker_CT_Normalised_value_NSR_ptv,...
            Ice_Bulker_Diff_TPP_t0,  Ice_Bulker_Diff_TPP_tm,  Ice_Bulker_Diff_TPP_tf, Ice_Container_Diff_TPP_t0,  Ice_Container_Diff_TPP_tm,  Ice_Container_Diff_TPP_tf,...
            Ice_Wet_Bulker_Diff_TPP_t0,  Ice_Wet_Bulker_Diff_TPP_tm,  Ice_Wet_Bulker_Diff_TPP_tf, Ice_LSHFO_Bulker_Diff_TPP_t0,  Ice_LSHFO_Bulker_Diff_TPP_tm,  Ice_LSHFO_Bulker_Diff_TPP_tf,...
            Ice_LSHFO_Container_Diff_TPP_t0,  Ice_LSHFO_Container_Diff_TPP_tm,  Ice_LSHFO_Container_Diff_TPP_tf, Ice_LSHFO_Wet_Bulker_Diff_TPP_t0,  Ice_LSHFO_Wet_Bulker_Diff_TPP_tm, Ice_LSHFO_Wet_Bulker_Diff_TPP_tf,...
            NonIce_Bulker_FC_Normalised_value_NSR_ptv,  NonIce_Container_FC_Normalised_value_NSR_ptv, NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv,...
            NonIce_Bulker_TC_Normalised_value_NSR_ptv,  NonIce_Container_TC_Normalised_value_NSR_ptv, NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv,...
            NonIce_LSHFO_Bulker_FC_Normalised_value_NSR_ptv,  NonIce_LSHFO_Container_FC_Normalised_value_NSR_ptv, NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_NSR_ptv,...
            NonIce_LSHFO_Bulker_TC_Normalised_value_NSR_ptv,  NonIce_LSHFO_Container_TC_Normalised_value_NSR_ptv, NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_NSR_ptv,...
            NonIce_Bulker_Diff_NSR_t0,  NonIce_Bulker_Diff_NSR_tm,  NonIce_Bulker_Diff_NSR_tf, NonIce_Container_Diff_NSR_t0,  NonIce_Container_Diff_NSR_tm,  NonIce_Container_Diff_NSR_tf,...
            NonIce_Wet_Bulker_Diff_NSR_t0,  NonIce_Wet_Bulker_Diff_NSR_tm,  NonIce_Wet_Bulker_Diff_NSR_tf, NonIce_LSHFO_Bulker_Diff_NSR_t0,  NonIce_LSHFO_Bulker_Diff_NSR_tm,  NonIce_LSHFO_Bulker_Diff_NSR_tf,...
            NonIce_LSHFO_Container_Diff_NSR_t0,  NonIce_LSHFO_Container_Diff_NSR_tm,  NonIce_LSHFO_Container_Diff_NSR_tf, NonIce_LSHFO_Wet_Bulker_Diff_NSR_t0,  NonIce_LSHFO_Wet_Bulker_Diff_NSR_tm, NonIce_LSHFO_Wet_Bulker_Diff_NSR_tf,...
            NonIce_Bulker_FC_Normalised_value_INT_ptv,  NonIce_Container_FC_Normalised_value_INT_ptv, NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv,...
            NonIce_Bulker_TC_Normalised_value_INT_ptv,  NonIce_Container_TC_Normalised_value_INT_ptv, NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv,...
            NonIce_LSHFO_Bulker_FC_Normalised_value_INT_ptv,  NonIce_LSHFO_Container_FC_Normalised_value_INT_ptv, NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_INT_ptv,...
            NonIce_LSHFO_Bulker_TC_Normalised_value_INT_ptv,  NonIce_LSHFO_Container_TC_Normalised_value_INT_ptv, NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_INT_ptv,...
            NonIce_Bulker_Diff_INT_t0,  NonIce_Bulker_Diff_INT_tm,  NonIce_Bulker_Diff_INT_tf, NonIce_Container_Diff_INT_t0,  NonIce_Container_Diff_INT_tm,  NonIce_Container_Diff_INT_tf,...
            NonIce_Wet_Bulker_Diff_INT_t0,  NonIce_Wet_Bulker_Diff_INT_tm,  NonIce_Wet_Bulker_Diff_INT_tf, NonIce_LSHFO_Bulker_Diff_INT_t0,  NonIce_LSHFO_Bulker_Diff_INT_tm,  NonIce_LSHFO_Bulker_Diff_INT_tf,...
            NonIce_LSHFO_Container_Diff_INT_t0,  NonIce_LSHFO_Container_Diff_INT_tm,  NonIce_LSHFO_Container_Diff_INT_tf, NonIce_LSHFO_Wet_Bulker_Diff_INT_t0,  NonIce_LSHFO_Wet_Bulker_Diff_INT_tm, NonIce_LSHFO_Wet_Bulker_Diff_INT_tf,...
            NonIce_Bulker_FC_Normalised_value_TPP_ptv,  NonIce_Container_FC_Normalised_value_TPP_ptv, NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv,...
            NonIce_Bulker_TC_Normalised_value_TPP_ptv,  NonIce_Container_TC_Normalised_value_TPP_ptv, NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv,...
            NonIce_LSHFO_Bulker_FC_Normalised_value_TPP_ptv,  NonIce_LSHFO_Container_FC_Normalised_value_TPP_ptv, NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_TPP_ptv,...
            NonIce_LSHFO_Bulker_TC_Normalised_value_TPP_ptv,  NonIce_LSHFO_Container_TC_Normalised_value_TPP_ptv, NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_TPP_ptv,...
            NonIce_Bulker_Diff_TPP_t0,  NonIce_Bulker_Diff_TPP_tm,  NonIce_Bulker_Diff_TPP_tf, NonIce_Container_Diff_TPP_t0,  NonIce_Container_Diff_TPP_tm,  NonIce_Container_Diff_TPP_tf,...
            NonIce_Wet_Bulker_Diff_TPP_t0,  NonIce_Wet_Bulker_Diff_TPP_tm,  NonIce_Wet_Bulker_Diff_TPP_tf, NonIce_LSHFO_Bulker_Diff_TPP_t0,  NonIce_LSHFO_Bulker_Diff_TPP_tm,  NonIce_LSHFO_Bulker_Diff_TPP_tf,...
            NonIce_LSHFO_Container_Diff_TPP_t0,  NonIce_LSHFO_Container_Diff_TPP_tm,  NonIce_LSHFO_Container_Diff_TPP_tf, NonIce_LSHFO_Wet_Bulker_Diff_TPP_t0,  NonIce_LSHFO_Wet_Bulker_Diff_TPP_tm, NonIce_LSHFO_Wet_Bulker_Diff_TPP_tf,...
            Ice_Bulker_Emissions_Diff_NSR_t0, Ice_Bulker_Emissions_Diff_NSR_tm, Ice_Bulker_Emissions_Diff_NSR_tf, Ice_Container_Emissions_Diff_NSR_t0, Ice_Container_Emissions_Diff_NSR_tm, Ice_Container_Emissions_Diff_NSR_tf,...
            Ice_Wet_Bulker_Emissions_Diff_NSR_t0, Ice_Wet_Bulker_Emissions_Diff_NSR_tm, Ice_Wet_Bulker_Emissions_Diff_NSR_tf,  Ice_LSHFO_Bulker_Emissions_Diff_NSR_t0, Ice_LSHFO_Bulker_Emissions_Diff_NSR_tm, Ice_LSHFO_Bulker_Emissions_Diff_NSR_tf,...
            Ice_LSHFO_Container_Emissions_Diff_NSR_t0, Ice_LSHFO_Container_Emissions_Diff_NSR_tm, Ice_LSHFO_Container_Emissions_Diff_NSR_tf, Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_t0, Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tm, Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tf,...
            NonIce_Bulker_Emissions_Diff_NSR_t0, NonIce_Bulker_Emissions_Diff_NSR_tm, NonIce_Bulker_Emissions_Diff_NSR_tf, NonIce_Container_Emissions_Diff_NSR_t0, NonIce_Container_Emissions_Diff_NSR_tm, NonIce_Container_Emissions_Diff_NSR_tf,...
            NonIce_Wet_Bulker_Emissions_Diff_NSR_t0, NonIce_Wet_Bulker_Emissions_Diff_NSR_tm, NonIce_Wet_Bulker_Emissions_Diff_NSR_tf,  NonIce_LSHFO_Bulker_Emissions_Diff_NSR_t0, NonIce_LSHFO_Bulker_Emissions_Diff_NSR_tm, NonIce_LSHFO_Bulker_Emissions_Diff_NSR_tf,...
            NonIce_LSHFO_Container_Emissions_Diff_NSR_t0, NonIce_LSHFO_Container_Emissions_Diff_NSR_tm, NonIce_LSHFO_Container_Emissions_Diff_NSR_tf, NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_t0, NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tm, NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tf] = Output(SCE1_Ice_Compatibility_t0, SCE1_Ice_Compatibility_tm, SCE1_Ice_Compatibility_tf,...
            SCE1_NonIce_Compatibility_t0, SCE1_NonIce_Compatibility_tm, SCE1_NonIce_Compatibility_tf,...
            SCE2_Ice_Compatibility_t0, SCE2_Ice_Compatibility_tm, SCE2_Ice_Compatibility_tf,...
            SCE2_NonIce_Compatibility_t0, SCE2_NonIce_Compatibility_tm, SCE2_NonIce_Compatibility_tf,...
            SCE3_Compatibility_t0, SCE3_Compatibility_tm, SCE3_Compatibility_tf,...
            SCE1_Ice_Total_Voyage_cost_t0, SCE1_Ice_OpEx_t0, SCE1_Ice_Total_CapEx_t0, SCE1_Global_Ice_CO2eqtax_t0, SCE1_Global_Ice_AP_Damage_matrix_t0, SCE1_Global_Ice_Clim_Damage_matrix_t0,...
            SCE1_Ice_Total_Voyage_cost_tm, SCE1_Ice_OpEx_tm, SCE1_Ice_Total_CapEx_tm, SCE1_Global_Ice_CO2eqtax_tm, SCE1_Global_Ice_AP_Damage_matrix_tm, SCE1_Global_Ice_Clim_Damage_matrix_tm,...
            SCE1_Ice_Total_Voyage_cost_tf, SCE1_Ice_OpEx_tf, SCE1_Ice_Total_CapEx_tf, SCE1_Global_Ice_CO2eqtax_tf, SCE1_Global_Ice_AP_Damage_matrix_tf, SCE1_Global_Ice_Clim_Damage_matrix_tf,...
            SCE1_NonIce_Total_Voyage_cost_t0, SCE1_NonIce_OpEx_t0, SCE1_NonIce_Total_CapEx_t0, SCE1_Global_NonIce_CO2eqtax_t0, SCE1_Global_NonIce_AP_Damage_matrix_t0, SCE1_Global_NonIce_Clim_Damage_matrix_t0,...
            SCE1_NonIce_Total_Voyage_cost_tm, SCE1_NonIce_OpEx_tm, SCE1_NonIce_Total_CapEx_tm, SCE1_Global_NonIce_CO2eqtax_tm, SCE1_Global_NonIce_AP_Damage_matrix_tm, SCE1_Global_NonIce_Clim_Damage_matrix_tm,...
            SCE1_NonIce_Total_Voyage_cost_tf, SCE1_NonIce_OpEx_tf, SCE1_NonIce_Total_CapEx_tf, SCE1_Global_NonIce_CO2eqtax_tf, SCE1_Global_NonIce_AP_Damage_matrix_tf, SCE1_Global_NonIce_Clim_Damage_matrix_tf,...
            SCE2_Ice_Total_Voyage_cost_t0, SCE2_Ice_OpEx_t0, SCE2_Ice_Total_CapEx_t0, SCE2_Global_Ice_CO2eqtax_t0, SCE2_Global_Ice_AP_Damage_matrix_t0, SCE2_Global_Ice_Clim_Damage_matrix_t0,...
            SCE2_Ice_Total_Voyage_cost_tm, SCE2_Ice_OpEx_tm, SCE2_Ice_Total_CapEx_tm, SCE2_Global_Ice_CO2eqtax_tm, SCE2_Global_Ice_AP_Damage_matrix_tm, SCE2_Global_Ice_Clim_Damage_matrix_tm,...
            SCE2_Ice_Total_Voyage_cost_tf, SCE2_Ice_OpEx_tf, SCE2_Ice_Total_CapEx_tf, SCE2_Global_Ice_CO2eqtax_tf, SCE2_Global_Ice_AP_Damage_matrix_tf, SCE2_Global_Ice_Clim_Damage_matrix_tf,...
            SCE2_NonIce_Total_Voyage_cost_t0, SCE2_NonIce_OpEx_t0, SCE2_NonIce_Total_CapEx_t0, SCE2_Global_NonIce_CO2eqtax_t0, SCE2_Global_NonIce_AP_Damage_matrix_t0, SCE2_Global_NonIce_Clim_Damage_matrix_t0,...
            SCE2_NonIce_Total_Voyage_cost_tm, SCE2_NonIce_OpEx_tm, SCE2_NonIce_Total_CapEx_tm, SCE2_Global_NonIce_CO2eqtax_tm, SCE2_Global_NonIce_AP_Damage_matrix_tm, SCE2_Global_NonIce_Clim_Damage_matrix_tm,...
            SCE2_NonIce_Total_Voyage_cost_tf, SCE2_NonIce_OpEx_tf, SCE2_NonIce_Total_CapEx_tf, SCE2_Global_NonIce_CO2eqtax_tf, SCE2_Global_NonIce_AP_Damage_matrix_tf, SCE2_Global_NonIce_Clim_Damage_matrix_tf,...
            SCE3_NonIce_Total_Voyage_cost_t0, SCE3_NonIce_OpEx_t0, SCE3_NonIce_Total_CapEx_t0, SCE3_Global_NonIce_CO2eqtax_t0, SCE3_Global_NonIce_AP_Damage_matrix_t0, SCE3_Global_NonIce_Clim_Damage_matrix_t0,...
            SCE3_NonIce_Total_Voyage_cost_tm, SCE3_NonIce_OpEx_tm, SCE3_NonIce_Total_CapEx_tm, SCE3_Global_NonIce_CO2eqtax_tm, SCE3_Global_NonIce_AP_Damage_matrix_tm, SCE3_Global_NonIce_Clim_Damage_matrix_tm,...
            SCE3_NonIce_Total_Voyage_cost_tf, SCE3_NonIce_OpEx_tf, SCE3_NonIce_Total_CapEx_tf, SCE3_Global_NonIce_CO2eqtax_tf, SCE3_Global_NonIce_AP_Damage_matrix_tf, SCE3_Global_NonIce_Clim_Damage_matrix_tf,...
            SCE1_Ice_FC_ptv_t0, SCE1_Ice_FC_ptv_tm, SCE1_Ice_FC_ptv_tf, SCE1_NonIce_FC_ptv_t0, SCE1_NonIce_FC_ptv_tm, SCE1_NonIce_FC_ptv_tf,...
            SCE2_Ice_FC_ptv_t0, SCE2_Ice_FC_ptv_tm, SCE2_Ice_FC_ptv_tf, SCE2_NonIce_FC_ptv_t0, SCE2_NonIce_FC_ptv_tm, SCE2_NonIce_FC_ptv_tf,...
            SCE3_Ice_FC_ptv_t0, SCE3_Ice_FC_ptv_tm, SCE3_Ice_FC_ptv_tf, SCE3_NonIce_FC_ptv_t0, SCE3_NonIce_FC_ptv_tm, SCE3_NonIce_FC_ptv_tf,...
            SCE1_Ice_TC_ptv_t0, SCE1_Ice_TC_ptv_tm, SCE1_Ice_TC_ptv_tf, SCE1_NonIce_TC_ptv_t0, SCE1_NonIce_TC_ptv_tm, SCE1_NonIce_TC_ptv_tf,...
            SCE2_Ice_TC_ptv_t0, SCE2_Ice_TC_ptv_tm, SCE2_Ice_TC_ptv_tf, SCE2_NonIce_TC_ptv_t0, SCE2_NonIce_TC_ptv_tm, SCE2_NonIce_TC_ptv_tf,...
            SCE3_Ice_TC_ptv_t0, SCE3_Ice_TC_ptv_tm, SCE3_Ice_TC_ptv_tf, SCE3_NonIce_TC_ptv_t0, SCE3_NonIce_TC_ptv_tm, SCE3_NonIce_TC_ptv_tf, inp,...
            SCE2_Ice_Route3_n_t0, SCE2_Ice_Route3_n_tm, SCE2_Ice_Route3_n_tf,  SCE1_Global_Ice_CO2eq_matrix_t0, SCE1_Global_Ice_CO2eq_matrix_tm, SCE1_Global_Ice_CO2eq_matrix_tf,...
            SCE1_Global_NonIce_CO2eq_matrix_t0, SCE1_Global_NonIce_CO2eq_matrix_tm, SCE1_Global_NonIce_CO2eq_matrix_tf,...
            SCE2_Global_Ice_CO2eq_matrix_t0, SCE2_Global_Ice_CO2eq_matrix_tm, SCE2_Global_Ice_CO2eq_matrix_tf,...
            SCE2_Global_NonIce_CO2eq_matrix_t0, SCE2_Global_NonIce_CO2eq_matrix_tm, SCE2_Global_NonIce_CO2eq_matrix_tf,...
            SCE3_Global_Ice_CO2eq_matrix_t0, SCE3_Global_Ice_CO2eq_matrix_tm, SCE3_Global_Ice_CO2eq_matrix_tf,...
            SCE3_Global_NonIce_CO2eq_matrix_t0, SCE3_Global_NonIce_CO2eq_matrix_tm, SCE3_Global_NonIce_CO2eq_matrix_tf,...
            SCE1_Ice_SOx_matrix_t0, SCE1_Ice_NOx_matrix_t0, SCE1_Ice_PM_matrix_t0, SCE1_Ice_SOx_matrix_tm, SCE1_Ice_NOx_matrix_tm, SCE1_Ice_PM_matrix_tm,...
            SCE1_Ice_SOx_matrix_tf, SCE1_Ice_NOx_matrix_tf, SCE1_Ice_PM_matrix_tf, SCE1_NonIce_SOx_matrix_t0, SCE1_NonIce_NOx_matrix_t0, SCE1_NonIce_PM_matrix_t0,...
            SCE1_NonIce_SOx_matrix_tm, SCE1_NonIce_NOx_matrix_tm, SCE1_NonIce_PM_matrix_tm, SCE1_NonIce_SOx_matrix_tf, SCE1_NonIce_NOx_matrix_tf, SCE1_NonIce_PM_matrix_tf,...
            SCE2_Ice_SOx_matrix_t0, SCE2_Ice_NOx_matrix_t0, SCE2_Ice_PM_matrix_t0, SCE2_Ice_SOx_matrix_tm, SCE2_Ice_NOx_matrix_tm, SCE2_Ice_PM_matrix_tm,...
            SCE2_Ice_SOx_matrix_tf, SCE2_Ice_NOx_matrix_tf, SCE2_Ice_PM_matrix_tf, SCE2_NonIce_SOx_matrix_t0, SCE2_NonIce_NOx_matrix_t0, SCE2_NonIce_PM_matrix_t0,...
            SCE2_NonIce_SOx_matrix_tm, SCE2_NonIce_NOx_matrix_tm, SCE2_NonIce_PM_matrix_tm, SCE2_NonIce_SOx_matrix_tf, SCE2_NonIce_NOx_matrix_tf, SCE2_NonIce_PM_matrix_tf,...
            SCE3_Ice_SOx_matrix_t0,SCE3_Ice_NOx_matrix_t0,SCE3_Ice_PM_matrix_t0,SCE3_Ice_SOx_matrix_tm,SCE3_Ice_NOx_matrix_tm,SCE3_Ice_PM_matrix_tm,...
            SCE3_Ice_SOx_matrix_tf,SCE3_Ice_NOx_matrix_tf,SCE3_Ice_PM_matrix_tf,SCE3_NonIce_SOx_matrix_t0,SCE3_NonIce_NOx_matrix_t0,SCE3_NonIce_PM_matrix_t0,...
            SCE3_NonIce_SOx_matrix_tm,SCE3_NonIce_NOx_matrix_tm,SCE3_NonIce_PM_matrix_tm,SCE3_NonIce_SOx_matrix_tf,SCE3_NonIce_NOx_matrix_tf, SCE3_NonIce_PM_matrix_tf);
        
        %Allocating data to the predetermined matrices
        Ice_Bulker_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Bulker_FC_Normalised_value_NSR_ptv;
        Ice_Container_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Container_FC_Normalised_value_NSR_ptv;
        Ice_Wet_Bulker_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv;
        
        Ice_Bulker_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Bulker_TC_Normalised_value_NSR_ptv;
        Ice_Container_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Container_TC_Normalised_value_NSR_ptv;
        Ice_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv;
        
        Ice_Bulker_CTAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Bulker_CT_Normalised_value_NSR_ptv;
        Ice_Container_CTAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Container_CT_Normalised_value_NSR_ptv;
        Ice_Wet_Bulker_CTAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv;
        
        Ice_LSHFO_Bulker_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Bulker_FC_Normalised_value_NSR_ptv;
        Ice_LSHFO_Container_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Container_FC_Normalised_value_NSR_ptv;
        Ice_LSHFO_Wet_Bulker_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Wet_Bulker_FC_Normalised_value_NSR_ptv;
        
        Ice_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Bulker_TC_Normalised_value_NSR_ptv;
        Ice_LSHFO_Container_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Container_TC_Normalised_value_NSR_ptv;
        Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Wet_Bulker_TC_Normalised_value_NSR_ptv;
        
        Ice_LSHFO_Bulker_CTAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Bulker_CT_Normalised_value_NSR_ptv;
        Ice_LSHFO_Container_CTAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Container_CT_Normalised_value_NSR_ptv;
        Ice_LSHFO_Wet_Bulker_CTAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Wet_Bulker_CT_Normalised_value_NSR_ptv;
        
        Ice_Bulker_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Bulker_FC_Normalised_value_INT_ptv;
        Ice_Container_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Container_FC_Normalised_value_INT_ptv;
        Ice_Wet_Bulker_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Wet_Bulker_FC_Normalised_value_INT_ptv;
        
        Ice_Bulker_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Bulker_TC_Normalised_value_INT_ptv;
        Ice_Container_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Container_TC_Normalised_value_INT_ptv;
        Ice_Wet_Bulker_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Wet_Bulker_TC_Normalised_value_INT_ptv;
        
        Ice_LSHFO_Bulker_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Bulker_FC_Normalised_value_INT_ptv;
        Ice_LSHFO_Container_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Container_FC_Normalised_value_INT_ptv;
        Ice_LSHFO_Wet_Bulker_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Wet_Bulker_FC_Normalised_value_INT_ptv;
        
        Ice_LSHFO_Bulker_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Bulker_TC_Normalised_value_INT_ptv;
        Ice_LSHFO_Container_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Container_TC_Normalised_value_INT_ptv;
        Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Wet_Bulker_TC_Normalised_value_INT_ptv;
        
        Ice_Bulker_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Bulker_FC_Normalised_value_TPP_ptv;
        Ice_Container_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Container_FC_Normalised_value_TPP_ptv;
        Ice_Wet_Bulker_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv;
        
        Ice_Bulker_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Bulker_TC_Normalised_value_TPP_ptv;
        Ice_Container_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Container_TC_Normalised_value_TPP_ptv;
        Ice_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv;
        
        Ice_LSHFO_Bulker_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Bulker_FC_Normalised_value_TPP_ptv;
        Ice_LSHFO_Container_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Container_FC_Normalised_value_TPP_ptv;
        Ice_LSHFO_Wet_Bulker_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Wet_Bulker_FC_Normalised_value_TPP_ptv;
        
        Ice_LSHFO_Bulker_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Bulker_TC_Normalised_value_TPP_ptv;
        Ice_LSHFO_Container_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Container_TC_Normalised_value_TPP_ptv;
        Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = Ice_LSHFO_Wet_Bulker_TC_Normalised_value_TPP_ptv;
        
        %Open water
        NonIce_Bulker_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Bulker_FC_Normalised_value_NSR_ptv;
        NonIce_Container_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Container_FC_Normalised_value_NSR_ptv;
        NonIce_Wet_Bulker_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv;
        
        NonIce_Bulker_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Bulker_TC_Normalised_value_NSR_ptv;
        NonIce_Container_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Container_TC_Normalised_value_NSR_ptv;
        NonIce_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv;
        
        NonIce_LSHFO_Bulker_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Bulker_FC_Normalised_value_NSR_ptv;
        NonIce_LSHFO_Container_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Container_FC_Normalised_value_NSR_ptv;
        NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_NSR_ptv;
        
        NonIce_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Bulker_TC_Normalised_value_NSR_ptv;
        NonIce_LSHFO_Container_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Container_TC_Normalised_value_NSR_ptv;
        NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_NSR_ptv;
        
        NonIce_Bulker_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Bulker_FC_Normalised_value_INT_ptv;
        NonIce_Container_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Container_FC_Normalised_value_INT_ptv;
        NonIce_Wet_Bulker_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv;
        
        NonIce_Bulker_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Bulker_TC_Normalised_value_INT_ptv;
        NonIce_Container_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Container_TC_Normalised_value_INT_ptv;
        NonIce_Wet_Bulker_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv;
        
        NonIce_LSHFO_Bulker_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Bulker_FC_Normalised_value_INT_ptv;
        NonIce_LSHFO_Container_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Container_FC_Normalised_value_INT_ptv;
        NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_INT_ptv;
        
        NonIce_LSHFO_Bulker_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Bulker_TC_Normalised_value_INT_ptv;
        NonIce_LSHFO_Container_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Container_TC_Normalised_value_INT_ptv;
        NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_INT_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_INT_ptv;
        
        NonIce_Bulker_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Bulker_FC_Normalised_value_TPP_ptv;
        NonIce_Container_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Container_FC_Normalised_value_TPP_ptv;
        NonIce_Wet_Bulker_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv;
        
        NonIce_Bulker_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Bulker_TC_Normalised_value_TPP_ptv;
        NonIce_Container_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Container_TC_Normalised_value_TPP_ptv;
        NonIce_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv;
        
        NonIce_LSHFO_Bulker_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Bulker_FC_Normalised_value_TPP_ptv;
        NonIce_LSHFO_Container_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Container_FC_Normalised_value_TPP_ptv;
        NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_TPP_ptv;
        
        NonIce_LSHFO_Bulker_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Bulker_TC_Normalised_value_TPP_ptv;
        NonIce_LSHFO_Container_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Container_TC_Normalised_value_TPP_ptv;
        NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(:, 12.*(z - 1) + 1 : 12.*z) = NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_TPP_ptv;
        
        %HFO has been taken out so it's five fuels, SCE1 and SCE2 are vertically
        %arranged - 6 costs
        
        Ice_Bulker_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Bulker_Diff_NSR_t0; Ice_Bulker_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Bulker_Diff_NSR_tm; Ice_Bulker_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Bulker_Diff_NSR_tf;
        Ice_Container_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Container_Diff_NSR_t0; Ice_Container_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Container_Diff_NSR_tm; Ice_Container_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Container_Diff_NSR_tf;
        Ice_Wet_Bulker_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Wet_Bulker_Diff_NSR_t0; Ice_Wet_Bulker_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Wet_Bulker_Diff_NSR_tm; Ice_Wet_Bulker_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Wet_Bulker_Diff_NSR_tf;
        
        Ice_LSHFO_Bulker_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Bulker_Diff_NSR_t0; Ice_LSHFO_Bulker_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Bulker_Diff_NSR_tm; Ice_LSHFO_Bulker_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Bulker_Diff_NSR_tf;
        Ice_LSHFO_Container_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Container_Diff_NSR_t0; Ice_LSHFO_Container_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Container_Diff_NSR_tm; Ice_LSHFO_Container_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Container_Diff_NSR_tf;
        Ice_LSHFO_Wet_Bulker_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Wet_Bulker_Diff_NSR_t0; Ice_LSHFO_Wet_Bulker_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Wet_Bulker_Diff_NSR_tm; Ice_LSHFO_Wet_Bulker_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Wet_Bulker_Diff_NSR_tf;
        
        Ice_Bulker_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = Ice_Bulker_Emissions_Diff_NSR_t0; Ice_Bulker_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = Ice_Bulker_Emissions_Diff_NSR_tm; Ice_Bulker_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = Ice_Bulker_Emissions_Diff_NSR_tf;
        Ice_Container_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = Ice_Container_Emissions_Diff_NSR_t0; Ice_Container_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = Ice_Container_Emissions_Diff_NSR_tm; Ice_Container_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = Ice_Container_Emissions_Diff_NSR_tf;
        Ice_Wet_Bulker_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = Ice_Wet_Bulker_Emissions_Diff_NSR_t0; Ice_Wet_Bulker_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = Ice_Wet_Bulker_Emissions_Diff_NSR_tm; Ice_Wet_Bulker_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = Ice_Wet_Bulker_Emissions_Diff_NSR_tf;
        
        Ice_LSHFO_Bulker_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = Ice_LSHFO_Bulker_Emissions_Diff_NSR_t0; Ice_LSHFO_Bulker_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = Ice_LSHFO_Bulker_Emissions_Diff_NSR_tm; Ice_LSHFO_Bulker_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = Ice_LSHFO_Bulker_Emissions_Diff_NSR_tf;
        Ice_LSHFO_Container_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = Ice_LSHFO_Container_Emissions_Diff_NSR_t0; Ice_LSHFO_Container_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = Ice_LSHFO_Container_Emissions_Diff_NSR_tm; Ice_LSHFO_Container_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = Ice_LSHFO_Container_Emissions_Diff_NSR_tf;
        Ice_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_t0; Ice_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tm; Ice_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tf;
        
        Ice_Bulker_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Bulker_Diff_INT_t0; Ice_Bulker_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Bulker_Diff_INT_tm; Ice_Bulker_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Bulker_Diff_INT_tf;
        Ice_Container_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Container_Diff_INT_t0; Ice_Container_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Container_Diff_INT_tm; Ice_Container_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Container_Diff_INT_tf;
        Ice_Wet_Bulker_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Wet_Bulker_Diff_INT_t0; Ice_Wet_Bulker_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Wet_Bulker_Diff_INT_tm; Ice_Wet_Bulker_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Wet_Bulker_Diff_INT_tf;
        
        Ice_LSHFO_Bulker_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Bulker_Diff_INT_t0; Ice_LSHFO_Bulker_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Bulker_Diff_INT_tm; Ice_LSHFO_Bulker_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Bulker_Diff_INT_tf;
        Ice_LSHFO_Container_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Container_Diff_INT_t0; Ice_LSHFO_Container_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Container_Diff_INT_tm; Ice_LSHFO_Container_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Container_Diff_INT_tf;
        Ice_LSHFO_Wet_Bulker_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Wet_Bulker_Diff_INT_t0; Ice_LSHFO_Wet_Bulker_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Wet_Bulker_Diff_INT_tm; Ice_LSHFO_Wet_Bulker_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Wet_Bulker_Diff_INT_tf;
        
        Ice_Bulker_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Bulker_Diff_TPP_t0; Ice_Bulker_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Bulker_Diff_TPP_tm; Ice_Bulker_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Bulker_Diff_TPP_tf;
        Ice_Container_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Container_Diff_TPP_t0; Ice_Container_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Container_Diff_TPP_tm; Ice_Container_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Container_Diff_TPP_tf;
        Ice_Wet_Bulker_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Wet_Bulker_Diff_TPP_t0; Ice_Wet_Bulker_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Wet_Bulker_Diff_TPP_tm; Ice_Wet_Bulker_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_Wet_Bulker_Diff_TPP_tf;
        
        Ice_LSHFO_Bulker_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Bulker_Diff_TPP_t0; Ice_LSHFO_Bulker_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Bulker_Diff_TPP_tm; Ice_LSHFO_Bulker_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Bulker_Diff_TPP_tf;
        Ice_LSHFO_Container_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Container_Diff_TPP_t0; Ice_LSHFO_Container_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Container_Diff_TPP_tm; Ice_LSHFO_Container_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Container_Diff_TPP_tf;
        Ice_LSHFO_Wet_Bulker_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Wet_Bulker_Diff_TPP_t0; Ice_LSHFO_Wet_Bulker_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Wet_Bulker_Diff_TPP_tm; Ice_LSHFO_Wet_Bulker_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = Ice_LSHFO_Wet_Bulker_Diff_TPP_tf;
        
        NonIce_Bulker_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Bulker_Diff_NSR_t0; NonIce_Bulker_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Bulker_Diff_NSR_tm; NonIce_Bulker_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Bulker_Diff_NSR_tf;
        NonIce_Container_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Container_Diff_NSR_t0; NonIce_Container_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Container_Diff_NSR_tm; NonIce_Container_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Container_Diff_NSR_tf;
        NonIce_Wet_Bulker_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Wet_Bulker_Diff_NSR_t0; NonIce_Wet_Bulker_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Wet_Bulker_Diff_NSR_tm; NonIce_Wet_Bulker_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Wet_Bulker_Diff_NSR_tf;
        
        NonIce_LSHFO_Bulker_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Bulker_Diff_NSR_t0; NonIce_LSHFO_Bulker_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Bulker_Diff_NSR_tm; NonIce_LSHFO_Bulker_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Bulker_Diff_NSR_tf;
        NonIce_LSHFO_Container_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Container_Diff_NSR_t0; NonIce_LSHFO_Container_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Container_Diff_NSR_tm; NonIce_LSHFO_Container_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Container_Diff_NSR_tf;
        NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Wet_Bulker_Diff_NSR_t0; NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Wet_Bulker_Diff_NSR_tm; NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Wet_Bulker_Diff_NSR_tf;
        
        NonIce_Bulker_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_Bulker_Emissions_Diff_NSR_t0; NonIce_Bulker_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_Bulker_Emissions_Diff_NSR_tm; NonIce_Bulker_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_Bulker_Emissions_Diff_NSR_tf;
        NonIce_Container_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_Container_Emissions_Diff_NSR_t0; NonIce_Container_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_Container_Emissions_Diff_NSR_tm; NonIce_Container_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_Container_Emissions_Diff_NSR_tf;
        NonIce_Wet_Bulker_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_Wet_Bulker_Emissions_Diff_NSR_t0; NonIce_Wet_Bulker_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_Wet_Bulker_Emissions_Diff_NSR_tm; NonIce_Wet_Bulker_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_Wet_Bulker_Emissions_Diff_NSR_tf;
        
        NonIce_LSHFO_Bulker_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_LSHFO_Bulker_Emissions_Diff_NSR_t0; NonIce_LSHFO_Bulker_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_LSHFO_Bulker_Emissions_Diff_NSR_tm; NonIce_LSHFO_Bulker_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_LSHFO_Bulker_Emissions_Diff_NSR_tf;
        NonIce_LSHFO_Container_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_LSHFO_Container_Emissions_Diff_NSR_t0; NonIce_LSHFO_Container_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_LSHFO_Container_Emissions_Diff_NSR_tm; NonIce_LSHFO_Container_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_LSHFO_Container_Emissions_Diff_NSR_tf;
        NonIce_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_t0(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_t0; NonIce_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tm(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tm; NonIce_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tf(:, 4.*(z - 1) + 1 : 4.*z) = NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tf;
        
        NonIce_Bulker_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Bulker_Diff_INT_t0; NonIce_Bulker_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Bulker_Diff_INT_tm; NonIce_Bulker_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Bulker_Diff_INT_tf;
        NonIce_Container_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Container_Diff_INT_t0; NonIce_Container_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Container_Diff_INT_tm; NonIce_Container_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Container_Diff_INT_tf;
        NonIce_Wet_Bulker_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Wet_Bulker_Diff_INT_t0; NonIce_Wet_Bulker_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Wet_Bulker_Diff_INT_tm; NonIce_Wet_Bulker_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Wet_Bulker_Diff_INT_tf;
        
        NonIce_LSHFO_Bulker_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Bulker_Diff_INT_t0; NonIce_LSHFO_Bulker_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Bulker_Diff_INT_tm; NonIce_LSHFO_Bulker_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Bulker_Diff_INT_tf;
        NonIce_LSHFO_Container_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Container_Diff_INT_t0; NonIce_LSHFO_Container_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Container_Diff_INT_tm; NonIce_LSHFO_Container_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Container_Diff_INT_tf;
        NonIce_LSHFO_Wet_Bulker_DiffAS_INT_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Wet_Bulker_Diff_INT_t0; NonIce_LSHFO_Wet_Bulker_DiffAS_INT_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Wet_Bulker_Diff_INT_tm; NonIce_LSHFO_Wet_Bulker_DiffAS_INT_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Wet_Bulker_Diff_INT_tf;
        
        NonIce_Bulker_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Bulker_Diff_TPP_t0; NonIce_Bulker_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Bulker_Diff_TPP_tm; NonIce_Bulker_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Bulker_Diff_TPP_tf;
        NonIce_Container_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Container_Diff_TPP_t0; NonIce_Container_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Container_Diff_TPP_tm; NonIce_Container_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Container_Diff_TPP_tf;
        NonIce_Wet_Bulker_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Wet_Bulker_Diff_TPP_t0; NonIce_Wet_Bulker_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Wet_Bulker_Diff_TPP_tm; NonIce_Wet_Bulker_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_Wet_Bulker_Diff_TPP_tf;
        
        NonIce_LSHFO_Bulker_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Bulker_Diff_TPP_t0; NonIce_LSHFO_Bulker_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Bulker_Diff_TPP_tm; NonIce_LSHFO_Bulker_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Bulker_Diff_TPP_tf;
        NonIce_LSHFO_Container_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Container_Diff_TPP_t0; NonIce_LSHFO_Container_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Container_Diff_TPP_tm; NonIce_LSHFO_Container_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Container_Diff_TPP_tf;
        NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_t0(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Wet_Bulker_Diff_TPP_t0; NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_tm(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Wet_Bulker_Diff_TPP_tm; NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_tf(:, 6.*(z - 1) + 1 : 6.*z) = NonIce_LSHFO_Wet_Bulker_Diff_TPP_tf;
        
        %The model moves onto the next scenario, once the required data has been
        %processed
        
        if z == 1
            
            inp.SSP585 = 0;
            inp.SSP370 = 1;
            
        elseif z == 2
            
            inp.SSP370 = 0;
            inp.SSP245 = 1;
            
        elseif z == 3
            
            inp.SSP245 = 0;
            inp.SSP126= 1;
            
        elseif z == 4
            
            inp.SSP126 = 0;
            inp.SSP119= 1;
            
        end
        
        %Clears all the parameters, so that the MATLAB kernel is clearer
        %and focuses on the illustrated outputs 
        
        clearvars -except z d inp  Risk_index Ice_Bulker_FCAS_Normalised_value_NSR_ptv Ice_Container_FCAS_Normalised_value_NSR_ptv Ice_Wet_Bulker_FCAS_Normalised_value_NSR_ptv Ice_Bulker_TCAS_Normalised_value_NSR_ptv Ice_Container_TCAS_Normalised_value_NSR_ptv Ice_Wet_Bulker_TCAS_Normalised_value_NSR_ptv...
            Ice_LSHFO_Bulker_FCAS_Normalised_value_NSR_ptv Ice_LSHFO_Container_FCAS_Normalised_value_NSR_ptv Ice_LSHFO_Wet_Bulker_FCAS_Normalised_value_NSR_ptv Ice_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv Ice_LSHFO_Container_TCAS_Normalised_value_NSR_ptv...
            Ice_Bulker_CTAS_Normalised_value_NSR_ptv Ice_Container_CTAS_Normalised_value_NSR_ptv Ice_Wet_Bulker_CTAS_Normalised_value_NSR_ptv Ice_LSHFO_Bulker_CTAS_Normalised_value_NSR_ptv Ice_LSHFO_Container_CTAS_Normalised_value_NSR_ptv Ice_LSHFO_Wet_Bulker_CTAS_Normalised_value_NSR_ptv Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_NSR_ptv...
            Ice_Bulker_FCAS_Normalised_value_INT_ptv Ice_Container_FCAS_Normalised_value_INT_ptv Ice_Wet_Bulker_FCAS_Normalised_value_INT_ptv Ice_Bulker_TCAS_Normalised_value_INT_ptv Ice_Container_TCAS_Normalised_value_INT_ptv Ice_Wet_Bulker_TCAS_Normalised_value_INT_ptv...
            Ice_LSHFO_Bulker_FCAS_Normalised_value_INT_ptv Ice_LSHFO_Container_FCAS_Normalised_value_INT_ptv Ice_LSHFO_Wet_Bulker_FCAS_Normalised_value_INT_ptv Ice_LSHFO_Bulker_TCAS_Normalised_value_INT_ptv Ice_LSHFO_Container_TCAS_Normalised_value_INT_ptv Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_INT_ptv...
            Ice_Bulker_FCAS_Normalised_value_TPP_ptv Ice_Container_FCAS_Normalised_value_TPP_ptv Ice_Wet_Bulker_FCAS_Normalised_value_TPP_ptv Ice_Bulker_TCAS_Normalised_value_TPP_ptv Ice_Container_TCAS_Normalised_value_TPP_ptv Ice_Wet_Bulker_TCAS_Normalised_value_TPP_ptv...
            Ice_LSHFO_Bulker_FCAS_Normalised_value_TPP_ptv Ice_LSHFO_Container_FCAS_Normalised_value_TPP_ptv Ice_LSHFO_Wet_Bulker_FCAS_Normalised_value_TPP_ptv Ice_LSHFO_Bulker_TCAS_Normalised_value_TPP_ptv Ice_LSHFO_Container_TCAS_Normalised_value_TPP_ptv Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_TPP_ptv...
            Ice_Bulker_DiffAS_NSR_t0 Ice_Bulker_DiffAS_NSR_tm Ice_Bulker_DiffAS_NSR_tf Ice_Container_DiffAS_NSR_t0 Ice_Container_DiffAS_NSR_tm Ice_Container_DiffAS_NSR_tf Ice_Wet_Bulker_DiffAS_NSR_t0 Ice_Wet_Bulker_DiffAS_NSR_tm Ice_Wet_Bulker_DiffAS_NSR_tf...
            Ice_LSHFO_Bulker_DiffAS_NSR_t0 Ice_LSHFO_Bulker_DiffAS_NSR_tm Ice_LSHFO_Bulker_DiffAS_NSR_tf Ice_LSHFO_Container_DiffAS_NSR_t0 Ice_LSHFO_Container_DiffAS_NSR_tm Ice_LSHFO_Container_DiffAS_NSR_tf Ice_LSHFO_Wet_Bulker_DiffAS_NSR_t0 Ice_LSHFO_Wet_Bulker_DiffAS_NSR_tm Ice_LSHFO_Wet_Bulker_DiffAS_NSR_tf...
            Ice_Bulker_Emissions_DiffAS_NSR_t0 Ice_Bulker_Emissions_DiffAS_NSR_tm Ice_Bulker_Emissions_DiffAS_NSR_tf Ice_Container_Emissions_DiffAS_NSR_t0 Ice_Container_Emissions_DiffAS_NSR_tm Ice_Container_Emissions_DiffAS_NSR_tf Ice_Wet_Bulker_Emissions_DiffAS_NSR_t0 Ice_Wet_Bulker_Emissions_DiffAS_NSR_tm Ice_Wet_Bulker_Emissions_DiffAS_NSR_tf...
            Ice_LSHFO_Bulker_Emissions_DiffAS_NSR_t0 Ice_LSHFO_Bulker_Emissions_DiffAS_NSR_tm Ice_LSHFO_Bulker_Emissions_DiffAS_NSR_tf Ice_LSHFO_Container_Emissions_DiffAS_NSR_t0 Ice_LSHFO_Container_Emissions_DiffAS_NSR_tm Ice_LSHFO_Container_Emissions_DiffAS_NSR_tf Ice_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_t0 Ice_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tm Ice_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tf...
            Ice_Bulker_DiffAS_INT_t0 Ice_Bulker_DiffAS_INT_tm Ice_Bulker_DiffAS_INT_tf Ice_Container_DiffAS_INT_t0 Ice_Container_DiffAS_INT_tm Ice_Container_DiffAS_INT_tf Ice_Wet_Bulker_DiffAS_INT_t0 Ice_Wet_Bulker_DiffAS_INT_tm Ice_Wet_Bulker_DiffAS_INT_tf...
            Ice_LSHFO_Bulker_DiffAS_INT_t0 Ice_LSHFO_Bulker_DiffAS_INT_tm Ice_LSHFO_Bulker_DiffAS_INT_tf Ice_LSHFO_Container_DiffAS_INT_t0 Ice_LSHFO_Container_DiffAS_INT_tm Ice_LSHFO_Container_DiffAS_INT_tf Ice_LSHFO_Wet_Bulker_DiffAS_INT_t0 Ice_LSHFO_Wet_Bulker_DiffAS_INT_tm Ice_LSHFO_Wet_Bulker_DiffAS_INT_tf...
            Ice_Bulker_DiffAS_TPP_t0 Ice_Bulker_DiffAS_TPP_tm Ice_Bulker_DiffAS_TPP_tf Ice_Container_DiffAS_TPP_t0 Ice_Container_DiffAS_TPP_tm Ice_Container_DiffAS_TPP_tf Ice_Wet_Bulker_DiffAS_TPP_t0 Ice_Wet_Bulker_DiffAS_TPP_tm Ice_Wet_Bulker_DiffAS_TPP_tf...
            Ice_LSHFO_Bulker_DiffAS_TPP_t0 Ice_LSHFO_Bulker_DiffAS_TPP_tm Ice_LSHFO_Bulker_DiffAS_TPP_tf Ice_LSHFO_Container_DiffAS_TPP_t0 Ice_LSHFO_Container_DiffAS_TPP_tm Ice_LSHFO_Container_DiffAS_TPP_tf Ice_LSHFO_Wet_Bulker_DiffAS_TPP_t0 Ice_LSHFO_Wet_Bulker_DiffAS_TPP_tm Ice_LSHFO_Wet_Bulker_DiffAS_TPP_tf...
            NonIce_Bulker_FCAS_Normalised_value_NSR_ptv NonIce_Container_FCAS_Normalised_value_NSR_ptv NonIce_Wet_Bulker_FCAS_Normalised_value_NSR_ptv NonIce_Bulker_TCAS_Normalised_value_NSR_ptv NonIce_Container_TCAS_Normalised_value_NSR_ptv NonIce_Wet_Bulker_TCAS_Normalised_value_NSR_ptv...
            NonIce_LSHFO_Bulker_FCAS_Normalised_value_NSR_ptv NonIce_LSHFO_Container_FCAS_Normalised_value_NSR_ptv NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_value_NSR_ptv NonIce_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv NonIce_LSHFO_Container_TCAS_Normalised_value_NSR_ptv NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_NSR_ptv...
            NonIce_Bulker_FCAS_Normalised_value_INT_ptv NonIce_Container_FCAS_Normalised_value_INT_ptv NonIce_Wet_Bulker_FCAS_Normalised_value_INT_ptv NonIce_Bulker_TCAS_Normalised_value_INT_ptv NonIce_Container_TCAS_Normalised_value_INT_ptv NonIce_Wet_Bulker_TCAS_Normalised_value_INT_ptv...
            NonIce_LSHFO_Bulker_FCAS_Normalised_value_INT_ptv NonIce_LSHFO_Container_FCAS_Normalised_value_INT_ptv NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_value_INT_ptv NonIce_LSHFO_Bulker_TCAS_Normalised_value_INT_ptv NonIce_LSHFO_Container_TCAS_Normalised_value_INT_ptv NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_INT_ptv...
            NonIce_Bulker_FCAS_Normalised_value_TPP_ptv NonIce_Container_FCAS_Normalised_value_TPP_ptv NonIce_Wet_Bulker_FCAS_Normalised_value_TPP_ptv NonIce_Bulker_TCAS_Normalised_value_TPP_ptv NonIce_Container_TCAS_Normalised_value_TPP_ptv NonIce_Wet_Bulker_TCAS_Normalised_value_TPP_ptv...
            NonIce_LSHFO_Bulker_FCAS_Normalised_value_TPP_ptv NonIce_LSHFO_Container_FCAS_Normalised_value_TPP_ptv NonIce_LSHFO_Wet_Bulker_FCAS_Normalised_value_TPP_ptv NonIce_LSHFO_Bulker_TCAS_Normalised_value_TPP_ptv NonIce_LSHFO_Container_TCAS_Normalised_value_TPP_ptv NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_TPP_ptv...
            NonIce_Bulker_DiffAS_NSR_t0 NonIce_Bulker_DiffAS_NSR_tm NonIce_Bulker_DiffAS_NSR_tf NonIce_Container_DiffAS_NSR_t0 NonIce_Container_DiffAS_NSR_tm NonIce_Container_DiffAS_NSR_tf NonIce_Wet_Bulker_DiffAS_NSR_t0 NonIce_Wet_Bulker_DiffAS_NSR_tm NonIce_Wet_Bulker_DiffAS_NSR_tf...
            NonIce_LSHFO_Bulker_DiffAS_NSR_t0 NonIce_LSHFO_Bulker_DiffAS_NSR_tm NonIce_LSHFO_Bulker_DiffAS_NSR_tf NonIce_LSHFO_Container_DiffAS_NSR_t0 NonIce_LSHFO_Container_DiffAS_NSR_tm NonIce_LSHFO_Container_DiffAS_NSR_tf NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_t0 NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_tm NonIce_LSHFO_Wet_Bulker_DiffAS_NSR_tf...
            NonIce_Bulker_Emissions_DiffAS_NSR_t0 NonIce_Bulker_Emissions_DiffAS_NSR_tm NonIce_Bulker_Emissions_DiffAS_NSR_tf NonIce_Container_Emissions_DiffAS_NSR_t0 NonIce_Container_Emissions_DiffAS_NSR_tm NonIce_Container_Emissions_DiffAS_NSR_tf NonIce_Wet_Bulker_Emissions_DiffAS_NSR_t0 NonIce_Wet_Bulker_Emissions_DiffAS_NSR_tm NonIce_Wet_Bulker_Emissions_DiffAS_NSR_tf...
            NonIce_LSHFO_Bulker_Emissions_DiffAS_NSR_t0 NonIce_LSHFO_Bulker_Emissions_DiffAS_NSR_tm NonIce_LSHFO_Bulker_Emissions_DiffAS_NSR_tf NonIce_LSHFO_Container_Emissions_DiffAS_NSR_t0 NonIce_LSHFO_Container_Emissions_DiffAS_NSR_tm NonIce_LSHFO_Container_Emissions_DiffAS_NSR_tf NonIce_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_t0 NonIce_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tm NonIce_LSHFO_Wet_Bulker_Emissions_DiffAS_NSR_tf...
            NonIce_Bulker_DiffAS_INT_t0 NonIce_Bulker_DiffAS_INT_tm NonIce_Bulker_DiffAS_INT_tf NonIce_Container_DiffAS_INT_t0 NonIce_Container_DiffAS_INT_tm NonIce_Container_DiffAS_INT_tf NonIce_Wet_Bulker_DiffAS_INT_t0 NonIce_Wet_Bulker_DiffAS_INT_tm NonIce_Wet_Bulker_DiffAS_INT_tf...
            NonIce_LSHFO_Bulker_DiffAS_INT_t0 NonIce_LSHFO_Bulker_DiffAS_INT_tm NonIce_LSHFO_Bulker_DiffAS_INT_tf NonIce_LSHFO_Container_DiffAS_INT_t0 NonIce_LSHFO_Container_DiffAS_INT_tm NonIce_LSHFO_Container_DiffAS_INT_tf NonIce_LSHFO_Wet_Bulker_DiffAS_INT_t0 NonIce_LSHFO_Wet_Bulker_DiffAS_INT_tm NonIce_LSHFO_Wet_Bulker_DiffAS_INT_tf...
            NonIce_Bulker_DiffAS_TPP_t0 NonIce_Bulker_DiffAS_TPP_tm NonIce_Bulker_DiffAS_TPP_tf NonIce_Container_DiffAS_TPP_t0 NonIce_Container_DiffAS_TPP_tm NonIce_Container_DiffAS_TPP_tf NonIce_Wet_Bulker_DiffAS_TPP_t0 NonIce_Wet_Bulker_DiffAS_TPP_tm NonIce_Wet_Bulker_DiffAS_TPP_tf...
            NonIce_LSHFO_Bulker_DiffAS_TPP_t0 NonIce_LSHFO_Bulker_DiffAS_TPP_tm NonIce_LSHFO_Bulker_DiffAS_TPP_tf NonIce_LSHFO_Container_DiffAS_TPP_t0 NonIce_LSHFO_Container_DiffAS_TPP_tm NonIce_LSHFO_Container_DiffAS_TPP_tf NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_t0 NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_tm NonIce_LSHFO_Wet_Bulker_DiffAS_TPP_tf
        
    end %Main for loop
    
    %For figure 1 - Find the most financially feasible bulker, container and
    %wet bulker then index it to the TCO and plot the difference
    
else
    
    
    %% NSR
    
       
    %Two column multiples represent one SSP - RCP scenario (SCE1 and SCE2, for
    %the output matrix (5 scenarios, 2 behaviours = 10 columns, most feasible (minimum value is selected))
    
    Bulker_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_Bulker_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            Bulker_TCAS_NSR_ptv(t,k) = Ice_Bulker_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Container_TCAS_NSR_YR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_Container_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            Container_TCAS_NSR_YR_ptv(t,k) = Ice_Container_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Wet_Bulker_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            Wet_Bulker_TCAS_NSR_ptv(t,k) = Ice_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Bulker_LSHFO_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            Bulker_LSHFO_TCAS_NSR_ptv(t,k) = Ice_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Container_LSHFO_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_LSHFO_Container_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            Container_LSHFO_TCAS_NSR_ptv(t,k) = Ice_LSHFO_Container_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Wet_Bulker_LSHFO_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            Wet_Bulker_LSHFO_TCAS_NSR_ptv(t,k) = Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Bulker_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_Bulker_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Bulker_TCAS_NSR_ptv(t,k) = NonIce_Bulker_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Container_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_Container_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Container_TCAS_NSR_ptv(t,k) = NonIce_Container_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Wet_Bulker_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Wet_Bulker_TCAS_NSR_ptv(t,k) = NonIce_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Bulker_LSHFO_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Bulker_LSHFO_TCAS_NSR_ptv(t,k) = NonIce_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Container_LSHFO_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_LSHFO_Container_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Container_LSHFO_TCAS_NSR_ptv(t,k) = NonIce_LSHFO_Container_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Wet_Bulker_LSHFO_TCAS_NSR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Wet_Bulker_LSHFO_TCAS_NSR_ptv(t,k) = NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_NSR_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    
    %% Intermediary route
    
    Bulker_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_Bulker_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            Bulker_TCAS_INT_ptv(t,k) = Ice_Bulker_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Container_TCAS_INT_YR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_Container_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            Container_TCAS_INT_YR_ptv(t,k) = Ice_Container_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Wet_Bulker_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_Wet_Bulker_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            Wet_Bulker_TCAS_INT_ptv(t,k) = Ice_Wet_Bulker_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Bulker_LSHFO_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_LSHFO_Bulker_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            Bulker_LSHFO_TCAS_INT_ptv(t,k) = Ice_LSHFO_Bulker_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Container_LSHFO_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_LSHFO_Container_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            Container_LSHFO_TCAS_INT_ptv(t,k) = Ice_LSHFO_Container_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Wet_Bulker_LSHFO_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            Wet_Bulker_LSHFO_TCAS_INT_ptv(t,k) = Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Bulker_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_Bulker_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Bulker_TCAS_INT_ptv(t,k) = NonIce_Bulker_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Container_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_Container_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Container_TCAS_INT_ptv(t,k) = NonIce_Container_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Wet_Bulker_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_Wet_Bulker_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Wet_Bulker_TCAS_INT_ptv(t,k) = NonIce_Wet_Bulker_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Bulker_LSHFO_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_LSHFO_Bulker_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Bulker_LSHFO_TCAS_INT_ptv(t,k) = NonIce_LSHFO_Bulker_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Container_LSHFO_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_LSHFO_Container_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Container_LSHFO_TCAS_INT_ptv(t,k) = NonIce_LSHFO_Container_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Wet_Bulker_LSHFO_TCAS_INT_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_INT_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Wet_Bulker_LSHFO_TCAS_INT_ptv(t,k) = NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_INT_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    
    %% TPP
    
    Bulker_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_Bulker_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            Bulker_TCAS_TPP_ptv(t,k) = Ice_Bulker_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Container_TCAS_TPP_YR_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_Container_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            Container_TCAS_TPP_YR_ptv(t,k) = Ice_Container_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Wet_Bulker_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            Wet_Bulker_TCAS_TPP_ptv(t,k) = Ice_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Bulker_LSHFO_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_LSHFO_Bulker_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            Bulker_LSHFO_TCAS_TPP_ptv(t,k) = Ice_LSHFO_Bulker_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Container_LSHFO_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_LSHFO_Container_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            Container_LSHFO_TCAS_TPP_ptv(t,k) = Ice_LSHFO_Container_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    Wet_Bulker_LSHFO_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            Wet_Bulker_LSHFO_TCAS_TPP_ptv(t,k) = Ice_LSHFO_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Bulker_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_Bulker_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Bulker_TCAS_TPP_ptv(t,k) = NonIce_Bulker_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Container_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_Container_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Container_TCAS_TPP_ptv(t,k) = NonIce_Container_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Wet_Bulker_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Wet_Bulker_TCAS_TPP_ptv(t,k) = NonIce_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Bulker_LSHFO_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_LSHFO_Bulker_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Bulker_LSHFO_TCAS_TPP_ptv(t,k) = NonIce_LSHFO_Bulker_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Container_LSHFO_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_LSHFO_Container_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Container_LSHFO_TCAS_TPP_ptv(t,k) = NonIce_LSHFO_Container_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    %First two columns represent one SSP - RCP scenario (SCE1 and SCE2)
    NonIce_Wet_Bulker_LSHFO_TCAS_TPP_ptv = zeros(3,10);
    for k = 1:1:10
        for t = 1:1:3
            
            [i,j]  = min(NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(t,6.*(k - 1) + 1:6.*k));
            NonIce_Wet_Bulker_LSHFO_TCAS_TPP_ptv(t,k) = NonIce_LSHFO_Wet_Bulker_TCAS_Normalised_value_TPP_ptv(t, j + 6.*(k - 1) );
            
        end
    end
    
    Year = [2020; 2035; 2050]; Rep_Year = repmat(Year,1,12);
    
    %Each 3 column multiple represents a behavioural scenario, 6 represents
    %an SSP - RCP scenario
    TCAS_NSR_ptv = zeros(3,3.*10);
    for j = 1:1:10
        TCAS_NSR_ptv(:,3.*(j - 1) + 1: 3.*j) = [Bulker_TCAS_NSR_ptv(:,j) Container_TCAS_NSR_YR_ptv(:,j) Wet_Bulker_TCAS_NSR_ptv(:,j)];
    end
    
    TCAS_INT_ptv = zeros(3,3.*10);
    for j = 1:1:10
        TCAS_INT_ptv(:,3.*(j - 1) + 1: 3.*j) = [Bulker_TCAS_INT_ptv(:,j) Container_TCAS_INT_YR_ptv(:,j) Wet_Bulker_TCAS_INT_ptv(:,j)];
    end
    
    TCAS_TPP_ptv = zeros(3,3.*10);
    for j = 1:1:10
        TCAS_TPP_ptv(:,3.*(j - 1) + 1: 3.*j) = [Bulker_TCAS_TPP_ptv(:,j) Container_TCAS_TPP_YR_ptv(:,j) Wet_Bulker_TCAS_TPP_ptv(:,j)];
    end
    
    %LSHFO
    
    LSHFO_TCAS_NSR_ptv = zeros(3,5.*6);
    for j = 1:1:10
        LSHFO_TCAS_NSR_ptv(:,3.*(j - 1) + 1: 3.*j) = [Bulker_LSHFO_TCAS_NSR_ptv(:,j) Container_LSHFO_TCAS_NSR_ptv(:,j) Wet_Bulker_LSHFO_TCAS_NSR_ptv(:,j)];
    end
    
    LSHFO_TCAS_INT_ptv = zeros(3,5.*6);
    for j = 1:1:10
        LSHFO_TCAS_INT_ptv(:,3.*(j - 1) + 1: 3.*j) = [Bulker_LSHFO_TCAS_INT_ptv(:,j) Container_LSHFO_TCAS_INT_ptv(:,j) Wet_Bulker_LSHFO_TCAS_INT_ptv(:,j)];
    end
    
    LSHFO_TCAS_TPP_ptv = zeros(3,5.*6);
    for j = 1:1:10
        LSHFO_TCAS_TPP_ptv(:,3.*(j - 1) + 1: 3.*j) = [Bulker_LSHFO_TCAS_TPP_ptv(:,j) Container_LSHFO_TCAS_TPP_ptv(:,j) Wet_Bulker_LSHFO_TCAS_TPP_ptv(:,j)];
    end
    
    %NonIce
    NonIce_TCAS_NSR_ptv = zeros(3,3.*10);
    for j = 1:1:10
        NonIce_TCAS_NSR_ptv(:,3.*(j - 1) + 1: 3.*j) = [NonIce_Bulker_TCAS_NSR_ptv(:,j) NonIce_Container_TCAS_NSR_ptv(:,j) NonIce_Wet_Bulker_TCAS_NSR_ptv(:,j)];
    end
    
    NonIce_TCAS_INT_ptv = zeros(3,3.*10);
    for j = 1:1:10
        NonIce_TCAS_INT_ptv(:,3.*(j - 1) + 1: 3.*j) = [NonIce_Bulker_TCAS_INT_ptv(:,j) NonIce_Container_TCAS_INT_ptv(:,j) NonIce_Wet_Bulker_TCAS_INT_ptv(:,j)];
    end
    
    NonIce_TCAS_TPP_ptv = zeros(3,3.*10);
    for j = 1:1:10
        NonIce_TCAS_TPP_ptv(:,3.*(j - 1) + 1: 3.*j) = [NonIce_Bulker_TCAS_TPP_ptv(:,j) NonIce_Container_TCAS_TPP_ptv(:,j) NonIce_Wet_Bulker_TCAS_TPP_ptv(:,j)];
    end
    
    %LSHFO
    
    NonIce_LSHFO_TCAS_NSR_ptv = zeros(3,5.*6);
    for j = 1:1:10
        NonIce_LSHFO_TCAS_NSR_ptv(:,3.*(j - 1) + 1: 3.*j) = [NonIce_Bulker_LSHFO_TCAS_NSR_ptv(:,j) NonIce_Container_LSHFO_TCAS_NSR_ptv(:,j) NonIce_Wet_Bulker_LSHFO_TCAS_NSR_ptv(:,j)];
    end
    
    NonIce_LSHFO_TCAS_INT_ptv = zeros(3,5.*6);
    for j = 1:1:10
        NonIce_LSHFO_TCAS_INT_ptv(:,3.*(j - 1) + 1: 3.*j) = [NonIce_Bulker_LSHFO_TCAS_INT_ptv(:,j) NonIce_Container_LSHFO_TCAS_INT_ptv(:,j) NonIce_Wet_Bulker_LSHFO_TCAS_INT_ptv(:,j)];
    end
    
    NonIce_LSHFO_TCAS_TPP_ptv = zeros(3,5.*6);
    for j = 1:1:10
        NonIce_LSHFO_TCAS_TPP_ptv(:,3.*(j - 1) + 1: 3.*j) = [NonIce_Bulker_LSHFO_TCAS_TPP_ptv(:,j) NonIce_Container_LSHFO_TCAS_TPP_ptv(:,j) NonIce_Wet_Bulker_LSHFO_TCAS_TPP_ptv(:,j)];
    end
    
    %RQ1 output
    Figure1 = figure(1);
    t = tiledlayout(2,1)
    
    ax1 = nexttile
    b = barh(Year,  Ice_Container_TCAS_Normalised_value_NSR_ptv(:,1:12) - Ice_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),'BaseValue',0,'FaceColor','flat');
    for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),2)./2) - 1
        b(k+1).CData = k;
    end
    
    for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),2)./2) - 1
        b(k+7).CData = k;
    end
    
    for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),2)./2) - 1
        b(k+7).EdgeColor = [1 1 1]; b(k+7).LineWidth = 0.0001;
    end
    set(gca,'FontName','Arial Nova Light'); set(gca,'XTick',[]);
    title('BAU case (SSP5 - RCP 8.5)')
    
    ax2 = nexttile
    
    
    b = barh(Year,  Ice_Container_TCAS_Normalised_value_NSR_ptv(:,49:60) - Ice_Container_FCAS_Normalised_value_NSR_ptv(:,49:60),'BaseValue',0,'FaceColor','flat');
    for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,49:60),2)./2) - 1
        b(k+1).CData = k;
    end
    
    for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,49:60),2)./2) - 1
        b(k+7).CData = k;
    end
    
    for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,49:60),2)./2) - 1
        b(k+7).EdgeColor = [1 1 1]; b(k+7).LineWidth = 0.0001;
    end
    set(gca,'FontName','Arial Nova Light'); set(gca,'FontName','Arial Nova Light'); 
    title('Greenest case (SSP1 - RCP 1.9)')
    hold on
    
    linkaxes([ax1, ax2],'x')
    set(gca,'FontName','Arial Nova Light');   set(gca,'FontSize',9);
    
    l = legend('','YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH_3', 'YR FC NH_3',...
        '','Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH_3', 'Cmb N-S FC NH_3','location','southoutside');
    l.NumColumns = 3;
    t.TileSpacing = 'compact';
    t.Padding = 'compact';
    ylabel(t,'Year'); xlabel(t,'Normalised metric')
            
    
    Figure2 = figure(2) %2035 covers all the fuels 
  
     
    X = categorical({'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH_3', 'YR FC NH_3',...
        'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH_3', 'Cmb N-S FC NH_3'});
    X = reordercats(X,{ 'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH_3', 'YR FC NH_3',...
        'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH_3', 'Cmb N-S FC NH_3'});        
     
        
        b = bar(X,Ice_Container_Emissions_DiffAS_NSR_tm(:, 1:4),'FaceColor','flat');

               hold on
       
        err = [Ice_LSHFO_Container_Emissions_DiffAS_NSR_tm(:, 1:4) - Ice_Container_Emissions_DiffAS_NSR_tm(:, 1:4) ];
        errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
        
        % Find the number of groups and the number of bars in each group
        [ngroups, nbars] = size(Ice_LSHFO_Container_Emissions_DiffAS_NSR_tm(:, 1:4));
        % Calculate the width for each bar group
        % Get the x coordinate of the bars
        x = zeros(nbars, ngroups);
        for z = 1:nbars
            x(z,:) = b(z).XEndPoints;
        end
        errorbar(x',Ice_Container_Emissions_DiffAS_NSR_tm(:, 1:4),errlow(:,:),errhigh(:,:),'k','linestyle','none');
        
        
       set(gca,'FontName','Arial Nova Light'); set(gca,'FontSize',9);
    
    l = legend('CO_{2eq}','SOx','NOx', 'PM','location','southoutside'); %lower case L not i
    l.NumColumns = 4;
    ylabel('Tonnes of emissions (t)')
%     title('Containership emission difference NSR - Suez (2035)')

 Figure3 = figure(3)
          
t = tiledlayout(2,1)

ax1 = nexttile


b = barh(Year,  Ice_LSHFO_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),'BaseValue',1,'FaceColor','flat');
for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),2)./2)  - 1
    b(k+1).CData = k;
end

for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),2)./2) - 1
    b(k+7).CData = k;
end

for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),2)./2) - 1
    b(k+7).EdgeColor = [1 1 1]; b(k+7).LineWidth = 0.0001;
end


set(gca,'FontName','Arial Nova Light');   set(gca,'FontSize',9); set(gca,'XTick',[]);

% title('Financial feasibility of the NSR against a 2-stroke/LSHFO Suez bound ship')
         
ax2 = nexttile

b = barh(Year,  Ice_LSHFO_Container_TCAS_Normalised_value_NSR_ptv(:,1:12),'BaseValue',1,'FaceColor','flat');
for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),2)./2)  - 1
    b(k+1).CData = k;
end

for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),2)./2) - 1
    b(k+7).CData = k;
end

for k = 1:(size(Ice_Container_FCAS_Normalised_value_NSR_ptv(:,1:12),2)./2) - 1
    b(k+7).EdgeColor = [1 1 1]; b(k+7).LineWidth = 0.0001;
end

linkaxes([ax1, ax2],'x')
set(gca,'FontName','Arial Nova Light');   set(gca,'FontSize',9);
% title('Feasibility of the NSR w/externalities against a 2-stroke/LSHFO Suez bound ship')

l = legend('','YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH_3', 'YR FC NH_3',...
    '','Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH_3', 'Cmb N-S FC NH_3','location','southoutside');
l.NumColumns = 3;
t.TileSpacing = 'compact';
t.Padding = 'compact';
ylabel(t,'Year'); xlabel(t,'Normalised metric')



%%RQ2 outputs
Figure4 = figure(4);
t = tiledlayout(5,1);
    
    ax1 = zeros(3,1);
    for i = 1:1:5
        
        ax1(i) =  nexttile(i);
        
        b = barh(Year,  TCAS_NSR_ptv(:,3.*(2.*i) - 5: 3.*(2.*i)-3),'BaseValue',1,'FaceColor','flat');
        for k = 1:(size(TCAS_NSR_ptv(:,3.*(2.*i) - 5: 3.*(2.*i)-3),2)./2)
            if k == 1
                
                b(k).CData =[0 0.4470 0.7410];
                
            elseif k == 2
                
                b(k).CData = [0.8500 0.3250 0.0980];
                
            elseif k == 3
                
                b(k).CData = [0.9290 0.6940 0.1250];
                
            end
            
        end
        
%         for k = 1:(size(TCAS_NSR_ptv(:,3.*(2.*i) - 5: 3.*(2.*i)-3),2)./2)
%             if k == 1
%                 
%                 b(k + 3).CData =[0 0.4470 0.7410];
%                 
%             elseif k == 2
%                 
%                 b(k + 3).CData = [0.8500 0.3250 0.0980];
%                 
%             elseif k == 3
%                 
%                 b(k + 3).CData = [0.9290 0.6940 0.1250];
%                 
%             end
%             
%         end
        
%         for k = 1:(size(TCAS_NSR_ptv(:,6.*(i - 1) + 1: 6.*i),2)./2)
%             b(k+3).EdgeColor = [1 1 1]; b(k+3).LineWidth = 0.0001;
%         end
        
        set(gca,'FontName','Arial Nova Light');
        
        if i == 1
            
            title('SSP5 - 8.5')
            set(gca,'XTick',[]);
             
        elseif i ==2
            
            title('SSP3 - 7.0')
            set(gca,'XTick',[]);
             
        elseif i == 3
            
            title('SSP2 - 4.5')
            set(gca,'XTick',[]);
             
        elseif i == 4
            
            title('SSP1 - 2.6')
            set(gca,'XTick',[]);
             
        elseif i ==5
            
            title('SSP1 - 1.9')
            ylabel(t,'Year')
             
        end
        
              hold on
        
        %Setting error bars based off the LSHFO base
        err = [LSHFO_TCAS_NSR_ptv(:,3.*(2.*i) - 5: 3.*(2.*i)-3) - TCAS_NSR_ptv(:,3.*(2.*i) - 5: 3.*(2.*i)-3) ];
        errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
        
        % Find the number of groups and the number of bars in each group
        [ngroups, nbars] = size(LSHFO_TCAS_NSR_ptv(:,3.*(2.*i) - 5: 3.*(2.*i)-3));
        % Calculate the width for each bar group
        % Get the x coordinate of the bars
        y = zeros(nbars, ngroups);
        for z = 1:nbars
            y(z,:) = b(z).XEndPoints;
        end
        errorbar(TCAS_NSR_ptv(:,3.*(2.*i) - 5: 3.*(2.*i)-3),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
        xlim([0.55 2.5])
    end
  
    l = legend('Bulker','Container ','Wet Bulker', '2-stroke/LSHFO base'); %lower case L not i
    l.Layout.Tile = 'south';
    l.NumColumns = 4;
    t.TileSpacing = 'compact';
    t.Padding = 'compact';
%     title(t,'Commercial feasibility of Arctic routes, year round (<0 is feasible)')
  
    Figure5 = figure(5);
    t = tiledlayout(5,1);

         ax2 = zeros(5,1);
    for i = 1:1:5
        
        ax2(i) =  nexttile(i);
        
        b = barh(Year,  TCAS_NSR_ptv(:,3.*(2.*i) - 2: 3.*(2.*i)),'BaseValue',1,'FaceColor','flat');
        for k = 1:(size(TCAS_NSR_ptv(:,3.*(2.*i) - 2: 3.*(2.*i)),2)./2)
            if k == 1
                
                b(k).CData =[0 0.4470 0.7410];
                
            elseif k == 2
                
                b(k).CData = [0.8500 0.3250 0.0980];
                
            elseif k == 3
                
                b(k).CData = [0.9290 0.6940 0.1250];
                
            end
            
        end
        
%         for k = 1:(size(TCAS_NSR_ptv(:,6.*(i - 1) + 1: 6.*i),2)./2)
%             if k == 1
%                 
%                 b(k + 3).CData =[0 0.4470 0.7410];
%                 
%             elseif k == 2
%                 
%                 b(k + 3).CData = [0.8500 0.3250 0.0980];
%                 
%             elseif k == 3
%                 
%                 b(k + 3).CData = [0.9290 0.6940 0.1250];
%                 
%             end
%             
%         end
%         
%         for k = 1:(size(TCAS_NSR_ptv(:,3.*(2.*i) - 2: 3.*(2.*i)),2)./2)
%             b(k+3).EdgeColor = [1 1 1]; b(k+3).LineWidth = 0.0001;
%         end
%         
   set(gca,'FontName','Arial Nova Light');
        
        if i == 1
            
            title('SSP5 - 8.5')
            set(gca,'XTick',[]);
            
        elseif i ==2
            
            title('SSP3 - 7.0')
            set(gca,'XTick',[]); 
            
        elseif i == 3
            
            title('SSP2 - 4.5')
            set(gca,'XTick',[]); 
            
        elseif i == 4
            
            title('SSP1 - 2.6')
            set(gca,'XTick',[]); 
            
        elseif i ==5
            
            title('SSP1 - 1.9')
            ylabel(t,'Year')
            
        end
        
              hold on
        
        %Setting error bars based off the LSHFO base
        err = [LSHFO_TCAS_NSR_ptv(:,3.*(2.*i) - 2: 3.*(2.*i)) - TCAS_NSR_ptv(:,3.*(2.*i) - 2: 3.*(2.*i)) ];
        errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
        
        % Find the number of groups and the number of bars in each group
        [ngroups, nbars] = size(LSHFO_TCAS_NSR_ptv(:,3.*(2.*i) - 2: 3.*(2.*i)));
        % Calculate the width for each bar group
        % Get the x coordinate of the bars
        y = zeros(nbars, ngroups);
        for z = 1:nbars
            y(z,:) = b(z).XEndPoints;
        end
        errorbar(TCAS_NSR_ptv(:,3.*(2.*i) - 2: 3.*(2.*i)),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
        xlim([0.65 1.2])
    end
        
    l = legend('Bulker','Container ','Wet Bulker', '2-stroke/LSHFO base'); %lower case L not i
    l.Layout.Tile = 'south';
    l.NumColumns = 4;
    t.TileSpacing = 'compact';
    t.Padding = 'compact';
%     title(t,'Commercial feasibility Arctic routes, combined (<0 is feasible)')
    
    
    Carbon_price = [0; 0; 212.837200411001; 319.255800616502; 425.674400822003];
    
    Fuel_TCAS_Cont_tm = reshape(Ice_Container_CTAS_Normalised_value_NSR_ptv(2,:),6,10)';
    Fuel_TCAS_Cont_YR_tm = Fuel_TCAS_Cont_tm(1:2:end,:);  Fuel_TCAS_Cont_CMB_tm = Fuel_TCAS_Cont_tm(2:2:end,:);
    
    LSHFO_Fuel_TCAS_Cont_tm = reshape(Ice_LSHFO_Container_CTAS_Normalised_value_NSR_ptv(2,:),6,10)';
     LSHFO_Fuel_TCAS_Cont_YR_tm =  LSHFO_Fuel_TCAS_Cont_tm(1:2:end,:);   LSHFO_Fuel_TCAS_Cont_CMB_tm =  LSHFO_Fuel_TCAS_Cont_tm(2:2:end,:);
    
    Figure6 = figure(6)
     t = tiledlayout(2,1);
     
     ax1 = nexttile
%     X = categorical({'SSP5 - RCP8.5', ' SSP3 - RCP7.0', 'SSP2 - RCP4.5', 'SSP1 - RCP2.6', 'SSP1 - RCP1.9'}); X = reordercats(X,{'SSP5 - RCP8.5', ' SSP3 - RCP7.0', 'SSP2 - RCP4.5', 'SSP1 - RCP2.6', 'SSP1 - RCP1.9'});
    X = categorical({'SSP5 - RCP8.5', ' SSP3 - RCP7.0', 'SSP2 - RCP4.5'}); X = reordercats(X,{'SSP5 - RCP8.5', ' SSP3 - RCP7.0', 'SSP2 - RCP4.5'});
    
   b =  bar(X(1:3),Fuel_TCAS_Cont_YR_tm(1:3,:))
%     title('NSR year round')
    ylabel('Normalised metric')
    ylim([0 1.2])

    
    hold on
%     %Setting error bars based off the LSHFO base
    err = [LSHFO_Fuel_TCAS_Cont_YR_tm(1:3,:) - Fuel_TCAS_Cont_YR_tm(1:3,:) ];
    errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
    
    % Find the number of groups and the number of bars in each group
    [ngroups, nbars] = size(LSHFO_Fuel_TCAS_Cont_YR_tm(1:3,:));
    % Calculate the width for each bar group
    % Get the x coordinate of the bars
    y = zeros(nbars, ngroups);
    for z = 1:nbars
        y(z,:) = b(z).XEndPoints;
    end
    e = errorbar(y',Fuel_TCAS_Cont_YR_tm(1:3,:),errlow(:,:),errhigh(:,:),'vertical','k','linestyle','none');
   
    ylim([0 3])
        yyaxis right
    plot(X, Carbon_price(1:3,:),'k--x','LineWidth',2,'MarkerSize',10);
    ylabel('Carbon price ($tonne^{-1})')
    ylim([0 300])
    set(gca,'FontName','Arial Nova Light'), set(gca,'XTick',[]);
    set(gca,'ycolor','k')

    ax2 = nexttile
 
    bar(X(1:3),Fuel_TCAS_Cont_CMB_tm(1:3,:))
%       title('Combined NSR - Suez')
    ylabel('Normalised metric')
    ylim([0 2.5])
    
    hold on
    %Setting error bars based off the LSHFO base
    err = [LSHFO_Fuel_TCAS_Cont_CMB_tm(1:3,:) - Fuel_TCAS_Cont_CMB_tm(1:3,:) ];
    errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
    
    % Find the number of groups and the number of bars in each group
    [ngroups, nbars] = size(LSHFO_Fuel_TCAS_Cont_CMB_tm(1:3,:));
    % Calculate the width for each bar group
    % Get the x coordinate of the bars
    y = zeros(nbars, ngroups);
    for z = 1:nbars
        y(z,:) = b(z).XEndPoints;
    end
    e = errorbar(y',Fuel_TCAS_Cont_CMB_tm(1:3,:),errlow(:,:),errhigh(:,:),'vertical','k','linestyle','none');
    
    yyaxis right
   p = plot(X, Carbon_price(1:3,:),'k--x','LineWidth',2,'MarkerSize',10);
    ylabel('Carbon price ($tonne^{-1})')
    ylim([0 300])
    set(gca,'FontName','Arial Nova Light'),
    set(gca,'ycolor','k')
    l = legend([b(2) b(3) b(4) b(5) b(6) p], '2-stroke/LSHFO','2-stroke/MDO','4-stroke/LNG', '4-stroke/NH_3', 'FC/NH_3','Carbon price',''); %lower case L not i
    l.Layout.Tile = 'south';
    l.NumColumns = 4;
    t.TileSpacing = 'compact';
    t.Padding = 'compact';
    
    Figure7 = figure(7); 
    t = tiledlayout(2,1);
    
    ax1 = nexttile
    X = categorical({'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH3', 'YR FC NH3',...
        'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH3', 'Cmb N-S FC NH3'});
    X = reordercats(X,{ 'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH3', 'YR FC NH3',...
        'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH3', 'Cmb N-S FC NH3'});
    b = barh(X,Ice_Container_DiffAS_NSR_tf(:,13:16),0.5,'stacked');
    
    title('2050','FontName','Arial Nova Light')

    set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
    
    ax2 = nexttile
    b = barh(X,Ice_Container_DiffAS_NSR_tm(:,13:16),0.5,'stacked');
    title('2035')

     xlabel('USDtonne^{-1}');  set(gca,'FontName','Arial Nova Light');
    
%     ax3 = nexttile
%     b = barh(X,Ice_Container_DiffAS_NSR_t0(:,13:18),0.5,'stacked');
%     xlabel('USD')
%     title('2020')

    t.TileSpacing = 'compact';
    t.Padding = 'compact';
    set(gca,'FontName','Arial Nova Light');
    ax1.FontSize = 6; ax2.FontSize = 6; linkaxes([ax1,ax2],'x');
%     lgd = legend('Voyage cost','Operating cost', 'Capital cost',...
%         'Carbon tax', 'Air pollution cost','Climate change cost');
    lgd = legend('Voyage cost','Operating cost', 'Capital cost',...
        'Carbon tax');

    lgd.NumColumns = 3;
    lgd.Layout.Tile = 'south';
        
    Figure8 = figure(8); %Bulker
    t = tiledlayout(2,1);
    
    ax1 = nexttile
    X = categorical({'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH3', 'YR FC NH3',...
        'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH3', 'Cmb N-S FC NH3'});
    X = reordercats(X,{ 'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH3', 'YR FC NH3',...
        'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH3', 'Cmb N-S FC NH3'});
    b = barh(X,Ice_Bulker_DiffAS_NSR_tf(:,1:6),0.5,'stacked');
    
    title('2050','FontName','Arial Nova Light')

    set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
    
    ax2 = nexttile
    b = barh(X,Ice_Bulker_DiffAS_NSR_tm(:,1:6),0.5,'stacked');
    title('2035')

     xlabel('USDtonne^{-1}');  set(gca,'FontName','Arial Nova Light');
    
%     ax3 = nexttile
%     b = barh(X,Ice_Bulker_DiffAS_NSR_t0(:,1:6),0.5,'stacked');
%     xlabel('USD')
%     title('2020')

    t.TileSpacing = 'compact';
    t.Padding = 'compact';
    set(gca,'FontName','Arial Nova Light');
    ax1.FontSize = 6; ax2.FontSize = 6; linkaxes([ax1,ax2],'x');
 lgd = legend('Voyage cost','Operating cost', 'Capital cost',...
        '', 'Air pollution cost','Climate change cost');
    lgd.NumColumns = 3;
    lgd.Layout.Tile = 'south';
    
    Container_TCAS_NSR_YR_ptv = TCAS_NSR_ptv(:,2:6:end);
    Container_TCAS_INT_YR_ptv = TCAS_INT_ptv(:,2:6:end);
    Container_TCAS_TPP_YR_ptv = TCAS_TPP_ptv(:,2:6:end);
    
    LSHFO_Container_TCAS_NSR_YR_ptv = LSHFO_TCAS_NSR_ptv(:,2:6:end);
    LSHFO_Container_TCAS_INT_YR_ptv = LSHFO_TCAS_INT_ptv(:,2:6:end);
    LSHFO_Container_TCAS_TPP_YR_ptv = LSHFO_TCAS_TPP_ptv(:,2:6:end);
    
    Container_TCAS_NSR_CMB_ptv = TCAS_NSR_ptv(:,5:6:end);
    Container_TCAS_INT_CMB_ptv = TCAS_INT_ptv(:,5:6:end);
    Container_TCAS_TPP_CMB_ptv = TCAS_TPP_ptv(:,5:6:end);
    
    LSHFO_Container_TCAS_NSR_CMB_ptv = LSHFO_TCAS_NSR_ptv(:,5:6:end);
    LSHFO_Container_TCAS_INT_CMB_ptv = LSHFO_TCAS_INT_ptv(:,5:6:end);
    LSHFO_Container_TCAS_TPP_CMB_ptv = LSHFO_TCAS_TPP_ptv(:,5:6:end);
    
   
    Figure9 = figure(9)
    t = tiledlayout(3,2);
    
    ax1 = nexttile
    
    b = barh(Year(2),Container_TCAS_TPP_YR_ptv(2,:),0.5,'BaseValue',1);
     title('TPP feasibility 2035','FontName','Arial Nova Light')
    set(gca,'XTick',[]);   set(gca,'YTick',[]);
    
    hold on
   %Setting error bars based off the LSHFO base
        err = [LSHFO_Container_TCAS_TPP_YR_ptv(2,:) - Container_TCAS_TPP_YR_ptv(2,:) ];
        errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
        
        % Find the number of groups and the number of bars in each group
        [ngroups, nbars] = size(LSHFO_Container_TCAS_TPP_YR_ptv(2,:));
        % Calculate the width for each bar group
        % Get the x coordinate of the bars
        y = zeros(nbars, ngroups);
        for z = 1:nbars
            y(z,:) = b(z).XEndPoints;
        end
        errorbar(Container_TCAS_TPP_YR_ptv(2,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');

        set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
        
    ax2 = nexttile

    b = barh(Year(3),Container_TCAS_TPP_YR_ptv(3,:),0.5,'BaseValue',1);
    title('TPP feasibility 2050','FontName','Arial Nova Light')
    set(gca,'XTick',[]); set(gca,'YTick',[]);
    
    hold on
    %Setting error bars based off the LSHFO base
    err = [LSHFO_Container_TCAS_TPP_YR_ptv(3,:) - Container_TCAS_TPP_YR_ptv(3,:) ];
    errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
    
    % Find the number of groups and the number of bars in each group
    [ngroups, nbars] = size(LSHFO_Container_TCAS_TPP_YR_ptv(3,:));
    % Calculate the width for each bar group
    % Get the x coordinate of the bars
    y = zeros(nbars, ngroups);
    for z = 1:nbars
        y(z,:) = b(z).XEndPoints;
    end
    errorbar(Container_TCAS_TPP_YR_ptv(3,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
    
    set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
    
    ax3 = nexttile
    
    b = barh(Year(2),Container_TCAS_INT_YR_ptv(2,:),0.5,'BaseValue',1);
     title('Intermediary feasibility 2035','FontName','Arial Nova Light')
     set(gca,'XTick',[]);   set(gca,'YTick',[]);
     
       hold on
    %Setting error bars based off the LSHFO base
    err = [LSHFO_Container_TCAS_INT_YR_ptv(2,:) - Container_TCAS_INT_YR_ptv(2,:) ];
    errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
    
    % Find the number of groups and the number of bars in each group
    [ngroups, nbars] = size(LSHFO_Container_TCAS_INT_YR_ptv(2,:));
    % Calculate the width for each bar group
    % Get the x coordinate of the bars
    y = zeros(nbars, ngroups);
    for z = 1:nbars
        y(z,:) = b(z).XEndPoints;
    end
    errorbar(Container_TCAS_INT_YR_ptv(2,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
    
    set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
     
     ax4 = nexttile
     
     b = barh(Year(3),Container_TCAS_INT_YR_ptv(3,:),0.5,'BaseValue',1);
     title('Intermediary  feasibility 2050','FontName','Arial Nova Light')
     set(gca,'XTick',[]); set(gca,'YTick',[]);
     
            hold on
    %Setting error bars based off the LSHFO base
    err = [LSHFO_Container_TCAS_INT_YR_ptv(3,:) - Container_TCAS_INT_YR_ptv(3,:) ];
    errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
    
    % Find the number of groups and the number of bars in each group
    [ngroups, nbars] = size(LSHFO_Container_TCAS_INT_YR_ptv(3,:));
    % Calculate the width for each bar group
    % Get the x coordinate of the bars
    y = zeros(nbars, ngroups);
    for z = 1:nbars
        y(z,:) = b(z).XEndPoints;
    end
    errorbar(Container_TCAS_INT_YR_ptv(3,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
     
     ax5 = nexttile
     
     b = barh(Year(2),Container_TCAS_NSR_YR_ptv(2,:),0.5,'BaseValue',1);
     title('NSR  feasibility 2035','FontName','Arial Nova Light')
   set(gca,'YTick',[]);
   
          hold on
    %Setting error bars based off the LSHFO base
    err = [LSHFO_Container_TCAS_NSR_YR_ptv(2,:) - Container_TCAS_NSR_YR_ptv(2,:) ];
    errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
    
    % Find the number of groups and the number of bars in each group
    [ngroups, nbars] = size(LSHFO_Container_TCAS_NSR_YR_ptv(2,:));
    % Calculate the width for each bar group
    % Get the x coordinate of the bars
    y = zeros(nbars, ngroups);
    for z = 1:nbars
        y(z,:) = b(z).XEndPoints;
    end
    errorbar(Container_TCAS_NSR_YR_ptv(2,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
    
    set(gca,'FontName','Arial Nova Light');
     xlabel('Normalised value');    
     
     ax6 = nexttile
     
     b = barh(Year(3),Container_TCAS_NSR_YR_ptv(3,:),0.5,'BaseValue',1);
     title('NSR feasibility 2050','FontName','Arial Nova Light')
     set(gca,'YTick',[]);
     
     hold on
     %Setting error bars based off the LSHFO base
     err = [LSHFO_Container_TCAS_NSR_YR_ptv(3,:) - Container_TCAS_NSR_YR_ptv(3,:) ];
     errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
     
     % Find the number of groups and the number of bars in each group
     [ngroups, nbars] = size(LSHFO_Container_TCAS_NSR_YR_ptv(3,:));
     % Calculate the width for each bar group
     % Get the x coordinate of the bars
     y = zeros(nbars, ngroups);
     for z = 1:nbars
         y(z,:) = b(z).XEndPoints;
     end
     errorbar(Container_TCAS_NSR_YR_ptv(3,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
    xlabel('Normalised value');

      l.Layout.Tile = 'south';
      l.NumColumns = 3;
      t.TileSpacing = 'compact';
      t.Padding = 'compact';
      set(gca,'FontName','Arial Nova Light');
      
            l =legend(   'SSP5 - RCP 8.5', 'SSP3 - RCP 7.0',  'SSP2 - RCP 4.5',  'SSP1 - RCP 2.6', 'SSP1 - RCP 1.9');
            l.Layout.Tile = 'south'; l.NumColumns =3;
      linkaxes([ax1,ax3,ax5],'x');  linkaxes([ax2,ax4,ax6],'x');
      
      Figure10 = figure(10)
    t = tiledlayout(3,2);
    
    ax1 = nexttile
    
    b = barh(Year(2),Container_TCAS_TPP_CMB_ptv(2,:),0.5,'BaseValue',1);
     title('TPP feasibility 2035','FontName','Arial Nova Light')
    set(gca,'XTick',[]);   set(gca,'YTick',[]);
    
    hold on
   %Setting error bars based off the LSHFO base
        err = [LSHFO_Container_TCAS_TPP_CMB_ptv(2,:) - Container_TCAS_TPP_CMB_ptv(2,:) ];
        errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
        
        % Find the number of groups and the number of bars in each group
        [ngroups, nbars] = size(LSHFO_Container_TCAS_TPP_CMB_ptv(2,:));
        % Calculate the width for each bar group
        % Get the x coordinate of the bars
        y = zeros(nbars, ngroups);
        for z = 1:nbars
            y(z,:) = b(z).XEndPoints;
        end
        errorbar(Container_TCAS_TPP_CMB_ptv(2,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');

        set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
        
    ax2 = nexttile

    b = barh(Year(3),Container_TCAS_TPP_CMB_ptv(3,:),0.5,'BaseValue',1);
    title('TPP feasibility 2050','FontName','Arial Nova Light')
    set(gca,'XTick',[]); set(gca,'YTick',[]);
    
    hold on
    %Setting error bars based off the LSHFO base
    err = [LSHFO_Container_TCAS_TPP_CMB_ptv(3,:) - Container_TCAS_TPP_CMB_ptv(3,:) ];
    errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
    
    % Find the number of groups and the number of bars in each group
    [ngroups, nbars] = size(LSHFO_Container_TCAS_TPP_CMB_ptv(3,:));
    % Calculate the width for each bar group
    % Get the x coordinate of the bars
    y = zeros(nbars, ngroups);
    for z = 1:nbars
        y(z,:) = b(z).XEndPoints;
    end
    errorbar(Container_TCAS_TPP_CMB_ptv(3,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
    
    set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
    
    ax3 = nexttile
    
    b = barh(Year(2),Container_TCAS_INT_CMB_ptv(2,:),0.5,'BaseValue',1);
     title('Intermediary feasibility 2035','FontName','Arial Nova Light')
     set(gca,'XTick',[]);   set(gca,'YTick',[]);
     
       hold on
    %Setting error bars based off the LSHFO base
    err = [LSHFO_Container_TCAS_INT_CMB_ptv(2,:) - Container_TCAS_INT_CMB_ptv(2,:) ];
    errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
    
    % Find the number of groups and the number of bars in each group
    [ngroups, nbars] = size(LSHFO_Container_TCAS_INT_CMB_ptv(2,:));
    % Calculate the width for each bar group
    % Get the x coordinate of the bars
    y = zeros(nbars, ngroups);
    for z = 1:nbars
        y(z,:) = b(z).XEndPoints;
    end
    errorbar(Container_TCAS_INT_CMB_ptv(2,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
    
    set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
     
     ax4 = nexttile
     
     b = barh(Year(3),Container_TCAS_INT_CMB_ptv(3,:),0.5,'BaseValue',1);
     title('Intermediary  feasibility 2050','FontName','Arial Nova Light')
     set(gca,'XTick',[]); set(gca,'YTick',[]);
     
            hold on
    %Setting error bars based off the LSHFO base
    err = [LSHFO_Container_TCAS_INT_CMB_ptv(3,:) - Container_TCAS_INT_CMB_ptv(3,:) ];
    errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
    
    % Find the number of groups and the number of bars in each group
    [ngroups, nbars] = size(LSHFO_Container_TCAS_INT_CMB_ptv(3,:));
    % Calculate the width for each bar group
    % Get the x coordinate of the bars
    y = zeros(nbars, ngroups);
    for z = 1:nbars
        y(z,:) = b(z).XEndPoints;
    end
    errorbar(Container_TCAS_INT_CMB_ptv(3,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
     
     ax5 = nexttile
     
     b = barh(Year(2),Container_TCAS_NSR_CMB_ptv(2,:),0.5,'BaseValue',1);
     title('NSR  feasibility 2035','FontName','Arial Nova Light')
   set(gca,'YTick',[]);
   
          hold on
    %Setting error bars based off the LSHFO base
    err = [LSHFO_Container_TCAS_NSR_CMB_ptv(2,:) - Container_TCAS_NSR_CMB_ptv(2,:) ];
    errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
    
    % Find the number of groups and the number of bars in each group
    [ngroups, nbars] = size(LSHFO_Container_TCAS_NSR_CMB_ptv(2,:));
    % Calculate the width for each bar group
    % Get the x coordinate of the bars
    y = zeros(nbars, ngroups);
    for z = 1:nbars
        y(z,:) = b(z).XEndPoints;
    end
    errorbar(Container_TCAS_NSR_CMB_ptv(2,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
    
    set(gca,'FontName','Arial Nova Light');
     xlabel('Normalised value');    
     xlim([0.6 1])
     
     ax6 = nexttile
     
     b = barh(Year(3),Container_TCAS_NSR_CMB_ptv(3,:),0.5,'BaseValue',1);
     title('NSR feasibility 2050','FontName','Arial Nova Light')
     set(gca,'YTick',[]);
     
     hold on
     %Setting error bars based off the LSHFO base
     err = [LSHFO_Container_TCAS_NSR_CMB_ptv(3,:) - Container_TCAS_NSR_CMB_ptv(3,:) ];
     errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
     
     % Find the number of groups and the number of bars in each group
     [ngroups, nbars] = size(LSHFO_Container_TCAS_NSR_CMB_ptv(3,:));
     % Calculate the width for each bar group
     % Get the x coordinate of the bars
     y = zeros(nbars, ngroups);
     for z = 1:nbars
         y(z,:) = b(z).XEndPoints;
     end
     errorbar(Container_TCAS_NSR_CMB_ptv(3,:),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
    xlabel('Normalised value');

      l.Layout.Tile = 'south';
      l.NumColumns = 3;
      t.TileSpacing = 'compact';
      t.Padding = 'compact';
      set(gca,'FontName','Arial Nova Light');
      
            l =legend(   'SSP5 - RCP 8.5', 'SSP3 - RCP 7.0',  'SSP2 - RCP 4.5',  'SSP1 - RCP 2.6', 'SSP1 - RCP 1.9');
            l.Layout.Tile = 'south'; l.NumColumns =3;
      linkaxes([ax1,ax3,ax5],'x');  linkaxes([ax2,ax4,ax6],'x');
      
      Figure11 = figure(11)
    b = barh(Year(2:3), NonIce_Container_TCAS_Normalised_value_NSR_ptv(2:3,1:12),'BaseValue',1,'FaceColor','flat');
    for k = 1:(size(NonIce_Container_TCAS_Normalised_value_NSR_ptv(2:3,1:12),2)./2) - 1
        b(k+1).CData = k;
    end
    
    for k = 1:(size(NonIce_Container_TCAS_Normalised_value_NSR_ptv(2:3,1:12),2)./2) - 1
        b(k+7).CData = k;
    end
    
    for k = 1:(size(NonIce_Container_TCAS_Normalised_value_NSR_ptv(2:3,1:12),2)./2) - 1
        b(k+7).EdgeColor = [1 1 1]; b(k+7).LineWidth = 0.0001;
    end
    set(gca,'FontName','Arial Nova Light'); set(gca,'XLim',[0.5 1.5]);
%     title('OW Container normalised total cost - NSR')
    
    
        hold on
        
        %Setting error bars based off the LSHFO base
        err = [NonIce_LSHFO_Container_TCAS_Normalised_value_NSR_ptv(2:3,1:12) - NonIce_Container_TCAS_Normalised_value_NSR_ptv(2:3,1:12) ];
        errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0; 
        
        % Find the number of groups and the number of bars in each group
        [ngroups, nbars] = size(NonIce_LSHFO_Container_TCAS_Normalised_value_NSR_ptv(2:3,1:12));
        % Calculate the width for each bar group
        % Get the x coordinate of the bars
        y = zeros(nbars, ngroups);
        for z = 1:nbars
            y(z,:) = b(z).XEndPoints;
        end
        er = errorbar(NonIce_Container_TCAS_Normalised_value_NSR_ptv(2:3,1:12),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
        xlabel('Normalised value'); ylabel('Year')
        l = legend('','YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH_3', 'YR FC NH_3',...
            '','Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH_3', 'Cmb N-S FC NH_3','location','southoutside');
        l.NumColumns = 3;
            set(gca,'FontSize',8);
         
        
        Figure12 = figure(12) %NonIce

    t = tiledlayout(2,1);
    
    ax1 = nexttile
    X = categorical({'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH3', 'YR FC NH3',...
        'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH3', 'Cmb N-S FC NH3'});
    X = reordercats(X,{ 'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH3', 'YR FC NH3',...
        'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH3', 'Cmb N-S FC NH3'});
    b = barh(X,NonIce_Container_DiffAS_NSR_tf(:,1:6),0.5,'stacked');
    
    title('2050','FontName','Arial Nova Light')

    set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
    
    ax2 = nexttile
    b = barh(X,NonIce_Container_DiffAS_NSR_tm(:,1:6),0.5,'stacked');
    title('2035')

  set(gca,'FontName','Arial Nova Light');

    t.TileSpacing = 'compact';
    t.Padding = 'compact';
    set(gca,'FontName','Arial Nova Light');
    ax1.FontSize = 6; ax2.FontSize = 6;  linkaxes([ax1,ax2],'x');
 lgd = legend('Voyage cost','Operating cost', 'Capital cost',...
        '', 'Air pollution cost','Climate change cost');
    lgd.NumColumns = 3;
    lgd.Layout.Tile = 'south';
    xlabel('USD Tonne^{-1}')
       
    NonIce_Container_TCAS_Normalised_value = [NonIce_Container_TCAS_Normalised_value_TPP_ptv(3,11:12); NonIce_Container_TCAS_Normalised_value_INT_ptv(3,11:12); NonIce_Container_TCAS_Normalised_value_NSR_ptv(3,11:12)]; 
        NonIce_LSHFO_Container_TCAS_Normalised_value = [NonIce_LSHFO_Container_TCAS_Normalised_value_TPP_ptv(3,11:12); NonIce_LSHFO_Container_TCAS_Normalised_value_INT_ptv(3,11:12); NonIce_LSHFO_Container_TCAS_Normalised_value_NSR_ptv(3,11:12)]; 

        
    X = categorical({'NSR','INT','TPP'});
    X = reordercats(X,{'NSR','INT','TPP'});
    
    Figure13 = figure(13) %NonIce
       b = barh(X,NonIce_Container_TCAS_Normalised_value,0.5,'BaseValue',1);
       
       for k = 1:(size(NonIce_Container_TCAS_Normalised_value(:,:),2)) 
           b(k).CData = k+4;
       end
       
       hold on
       %Setting error bars based off the LSHFO base
       err = [NonIce_LSHFO_Container_TCAS_Normalised_value - NonIce_Container_TCAS_Normalised_value ];
       errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0;
       
       % Find the number of groups and the number of bars in each group
       [ngroups, nbars] = size(NonIce_LSHFO_Container_TCAS_Normalised_value);
       % Calculate the width for each bar group
       % Get the x coordinate of the bars
       y = zeros(nbars, ngroups);
       for z = 1:nbars
           y(z,:) = b(z).XEndPoints;
       end
       er = errorbar(NonIce_Container_TCAS_Normalised_value,y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
       
     xlabel('Normalised value'); ylabel('Route')
     
     legend('4-stroke NH_3','FC NH_3','location','southoutside')
         set(gca,'FontName','Arial Nova Light');
         
         Figure14 = figure(14); %Wet_Bulker
         t = tiledlayout(2,1);
         
         ax1 = nexttile
         X = categorical({'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH3', 'YR FC NH3',...
             'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH3', 'Cmb N-S FC NH3'});
         X = reordercats(X,{ 'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH3', 'YR FC NH3',...
             'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH3', 'Cmb N-S FC NH3'});
         b = barh(X,Ice_Wet_Bulker_DiffAS_NSR_tf(:,1+2.*6:6+2.*6),0.5,'stacked');
         
         title('2050','FontName','Arial Nova Light')
         
         set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
         
         ax2 = nexttile
         b = barh(X,Ice_Wet_Bulker_DiffAS_NSR_tm(:,1+2.*6:6+2.*6),0.5,'stacked');
         title('2035')
         
         xlabel('USDtonne^{-1}');  set(gca,'FontName','Arial Nova Light');
         
         %     ax3 = nexttile
         %     b = barh(X,Ice_Wet_Bulker_DiffAS_NSR_t0(:,1:6),0.5,'stacked');
         %     xlabel('USD')
         %     title('2020')
         
         t.TileSpacing = 'compact';
         t.Padding = 'compact';
         set(gca,'FontName','Arial Nova Light');
         ax1.FontSize = 6; ax2.FontSize = 6; linkaxes([ax1,ax2],'x');
         lgd = legend('Voyage cost','Operating cost', 'Capital cost',...
             '', 'Air pollution cost','Climate change cost');
         lgd.NumColumns = 3;
         lgd.Layout.Tile = 'south';
     
         Figure15 = figure(15)
    b = barh(Year(2:3), NonIce_Bulker_TCAS_Normalised_value_NSR_ptv(2:3,1:12),'BaseValue',1,'FaceColor','flat');
    for k = 1:(size(NonIce_Bulker_TCAS_Normalised_value_NSR_ptv(2:3,1:12),2)./2) - 1
        b(k+1).CData = k;
    end
    
    for k = 1:(size(NonIce_Bulker_TCAS_Normalised_value_NSR_ptv(2:3,1:12),2)./2) - 1
        b(k+7).CData = k;
    end
    
    for k = 1:(size(NonIce_Bulker_TCAS_Normalised_value_NSR_ptv(2:3,1:12),2)./2) - 1
        b(k+7).EdgeColor = [1 1 1]; b(k+7).LineWidth = 0.0001;
    end
    set(gca,'FontName','Arial Nova Light'); set(gca,'XLim',[0.5 1.5]);
%     title('OW Bulker normalised total cost - NSR')
    
    
        hold on
        
        %Setting error bars based off the LSHFO base
        err = [NonIce_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv(2:3,1:12) - NonIce_Bulker_TCAS_Normalised_value_NSR_ptv(2:3,1:12) ];
        errhigh = err; errlow = err; errhigh(err < 0) = 0; errlow(err > 0) = 0; 
        
        % Find the number of groups and the number of bars in each group
        [ngroups, nbars] = size(NonIce_LSHFO_Bulker_TCAS_Normalised_value_NSR_ptv(2:3,1:12));
        % Calculate the width for each bar group
        % Get the x coordinate of the bars
        y = zeros(nbars, ngroups);
        for z = 1:nbars
            y(z,:) = b(z).XEndPoints;
        end
        er = errorbar(NonIce_Bulker_TCAS_Normalised_value_NSR_ptv(2:3,1:12),y',errlow(:,:),errhigh(:,:),'horizontal','k','linestyle','none');
        xlabel('Normalised value'); ylabel('Year')
        l = legend('','YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH_3', 'YR FC NH_3',...
            '','Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH_3', 'Cmb N-S FC NH_3','location','southoutside');
        l.NumColumns = 3;
            set(gca,'FontSize',8);
      
            Figure16 = figure(16) %NonIce
            
            t = tiledlayout(2,1);
            
            ax1 = nexttile
            X = categorical({'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH3', 'YR FC NH3',...
                'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH3', 'Cmb N-S FC NH3'});
            X = reordercats(X,{ 'YR 2-stroke LSHFO','YR 2-stroke MDO','YR 4-stroke LNG','YR 4-stroke NH3', 'YR FC NH3',...
                'Cmb N-S 2-stroke LSHFO', 'Cmb N-S 2-stroke MDO', 'Cmb N-S 4-stroke LNG', 'Cmb N-S 4-stroke NH3', 'Cmb N-S FC NH3'});
            b = barh(X,NonIce_Bulker_DiffAS_NSR_tf(:,1:6),0.5,'stacked');
            
            title('2050','FontName','Arial Nova Light')
            
            set(gca,'XTick',[]); set(gca,'FontName','Arial Nova Light');
            
            ax2 = nexttile
            b = barh(X,NonIce_Bulker_DiffAS_NSR_tm(:,1:6),0.5,'stacked');
            title('2035')
            
            set(gca,'FontName','Arial Nova Light');
            
            t.TileSpacing = 'compact';
            t.Padding = 'compact';
            set(gca,'FontName','Arial Nova Light');
            ax1.FontSize = 6; ax2.FontSize = 6;  linkaxes([ax1,ax2],'x');
            lgd = legend('Voyage cost','Operating cost', 'Capital cost',...
                '', 'Air pollution cost','Climate change cost');
            lgd.NumColumns = 3;
            lgd.Layout.Tile = 'south';
            xlabel('USD Tonne^{-1}')
       
    
         saveas(Figure1,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ1\TC_FC_difference.png');
         saveas(Figure2,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ1\Container_2035_Emission_difference.png');
         saveas(Figure3,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ1\TC_LSHFOFC_difference.png');
         saveas(Figure4,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\SSP_TC_Feasibility_NSR_YR.png');
         saveas(Figure5,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\SSP_TC_Feasibility_NSR_CMB.png');
         saveas(Figure6,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\SSP_TC_Fuel_Feasibility_NSR.png');
         saveas(Figure7,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\SSP245_Container_Cost_differential.png');
         saveas(Figure8,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\SSP585_Bulker_Cost_differential.png');
         saveas(Figure9,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\SSP_Arctic_route_YR_feasibility.png');
         saveas(Figure10,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\SSP_Arctic_route_CMB_feasibility.png');
         saveas(Figure11,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\OW_Container_NSR_feasibility.png');
         saveas(Figure12,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\OW_Container_Cost_differential.png');
         saveas(Figure13,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\OW_Container_Arctic_route_feasibility.png');
         saveas(Figure14,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\SSP585_Wet_Bulker_Cost_differential.png');
         saveas(Figure15,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\OW_Bulker_NSR_feasibility.png');
         saveas(Figure16,'C:\Users\lambe\OneDrive - University College London\Research\2nd year PhD\Modelling\Arctic model\Modelv12\Outputs\RQ2\OW_Bulker_Cost_differential.png');
         
         clear Figure1 Figure2 Figure3 Figure4 Figure5 Figure6 Figure7 Figure8 Figure9 Figure10 Figure11 Figure12 Figure13 Figure14 Figure15 Figure16
     
end % if inp.SSP119 == 1










