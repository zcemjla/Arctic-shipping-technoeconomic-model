function [latitude1, latitude2, latitude3, Arctic_Route1_length, Arctic_Route2_length, Arctic_Route3_length,...
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

%This function determines the size of the inner and outer navigability
%windows
%There are 3 scenarios
%Scenario 1 - Arctic is operational all year round, for a Non ice
%strengthened ship this means it only operates when it's safe to do so,
%Polar code
%Scenario 2 - Arctic is used when there are no icebreaker escorts required,
%this is of course different for
%Scenario 3 - Suez is used all year round so the Arctic is ignored
%windows using ice data projection.csv's

if inp.SSP245 == 1
    
    SIT_Jan_t0 = readmatrix('SI_data\SSP245_Jan_t0_sit_projection.csv');
    SIT_Feb_t0 = readmatrix('SI_data\SSP245_Feb_t0_sit_projection.csv');
    SIT_March_t0 = readmatrix('SI_data\SSP245_March_t0_sit_projection.csv');
    SIT_April_t0 = readmatrix('SI_data\SSP245_April_t0_sit_projection.csv');
    SIT_May_t0 = readmatrix('SI_data\SSP245_May_t0_sit_projection.csv');
    SIT_June_t0 = readmatrix('SI_data\SSP245_June_t0_sit_projection.csv');
    SIT_July_t0 = readmatrix('SI_data\SSP245_July_t0_sit_projection.csv');
    SIT_August_t0 = readmatrix('SI_data\SSP245_August_t0_sit_projection.csv');
    SIT_September_t0 = readmatrix('SI_data\SSP245_September_t0_sit_projection.csv');
    SIT_October_t0 = readmatrix('SI_data\SSP245_October_t0_sit_projection.csv');
    SIT_November_t0 = readmatrix('SI_data\SSP245_November_t0_sit_projection.csv');
    SIT_December_t0 = readmatrix('SI_data\SSP245_December_t0_sit_projection.csv');
    
    SIT_t0 = [SIT_Jan_t0; SIT_Feb_t0; SIT_March_t0; SIT_April_t0; SIT_May_t0;
        SIT_June_t0; SIT_July_t0; SIT_August_t0; SIT_September_t0; SIT_October_t0;
        SIT_November_t0; SIT_December_t0];
    
    SIT_Jan_tm = readmatrix('SI_data\SSP245_Jan_tm_sit_projection.csv');
    SIT_Feb_tm = readmatrix('SI_data\SSP245_Feb_tm_sit_projection.csv');
    SIT_March_tm = readmatrix('SI_data\SSP245_March_tm_sit_projection.csv');
    SIT_April_tm = readmatrix('SI_data\SSP245_April_tm_sit_projection.csv');
    SIT_May_tm = readmatrix('SI_data\SSP245_May_tm_sit_projection.csv');
    SIT_June_tm = readmatrix('SI_data\SSP245_June_tm_sit_projection.csv');
    SIT_July_tm = readmatrix('SI_data\SSP245_July_tm_sit_projection.csv');
    SIT_August_tm = readmatrix('SI_data\SSP245_August_tm_sit_projection.csv');
    SIT_September_tm = readmatrix('SI_data\SSP245_September_tm_sit_projection.csv');
    SIT_October_tm = readmatrix('SI_data\SSP245_October_tm_sit_projection.csv');
    SIT_November_tm = readmatrix('SI_data\SSP245_November_tm_sit_projection.csv');
    SIT_December_tm = readmatrix('SI_data\SSP245_December_tm_sit_projection.csv');
    
    SIT_tm = [SIT_Jan_tm; SIT_Feb_tm; SIT_March_tm; SIT_April_tm; SIT_May_tm;
        SIT_June_tm; SIT_July_tm; SIT_August_tm; SIT_September_tm; SIT_October_tm;
        SIT_November_tm; SIT_December_tm];
    
    SIT_Jan_tf = readmatrix('SI_data\SSP245_Jan_tf_sit_projection.csv');
    SIT_Feb_tf = readmatrix('SI_data\SSP245_Feb_tf_sit_projection.csv');
    SIT_March_tf = readmatrix('SI_data\SSP245_March_tf_sit_projection.csv');
    SIT_April_tf = readmatrix('SI_data\SSP245_April_tf_sit_projection.csv');
    SIT_May_tf = readmatrix('SI_data\SSP245_May_tf_sit_projection.csv');
    SIT_June_tf = readmatrix('SI_data\SSP245_June_tf_sit_projection.csv');
    SIT_July_tf = readmatrix('SI_data\SSP245_July_tf_sit_projection.csv');
    SIT_August_tf = readmatrix('SI_data\SSP245_August_tf_sit_projection.csv');
    SIT_September_tf = readmatrix('SI_data\SSP245_September_tf_sit_projection.csv');
    SIT_October_tf = readmatrix('SI_data\SSP245_October_tf_sit_projection.csv');
    SIT_November_tf = readmatrix('SI_data\SSP245_November_tf_sit_projection.csv');
    SIT_December_tf = readmatrix('SI_data\SSP245_December_tf_sit_projection.csv');
    
    SIT_tf = [SIT_Jan_tf; SIT_Feb_tf; SIT_March_tf; SIT_April_tf; SIT_May_tf;
        SIT_June_tf; SIT_July_tf; SIT_August_tf; SIT_September_tf; SIT_October_tf;
        SIT_November_tf; SIT_December_tf];
    
    SIC_Jan_t0 = readmatrix('SI_data\SSP245_Jan_t0_sic_projection.csv');
    SIC_Feb_t0 = readmatrix('SI_data\SSP245_Feb_t0_sic_projection.csv');
    SIC_March_t0 = readmatrix('SI_data\SSP245_March_t0_sic_projection.csv');
    SIC_April_t0 = readmatrix('SI_data\SSP245_April_t0_sic_projection.csv');
    SIC_May_t0 = readmatrix('SI_data\SSP245_May_t0_sic_projection.csv');
    SIC_June_t0 = readmatrix('SI_data\SSP245_June_t0_sic_projection.csv');
    SIC_July_t0 = readmatrix('SI_data\SSP245_July_t0_sic_projection.csv');
    SIC_August_t0 = readmatrix('SI_data\SSP245_August_t0_sic_projection.csv');
    SIC_September_t0 = readmatrix('SI_data\SSP245_September_t0_sic_projection.csv');
    SIC_October_t0 = readmatrix('SI_data\SSP245_October_t0_sic_projection.csv');
    SIC_November_t0 = readmatrix('SI_data\SSP245_November_t0_sic_projection.csv');
    SIC_December_t0 = readmatrix('SI_data\SSP245_December_t0_sic_projection.csv');
    
    SIC_t0 = [SIC_Jan_t0; SIC_Feb_t0; SIC_March_t0; SIC_April_t0; SIC_May_t0;
        SIC_June_t0; SIC_July_t0; SIC_August_t0; SIC_September_t0; SIC_October_t0;
        SIC_November_t0; SIC_December_t0];
    
    SIC_Jan_tm = readmatrix('SI_data\SSP245_Jan_tm_sic_projection.csv');
    SIC_Feb_tm = readmatrix('SI_data\SSP245_Feb_tm_sic_projection.csv');
    SIC_March_tm = readmatrix('SI_data\SSP245_March_tm_sic_projection.csv');
    SIC_April_tm = readmatrix('SI_data\SSP245_April_tm_sic_projection.csv');
    SIC_May_tm = readmatrix('SI_data\SSP245_May_tm_sic_projection.csv');
    SIC_June_tm = readmatrix('SI_data\SSP245_June_tm_sic_projection.csv');
    SIC_July_tm = readmatrix('SI_data\SSP245_July_tm_sic_projection.csv');
    SIC_August_tm = readmatrix('SI_data\SSP245_August_tm_sic_projection.csv');
    SIC_September_tm = readmatrix('SI_data\SSP245_September_tm_sic_projection.csv');
    SIC_October_tm = readmatrix('SI_data\SSP245_October_tm_sic_projection.csv');
    SIC_November_tm = readmatrix('SI_data\SSP245_November_tm_sic_projection.csv');
    SIC_December_tm = readmatrix('SI_data\SSP245_December_tm_sic_projection.csv');
    
    SIC_tm = [SIC_Jan_tm; SIC_Feb_tm; SIC_March_tm; SIC_April_tm; SIC_May_tm;
        SIC_June_tm; SIC_July_tm; SIC_August_tm; SIC_September_tm; SIC_October_tm;
        SIC_November_tm; SIC_December_tm];
    
    SIC_Jan_tf = readmatrix('SI_data\SSP245_Jan_tf_sic_projection.csv');
    SIC_Feb_tf = readmatrix('SI_data\SSP245_Feb_tf_sic_projection.csv');
    SIC_March_tf = readmatrix('SI_data\SSP245_March_tf_sic_projection.csv');
    SIC_April_tf = readmatrix('SI_data\SSP245_April_tf_sic_projection.csv');
    SIC_May_tf = readmatrix('SI_data\SSP245_May_tf_sic_projection.csv');
    SIC_June_tf = readmatrix('SI_data\SSP245_June_tf_sic_projection.csv');
    SIC_July_tf = readmatrix('SI_data\SSP245_July_tf_sic_projection.csv');
    SIC_August_tf = readmatrix('SI_data\SSP245_August_tf_sic_projection.csv');
    SIC_September_tf = readmatrix('SI_data\SSP245_September_tf_sic_projection.csv');
    SIC_October_tf = readmatrix('SI_data\SSP245_October_tf_sic_projection.csv');
    SIC_November_tf = readmatrix('SI_data\SSP245_November_tf_sic_projection.csv');
    SIC_December_tf = readmatrix('SI_data\SSP245_December_tf_sic_projection.csv');
    
    SIC_tf = [SIC_Jan_tf; SIC_Feb_tf; SIC_March_tf; SIC_April_tf; SIC_May_tf;
        SIC_June_tf; SIC_July_tf; SIC_August_tf; SIC_September_tf; SIC_October_tf;
        SIC_November_tf; SIC_December_tf];
    
elseif inp.SSP119 == 1

    SIT_Jan_t0 = readmatrix('SI_data\SSP119_Jan_t0_sit_projection.csv');
    SIT_Feb_t0 = readmatrix('SI_data\SSP119_Feb_t0_sit_projection.csv');
    SIT_March_t0 = readmatrix('SI_data\SSP119_March_t0_sit_projection.csv');
    SIT_April_t0 = readmatrix('SI_data\SSP119_April_t0_sit_projection.csv');
    SIT_May_t0 = readmatrix('SI_data\SSP119_May_t0_sit_projection.csv');
    SIT_June_t0 = readmatrix('SI_data\SSP119_June_t0_sit_projection.csv');
    SIT_July_t0 = readmatrix('SI_data\SSP119_July_t0_sit_projection.csv');
    SIT_August_t0 = readmatrix('SI_data\SSP119_August_t0_sit_projection.csv');
    SIT_September_t0 = readmatrix('SI_data\SSP119_September_t0_sit_projection.csv');
    SIT_October_t0 = readmatrix('SI_data\SSP119_October_t0_sit_projection.csv');
    SIT_November_t0 = readmatrix('SI_data\SSP119_November_t0_sit_projection.csv');
    SIT_December_t0 = readmatrix('SI_data\SSP119_December_t0_sit_projection.csv');
    
    SIT_t0 = [SIT_Jan_t0; SIT_Feb_t0; SIT_March_t0; SIT_April_t0; SIT_May_t0;
        SIT_June_t0; SIT_July_t0; SIT_August_t0; SIT_September_t0; SIT_October_t0;
        SIT_November_t0; SIT_December_t0];
    
    SIT_Jan_tm = readmatrix('SI_data\SSP119_Jan_tm_sit_projection.csv');
    SIT_Feb_tm = readmatrix('SI_data\SSP119_Feb_tm_sit_projection.csv');
    SIT_March_tm = readmatrix('SI_data\SSP119_March_tm_sit_projection.csv');
    SIT_April_tm = readmatrix('SI_data\SSP119_April_tm_sit_projection.csv');
    SIT_May_tm = readmatrix('SI_data\SSP119_May_tm_sit_projection.csv');
    SIT_June_tm = readmatrix('SI_data\SSP119_June_tm_sit_projection.csv');
    SIT_July_tm = readmatrix('SI_data\SSP119_July_tm_sit_projection.csv');
    SIT_August_tm = readmatrix('SI_data\SSP119_August_tm_sit_projection.csv');
    SIT_September_tm = readmatrix('SI_data\SSP119_September_tm_sit_projection.csv');
    SIT_October_tm = readmatrix('SI_data\SSP119_October_tm_sit_projection.csv');
    SIT_November_tm = readmatrix('SI_data\SSP119_November_tm_sit_projection.csv');
    SIT_December_tm = readmatrix('SI_data\SSP119_December_tm_sit_projection.csv');
    
    SIT_tm = [SIT_Jan_tm; SIT_Feb_tm; SIT_March_tm; SIT_April_tm; SIT_May_tm;
        SIT_June_tm; SIT_July_tm; SIT_August_tm; SIT_September_tm; SIT_October_tm;
        SIT_November_tm; SIT_December_tm];
    
    SIT_Jan_tf = readmatrix('SI_data\SSP119_Jan_tf_sit_projection.csv');
    SIT_Feb_tf = readmatrix('SI_data\SSP119_Feb_tf_sit_projection.csv');
    SIT_March_tf = readmatrix('SI_data\SSP119_March_tf_sit_projection.csv');
    SIT_April_tf = readmatrix('SI_data\SSP119_April_tf_sit_projection.csv');
    SIT_May_tf = readmatrix('SI_data\SSP119_May_tf_sit_projection.csv');
    SIT_June_tf = readmatrix('SI_data\SSP119_June_tf_sit_projection.csv');
    SIT_July_tf = readmatrix('SI_data\SSP119_July_tf_sit_projection.csv');
    SIT_August_tf = readmatrix('SI_data\SSP119_August_tf_sit_projection.csv');
    SIT_September_tf = readmatrix('SI_data\SSP119_September_tf_sit_projection.csv');
    SIT_October_tf = readmatrix('SI_data\SSP119_October_tf_sit_projection.csv');
    SIT_November_tf = readmatrix('SI_data\SSP119_November_tf_sit_projection.csv');
    SIT_December_tf = readmatrix('SI_data\SSP119_December_tf_sit_projection.csv');
    
    SIT_tf = [SIT_Jan_tf; SIT_Feb_tf; SIT_March_tf; SIT_April_tf; SIT_May_tf;
        SIT_June_tf; SIT_July_tf; SIT_August_tf; SIT_September_tf; SIT_October_tf;
        SIT_November_tf; SIT_December_tf];  
    
    SIC_Jan_t0 = readmatrix('SI_data\SSP119_Jan_t0_sic_projection.csv');
    SIC_Feb_t0 = readmatrix('SI_data\SSP119_Feb_t0_sic_projection.csv');
    SIC_March_t0 = readmatrix('SI_data\SSP119_March_t0_sic_projection.csv');
    SIC_April_t0 = readmatrix('SI_data\SSP119_April_t0_sic_projection.csv');
    SIC_May_t0 = readmatrix('SI_data\SSP119_May_t0_sic_projection.csv');
    SIC_June_t0 = readmatrix('SI_data\SSP119_June_t0_sic_projection.csv');
    SIC_July_t0 = readmatrix('SI_data\SSP119_July_t0_sic_projection.csv');
    SIC_August_t0 = readmatrix('SI_data\SSP119_August_t0_sic_projection.csv');
    SIC_September_t0 = readmatrix('SI_data\SSP119_September_t0_sic_projection.csv');
    SIC_October_t0 = readmatrix('SI_data\SSP119_October_t0_sic_projection.csv');
    SIC_November_t0 = readmatrix('SI_data\SSP119_November_t0_sic_projection.csv');
    SIC_December_t0 = readmatrix('SI_data\SSP119_December_t0_sic_projection.csv');
    
    SIC_t0 = [SIC_Jan_t0; SIC_Feb_t0; SIC_March_t0; SIC_April_t0; SIC_May_t0;
        SIC_June_t0; SIC_July_t0; SIC_August_t0; SIC_September_t0; SIC_October_t0;
        SIC_November_t0; SIC_December_t0];
    
    SIC_Jan_tm = readmatrix('SI_data\SSP119_Jan_tm_sic_projection.csv');
    SIC_Feb_tm = readmatrix('SI_data\SSP119_Feb_tm_sic_projection.csv');
    SIC_March_tm = readmatrix('SI_data\SSP119_March_tm_sic_projection.csv');
    SIC_April_tm = readmatrix('SI_data\SSP119_April_tm_sic_projection.csv');
    SIC_May_tm = readmatrix('SI_data\SSP119_May_tm_sic_projection.csv');
    SIC_June_tm = readmatrix('SI_data\SSP119_June_tm_sic_projection.csv');
    SIC_July_tm = readmatrix('SI_data\SSP119_July_tm_sic_projection.csv');
    SIC_August_tm = readmatrix('SI_data\SSP119_August_tm_sic_projection.csv');
    SIC_September_tm = readmatrix('SI_data\SSP119_September_tm_sic_projection.csv');
    SIC_October_tm = readmatrix('SI_data\SSP119_October_tm_sic_projection.csv');
    SIC_November_tm = readmatrix('SI_data\SSP119_November_tm_sic_projection.csv');
    SIC_December_tm = readmatrix('SI_data\SSP119_December_tm_sic_projection.csv');
    
    SIC_tm = [SIC_Jan_tm; SIC_Feb_tm; SIC_March_tm; SIC_April_tm; SIC_May_tm;
        SIC_June_tm; SIC_July_tm; SIC_August_tm; SIC_September_tm; SIC_October_tm;
        SIC_November_tm; SIC_December_tm];
    
    SIC_Jan_tf = readmatrix('SI_data\SSP119_Jan_tf_sic_projection.csv');
    SIC_Feb_tf = readmatrix('SI_data\SSP119_Feb_tf_sic_projection.csv');
    SIC_March_tf = readmatrix('SI_data\SSP119_March_tf_sic_projection.csv');
    SIC_April_tf = readmatrix('SI_data\SSP119_April_tf_sic_projection.csv');
    SIC_May_tf = readmatrix('SI_data\SSP119_May_tf_sic_projection.csv');
    SIC_June_tf = readmatrix('SI_data\SSP119_June_tf_sic_projection.csv');
    SIC_July_tf = readmatrix('SI_data\SSP119_July_tf_sic_projection.csv');
    SIC_August_tf = readmatrix('SI_data\SSP119_August_tf_sic_projection.csv');
    SIC_September_tf = readmatrix('SI_data\SSP119_September_tf_sic_projection.csv');
    SIC_October_tf = readmatrix('SI_data\SSP119_October_tf_sic_projection.csv');
    SIC_November_tf = readmatrix('SI_data\SSP119_November_tf_sic_projection.csv');
    SIC_December_tf = readmatrix('SI_data\SSP119_December_tf_sic_projection.csv');
    
    SIC_tf = [SIC_Jan_tf; SIC_Feb_tf; SIC_March_tf; SIC_April_tf; SIC_May_tf;
        SIC_June_tf; SIC_July_tf; SIC_August_tf; SIC_September_tf; SIC_October_tf;
        SIC_November_tf; SIC_December_tf];
    
elseif inp.SSP126 == 1
    
    SIT_Jan_t0 = readmatrix('SI_data\SSP126_Jan_t0_sit_projection.csv');
    SIT_Feb_t0 = readmatrix('SI_data\SSP126_Feb_t0_sit_projection.csv');
    SIT_March_t0 = readmatrix('SI_data\SSP126_March_t0_sit_projection.csv');
    SIT_April_t0 = readmatrix('SI_data\SSP126_April_t0_sit_projection.csv');
    SIT_May_t0 = readmatrix('SI_data\SSP126_May_t0_sit_projection.csv');
    SIT_June_t0 = readmatrix('SI_data\SSP126_June_t0_sit_projection.csv');
    SIT_July_t0 = readmatrix('SI_data\SSP126_July_t0_sit_projection.csv');
    SIT_August_t0 = readmatrix('SI_data\SSP126_August_t0_sit_projection.csv');
    SIT_September_t0 = readmatrix('SI_data\SSP126_September_t0_sit_projection.csv');
    SIT_October_t0 = readmatrix('SI_data\SSP126_October_t0_sit_projection.csv');
    SIT_November_t0 = readmatrix('SI_data\SSP126_November_t0_sit_projection.csv');
    SIT_December_t0 = readmatrix('SI_data\SSP126_December_t0_sit_projection.csv');
    
    SIT_t0 = [SIT_Jan_t0; SIT_Feb_t0; SIT_March_t0; SIT_April_t0; SIT_May_t0;
        SIT_June_t0; SIT_July_t0; SIT_August_t0; SIT_September_t0; SIT_October_t0;
        SIT_November_t0; SIT_December_t0];
    
    SIT_Jan_tm = readmatrix('SI_data\SSP126_Jan_tm_sit_projection.csv');
    SIT_Feb_tm = readmatrix('SI_data\SSP126_Feb_tm_sit_projection.csv');
    SIT_March_tm = readmatrix('SI_data\SSP126_March_tm_sit_projection.csv');
    SIT_April_tm = readmatrix('SI_data\SSP126_April_tm_sit_projection.csv');
    SIT_May_tm = readmatrix('SI_data\SSP126_May_tm_sit_projection.csv');
    SIT_June_tm = readmatrix('SI_data\SSP126_June_tm_sit_projection.csv');
    SIT_July_tm = readmatrix('SI_data\SSP126_July_tm_sit_projection.csv');
    SIT_August_tm = readmatrix('SI_data\SSP126_August_tm_sit_projection.csv');
    SIT_September_tm = readmatrix('SI_data\SSP126_September_tm_sit_projection.csv');
    SIT_October_tm = readmatrix('SI_data\SSP126_October_tm_sit_projection.csv');
    SIT_November_tm = readmatrix('SI_data\SSP126_November_tm_sit_projection.csv');
    SIT_December_tm = readmatrix('SI_data\SSP126_December_tm_sit_projection.csv');
    
    SIT_tm = [SIT_Jan_tm; SIT_Feb_tm; SIT_March_tm; SIT_April_tm; SIT_May_tm;
        SIT_June_tm; SIT_July_tm; SIT_August_tm; SIT_September_tm; SIT_October_tm;
        SIT_November_tm; SIT_December_tm];
    
    SIT_Jan_tf = readmatrix('SI_data\SSP126_Jan_tf_sit_projection.csv');
    SIT_Feb_tf = readmatrix('SI_data\SSP126_Feb_tf_sit_projection.csv');
    SIT_March_tf = readmatrix('SI_data\SSP126_March_tf_sit_projection.csv');
    SIT_April_tf = readmatrix('SI_data\SSP126_April_tf_sit_projection.csv');
    SIT_May_tf = readmatrix('SI_data\SSP126_May_tf_sit_projection.csv');
    SIT_June_tf = readmatrix('SI_data\SSP126_June_tf_sit_projection.csv');
    SIT_July_tf = readmatrix('SI_data\SSP126_July_tf_sit_projection.csv');
    SIT_August_tf = readmatrix('SI_data\SSP126_August_tf_sit_projection.csv');
    SIT_September_tf = readmatrix('SI_data\SSP126_September_tf_sit_projection.csv');
    SIT_October_tf = readmatrix('SI_data\SSP126_October_tf_sit_projection.csv');
    SIT_November_tf = readmatrix('SI_data\SSP126_November_tf_sit_projection.csv');
    SIT_December_tf = readmatrix('SI_data\SSP126_December_tf_sit_projection.csv');
    
    SIT_tf = [SIT_Jan_tf; SIT_Feb_tf; SIT_March_tf; SIT_April_tf; SIT_May_tf;
        SIT_June_tf; SIT_July_tf; SIT_August_tf; SIT_September_tf; SIT_October_tf;
        SIT_November_tf; SIT_December_tf];
    
    SIC_Jan_t0 = readmatrix('SI_data\SSP126_Jan_t0_sic_projection.csv');
    SIC_Feb_t0 = readmatrix('SI_data\SSP126_Feb_t0_sic_projection.csv');
    SIC_March_t0 = readmatrix('SI_data\SSP126_March_t0_sic_projection.csv');
    SIC_April_t0 = readmatrix('SI_data\SSP126_April_t0_sic_projection.csv');
    SIC_May_t0 = readmatrix('SI_data\SSP126_May_t0_sic_projection.csv');
    SIC_June_t0 = readmatrix('SI_data\SSP126_June_t0_sic_projection.csv');
    SIC_July_t0 = readmatrix('SI_data\SSP126_July_t0_sic_projection.csv');
    SIC_August_t0 = readmatrix('SI_data\SSP126_August_t0_sic_projection.csv');
    SIC_September_t0 = readmatrix('SI_data\SSP126_September_t0_sic_projection.csv');
    SIC_October_t0 = readmatrix('SI_data\SSP126_October_t0_sic_projection.csv');
    SIC_November_t0 = readmatrix('SI_data\SSP126_November_t0_sic_projection.csv');
    SIC_December_t0 = readmatrix('SI_data\SSP126_December_t0_sic_projection.csv');
    
    SIC_t0 = [SIC_Jan_t0; SIC_Feb_t0; SIC_March_t0; SIC_April_t0; SIC_May_t0;
        SIC_June_t0; SIC_July_t0; SIC_August_t0; SIC_September_t0; SIC_October_t0;
        SIC_November_t0; SIC_December_t0];
    
    SIC_Jan_tm = readmatrix('SI_data\SSP126_Jan_tm_sic_projection.csv');
    SIC_Feb_tm = readmatrix('SI_data\SSP126_Feb_tm_sic_projection.csv');
    SIC_March_tm = readmatrix('SI_data\SSP126_March_tm_sic_projection.csv');
    SIC_April_tm = readmatrix('SI_data\SSP126_April_tm_sic_projection.csv');
    SIC_May_tm = readmatrix('SI_data\SSP126_May_tm_sic_projection.csv');
    SIC_June_tm = readmatrix('SI_data\SSP126_June_tm_sic_projection.csv');
    SIC_July_tm = readmatrix('SI_data\SSP126_July_tm_sic_projection.csv');
    SIC_August_tm = readmatrix('SI_data\SSP126_August_tm_sic_projection.csv');
    SIC_September_tm = readmatrix('SI_data\SSP126_September_tm_sic_projection.csv');
    SIC_October_tm = readmatrix('SI_data\SSP126_October_tm_sic_projection.csv');
    SIC_November_tm = readmatrix('SI_data\SSP126_November_tm_sic_projection.csv');
    SIC_December_tm = readmatrix('SI_data\SSP126_December_tm_sic_projection.csv');
    
    SIC_tm = [SIC_Jan_tm; SIC_Feb_tm; SIC_March_tm; SIC_April_tm; SIC_May_tm;
        SIC_June_tm; SIC_July_tm; SIC_August_tm; SIC_September_tm; SIC_October_tm;
        SIC_November_tm; SIC_December_tm];
    
    SIC_Jan_tf = readmatrix('SI_data\SSP126_Jan_tf_sic_projection.csv');
    SIC_Feb_tf = readmatrix('SI_data\SSP126_Feb_tf_sic_projection.csv');
    SIC_March_tf = readmatrix('SI_data\SSP126_March_tf_sic_projection.csv');
    SIC_April_tf = readmatrix('SI_data\SSP126_April_tf_sic_projection.csv');
    SIC_May_tf = readmatrix('SI_data\SSP126_May_tf_sic_projection.csv');
    SIC_June_tf = readmatrix('SI_data\SSP126_June_tf_sic_projection.csv');
    SIC_July_tf = readmatrix('SI_data\SSP126_July_tf_sic_projection.csv');
    SIC_August_tf = readmatrix('SI_data\SSP126_August_tf_sic_projection.csv');
    SIC_September_tf = readmatrix('SI_data\SSP126_September_tf_sic_projection.csv');
    SIC_October_tf = readmatrix('SI_data\SSP126_October_tf_sic_projection.csv');
    SIC_November_tf = readmatrix('SI_data\SSP126_November_tf_sic_projection.csv');
    SIC_December_tf = readmatrix('SI_data\SSP126_December_tf_sic_projection.csv');
    
    SIC_tf = [SIC_Jan_tf; SIC_Feb_tf; SIC_March_tf; SIC_April_tf; SIC_May_tf;
        SIC_June_tf; SIC_July_tf; SIC_August_tf; SIC_September_tf; SIC_October_tf;
        SIC_November_tf; SIC_December_tf];
    
elseif inp.SSP370 == 1
    
    SIT_Jan_t0 = readmatrix('SI_data\SSP370_Jan_t0_sit_projection.csv');
    SIT_Feb_t0 = readmatrix('SI_data\SSP370_Feb_t0_sit_projection.csv');
    SIT_March_t0 = readmatrix('SI_data\SSP370_March_t0_sit_projection.csv');
    SIT_April_t0 = readmatrix('SI_data\SSP370_April_t0_sit_projection.csv');
    SIT_May_t0 = readmatrix('SI_data\SSP370_May_t0_sit_projection.csv');
    SIT_June_t0 = readmatrix('SI_data\SSP370_June_t0_sit_projection.csv');
    SIT_July_t0 = readmatrix('SI_data\SSP370_July_t0_sit_projection.csv');
    SIT_August_t0 = readmatrix('SI_data\SSP370_August_t0_sit_projection.csv');
    SIT_September_t0 = readmatrix('SI_data\SSP370_September_t0_sit_projection.csv');
    SIT_October_t0 = readmatrix('SI_data\SSP370_October_t0_sit_projection.csv');
    SIT_November_t0 = readmatrix('SI_data\SSP370_November_t0_sit_projection.csv');
    SIT_December_t0 = readmatrix('SI_data\SSP370_December_t0_sit_projection.csv');
    
    SIT_t0 = [SIT_Jan_t0; SIT_Feb_t0; SIT_March_t0; SIT_April_t0; SIT_May_t0;
        SIT_June_t0; SIT_July_t0; SIT_August_t0; SIT_September_t0; SIT_October_t0;
        SIT_November_t0; SIT_December_t0];
    
    SIT_Jan_tm = readmatrix('SI_data\SSP370_Jan_tm_sit_projection.csv');
    SIT_Feb_tm = readmatrix('SI_data\SSP370_Feb_tm_sit_projection.csv');
    SIT_March_tm = readmatrix('SI_data\SSP370_March_tm_sit_projection.csv');
    SIT_April_tm = readmatrix('SI_data\SSP370_April_tm_sit_projection.csv');
    SIT_May_tm = readmatrix('SI_data\SSP370_May_tm_sit_projection.csv');
    SIT_June_tm = readmatrix('SI_data\SSP370_June_tm_sit_projection.csv');
    SIT_July_tm = readmatrix('SI_data\SSP370_July_tm_sit_projection.csv');
    SIT_August_tm = readmatrix('SI_data\SSP370_August_tm_sit_projection.csv');
    SIT_September_tm = readmatrix('SI_data\SSP370_September_tm_sit_projection.csv');
    SIT_October_tm = readmatrix('SI_data\SSP370_October_tm_sit_projection.csv');
    SIT_November_tm = readmatrix('SI_data\SSP370_November_tm_sit_projection.csv');
    SIT_December_tm = readmatrix('SI_data\SSP370_December_tm_sit_projection.csv');
    
    SIT_tm = [SIT_Jan_tm; SIT_Feb_tm; SIT_March_tm; SIT_April_tm; SIT_May_tm;
        SIT_June_tm; SIT_July_tm; SIT_August_tm; SIT_September_tm; SIT_October_tm;
        SIT_November_tm; SIT_December_tm];
    
    SIT_Jan_tf = readmatrix('SI_data\SSP370_Jan_tf_sit_projection.csv');
    SIT_Feb_tf = readmatrix('SI_data\SSP370_Feb_tf_sit_projection.csv');
    SIT_March_tf = readmatrix('SI_data\SSP370_March_tf_sit_projection.csv');
    SIT_April_tf = readmatrix('SI_data\SSP370_April_tf_sit_projection.csv');
    SIT_May_tf = readmatrix('SI_data\SSP370_May_tf_sit_projection.csv');
    SIT_June_tf = readmatrix('SI_data\SSP370_June_tf_sit_projection.csv');
    SIT_July_tf = readmatrix('SI_data\SSP370_July_tf_sit_projection.csv');
    SIT_August_tf = readmatrix('SI_data\SSP370_August_tf_sit_projection.csv');
    SIT_September_tf = readmatrix('SI_data\SSP370_September_tf_sit_projection.csv');
    SIT_October_tf = readmatrix('SI_data\SSP370_October_tf_sit_projection.csv');
    SIT_November_tf = readmatrix('SI_data\SSP370_November_tf_sit_projection.csv');
    SIT_December_tf = readmatrix('SI_data\SSP370_December_tf_sit_projection.csv');
    
    SIT_tf = [SIT_Jan_tf; SIT_Feb_tf; SIT_March_tf; SIT_April_tf; SIT_May_tf;
        SIT_June_tf; SIT_July_tf; SIT_August_tf; SIT_September_tf; SIT_October_tf;
        SIT_November_tf; SIT_December_tf];
    
    SIC_Jan_t0 = readmatrix('SI_data\SSP370_Jan_t0_sic_projection.csv');
    SIC_Feb_t0 = readmatrix('SI_data\SSP370_Feb_t0_sic_projection.csv');
    SIC_March_t0 = readmatrix('SI_data\SSP370_March_t0_sic_projection.csv');
    SIC_April_t0 = readmatrix('SI_data\SSP370_April_t0_sic_projection.csv');
    SIC_May_t0 = readmatrix('SI_data\SSP370_May_t0_sic_projection.csv');
    SIC_June_t0 = readmatrix('SI_data\SSP370_June_t0_sic_projection.csv');
    SIC_July_t0 = readmatrix('SI_data\SSP370_July_t0_sic_projection.csv');
    SIC_August_t0 = readmatrix('SI_data\SSP370_August_t0_sic_projection.csv');
    SIC_September_t0 = readmatrix('SI_data\SSP370_September_t0_sic_projection.csv');
    SIC_October_t0 = readmatrix('SI_data\SSP370_October_t0_sic_projection.csv');
    SIC_November_t0 = readmatrix('SI_data\SSP370_November_t0_sic_projection.csv');
    SIC_December_t0 = readmatrix('SI_data\SSP370_December_t0_sic_projection.csv');
    
    SIC_t0 = [SIC_Jan_t0; SIC_Feb_t0; SIC_March_t0; SIC_April_t0; SIC_May_t0;
        SIC_June_t0; SIC_July_t0; SIC_August_t0; SIC_September_t0; SIC_October_t0;
        SIC_November_t0; SIC_December_t0];
    
    SIC_Jan_tm = readmatrix('SI_data\SSP370_Jan_tm_sic_projection.csv');
    SIC_Feb_tm = readmatrix('SI_data\SSP370_Feb_tm_sic_projection.csv');
    SIC_March_tm = readmatrix('SI_data\SSP370_March_tm_sic_projection.csv');
    SIC_April_tm = readmatrix('SI_data\SSP370_April_tm_sic_projection.csv');
    SIC_May_tm = readmatrix('SI_data\SSP370_May_tm_sic_projection.csv');
    SIC_June_tm = readmatrix('SI_data\SSP370_June_tm_sic_projection.csv');
    SIC_July_tm = readmatrix('SI_data\SSP370_July_tm_sic_projection.csv');
    SIC_August_tm = readmatrix('SI_data\SSP370_August_tm_sic_projection.csv');
    SIC_September_tm = readmatrix('SI_data\SSP370_September_tm_sic_projection.csv');
    SIC_October_tm = readmatrix('SI_data\SSP370_October_tm_sic_projection.csv');
    SIC_November_tm = readmatrix('SI_data\SSP370_November_tm_sic_projection.csv');
    SIC_December_tm = readmatrix('SI_data\SSP370_December_tm_sic_projection.csv');
    
    SIC_tm = [SIC_Jan_tm; SIC_Feb_tm; SIC_March_tm; SIC_April_tm; SIC_May_tm;
        SIC_June_tm; SIC_July_tm; SIC_August_tm; SIC_September_tm; SIC_October_tm;
        SIC_November_tm; SIC_December_tm];
    
    SIC_Jan_tf = readmatrix('SI_data\SSP370_Jan_tf_sic_projection.csv');
    SIC_Feb_tf = readmatrix('SI_data\SSP370_Feb_tf_sic_projection.csv');
    SIC_March_tf = readmatrix('SI_data\SSP370_March_tf_sic_projection.csv');
    SIC_April_tf = readmatrix('SI_data\SSP370_April_tf_sic_projection.csv');
    SIC_May_tf = readmatrix('SI_data\SSP370_May_tf_sic_projection.csv');
    SIC_June_tf = readmatrix('SI_data\SSP370_June_tf_sic_projection.csv');
    SIC_July_tf = readmatrix('SI_data\SSP370_July_tf_sic_projection.csv');
    SIC_August_tf = readmatrix('SI_data\SSP370_August_tf_sic_projection.csv');
    SIC_September_tf = readmatrix('SI_data\SSP370_September_tf_sic_projection.csv');
    SIC_October_tf = readmatrix('SI_data\SSP370_October_tf_sic_projection.csv');
    SIC_November_tf = readmatrix('SI_data\SSP370_November_tf_sic_projection.csv');
    SIC_December_tf = readmatrix('SI_data\SSP370_December_tf_sic_projection.csv');
    
    SIC_tf = [SIC_Jan_tf; SIC_Feb_tf; SIC_March_tf; SIC_April_tf; SIC_May_tf;
        SIC_June_tf; SIC_July_tf; SIC_August_tf; SIC_September_tf; SIC_October_tf;
        SIC_November_tf; SIC_December_tf];
    
elseif inp.SSP585 == 1
    
    SIT_Jan_t0 = readmatrix('SI_data\SSP585_Jan_t0_sit_projection.csv');
    SIT_Feb_t0 = readmatrix('SI_data\SSP585_Feb_t0_sit_projection.csv');
    SIT_March_t0 = readmatrix('SI_data\SSP585_March_t0_sit_projection.csv');
    SIT_April_t0 = readmatrix('SI_data\SSP585_April_t0_sit_projection.csv');
    SIT_May_t0 = readmatrix('SI_data\SSP585_May_t0_sit_projection.csv');
    SIT_June_t0 = readmatrix('SI_data\SSP585_June_t0_sit_projection.csv');
    SIT_July_t0 = readmatrix('SI_data\SSP585_July_t0_sit_projection.csv');
    SIT_August_t0 = readmatrix('SI_data\SSP585_August_t0_sit_projection.csv');
    SIT_September_t0 = readmatrix('SI_data\SSP585_September_t0_sit_projection.csv');
    SIT_October_t0 = readmatrix('SI_data\SSP585_October_t0_sit_projection.csv');
    SIT_November_t0 = readmatrix('SI_data\SSP585_November_t0_sit_projection.csv');
    SIT_December_t0 = readmatrix('SI_data\SSP585_December_t0_sit_projection.csv');
    
    SIT_t0 = [SIT_Jan_t0; SIT_Feb_t0; SIT_March_t0; SIT_April_t0; SIT_May_t0;
        SIT_June_t0; SIT_July_t0; SIT_August_t0; SIT_September_t0; SIT_October_t0;
        SIT_November_t0; SIT_December_t0];
    
    SIT_Jan_tm = readmatrix('SI_data\SSP585_Jan_tm_sit_projection.csv');
    SIT_Feb_tm = readmatrix('SI_data\SSP585_Feb_tm_sit_projection.csv');
    SIT_March_tm = readmatrix('SI_data\SSP585_March_tm_sit_projection.csv');
    SIT_April_tm = readmatrix('SI_data\SSP585_April_tm_sit_projection.csv');
    SIT_May_tm = readmatrix('SI_data\SSP585_May_tm_sit_projection.csv');
    SIT_June_tm = readmatrix('SI_data\SSP585_June_tm_sit_projection.csv');
    SIT_July_tm = readmatrix('SI_data\SSP585_July_tm_sit_projection.csv');
    SIT_August_tm = readmatrix('SI_data\SSP585_August_tm_sit_projection.csv');
    SIT_September_tm = readmatrix('SI_data\SSP585_September_tm_sit_projection.csv');
    SIT_October_tm = readmatrix('SI_data\SSP585_October_tm_sit_projection.csv');
    SIT_November_tm = readmatrix('SI_data\SSP585_November_tm_sit_projection.csv');
    SIT_December_tm = readmatrix('SI_data\SSP585_December_tm_sit_projection.csv');
    
    SIT_tm = [SIT_Jan_tm; SIT_Feb_tm; SIT_March_tm; SIT_April_tm; SIT_May_tm;
        SIT_June_tm; SIT_July_tm; SIT_August_tm; SIT_September_tm; SIT_October_tm;
        SIT_November_tm; SIT_December_tm];
    
    SIT_Jan_tf = readmatrix('SI_data\SSP585_Jan_tf_sit_projection.csv');
    SIT_Feb_tf = readmatrix('SI_data\SSP585_Feb_tf_sit_projection.csv');
    SIT_March_tf = readmatrix('SI_data\SSP585_March_tf_sit_projection.csv');
    SIT_April_tf = readmatrix('SI_data\SSP585_April_tf_sit_projection.csv');
    SIT_May_tf = readmatrix('SI_data\SSP585_May_tf_sit_projection.csv');
    SIT_June_tf = readmatrix('SI_data\SSP585_June_tf_sit_projection.csv');
    SIT_July_tf = readmatrix('SI_data\SSP585_July_tf_sit_projection.csv');
    SIT_August_tf = readmatrix('SI_data\SSP585_August_tf_sit_projection.csv');
    SIT_September_tf = readmatrix('SI_data\SSP585_September_tf_sit_projection.csv');
    SIT_October_tf = readmatrix('SI_data\SSP585_October_tf_sit_projection.csv');
    SIT_November_tf = readmatrix('SI_data\SSP585_November_tf_sit_projection.csv');
    SIT_December_tf = readmatrix('SI_data\SSP585_December_tf_sit_projection.csv');
    
    SIT_tf = [SIT_Jan_tf; SIT_Feb_tf; SIT_March_tf; SIT_April_tf; SIT_May_tf;
        SIT_June_tf; SIT_July_tf; SIT_August_tf; SIT_September_tf; SIT_October_tf;
        SIT_November_tf; SIT_December_tf];
    
    SIC_Jan_t0 = readmatrix('SI_data\SSP585_Jan_t0_sic_projection.csv');
    SIC_Feb_t0 = readmatrix('SI_data\SSP585_Feb_t0_sic_projection.csv');
    SIC_March_t0 = readmatrix('SI_data\SSP585_March_t0_sic_projection.csv');
    SIC_April_t0 = readmatrix('SI_data\SSP585_April_t0_sic_projection.csv');
    SIC_May_t0 = readmatrix('SI_data\SSP585_May_t0_sic_projection.csv');
    SIC_June_t0 = readmatrix('SI_data\SSP585_June_t0_sic_projection.csv');
    SIC_July_t0 = readmatrix('SI_data\SSP585_July_t0_sic_projection.csv');
    SIC_August_t0 = readmatrix('SI_data\SSP585_August_t0_sic_projection.csv');
    SIC_September_t0 = readmatrix('SI_data\SSP585_September_t0_sic_projection.csv');
    SIC_October_t0 = readmatrix('SI_data\SSP585_October_t0_sic_projection.csv');
    SIC_November_t0 = readmatrix('SI_data\SSP585_November_t0_sic_projection.csv');
    SIC_December_t0 = readmatrix('SI_data\SSP585_December_t0_sic_projection.csv');
    
    SIC_t0 = [SIC_Jan_t0; SIC_Feb_t0; SIC_March_t0; SIC_April_t0; SIC_May_t0;
        SIC_June_t0; SIC_July_t0; SIC_August_t0; SIC_September_t0; SIC_October_t0;
        SIC_November_t0; SIC_December_t0];
    
    SIC_Jan_tm = readmatrix('SI_data\SSP585_Jan_tm_sic_projection.csv');
    SIC_Feb_tm = readmatrix('SI_data\SSP585_Feb_tm_sic_projection.csv');
    SIC_March_tm = readmatrix('SI_data\SSP585_March_tm_sic_projection.csv');
    SIC_April_tm = readmatrix('SI_data\SSP585_April_tm_sic_projection.csv');
    SIC_May_tm = readmatrix('SI_data\SSP585_May_tm_sic_projection.csv');
    SIC_June_tm = readmatrix('SI_data\SSP585_June_tm_sic_projection.csv');
    SIC_July_tm = readmatrix('SI_data\SSP585_July_tm_sic_projection.csv');
    SIC_August_tm = readmatrix('SI_data\SSP585_August_tm_sic_projection.csv');
    SIC_September_tm = readmatrix('SI_data\SSP585_September_tm_sic_projection.csv');
    SIC_October_tm = readmatrix('SI_data\SSP585_October_tm_sic_projection.csv');
    SIC_November_tm = readmatrix('SI_data\SSP585_November_tm_sic_projection.csv');
    SIC_December_tm = readmatrix('SI_data\SSP585_December_tm_sic_projection.csv');
    
    SIC_tm = [SIC_Jan_tm; SIC_Feb_tm; SIC_March_tm; SIC_April_tm; SIC_May_tm;
        SIC_June_tm; SIC_July_tm; SIC_August_tm; SIC_September_tm; SIC_October_tm;
        SIC_November_tm; SIC_December_tm];
    
    SIC_Jan_tf = readmatrix('SI_data\SSP585_Jan_tf_sic_projection.csv');
    SIC_Feb_tf = readmatrix('SI_data\SSP585_Feb_tf_sic_projection.csv');
    SIC_March_tf = readmatrix('SI_data\SSP585_March_tf_sic_projection.csv');
    SIC_April_tf = readmatrix('SI_data\SSP585_April_tf_sic_projection.csv');
    SIC_May_tf = readmatrix('SI_data\SSP585_May_tf_sic_projection.csv');
    SIC_June_tf = readmatrix('SI_data\SSP585_June_tf_sic_projection.csv');
    SIC_July_tf = readmatrix('SI_data\SSP585_July_tf_sic_projection.csv');
    SIC_August_tf = readmatrix('SI_data\SSP585_August_tf_sic_projection.csv');
    SIC_September_tf = readmatrix('SI_data\SSP585_September_tf_sic_projection.csv');
    SIC_October_tf = readmatrix('SI_data\SSP585_October_tf_sic_projection.csv');
    SIC_November_tf = readmatrix('SI_data\SSP585_November_tf_sic_projection.csv');
    SIC_December_tf = readmatrix('SI_data\SSP585_December_tf_sic_projection.csv');
    
    SIC_tf = [SIC_Jan_tf; SIC_Feb_tf; SIC_March_tf; SIC_April_tf; SIC_May_tf;
        SIC_June_tf; SIC_July_tf; SIC_August_tf; SIC_September_tf; SIC_October_tf;
        SIC_November_tf; SIC_December_tf];
end

%Sea ice concentration data comes in percentages, so I have to convert it
SIC_t0 = SIC_t0./100;
SIC_tm = SIC_tm./100;
SIC_tf = SIC_tf./100;

    %Differences between Route 1 and Route 2, in Route 3 point C is the North
    %Pole
    %
    %       Longitude is equidistant between A and E
    %
    %
    %  (40.5,84.5)__________________ (162.5,84.5)
    %        /                  \
    %       /                    \
    %      /                      \
    %   A /                        \ E
    %    (40.5,77.5)  ___________  (162.5,77.5)
    %            / B      R1   D \
    %           /                 \
    %          /                   \
    %         /                     \
    %        /                       \ E(190.5,66.5)
    %       /                         |
    %      /                         / F (190.5,64.5)
    %     /                         /
    %    /                         /
    %   /                         /
    %  /                         /
    % /                         /
    %/ A                       / G(174.5,60.5)
    %(5.5,60.5)
    
    %The vessel is assumed to start traversing towards the Arctic from a
    %longitude of 5 degrees and a latitude of 60 degrees to one of 40 degrees
    %longitude and 77 degrees latitude for Route 1, and 40 deg longitude 84 for
    %route 2 (portworld.com)
    %For Route 2 (the intermediary route...) a new latitude is needed (83.5 is rounded to
    %84) longitude is assumed to remain constant
    
    %Route 1 equation: lon = 2.058824*lat - 119.059
    %Route 2 equation  lon = 4.041667*lat - 237.5
    
    %The initial stage of the journey A to B for Route 1
    longitude1 = [];
    latitude1 = [];
    
    for i = 60.5:1:77.5
        lon = (2.058824*i) - 119.059;
        longitude1 = [longitude1;lon];
        latitude1 = [latitude1;i];
    end
    
    %A to H for Route 2
    longitude2 = [];
    latitude2 = [];
    
    for i = 60.5:1:84.5
        lon = (1.458333*i) - 82.7292;
        longitude2 = [longitude2;lon];
        latitude2 = [latitude2;i];
    end
    
    %A to C (North Pole)
    latitude3 = [];
    for i = 60.5:1:89.5
        latitude3 = [latitude3;i];
    end
    
    %The point at which the ship is assumed to leave the Bering strait is 60
    %degrees latitude and 174 degrees longitude - this applies to all the
    %routes (portworld.com)
    
    %lon = 3*lat-6
    
    %Assume that the vessel operates at a constanst latitude 77 degrees, from
    %40, this makes Arctic route calculations easier
    %degrees longitude to 162 degrees, then it descends in latitude to 65 and
    %-171 degrees longitude, assuming a straight line descent this yields a
    %y=mx+c line of lon = -2.25*lat+335.25
    %start with - cite path of Venta Maersk as an example and portworld.com
    % See Cheaitou et al. 2019 for longitude coordinates
    %Obtain Northern Sea Route distances from potworld
    %t_0 - It operates in a straight line one degree above the EEZ
    %t_m - Interpolate the path using a sine curve with the maximum being
    % the latitude point haflway between the latitude above the Russian EEZ and
    % the North Pole
    %t_f - Same interpolation as t_m but the maximum is the North Pole
    %Assume that each grid cell is occupied by one ice type homogenously
    
    %B to D for Route 1
    
    %This avoids double counting the same co-ordinates
    LLong = length(longitude1(:));
    LLat = length(latitude1(:));
    longitude1 = longitude1(1:(LLong-1));
    latitude1 = latitude1(1:(LLat -1));
    
    for i = 40.5:1:162.5
        longitude1 = [longitude1;i];
    end
    
    lat1 = 77.5.*ones(123,1);
    lat1 = lat1(1:122);
    LLong = length(longitude1(:));
    latitude1 = [latitude1;lat1];
    longitude1 = longitude1(1:(LLong-1));
    
    %D to E for Route 1
    for i = 77.5:-1:66.5
        lon = (-2.54545*i)+359.7727;
        longitude1 = [longitude1;lon];
        latitude1 = [latitude1;i];
    end
    
    LLong = length(longitude1(:));
    LLat = length(latitude1(:));
    longitude1 = longitude1(1:(LLong-1));
    latitude1 = latitude1(1:(LLat-1));
    
    %E to F for Route 1
    for i = 66.5:-1:64.5
        lon = 190.5;
        longitude1 = [longitude1;lon];
        latitude1 = [latitude1;i];
    end
    
    LLong = length(longitude1(:));
    LLat = length(latitude1(:));
    longitude1 = longitude1(1:(LLong-1));
    latitude1 = latitude1(1:(LLat-1));
    
    %F to G for Route 1
    for i = 64.5:-1:60.5
        lon = (4.*i)-67.5;
        longitude1 = [longitude1;lon];
        latitude1 = [latitude1;i];
    end

    %Translating the lon and lat into co-ordinates which can then be used to
    %index the corresponding SIT values
    lat_index1 = latitude1(:) - 59.5; %SIT data goes from 60 degrees or above but SIT_t0(1) = 60 degrees latitude
    longitude1 = round(longitude1(:));
    
    SIT_Route1_t0 = []; %NSR
    SIC_Route1_t0 = [];
    
    z = length(SIT_t0(:,1))./12;
    
    %Route 1
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_t0(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_t0 = [SIT_Route1_t0; SIT_Route1_iter];
        end
    end
    
    SIT_Route1_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_tm(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_tm = [SIT_Route1_tm; SIT_Route1_iter];
        end
    end
    
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_t0(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_t0 = [SIC_Route1_t0; SIC_Route1_iter];
        end
    end
    
    SIC_Route1_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_tm(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_tm = [SIC_Route1_tm; SIC_Route1_iter];
        end
    end
    
    %Route 2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    LLong = length(longitude2(:));
    LLat = length(latitude2(:));
    
    longitude2 = longitude2(1:(LLong-1));
    latitude2 = latitude2(1:(LLat-1));
    
    for i = 40.5:1:162.5
        longitude2 = [longitude2;i];
    end
    
    LLong = length(longitude2(:));
    LLat = length(latitude2(:));
    
    longitude2 = longitude2(1:(LLong-1));
    
    lat2 = 84.5.*ones(123,1);
    lat2 = lat2(1:122);
    LLong = length(longitude2(:));
    latitude2 = [latitude2;lat2];
    
    for i = 84.5:-1:66.5
        lon = (-1.55556*i)+293.9444;
        longitude2 = [longitude2;lon];
        latitude2 = [latitude2;i];
    end
    
    LLong = length(longitude2(:));
    LLat = length(latitude2(:));
    
    latitude2 = latitude2(1:(LLat-1));
    longitude2 = longitude2(1:(LLong-1));
    
    %E to F for Route 2
    for i = 66.5:-1:64.5
        lon = 190.5;
        longitude2 = [longitude2;lon];
        latitude2 = [latitude2;i];
    end
    
    LLong = length(longitude2(:));
    LLat = length(latitude2(:));
    
    latitude2 = latitude2(1:(LLat-1));
    longitude2 = longitude2(1:(LLong-1));
    
    %F to G for Route 2
    for i = 64.5:-1:60.5
        lon = (4.*i)-67.5;
        longitude2 = [longitude2;lon];
        latitude2 = [latitude2;i];
    end
    
    lat_index2 = latitude2(:) - 59.5;
    longitude2 = round(round(longitude2(:),1));
    
    %Intermediary route
    SIT_Route2_t0  = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_t0(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_t0 = [SIT_Route2_t0; SIT_Route2_iter];
        end
    end
    
    SIT_Route2_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_tm(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_tm = [SIT_Route2_tm; SIT_Route2_iter];
        end
    end
    
    SIC_Route2_t0  = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_t0(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_t0 = [SIC_Route2_t0; SIC_Route2_iter];
        end
    end
    
    SIC_Route2_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_tm(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_tm = [SIC_Route2_tm; SIC_Route2_iter];
        end
    end
    
    %t_f now for 2050
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    SIT_Route1_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_tf(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_tf = [SIT_Route1_tf; SIT_Route1_iter];
        end
    end
    
    SIT_Route2_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_tf(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_tf = [SIT_Route2_tf; SIT_Route2_iter];
        end
    end
    
    
    SIC_Route1_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_tf(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_tf = [SIC_Route1_tf; SIC_Route1_iter];
        end
    end
    
    SIC_Route2_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_tf(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_tf = [SIC_Route2_tf; SIC_Route2_iter];
        end
    end
    
    %The TPP route is assumed to be a curve
    %Firstly the latitude increases in equal increments, beginning with the Arctic circle such that:
    %The ship is assumed to operate along the greenwich meridian for the first
    %half of the TPP hence longitude = 0
    
    %A to C - C being the North Pole
    
    latitude3 = [];
    for i = 60.5:1:89.5 % Changed to 60 otherwise the model won't run correctly
        latitude3 = [latitude3;i];
    end
    
    longitude3 = [];
    for i = 60.5:1:89.5
        lon = (-0.17241.*i)+15.93103;
        longitude3 = [longitude3;lon];
    end
    
    %C to E
    LLong = length(longitude3(:));
    LLat = length(latitude3(:));
    
    longitude3 = longitude3(1:(LLong-1));
    latitude3 = latitude3(1:(LLat-1));
    
    %New straight line equation
    for i = 89.5:-1:66.5
        lon = (-0.45652*i)+220.8587;
        longitude3 = [longitude3;lon];
        latitude3 = [latitude3;i];
    end
    
    LLong = length(longitude3(:));
    LLat = length(latitude3(:));
    
    longitude3 = longitude3(1:(LLong-1));
    latitude3 = latitude3(1:(LLat-1));
       
    %E to F for Route 3
    for i = 66.5:-1:64.5
        lon = 190.5;
        longitude3 = [longitude3;lon];
        latitude3 = [latitude3;i];
    end
    
    LLong = length(longitude3(:));
    LLat = length(latitude3(:));
    
    longitude3 = longitude3(1:(LLong-1));
    latitude3 = latitude3(1:(LLat-1));
    
    %F to G for Route 3
    for i = 64.5:-1:60.5
        lon = (4.*i)-67.5;
        longitude3 = [longitude3;lon];
        latitude3 = [latitude3;i];
    end
    
    lat_index3 = latitude3(:) - 59.5;
    longitude3 = round(longitude3(:));
    
    SIT_Route3_t0 = [];
    
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_t0(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIT_Route3_t0 = [SIT_Route3_t0; SIT_Route3_iter];
        end
    end
    
    SIT_Route3_tm = [];
    
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_tm(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIT_Route3_tm = [SIT_Route3_tm; SIT_Route3_iter];
        end
    end
    
    SIT_Route3_tf = [];
    
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_tf(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIT_Route3_tf = [SIT_Route3_tf; SIT_Route3_iter];
        end
    end
    
    SIC_Route3_t0 = [];
    
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_t0(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIC_Route3_t0 = [SIC_Route3_t0; SIC_Route3_iter];
        end
    end
    
    SIC_Route3_tm = [];
    
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_tm(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIC_Route3_tm = [SIC_Route3_tm; SIC_Route3_iter];
        end
    end
    
    SIC_Route3_tf = [];
    
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_tf(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIC_Route3_tf = [SIC_Route3_tf; SIC_Route3_iter];
        end
    end
    
    %Remove NANs and increase latitude as NaNs represent land
    Route1_NaNs = isnan(SIT_Route1_t0(1:length(SIT_Route1_t0)./12));
    latitude1(Route1_NaNs) = latitude1(Route1_NaNs)+1;
    lat_index1 = latitude1 - 59.5;
    
    SIT_Route1_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_t0(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_t0 = [SIT_Route1_t0; SIT_Route1_iter];
        end
    end
    
    SIT_Route1_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_tm(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_tm = [SIT_Route1_tm; SIT_Route1_iter];
        end
    end
    
    SIT_Route1_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_tf(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_tf = [SIT_Route1_tf; SIT_Route1_iter];
        end
    end
    
    Route1_NaNs = isnan(SIC_Route1_t0(1:length(SIC_Route1_t0)./12));
    latitude1(Route1_NaNs) = latitude1(Route1_NaNs)+1;
    lat_index1 = latitude1 - 59.5;
    
    SIC_Route1_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_t0(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_t0 = [SIC_Route1_t0; SIC_Route1_iter];
        end
    end
    
    SIC_Route1_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_tm(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_tm = [SIC_Route1_tm; SIC_Route1_iter];
        end
    end
    
    SIC_Route1_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_tf(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_tf = [SIC_Route1_tf; SIC_Route1_iter];
        end
    end
    
    Route1_NaNs = isnan(SIT_Route1_t0(1:length(SIT_Route1_t0)./12));
    latitude1(Route1_NaNs) = latitude1(Route1_NaNs)+1;
    lat_index1 = latitude1 - 59.5;
    
    SIT_Route1_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_t0(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_t0 = [SIT_Route1_t0; SIT_Route1_iter];
        end
    end
    
    SIT_Route1_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_tm(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_tm = [SIT_Route1_tm; SIT_Route1_iter];
        end
    end
    
    SIT_Route1_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_tf(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_tf = [SIT_Route1_tf; SIT_Route1_iter];
        end
    end
    
    Route1_NaNs = isnan(SIC_Route1_t0(1:length(SIC_Route1_t0)./12));
    latitude1(Route1_NaNs) = latitude1(Route1_NaNs)+1;
    lat_index1 = latitude1 - 59.5;
    
    SIC_Route1_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_t0(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_t0 = [SIC_Route1_t0; SIC_Route1_iter];
        end
    end
    
    SIC_Route1_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_tm(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_tm = [SIC_Route1_tm; SIC_Route1_iter];
        end
    end
    
    SIC_Route1_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_tf(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_tf = [SIC_Route1_tf; SIC_Route1_iter];
        end
    end
    
    Route1_NaNs = isnan(SIT_Route1_t0(1:length(SIT_Route1_t0)./12));
    latitude1(Route1_NaNs) = latitude1(Route1_NaNs)+1;
    lat_index1 = latitude1 - 59.5;
    
    SIT_Route1_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_t0(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_t0 = [SIT_Route1_t0; SIT_Route1_iter];
        end
    end
    
    SIT_Route1_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_tm(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_tm = [SIT_Route1_tm; SIT_Route1_iter];
        end
    end
    
    SIT_Route1_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIT_Route1_iter = SIT_tf(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIT_Route1_tf = [SIT_Route1_tf; SIT_Route1_iter];
        end
    end
    
    Route1_NaNs = isnan(SIC_Route1_t0(1:length(SIC_Route1_t0)./12));
    latitude1(Route1_NaNs) = latitude1(Route1_NaNs)+1;
    lat_index1 = latitude1 - 59.5;
    
    SIC_Route1_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_t0(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_t0 = [SIC_Route1_t0; SIC_Route1_iter];
        end
    end
    
    SIC_Route1_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_tm(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_tm = [SIC_Route1_tm; SIC_Route1_iter];
        end
    end
    
    SIC_Route1_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index1)
            SIC_Route1_iter = SIC_tf(((k-1).*z)+round(longitude1(i)),lat_index1(i));
            SIC_Route1_tf = [SIC_Route1_tf; SIC_Route1_iter];
        end
    end
    
    %Same for Route 2 
    Route2_NaNs = isnan(SIT_Route2_t0(1:length(SIT_Route2_t0)./12));
    latitude2(Route2_NaNs) = latitude2(Route2_NaNs)+1;
    lat_index2 = latitude2 - 59.5;
    
    SIT_Route2_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_t0(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_t0 = [SIT_Route2_t0; SIT_Route2_iter];
        end
    end
    
    SIT_Route2_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_tm(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_tm = [SIT_Route2_tm; SIT_Route2_iter];
        end
    end
    
    SIT_Route2_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_tf(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_tf = [SIT_Route2_tf; SIT_Route2_iter];
        end
    end
    
    Route2_NaNs = isnan(SIC_Route2_t0(1:length(SIC_Route2_t0)./12));
    latitude2(Route2_NaNs) = latitude2(Route2_NaNs)+1;
    lat_index2 = latitude2 - 59.5;
    
    SIC_Route2_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_t0(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_t0 = [SIC_Route2_t0; SIC_Route2_iter];
        end
    end
    
    SIC_Route2_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_tm(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_tm = [SIC_Route2_tm; SIC_Route2_iter];
        end
    end
    
    SIC_Route2_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_tf(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_tf = [SIC_Route2_tf; SIC_Route2_iter];
        end
    end
    
    Route2_NaNs = isnan(SIT_Route2_t0(1:length(SIT_Route2_t0)./12));
    latitude2(Route2_NaNs) = latitude2(Route2_NaNs)+1;
    lat_index2 = latitude2 - 59.5;
    
    SIT_Route2_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_t0(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_t0 = [SIT_Route2_t0; SIT_Route2_iter];
        end
    end
    
    SIT_Route2_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_tm(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_tm = [SIT_Route2_tm; SIT_Route2_iter];
        end
    end
    
    SIT_Route2_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_tf(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_tf = [SIT_Route2_tf; SIT_Route2_iter];
        end
    end
    
    Route2_NaNs = isnan(SIC_Route2_t0(1:length(SIC_Route2_t0)./12));
    latitude2(Route2_NaNs) = latitude2(Route2_NaNs)+1;
    lat_index2 = latitude2 - 59.5;
    
    SIC_Route2_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_t0(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_t0 = [SIC_Route2_t0; SIC_Route2_iter];
        end
    end
    
    SIC_Route2_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_tm(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_tm = [SIC_Route2_tm; SIC_Route2_iter];
        end
    end
    
    SIC_Route2_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_tf(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_tf = [SIC_Route2_tf; SIC_Route2_iter];
        end
    end
    
    Route2_NaNs = isnan(SIT_Route2_t0(1:length(SIT_Route2_t0)./12));
    latitude2(Route2_NaNs) = latitude2(Route2_NaNs)+1;
    lat_index2 = latitude2 - 59.5;
    
    SIT_Route2_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_t0(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_t0 = [SIT_Route2_t0; SIT_Route2_iter];
        end
    end
    
    SIT_Route2_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_tm(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_tm = [SIT_Route2_tm; SIT_Route2_iter];
        end
    end
    
    SIT_Route2_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIT_Route2_iter = SIT_tf(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIT_Route2_tf = [SIT_Route2_tf; SIT_Route2_iter];
        end
    end
    
    Route2_NaNs = isnan(SIC_Route2_t0(1:length(SIC_Route2_t0)./12));
    latitude2(Route2_NaNs) = latitude2(Route2_NaNs)+1;
    lat_index2 = latitude2 - 59.5;
    
    SIC_Route2_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_t0(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_t0 = [SIC_Route2_t0; SIC_Route2_iter];
        end
    end
    
    SIC_Route2_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_tm(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_tm = [SIC_Route2_tm; SIC_Route2_iter];
        end
    end
    
    SIC_Route2_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index2)
            SIC_Route2_iter = SIC_tf(((k-1).*z)+round(longitude2(i)),lat_index2(i));
            SIC_Route2_tf = [SIC_Route2_tf; SIC_Route2_iter];
        end
    end
    
    Route3_NaNs = isnan(SIT_Route3_t0(1:length(SIT_Route3_t0)./12));
    latitude3(Route3_NaNs) = latitude3(Route3_NaNs)+1;
    lat_index3 = latitude3 - 59.5;
    
    SIT_Route3_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_t0(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIT_Route3_t0 = [SIT_Route3_t0; SIT_Route3_iter];
        end
    end
    
    SIT_Route3_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_tm(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIT_Route3_tm = [SIT_Route3_tm; SIT_Route3_iter];
        end
    end
    
    SIT_Route3_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_tf(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIT_Route3_tf = [SIT_Route3_tf; SIT_Route3_iter];
        end
    end
    
    Route3_NaNs = isnan(SIC_Route3_t0(1:length(SIC_Route3_t0)./12));
    latitude3(Route3_NaNs) = latitude3(Route3_NaNs)+1;
    lat_index3 = latitude3 - 59.5;
    
     SIC_Route3_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_t0(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIC_Route3_t0 = [SIC_Route3_t0; SIC_Route3_iter];
        end
    end
    
    SIC_Route3_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_tm(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIC_Route3_tm = [SIC_Route3_tm; SIC_Route3_iter];
        end
    end
    
    SIC_Route3_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_tf(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIC_Route3_tf = [SIC_Route3_tf; SIC_Route3_iter];
        end
    end
    
    Route3_NaNs = isnan(SIT_Route3_t0(1:length(SIT_Route3_t0)./12));
    latitude3(Route3_NaNs) = latitude3(Route3_NaNs)+1;
    lat_index3 = latitude3 - 59.5;
    
    SIT_Route3_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_t0(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIT_Route3_t0 = [SIT_Route3_t0; SIT_Route3_iter];
        end
    end
    
    SIT_Route3_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_tm(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIT_Route3_tm = [SIT_Route3_tm; SIT_Route3_iter];
        end
    end
    
    SIT_Route3_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_tf(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIT_Route3_tf = [SIT_Route3_tf; SIT_Route3_iter];
        end
    end
    
    Route3_NaNs = isnan(SIC_Route3_t0(1:length(SIC_Route3_t0)./12));
    latitude3(Route3_NaNs) = latitude3(Route3_NaNs)+1;
    lat_index3 = latitude3 - 59.5;
    
     SIC_Route3_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_t0(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIC_Route3_t0 = [SIC_Route3_t0; SIC_Route3_iter];
        end
    end
    
    SIC_Route3_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_tm(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIC_Route3_tm = [SIC_Route3_tm; SIC_Route3_iter];
        end
    end
    
    SIC_Route3_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_tf(((k-1).*z)+round(longitude3(i)),lat_index3(i));
            SIC_Route3_tf = [SIC_Route3_tf; SIC_Route3_iter];
        end
    end
    
    Route3_NaNs = isnan(SIT_Route3_t0(1:length(SIT_Route3_t0)./12));
    latitude3(Route3_NaNs) = latitude3(Route3_NaNs)+1;
    lat_index3 = latitude3 - 59.5;
    
    SIT_Route3_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_t0(((k-1).*z)+longitude3(i),lat_index3(i));
            SIT_Route3_t0 = [SIT_Route3_t0; SIT_Route3_iter];
        end
    end
    
    SIT_Route3_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_tm(((k-1).*z)+longitude3(i),lat_index3(i));
            SIT_Route3_tm = [SIT_Route3_tm; SIT_Route3_iter];
        end
    end
    
    SIT_Route3_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIT_Route3_iter = SIT_tf(((k-1).*z)+longitude3(i),lat_index3(i));
            SIT_Route3_tf = [SIT_Route3_tf; SIT_Route3_iter];
        end
    end
    
    Route3_NaNs = isnan(SIC_Route3_t0(1:length(SIC_Route3_t0)./12));
    latitude3(Route3_NaNs) = latitude3(Route3_NaNs)+1;
    lat_index3 = latitude3 - 59.5;
    
    SIC_Route3_t0 = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_t0(((k-1).*z)+longitude3(i),lat_index3(i));
            SIC_Route3_t0 = [SIC_Route3_t0; SIC_Route3_iter];
        end
    end
    
    SIC_Route3_tm = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_tm(((k-1).*z)+longitude3(i),lat_index3(i));
            SIC_Route3_tm = [SIC_Route3_tm; SIC_Route3_iter];
        end
    end
    
    SIC_Route3_tf = [];
    for k = 1:1:12
        for i = 1:1:length(lat_index3)
            SIC_Route3_iter = SIC_tf(((k-1).*z)+longitude3(i),lat_index3(i));
            SIC_Route3_tf = [SIC_Route3_tf; SIC_Route3_iter];
        end
    end
    
    %See the articles Martin Bergstrom sent me on teams (Bergstrom 2016)
    SIT_Route1_t0 = SIT_Route1_t0.*SIC_Route1_t0;
    SIT_Route1_tm = SIT_Route1_tm.*SIC_Route1_tm;
    SIT_Route1_tf = SIT_Route1_tf.*SIC_Route1_tf;
    
    SIT_Route2_t0 = SIT_Route2_t0.*SIC_Route2_t0;
    SIT_Route2_tm = SIT_Route2_tm.*SIC_Route2_tm;
    SIT_Route2_tf = SIT_Route2_tf.*SIC_Route2_tf;
    
    SIT_Route3_t0 = SIT_Route3_t0.*SIC_Route3_t0;
    SIT_Route3_tm = SIT_Route3_tm.*SIC_Route3_tm;
    SIT_Route3_tf = SIT_Route3_tf.*SIC_Route3_tf;
    
    %t_0
    Route1_Risk_matrix_IceStrength_t0 = [];
    for i = 1:1:length(SIT_Route1_t0)
        if SIT_Route1_t0(i) < 0.0001
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.Ice_free(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.0001 && SIT_Route1_t0(i) <0.1
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.New_ice(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.1 && SIT_Route1_t0(i) <0.15
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.Grey_ice(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.15 && SIT_Route1_t0(i) <0.3
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.Grey_White_ice(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.3 && SIT_Route1_t0(i) <0.5
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.Thin_First_year_ice_first_stage(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.5 && SIT_Route1_t0(i) <0.7
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.Thin_First_year_Ice_Second_stage(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.7 && SIT_Route1_t0(i) <1
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.Medium_First_year_Ice_less_than_onem(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >=1  && SIT_Route1_t0(i) <1.2
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.Medium_First_year_Ice(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >=1.2  && SIT_Route1_t0(i) <2.5
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.Thick_First_Year_Ice(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >=2.5  && SIT_Route1_t0(i) <3
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.Second_Year_Ice(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >=3
            Route1_Risk_matrix_IceStrength_t0_iter = Risk_index.Multi_Year_Ice(1);
            Route1_Risk_matrix_IceStrength_t0 = [Route1_Risk_matrix_IceStrength_t0; Route1_Risk_matrix_IceStrength_t0_iter];
        end
    end
    
    Route1_Risk_matrix_NonIceStrength_t0 = [];
    for i = 1:1:length(SIT_Route1_t0)
        if SIT_Route1_t0(i) < 0.0001
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Ice_free(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.0001 && SIT_Route1_t0(i) <0.1
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.New_ice(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.1 && SIT_Route1_t0(i) <0.15
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Grey_ice(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.15 && SIT_Route1_t0(i) <0.3
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Grey_White_ice(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.3 && SIT_Route1_t0(i) <0.5
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Thin_First_year_ice_first_stage(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.5 && SIT_Route1_t0(i) <0.7
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Thin_First_year_Ice_Second_stage(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >= 0.7 && SIT_Route1_t0(i) <1
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Medium_First_year_Ice_less_than_onem(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >=1  && SIT_Route1_t0(i) <1.2
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Medium_First_year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >=1.2  && SIT_Route1_t0(i) <2.5
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Thick_First_Year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >=2.5  && SIT_Route1_t0(i) <3
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Second_Year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route1_t0(i) >=3
            Route1_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Multi_Year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_t0 = [Route1_Risk_matrix_NonIceStrength_t0; Route1_Risk_matrix_NonIceStrength_t0_iter];
        end
    end
    
    Route2_Risk_matrix_IceStrength_t0 = [];
    for i = 1:1:length(SIT_Route2_t0)
        if SIT_Route2_t0(i) < 0.0001
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.Ice_free(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.0001 && SIT_Route2_t0(i) <0.1
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.New_ice(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.1 && SIT_Route2_t0(i) <0.15
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.Grey_ice(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.15 && SIT_Route2_t0(i) <0.3
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.Grey_White_ice(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.3 && SIT_Route2_t0(i) <0.5
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.Thin_First_year_ice_first_stage(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.5 && SIT_Route2_t0(i) <0.7
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.Thin_First_year_Ice_Second_stage(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.7 && SIT_Route2_t0(i) <1
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.Medium_First_year_Ice_less_than_onem(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >=1  && SIT_Route2_t0(i) <1.2
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.Medium_First_year_Ice(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >=1.2  && SIT_Route2_t0(i) <2.5
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.Thick_First_Year_Ice(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >=2.5  && SIT_Route2_t0(i) <3
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.Second_Year_Ice(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >=3
            Route2_Risk_matrix_IceStrength_t0_iter = Risk_index.Multi_Year_Ice(1);
            Route2_Risk_matrix_IceStrength_t0 = [Route2_Risk_matrix_IceStrength_t0; Route2_Risk_matrix_IceStrength_t0_iter];
        end
    end
    
    Route2_Risk_matrix_NonIceStrength_t0 = [];
    for i = 1:1:length(SIT_Route2_t0)
        if SIT_Route2_t0(i) < 0.0001
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Ice_free(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.0001 && SIT_Route2_t0(i) <0.1
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.New_ice(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.1 && SIT_Route2_t0(i) <0.15
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Grey_ice(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.15 && SIT_Route2_t0(i) <0.3
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Grey_White_ice(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.3 && SIT_Route2_t0(i) <0.5
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Thin_First_year_ice_first_stage(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.5 && SIT_Route2_t0(i) <0.7
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Thin_First_year_Ice_Second_stage(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >= 0.7 && SIT_Route2_t0(i) <1
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Medium_First_year_Ice_less_than_onem(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >=1  && SIT_Route2_t0(i) <1.2
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Medium_First_year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >=1.2  && SIT_Route2_t0(i) <2.5
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Thick_First_Year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >=2.5  && SIT_Route2_t0(i) <3
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Second_Year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route2_t0(i) >=3
            Route2_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Multi_Year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_t0 = [Route2_Risk_matrix_NonIceStrength_t0; Route2_Risk_matrix_NonIceStrength_t0_iter];
        end
    end
    
    Route3_Risk_matrix_IceStrength_t0 = [];
    for i = 1:1:length(SIT_Route3_t0)
        if SIT_Route3_t0(i) < 0.0001
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.Ice_free(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.0001 && SIT_Route3_t0(i) <0.1
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.New_ice(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.1 && SIT_Route3_t0(i) <0.15
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.Grey_ice(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.15 && SIT_Route3_t0(i) <0.3
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.Grey_White_ice(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.3 && SIT_Route3_t0(i) <0.5
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.Thin_First_year_ice_first_stage(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.5 && SIT_Route3_t0(i) <0.7
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.Thin_First_year_Ice_Second_stage(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.7 && SIT_Route3_t0(i) <1
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.Medium_First_year_Ice_less_than_onem(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >=1  && SIT_Route3_t0(i) <1.2
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.Medium_First_year_Ice(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >=1.2  && SIT_Route3_t0(i) <2.5
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.Thick_First_Year_Ice(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >=2.5  && SIT_Route3_t0(i) <3
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.Second_Year_Ice(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >=3
            Route3_Risk_matrix_IceStrength_t0_iter = Risk_index.Multi_Year_Ice(1);
            Route3_Risk_matrix_IceStrength_t0 = [Route3_Risk_matrix_IceStrength_t0; Route3_Risk_matrix_IceStrength_t0_iter];
        end
    end
    
    Route3_Risk_matrix_NonIceStrength_t0 = [];
    for i = 1:1:length(SIT_Route3_t0)
        if SIT_Route3_t0(i) < 0.0001
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Ice_free(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.0001 && SIT_Route3_t0(i) <0.1
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.New_ice(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.1 && SIT_Route3_t0(i) <0.15
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Grey_ice(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.15 && SIT_Route3_t0(i) <0.3
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Grey_White_ice(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.3 && SIT_Route3_t0(i) <0.5
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Thin_First_year_ice_first_stage(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.5 && SIT_Route3_t0(i) <0.7
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Thin_First_year_Ice_Second_stage(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >= 0.7 && SIT_Route3_t0(i) <1
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Medium_First_year_Ice_less_than_onem(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >=1  && SIT_Route3_t0(i) <1.2
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Medium_First_year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >=1.2  && SIT_Route3_t0(i) <2.5
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Thick_First_Year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >=2.5  && SIT_Route3_t0(i) <3
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Second_Year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        elseif SIT_Route3_t0(i) >=3
            Route3_Risk_matrix_NonIceStrength_t0_iter = Risk_index.Multi_Year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_t0 = [Route3_Risk_matrix_NonIceStrength_t0; Route3_Risk_matrix_NonIceStrength_t0_iter];
        end
    end
    
    %t_m
    Route1_Risk_matrix_IceStrength_tm = [];
    for i = 1:1:length(SIT_Route1_tm)
        if SIT_Route1_tm(i) < 0.0001
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.Ice_free(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.0001 && SIT_Route1_tm(i) <0.1
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.New_ice(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.1 && SIT_Route1_tm(i) <0.15
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.Grey_ice(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.15 && SIT_Route1_tm(i) <0.3
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.Grey_White_ice(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.3 && SIT_Route1_tm(i) <0.5
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.Thin_First_year_ice_first_stage(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.5 && SIT_Route1_tm(i) <0.7
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.Thin_First_year_Ice_Second_stage(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.7 && SIT_Route1_tm(i) <1
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.Medium_First_year_Ice_less_than_onem(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >=1  && SIT_Route1_tm(i) <1.2
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.Medium_First_year_Ice(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >=1.2  && SIT_Route1_tm(i) <2.5
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.Thick_First_Year_Ice(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >=2.5  && SIT_Route1_tm(i) <3
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.Second_Year_Ice(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >=3
            Route1_Risk_matrix_IceStrength_tm_iter = Risk_index.Multi_Year_Ice(1);
            Route1_Risk_matrix_IceStrength_tm = [Route1_Risk_matrix_IceStrength_tm; Route1_Risk_matrix_IceStrength_tm_iter];
        end
    end
    
    Route1_Risk_matrix_NonIceStrength_tm = [];
    for i = 1:1:length(SIT_Route1_tm)
        if SIT_Route1_tm(i) < 0.0001
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Ice_free(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.0001 && SIT_Route1_tm(i) <0.1
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.New_ice(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.1 && SIT_Route1_tm(i) <0.15
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Grey_ice(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.15 && SIT_Route1_tm(i) <0.3
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Grey_White_ice(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.3 && SIT_Route1_tm(i) <0.5
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Thin_First_year_ice_first_stage(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.5 && SIT_Route1_tm(i) <0.7
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Thin_First_year_Ice_Second_stage(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >= 0.7 && SIT_Route1_tm(i) <1
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Medium_First_year_Ice_less_than_onem(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >=1  && SIT_Route1_tm(i) <1.2
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Medium_First_year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >=1.2  && SIT_Route1_tm(i) <2.5
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Thick_First_Year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >=2.5  && SIT_Route1_tm(i) <3
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Second_Year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route1_tm(i) >=3
            Route1_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Multi_Year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_tm = [Route1_Risk_matrix_NonIceStrength_tm; Route1_Risk_matrix_NonIceStrength_tm_iter];
        end
    end
    
    Route2_Risk_matrix_IceStrength_tm = [];
    for i = 1:1:length(SIT_Route2_tm)
        if SIT_Route2_tm(i) < 0.0001
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.Ice_free(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.0001 && SIT_Route2_tm(i) <0.1
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.New_ice(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.1 && SIT_Route2_tm(i) <0.15
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.Grey_ice(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.15 && SIT_Route2_tm(i) <0.3
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.Grey_White_ice(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.3 && SIT_Route2_tm(i) <0.5
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.Thin_First_year_ice_first_stage(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.5 && SIT_Route2_tm(i) <0.7
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.Thin_First_year_Ice_Second_stage(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.7 && SIT_Route2_tm(i) <1
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.Medium_First_year_Ice_less_than_onem(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >=1  && SIT_Route2_tm(i) <1.2
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.Medium_First_year_Ice(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >=1.2  && SIT_Route2_tm(i) <2.5
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.Thick_First_Year_Ice(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >=2.5  && SIT_Route2_tm(i) <3
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.Second_Year_Ice(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >=3
            Route2_Risk_matrix_IceStrength_tm_iter = Risk_index.Multi_Year_Ice(1);
            Route2_Risk_matrix_IceStrength_tm = [Route2_Risk_matrix_IceStrength_tm; Route2_Risk_matrix_IceStrength_tm_iter];
        end
    end
    
    Route2_Risk_matrix_NonIceStrength_tm = [];
    for i = 1:1:length(SIT_Route2_tm)
        if SIT_Route2_tm(i) < 0.0001
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Ice_free(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.0001 && SIT_Route2_tm(i) <0.1
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.New_ice(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.1 && SIT_Route2_tm(i) <0.15
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Grey_ice(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.15 && SIT_Route2_tm(i) <0.3
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Grey_White_ice(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.3 && SIT_Route2_tm(i) <0.5
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Thin_First_year_ice_first_stage(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.5 && SIT_Route2_tm(i) <0.7
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Thin_First_year_Ice_Second_stage(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >= 0.7 && SIT_Route2_tm(i) <1
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Medium_First_year_Ice_less_than_onem(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >=1  && SIT_Route2_tm(i) <1.2
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Medium_First_year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >=1.2  && SIT_Route2_tm(i) <2.5
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Thick_First_Year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >=2.5  && SIT_Route2_tm(i) <3
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Second_Year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route2_tm(i) >=3
            Route2_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Multi_Year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_tm = [Route2_Risk_matrix_NonIceStrength_tm; Route2_Risk_matrix_NonIceStrength_tm_iter];
        end
    end
    
    Route3_Risk_matrix_IceStrength_tm = [];
    for i = 1:1:length(SIT_Route3_tm)
        if SIT_Route3_tm(i) < 0.0001
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.Ice_free(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.0001 && SIT_Route3_tm(i) <0.1
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.New_ice(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.1 && SIT_Route3_tm(i) <0.15
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.Grey_ice(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.15 && SIT_Route3_tm(i) <0.3
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.Grey_White_ice(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.3 && SIT_Route3_tm(i) <0.5
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.Thin_First_year_ice_first_stage(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.5 && SIT_Route3_tm(i) <0.7
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.Thin_First_year_Ice_Second_stage(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.7 && SIT_Route3_tm(i) <1
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.Medium_First_year_Ice_less_than_onem(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >=1  && SIT_Route3_tm(i) <1.2
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.Medium_First_year_Ice(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >=1.2  && SIT_Route3_tm(i) <2.5
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.Thick_First_Year_Ice(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >=2.5  && SIT_Route3_tm(i) <3
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.Second_Year_Ice(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >=3
            Route3_Risk_matrix_IceStrength_tm_iter = Risk_index.Multi_Year_Ice(1);
            Route3_Risk_matrix_IceStrength_tm = [Route3_Risk_matrix_IceStrength_tm; Route3_Risk_matrix_IceStrength_tm_iter];
        end
    end
    
    Route3_Risk_matrix_NonIceStrength_tm = [];
    for i = 1:1:length(SIT_Route3_tm)
        if SIT_Route3_tm(i) < 0.0001
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Ice_free(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.0001 && SIT_Route3_tm(i) <0.1
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.New_ice(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.1 && SIT_Route3_tm(i) <0.15
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Grey_ice(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.15 && SIT_Route3_tm(i) <0.3
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Grey_White_ice(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.3 && SIT_Route3_tm(i) <0.5
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Thin_First_year_ice_first_stage(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.5 && SIT_Route3_tm(i) <0.7
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Thin_First_year_Ice_Second_stage(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >= 0.7 && SIT_Route3_tm(i) <1
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Medium_First_year_Ice_less_than_onem(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >=1  && SIT_Route3_tm(i) <1.2
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Medium_First_year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >=1.2  && SIT_Route3_tm(i) <2.5
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Thick_First_Year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >=2.5  && SIT_Route3_tm(i) <3
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Second_Year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        elseif SIT_Route3_tm(i) >=3
            Route3_Risk_matrix_NonIceStrength_tm_iter = Risk_index.Multi_Year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_tm = [Route3_Risk_matrix_NonIceStrength_tm; Route3_Risk_matrix_NonIceStrength_tm_iter];
        end
    end
    
    %t_f
    Route1_Risk_matrix_IceStrength_tf = [];
    for i = 1:1:length(SIT_Route1_tf)
        if SIT_Route1_tf(i) < 0.0001
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.Ice_free(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.0001 && SIT_Route1_tf(i) <0.1
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.New_ice(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.1 && SIT_Route1_tf(i) <0.15
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.Grey_ice(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.15 && SIT_Route1_tf(i) <0.3
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.Grey_White_ice(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.3 && SIT_Route1_tf(i) <0.5
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.Thin_First_year_ice_first_stage(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.5 && SIT_Route1_tf(i) <0.7
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.Thin_First_year_Ice_Second_stage(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.7 && SIT_Route1_tf(i) <1
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.Medium_First_year_Ice_less_than_onem(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >=1  && SIT_Route1_tf(i) <1.2
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.Medium_First_year_Ice(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >=1.2  && SIT_Route1_tf(i) <2.5
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.Thick_First_Year_Ice(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >=2.5  && SIT_Route1_tf(i) <3
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.Second_Year_Ice(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >=3
            Route1_Risk_matrix_IceStrength_tf_iter = Risk_index.Multi_Year_Ice(1);
            Route1_Risk_matrix_IceStrength_tf = [Route1_Risk_matrix_IceStrength_tf; Route1_Risk_matrix_IceStrength_tf_iter];
        end
    end
    
    Route1_Risk_matrix_NonIceStrength_tf = [];
    for i = 1:1:length(SIT_Route1_tf)
        if SIT_Route1_tf(i) < 0.0001
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Ice_free(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.0001 && SIT_Route1_tf(i) <0.1
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.New_ice(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.1 && SIT_Route1_tf(i) <0.15
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Grey_ice(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.15 && SIT_Route1_tf(i) <0.3
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Grey_White_ice(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.3 && SIT_Route1_tf(i) <0.5
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Thin_First_year_ice_first_stage(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.5 && SIT_Route1_tf(i) <0.7
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Thin_First_year_Ice_Second_stage(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >= 0.7 && SIT_Route1_tf(i) <1
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Medium_First_year_Ice_less_than_onem(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >=1  && SIT_Route1_tf(i) <1.2
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Medium_First_year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >=1.2  && SIT_Route1_tf(i) <2.5
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Thick_First_Year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >=2.5  && SIT_Route1_tf(i) <3
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Second_Year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route1_tf(i) >=3
            Route1_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Multi_Year_Ice(2);
            Route1_Risk_matrix_NonIceStrength_tf = [Route1_Risk_matrix_NonIceStrength_tf; Route1_Risk_matrix_NonIceStrength_tf_iter];
        end
    end
    
    Route2_Risk_matrix_IceStrength_tf = [];
    for i = 1:1:length(SIT_Route2_tf)
        if SIT_Route2_tf(i) < 0.0001
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.Ice_free(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.0001 && SIT_Route2_tf(i) <0.1
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.New_ice(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.1 && SIT_Route2_tf(i) <0.15
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.Grey_ice(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.15 && SIT_Route2_tf(i) <0.3
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.Grey_White_ice(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.3 && SIT_Route2_tf(i) <0.5
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.Thin_First_year_ice_first_stage(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.5 && SIT_Route2_tf(i) <0.7
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.Thin_First_year_Ice_Second_stage(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.7 && SIT_Route2_tf(i) <1
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.Medium_First_year_Ice_less_than_onem(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >=1  && SIT_Route2_tf(i) <1.2
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.Medium_First_year_Ice(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >=1.2  && SIT_Route2_tf(i) <2.5
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.Thick_First_Year_Ice(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >=2.5  && SIT_Route2_tf(i) <3
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.Second_Year_Ice(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >=3
            Route2_Risk_matrix_IceStrength_tf_iter = Risk_index.Multi_Year_Ice(1);
            Route2_Risk_matrix_IceStrength_tf = [Route2_Risk_matrix_IceStrength_tf; Route2_Risk_matrix_IceStrength_tf_iter];
        end
    end
    
    Route2_Risk_matrix_NonIceStrength_tf = [];
    for i = 1:1:length(SIT_Route2_tf)
        if SIT_Route2_tf(i) < 0.0001
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Ice_free(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.0001 && SIT_Route2_tf(i) <0.1
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.New_ice(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.1 && SIT_Route2_tf(i) <0.15
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Grey_ice(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.15 && SIT_Route2_tf(i) <0.3
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Grey_White_ice(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.3 && SIT_Route2_tf(i) <0.5
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Thin_First_year_ice_first_stage(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.5 && SIT_Route2_tf(i) <0.7
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Thin_First_year_Ice_Second_stage(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >= 0.7 && SIT_Route2_tf(i) <1
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Medium_First_year_Ice_less_than_onem(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >=1  && SIT_Route2_tf(i) <1.2
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Medium_First_year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >=1.2  && SIT_Route2_tf(i) <2.5
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Thick_First_Year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >=2.5  && SIT_Route2_tf(i) <3
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Second_Year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route2_tf(i) >=3
            Route2_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Multi_Year_Ice(2);
            Route2_Risk_matrix_NonIceStrength_tf = [Route2_Risk_matrix_NonIceStrength_tf; Route2_Risk_matrix_NonIceStrength_tf_iter];
        end
    end
    
    Route3_Risk_matrix_IceStrength_tf = [];
    for i = 1:1:length(SIT_Route3_tf)
        if SIT_Route3_tf(i) < 0.0001
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.Ice_free(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.0001 && SIT_Route3_tf(i) <0.1
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.New_ice(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.1 && SIT_Route3_tf(i) <0.15
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.Grey_ice(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.15 && SIT_Route3_tf(i) <0.3
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.Grey_White_ice(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.3 && SIT_Route3_tf(i) <0.5
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.Thin_First_year_ice_first_stage(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.5 && SIT_Route3_tf(i) <0.7
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.Thin_First_year_Ice_Second_stage(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.7 && SIT_Route3_tf(i) <1
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.Medium_First_year_Ice_less_than_onem(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >=1  && SIT_Route3_tf(i) <1.2
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.Medium_First_year_Ice(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >=1.2  && SIT_Route3_tf(i) <2.5
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.Thick_First_Year_Ice(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >=2.5  && SIT_Route3_tf(i) <3
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.Second_Year_Ice(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >=3
            Route3_Risk_matrix_IceStrength_tf_iter = Risk_index.Multi_Year_Ice(1);
            Route3_Risk_matrix_IceStrength_tf = [Route3_Risk_matrix_IceStrength_tf; Route3_Risk_matrix_IceStrength_tf_iter];
        end
    end
    
    Route3_Risk_matrix_NonIceStrength_tf = [];
    for i = 1:1:length(SIT_Route3_tf)
        if SIT_Route3_tf(i) < 0.0001
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Ice_free(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.0001 && SIT_Route3_tf(i) <0.1
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.New_ice(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.1 && SIT_Route3_tf(i) <0.15
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Grey_ice(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.15 && SIT_Route3_tf(i) <0.3
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Grey_White_ice(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.3 && SIT_Route3_tf(i) <0.5
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Thin_First_year_ice_first_stage(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.5 && SIT_Route3_tf(i) <0.7
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Thin_First_year_Ice_Second_stage(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >= 0.7 && SIT_Route3_tf(i) <1
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Medium_First_year_Ice_less_than_onem(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >=1  && SIT_Route3_tf(i) <1.2
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Medium_First_year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >=1.2  && SIT_Route3_tf(i) <2.5
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Thick_First_Year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >=2.5  && SIT_Route3_tf(i) <3
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Second_Year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        elseif SIT_Route3_tf(i) >=3
            Route3_Risk_matrix_NonIceStrength_tf_iter = Risk_index.Multi_Year_Ice(2);
            Route3_Risk_matrix_NonIceStrength_tf = [Route3_Risk_matrix_NonIceStrength_tf; Route3_Risk_matrix_NonIceStrength_tf_iter];
        end
    end
    
    %According to AIRSS I don't have to consider ice concentrations less
    %than 10%     
%     SIC_Route1_t0(SIC_Route1_t0 < 0.1) = 0;
%     SIC_Route1_tm(SIC_Route1_tm < 0.1) = 0;
%     SIC_Route1_tf(SIC_Route1_tf < 0.1) = 0;
%     
%     SIC_Route2_t0(SIC_Route2_t0 < 0.1) = 0;
%     SIC_Route2_tm(SIC_Route2_tm < 0.1) = 0;
%     SIC_Route2_tf(SIC_Route2_tf < 0.1) = 0;
%     
%     SIC_Route3_t0(SIC_Route3_t0 < 0.1) = 0;
%     SIC_Route3_tm(SIC_Route3_tm < 0.1) = 0;
%     SIC_Route3_tf(SIC_Route3_tf < 0.1) = 0;
    
%     %See the articles Martin Bergstrom sent me on teams (Bergstrom 2016)
%     SIT_Route1_t0 = SIT_Route1_t0.*SIC_Route1_t0;
%     SIT_Route1_tm = SIT_Route1_tm.*SIC_Route1_tm;
%     SIT_Route1_tf = SIT_Route1_tf.*SIC_Route1_tf;
%     
%     SIT_Route2_t0 = SIT_Route2_t0.*SIC_Route2_t0;
%     SIT_Route2_tm = SIT_Route2_tm.*SIC_Route2_tm;
%     SIT_Route2_tf = SIT_Route2_tf.*SIC_Route2_tf;
%     
%     SIT_Route3_t0 = SIT_Route3_t0.*SIC_Route3_t0;
%     SIT_Route3_tm = SIT_Route3_tm.*SIC_Route3_tm;
%     SIT_Route3_tf = SIT_Route3_tf.*SIC_Route3_tf;
%     
%     %Multiply with the sea ice concentrations
%     Route1_Risk_matrix_IceStrength_t0 = Route1_Risk_matrix_IceStrength_t0.*SIC_Route1_t0;
%     Route1_Risk_matrix_IceStrength_tm = Route1_Risk_matrix_IceStrength_tm.*SIC_Route1_tm;
%     Route1_Risk_matrix_IceStrength_tf = Route1_Risk_matrix_IceStrength_tf.*SIC_Route1_tf;
%     
%     Route2_Risk_matrix_IceStrength_t0 = Route2_Risk_matrix_IceStrength_t0.*SIC_Route2_t0;
%     Route2_Risk_matrix_IceStrength_tm = Route2_Risk_matrix_IceStrength_tm.*SIC_Route2_tm;
%     Route2_Risk_matrix_IceStrength_tf = Route2_Risk_matrix_IceStrength_tf.*SIC_Route2_tf;
%     
%     Route3_Risk_matrix_IceStrength_t0 = Route3_Risk_matrix_IceStrength_t0.*SIC_Route3_t0;
%     Route3_Risk_matrix_IceStrength_tm = Route3_Risk_matrix_IceStrength_tm.*SIC_Route3_tm;
%     Route3_Risk_matrix_IceStrength_tf = Route3_Risk_matrix_IceStrength_tf.*SIC_Route3_tf;
%     
%     Route1_Risk_matrix_NonIceStrength_t0 = Route1_Risk_matrix_NonIceStrength_t0.*SIC_Route1_t0;
%     Route1_Risk_matrix_NonIceStrength_tm = Route1_Risk_matrix_NonIceStrength_tm.*SIC_Route1_tm;
%     Route1_Risk_matrix_NonIceStrength_tf = Route1_Risk_matrix_NonIceStrength_tf.*SIC_Route1_tf;
%     
%     Route2_Risk_matrix_NonIceStrength_t0 = Route2_Risk_matrix_NonIceStrength_t0.*SIC_Route2_t0;
%     Route2_Risk_matrix_NonIceStrength_tm = Route2_Risk_matrix_NonIceStrength_tm.*SIC_Route2_tm;
%     Route2_Risk_matrix_NonIceStrength_tf = Route2_Risk_matrix_NonIceStrength_tf.*SIC_Route2_tf;
%     
%     Route3_Risk_matrix_NonIceStrength_t0 = Route3_Risk_matrix_NonIceStrength_t0.*SIC_Route3_t0;
%     Route3_Risk_matrix_NonIceStrength_tm = Route3_Risk_matrix_NonIceStrength_tm.*SIC_Route3_tm;
%     Route3_Risk_matrix_NonIceStrength_tf = Route3_Risk_matrix_NonIceStrength_tf.*SIC_Route3_tf;
    
    %If one part of the Arctic route is covered in ice then a Non-ice
    %strengthened ship cannot traverse that route
    Route1_Risk_matrix_NonIceStrength_t0(Route1_Risk_matrix_NonIceStrength_t0<0) = -100000; %-10000 to make the route significantly unviable
    Route1_Risk_matrix_NonIceStrength_tm(Route1_Risk_matrix_NonIceStrength_tm<0) = -100000;
    Route1_Risk_matrix_NonIceStrength_tf(Route1_Risk_matrix_NonIceStrength_tf<0) = -100000;
    
    %Sum every 12th of the matrix (12 calendar months in a given year)
    L1 = length(Route1_Risk_matrix_NonIceStrength_t0);
    
    Route1NonIceStrengthfeasibility_t0 = [];
    for i = 1:1:12
        Route1NonIceStrengthfeasibility_t0_iter = Route1_Risk_matrix_NonIceStrength_t0(((i-1)*(L1/12))+1:i*(L1/12));
        Route1NonIceStrengthfeasibility_t0_iter = sum(Route1NonIceStrengthfeasibility_t0_iter);
        Route1NonIceStrengthfeasibility_t0 = [Route1NonIceStrengthfeasibility_t0;Route1NonIceStrengthfeasibility_t0_iter];
    end
    
    Route1NonIceStrengthfeasibility_tm = [];
    for i = 1:1:12
        Route1NonIceStrengthfeasibility_tm_iter = Route1_Risk_matrix_NonIceStrength_tm(((i-1)*(L1/12))+1:i*(L1/12));
        Route1NonIceStrengthfeasibility_tm_iter = sum(Route1NonIceStrengthfeasibility_tm_iter);
        Route1NonIceStrengthfeasibility_tm = [Route1NonIceStrengthfeasibility_tm;Route1NonIceStrengthfeasibility_tm_iter];
    end
    
    Route1NonIceStrengthfeasibility_tf = [];
    for i = 1:1:12
        Route1NonIceStrengthfeasibility_tf_iter = Route1_Risk_matrix_NonIceStrength_tf(((i-1)*(L1/12))+1:i*(L1/12));
        Route1NonIceStrengthfeasibility_tf_iter = sum(Route1NonIceStrengthfeasibility_tf_iter);
        Route1NonIceStrengthfeasibility_tf = [Route1NonIceStrengthfeasibility_tf;Route1NonIceStrengthfeasibility_tf_iter];
    end
    
    Route2_Risk_matrix_NonIceStrength_t0(Route2_Risk_matrix_NonIceStrength_t0<0) = -10000;
    Route2_Risk_matrix_NonIceStrength_tm(Route2_Risk_matrix_NonIceStrength_tm<0) = -10000;
    Route2_Risk_matrix_NonIceStrength_tf(Route2_Risk_matrix_NonIceStrength_tf<0) = -10000;
    
    L2 = length(Route2_Risk_matrix_NonIceStrength_tm);
    
    Route2NonIceStrengthfeasibility_t0 = [];
    for i = 1:1:12
        Route2NonIceStrengthfeasibility_t0_iter = Route2_Risk_matrix_NonIceStrength_t0(((i-1)*(L2/12))+1:i*(L2/12));
        Route2NonIceStrengthfeasibility_t0_iter = sum(Route2NonIceStrengthfeasibility_t0_iter);
        Route2NonIceStrengthfeasibility_t0 = [Route2NonIceStrengthfeasibility_t0;Route2NonIceStrengthfeasibility_t0_iter];
    end
    
    Route2NonIceStrengthfeasibility_tm = [];
    for i = 1:1:12
        Route2NonIceStrengthfeasibility_tm_iter = Route2_Risk_matrix_NonIceStrength_tm(((i-1)*(L2/12))+1:i*(L2/12));
        Route2NonIceStrengthfeasibility_tm_iter = sum(Route2NonIceStrengthfeasibility_tm_iter);
        Route2NonIceStrengthfeasibility_tm = [Route2NonIceStrengthfeasibility_tm;Route2NonIceStrengthfeasibility_tm_iter];
    end
    
    Route2NonIceStrengthfeasibility_tf = [];
    for i = 1:1:12
        Route2NonIceStrengthfeasibility_tf_iter = Route2_Risk_matrix_NonIceStrength_tf(((i-1)*(L2/12))+1:i*(L2/12));
        Route2NonIceStrengthfeasibility_tf_iter = sum(Route2NonIceStrengthfeasibility_tf_iter);
        Route2NonIceStrengthfeasibility_tf = [Route2NonIceStrengthfeasibility_tf;Route2NonIceStrengthfeasibility_tf_iter];
    end
    
    Route3_Risk_matrix_NonIceStrength_t0(Route3_Risk_matrix_NonIceStrength_t0<0) = -100000;
    Route3_Risk_matrix_NonIceStrength_tm(Route3_Risk_matrix_NonIceStrength_tm<0) = -100000;
    Route3_Risk_matrix_NonIceStrength_tf(Route3_Risk_matrix_NonIceStrength_tf<0) = -100000;
    
    L3 = length(Route3_Risk_matrix_NonIceStrength_tf);
    
    Route3NonIceStrengthfeasibility_t0 = [];
    for i = 1:1:12
        Route3NonIceStrengthfeasibility_t0_iter = Route3_Risk_matrix_NonIceStrength_t0(((i-1)*(L3/12))+1:i*(L3/12));
        Route3NonIceStrengthfeasibility_t0_iter = sum(Route3NonIceStrengthfeasibility_t0_iter);
        Route3NonIceStrengthfeasibility_t0 = [Route3NonIceStrengthfeasibility_t0;Route3NonIceStrengthfeasibility_t0_iter];
    end
    
    Route3NonIceStrengthfeasibility_tm = [];
    for i = 1:1:12
        Route3NonIceStrengthfeasibility_tm_iter = Route3_Risk_matrix_NonIceStrength_tm(((i-1)*(L3/12))+1:i*(L3/12));
        Route3NonIceStrengthfeasibility_tm_iter = sum(Route3NonIceStrengthfeasibility_tm_iter);
        Route3NonIceStrengthfeasibility_tm = [Route3NonIceStrengthfeasibility_tm;Route3NonIceStrengthfeasibility_tm_iter];
    end
    
    Route3NonIceStrengthfeasibility_tf = [];
    for i = 1:1:12
        Route3NonIceStrengthfeasibility_tf_iter = Route3_Risk_matrix_NonIceStrength_tf(((i-1)*(L3/12))+1:i*(L3/12));
        Route3NonIceStrengthfeasibility_tf_iter = sum(Route3NonIceStrengthfeasibility_tf_iter);
        Route3NonIceStrengthfeasibility_tf = [Route3NonIceStrengthfeasibility_tf;Route3NonIceStrengthfeasibility_tf_iter];
    end
    
    Route1NonIceStrengthfeasibility_t0(Route1NonIceStrengthfeasibility_t0<0) = 0;
    Route1NonIceStrengthfeasibility_t0(Route1NonIceStrengthfeasibility_t0>0) = 1;
    Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_t0 = repmat(Route1NonIceStrengthfeasibility_t0,1,1);
    
    Route1NonIceStrengthfeasibility_tm(Route1NonIceStrengthfeasibility_tm<0) = 0;
    Route1NonIceStrengthfeasibility_tm(Route1NonIceStrengthfeasibility_tm>0) = 1;
    Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_tm = repmat(Route1NonIceStrengthfeasibility_tm,1,1);
    
    Route1NonIceStrengthfeasibility_tf(Route1NonIceStrengthfeasibility_tf<0) = 0;
    Route1NonIceStrengthfeasibility_tf(Route1NonIceStrengthfeasibility_tf>0) = 1;
    Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_tf = repmat(Route1NonIceStrengthfeasibility_tf,1,1);
    
    Route2NonIceStrengthfeasibility_t0(Route2NonIceStrengthfeasibility_t0<0) = 0;
    Route2NonIceStrengthfeasibility_t0(Route2NonIceStrengthfeasibility_t0>0) = 1;
    Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_t0 = repmat(Route2NonIceStrengthfeasibility_t0,1,1);
    
    Route2NonIceStrengthfeasibility_tm(Route2NonIceStrengthfeasibility_tm<0) = 0;
    Route2NonIceStrengthfeasibility_tm(Route2NonIceStrengthfeasibility_tm>0) = 1;
    Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_tm = repmat(Route2NonIceStrengthfeasibility_tm,1,1);
    
    Route2NonIceStrengthfeasibility_tf(Route2NonIceStrengthfeasibility_tf<0) = 0;
    Route2NonIceStrengthfeasibility_tf(Route2NonIceStrengthfeasibility_tf>0) = 1;
    Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_tf = repmat(Route2NonIceStrengthfeasibility_tf,1,1);
    
    Route3NonIceStrengthfeasibility_t0(Route3NonIceStrengthfeasibility_t0<0) = 0;
    Route3NonIceStrengthfeasibility_t0(Route3NonIceStrengthfeasibility_t0>0) = 1;
    Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_t0 = repmat(Route3NonIceStrengthfeasibility_t0,1,1);
    
    Route3NonIceStrengthfeasibility_tm(Route3NonIceStrengthfeasibility_tm<0) = 0;
    Route3NonIceStrengthfeasibility_tm(Route3NonIceStrengthfeasibility_tm>0) = 1;
    Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_tm = repmat(Route3NonIceStrengthfeasibility_tm,1,1);
    
    Route3NonIceStrengthfeasibility_tf(Route3NonIceStrengthfeasibility_tf<0) = 0;
    Route3NonIceStrengthfeasibility_tf(Route3NonIceStrengthfeasibility_tf>0) = 1;
    Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_tf = repmat(Route3NonIceStrengthfeasibility_tf,1,1);
    
    %The ship speed for certain zones need to be modified according to the
    %POLARIS recommendations
    %To find out how many days a PC7 ship would need an icebreaker escort, I
    %need to know for how long it will be operating in risky waters
    Route1_Icebreaking_days_t0 = Route1_Risk_matrix_IceStrength_t0;
    Route1_Icebreaking_days_tm = Route1_Risk_matrix_IceStrength_tm;
    Route1_Icebreaking_days_tf = Route1_Risk_matrix_IceStrength_tf;
    
    Route2_Icebreaking_days_t0 = Route2_Risk_matrix_IceStrength_t0;
    Route2_Icebreaking_days_tm = Route2_Risk_matrix_IceStrength_tm;
    Route2_Icebreaking_days_tf = Route2_Risk_matrix_IceStrength_tf;
    
    Route3_Icebreaking_days_t0 = Route3_Risk_matrix_IceStrength_t0;
    Route3_Icebreaking_days_tm = Route3_Risk_matrix_IceStrength_tm;
    Route3_Icebreaking_days_tf = Route3_Risk_matrix_IceStrength_tf;
    
    %Alter values to see which part of the route needs to have an icebreaker
    Route1_Icebreaking_days_t0(Route1_Icebreaking_days_t0>=0) = 0;
    Route1_Icebreaking_days_t0(Route1_Icebreaking_days_t0<0) = 1;
    
    Route1_Icebreaking_days_tm(Route1_Icebreaking_days_tm>=0) = 0;
    Route1_Icebreaking_days_tm(Route1_Icebreaking_days_tm<0) = 1;
    
    Route1_Icebreaking_days_tf(Route1_Icebreaking_days_tf>=0) = 0;
    Route1_Icebreaking_days_tf(Route1_Icebreaking_days_tf<0) = 1;
    
    Route2_Icebreaking_days_t0(Route2_Icebreaking_days_t0>=0) = 0;
    Route2_Icebreaking_days_t0(Route2_Icebreaking_days_t0<0) = 1;
    
    Route2_Icebreaking_days_tm(Route2_Icebreaking_days_tm>=0) = 0;
    Route2_Icebreaking_days_tm(Route2_Icebreaking_days_tm<0) = 1;
    
    Route2_Icebreaking_days_tf(Route2_Icebreaking_days_tf>=0) = 0;
    Route2_Icebreaking_days_tf(Route2_Icebreaking_days_tf<0) = 1;
    
    Route3_Icebreaking_days_t0(Route3_Icebreaking_days_t0>=0) = 0;
    Route3_Icebreaking_days_t0(Route3_Icebreaking_days_t0<0) = 1;
    
    Route3_Icebreaking_days_tm(Route3_Icebreaking_days_tm>=0) = 0;
    Route3_Icebreaking_days_tm(Route3_Icebreaking_days_tm<0) = 1;
    
    Route3_Icebreaking_days_tf(Route3_Icebreaking_days_tf>=0) = 0;
    Route3_Icebreaking_days_tf(Route3_Icebreaking_days_tf<0) = 1;
    
    %Calculate the length of the Arctic routes
    
    Earth_radius = 0.539957.*6378; %km to NM
    
    %Using the spherical law of cosines I can work out the distance travelled
    %in radians between two points on Earth
    %                 Longitude is equidistant between A and E
    %Differences between Route 1 and Route 2, in Route 3 point C is the North
    %Pole
    %
    %       Longitude is equidistant between A and E
    %
    %
    %
    %                 X (C) - North Pole
    %
    %
    %  (40,84)G_________________H (162,84)
    %        /                  \
    %       /                    \
    %      /                      \
    %   A /                        \ E
    %    (40,77)  ___________  (162,77)
    %           / B      R1   D \
    %          /                 \
    %         /                   \
    %        /                     \
    %       /                       \(-171,65)
    %      /                        / E
    %     /                        /
    %    /                        /
    %   /                        /
    %  /                        /
    % /                        /
    %/ A                      / F(174,60)
    %(5,60)
    
    %Route1
    longitude1 = longitude1 - 0.5;
    Unit_Central_Angle_Route1 = [];
    for i = 1:1:length(latitude1)
        if i+1 > length(latitude1)
            break
        end
        Unit_Central_Angle_Route1_iter = acos((sind(latitude1(i)).*sind(latitude1(i+1)))+(cosd(latitude1(i)).*cosd(latitude1(i+1)).*cosd(longitude1(i+1)-longitude1(i))));      
%         Unit_Central_Angle_Route1_iter = sind((latitude1(i+1) - latitude1(i))./2).^2 + (cosd(latitude1(i)).*cosd(latitude1(i+1)).*(sind((longitude1(i+1)-longitude1(i))./2).^2));
%        
%         if Unit_Central_Angle_Route1_iter < 0
%             Unit_Central_Angle_Route1_iter = 2.*atan(sqrt(1 - Unit_Central_Angle_Route1_iter)).^2;
%         else
%             Unit_Central_Angle_Route1_iter = 2.*atan(sqrt(Unit_Central_Angle_Route1_iter)).^2;
%         end
        
        Unit_Central_Angle_Route1 = [Unit_Central_Angle_Route1; Unit_Central_Angle_Route1_iter];
    
    end
    
    Unit_Length_Route1 = Earth_radius.*Unit_Central_Angle_Route1;
    
    longitude2 = longitude2 - 0.5;
    Unit_Central_Angle_Route2 = [];
    for i = 1:1:length(latitude2)
        if i+1 > length(latitude2)
            break
        end
        Unit_Central_Angle_Route2_iter = acos((sind(latitude2(i)).*sind(latitude2(i+1)))+(cosd(latitude2(i)).*cosd(latitude2(i+1)).*cosd(longitude2(i+1)-longitude2(i))));
        Unit_Central_Angle_Route2 = [Unit_Central_Angle_Route2; Unit_Central_Angle_Route2_iter];
        
    end
    
    Unit_Length_Route2 = Earth_radius.*Unit_Central_Angle_Route2;
    
    
    longitude3 = longitude3 - 0.5;
    Unit_Central_Angle_Route3 = [];
    for i = 1:1:length(latitude3)
        if i+1 > length(latitude3)
            break
        end
        Unit_Central_Angle_Route3_iter = acos((sind(latitude3(i)).*sind(latitude3(i+1)))+(cosd(latitude3(i)).*cosd(latitude3(i+1)).*cosd(longitude3(i+1)-longitude3(i))));
        Unit_Central_Angle_Route3 = [Unit_Central_Angle_Route3; Unit_Central_Angle_Route3_iter];
        
    end
    
    Unit_Length_Route3 = Earth_radius.*Unit_Central_Angle_Route3;
  
    %Total Route length 
    Arctic_Route1_length = sum(Unit_Length_Route1);
    Arctic_Route2_length = sum(Unit_Length_Route2);
    Arctic_Route3_length = sum(Unit_Length_Route3);
    
    
    %Find the portion of each route which the vessel will require icebreaking
    Length1 = length(Route1_Icebreaking_days_t0); Length2 = length(Route2_Icebreaking_days_t0); Length3 = length(Route3_Icebreaking_days_t0);
    
    %Route 1 - Extract route segments from the areas where the Arctic ship will
    %need an icebreaker
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    AB_Icebreaking_days_t0 = [];
    
    for i = 1:1:12
        AB_Icebreaking_days_t0_iter = Route1_Icebreaking_days_t0((i-1)*(Length1/12)+1:(77.5-60.5)+((i-1)*(Length1/12)));
        AB_Icebreaking_days_t0 = [AB_Icebreaking_days_t0; AB_Icebreaking_days_t0_iter];
    end
    
    BD_Icebreaking_days_t0 = [];
    
    for i = 1:1:12
        BD_Icebreaking_days_t0_iter = Route1_Icebreaking_days_t0((i-1)*(Length1/12)+18:((162.5-40.5)+18)+((i-1)*(Length1/12)));
        BD_Icebreaking_days_t0 = [BD_Icebreaking_days_t0; BD_Icebreaking_days_t0_iter];
    end
    
    DE_Icebreaking_days_t0 = [];
    
    for i = 1:1:12
        DE_Icebreaking_days_t0_iter = Route1_Icebreaking_days_t0((i-1)*(Length1/12)+141:((76.5-66.5)+140)+((i-1)*(Length1/12)));
        DE_Icebreaking_days_t0 = [DE_Icebreaking_days_t0; DE_Icebreaking_days_t0_iter];
    end
    
    EF_Icebreaking_days_t0 = [];
    
    for i = 1:1:12
        EF_Icebreaking_days_t0_iter = Route1_Icebreaking_days_t0((i-1)*(Length1/12)+151:((66.5-64.5)+151)+((i-1)*(Length1/12)));
        EF_Icebreaking_days_t0 = [EF_Icebreaking_days_t0; EF_Icebreaking_days_t0_iter];
    end
    
    FG_Icebreaking_days_t0 = [];
    
    for i = 1:1:12
        FG_Icebreaking_days_t0_iter = Route1_Icebreaking_days_t0((i-1)*(Length1/12)+154:((64.5-60.5)+153)+((i-1)*(Length1/12)));
        FG_Icebreaking_days_t0 = [FG_Icebreaking_days_t0; FG_Icebreaking_days_t0_iter];
    end
    
    AB_Icebreaking_days_tm = [];
    
    for i = 1:1:12
        AB_Icebreaking_days_tm_iter = Route1_Icebreaking_days_tm((i-1)*(Length1/12)+1:(77.5-60.5)+((i-1)*(Length1/12)));
        AB_Icebreaking_days_tm = [AB_Icebreaking_days_tm; AB_Icebreaking_days_tm_iter];
    end
    
    BD_Icebreaking_days_tm = [];
    
    for i = 1:1:12
        BD_Icebreaking_days_tm_iter = Route1_Icebreaking_days_tm((i-1)*(Length1/12)+18:((162.5-40.5)+18)+((i-1)*(Length1/12)));
        BD_Icebreaking_days_tm = [BD_Icebreaking_days_tm; BD_Icebreaking_days_tm_iter];
    end
    
    DE_Icebreaking_days_tm = [];
    
    for i = 1:1:12
        DE_Icebreaking_days_tm_iter = Route1_Icebreaking_days_tm((i-1)*(Length1/12)+141:((76.5-66.5)+140)+((i-1)*(Length1/12)));
        DE_Icebreaking_days_tm = [DE_Icebreaking_days_tm; DE_Icebreaking_days_tm_iter];
    end
    
    EF_Icebreaking_days_tm = [];
    
    for i = 1:1:12
        EF_Icebreaking_days_tm_iter = Route1_Icebreaking_days_tm((i-1)*(Length1/12)+151:((66.5-64.5)+151)+((i-1)*(Length1/12)));
        EF_Icebreaking_days_tm = [EF_Icebreaking_days_tm; EF_Icebreaking_days_tm_iter];
    end
    
    FG_Icebreaking_days_tm = [];
    
    for i = 1:1:12
        FG_Icebreaking_days_tm_iter = Route1_Icebreaking_days_tm((i-1)*(Length1/12)+154:((64.5-60.5)+153)+((i-1)*(Length1/12)));
        FG_Icebreaking_days_tm = [FG_Icebreaking_days_tm; FG_Icebreaking_days_tm_iter];
    end
    
    AB_Icebreaking_days_tf = [];
    
    for i = 1:1:12
        AB_Icebreaking_days_tf_iter = Route1_Icebreaking_days_tf((i-1)*(Length1/12)+1:(77.5-60.5)+((i-1)*(Length1/12)));
        AB_Icebreaking_days_tf = [AB_Icebreaking_days_tf; AB_Icebreaking_days_tf_iter];
    end
    
    BD_Icebreaking_days_tf = [];
    
    for i = 1:1:12
        BD_Icebreaking_days_tf_iter = Route1_Icebreaking_days_tf((i-1)*(Length1/12)+18:((162.5-40.5)+18)+((i-1)*(Length1/12)));
        BD_Icebreaking_days_tf = [BD_Icebreaking_days_tf; BD_Icebreaking_days_tf_iter];
    end
    
    DE_Icebreaking_days_tf = [];
    
    for i = 1:1:12
        DE_Icebreaking_days_tf_iter = Route1_Icebreaking_days_tf((i-1)*(Length1/12)+141:((76.5-66.5)+140)+((i-1)*(Length1/12)));
        DE_Icebreaking_days_tf = [DE_Icebreaking_days_tf; DE_Icebreaking_days_tf_iter];
    end
    
    EF_Icebreaking_days_tf = [];
    
    for i = 1:1:12
        EF_Icebreaking_days_tf_iter = Route1_Icebreaking_days_tf((i-1)*(Length1/12)+151:((66.5-64.5)+151)+((i-1)*(Length1/12)));
        EF_Icebreaking_days_tf = [EF_Icebreaking_days_tf; EF_Icebreaking_days_tf_iter];
    end
    
    FG_Icebreaking_days_tf = [];
    
    for i = 1:1:12
        FG_Icebreaking_days_tf_iter = Route1_Icebreaking_days_tf((i-1)*(Length1/12)+154:((64.5-60.5)+153)+((i-1)*(Length1/12)));
        FG_Icebreaking_days_tf = [FG_Icebreaking_days_tf; FG_Icebreaking_days_tf_iter];
    end
   
    
    %Route 2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    AG_Icebreaking_days_t0 = [];
    
    for i = 1:1:12
        AG_Icebreaking_days_t0_iter = Route2_Icebreaking_days_t0((i-1)*(Length2/12)+1:(84.5-60.5)+((i-1)*(Length2/12)));
        AG_Icebreaking_days_t0 = [AG_Icebreaking_days_t0; AG_Icebreaking_days_t0_iter];
    end
    
    GH_Icebreaking_days_t0 = [];
    
    for i = 1:1:12
        GH_Icebreaking_days_t0_iter = Route2_Icebreaking_days_t0((i-1)*(Length2/12)+25:((162.5-40.5)+25)+((i-1)*(Length2/12)));
        GH_Icebreaking_days_t0 = [GH_Icebreaking_days_t0; GH_Icebreaking_days_t0_iter];
    end
    
    HE_Icebreaking_days_t0 = [];
    
    for i = 1:1:12
        HE_Icebreaking_days_t0_iter = Route2_Icebreaking_days_t0((i-1)*(Length2/12)+148:((83.5-66.5)+147)+((i-1)*(Length2/12)));
        HE_Icebreaking_days_t0 = [HE_Icebreaking_days_t0; HE_Icebreaking_days_t0_iter];
    end
    
    AG_Icebreaking_days_tm = [];
    
    for i = 1:1:12
        AG_Icebreaking_days_tm_iter = Route2_Icebreaking_days_tm((i-1)*(Length2/12)+1:(84.5-60.5)+((i-1)*(Length2/12)));
        AG_Icebreaking_days_tm = [AG_Icebreaking_days_tm; AG_Icebreaking_days_tm_iter];
    end
    
    GH_Icebreaking_days_tm = [];
    
    for i = 1:1:12
        GH_Icebreaking_days_tm_iter = Route2_Icebreaking_days_tm((i-1)*(Length2/12)+25:((162.5-40.5)+25)+((i-1)*(Length2/12)));
        GH_Icebreaking_days_tm = [GH_Icebreaking_days_tm; GH_Icebreaking_days_tm_iter];
    end
    
    HE_Icebreaking_days_tm = [];
    
    for i = 1:1:12
        HE_Icebreaking_days_tm_iter = Route2_Icebreaking_days_tm((i-1)*(Length2/12)+148:((83.5-66.5)+147)+((i-1)*(Length2/12)));
        HE_Icebreaking_days_tm = [HE_Icebreaking_days_tm; HE_Icebreaking_days_tm_iter];
    end
    
    AG_Icebreaking_days_tf = [];
    
    for i = 1:1:12
        AG_Icebreaking_days_tf_iter = Route2_Icebreaking_days_tf((i-1)*(Length2/12)+1:(84.5-60.5)+((i-1)*(Length2/12)));
        AG_Icebreaking_days_tf = [AG_Icebreaking_days_tf; AG_Icebreaking_days_tf_iter];
    end
    
    GH_Icebreaking_days_tf = [];
    
    for i = 1:1:12
        GH_Icebreaking_days_tf_iter = Route2_Icebreaking_days_tf((i-1)*(Length2/12)+25:((162.5-40.5)+25)+((i-1)*(Length2/12)));
        GH_Icebreaking_days_tf = [GH_Icebreaking_days_tf; GH_Icebreaking_days_tf_iter];
    end
    
    HE_Icebreaking_days_tf = [];
    
    for i = 1:1:12
        HE_Icebreaking_days_tf_iter = Route2_Icebreaking_days_tf((i-1)*(Length2/12)+148:((83.5-66.5)+147)+((i-1)*(Length2/12)));
        HE_Icebreaking_days_tf = [HE_Icebreaking_days_tf; HE_Icebreaking_days_tf_iter];
    end
    
    %Route 3
    %%%%%%%%%%%%%%%%%%%%%%%
    
    AC_Icebreaking_days_t0 = [];
    
    for i = 1:1:12
        AC_Icebreaking_days_t0_iter = Route3_Icebreaking_days_t0((i-1)*(Length3/12)+1:(89.5-60.5)+((i-1)*(Length3/12)));
        AC_Icebreaking_days_t0 = [AC_Icebreaking_days_t0; AC_Icebreaking_days_t0_iter];
    end
    
    CE_Icebreaking_days_t0 = [];
    
    for i = 1:1:12
        CE_Icebreaking_days_t0_iter = Route3_Icebreaking_days_t0((i-1)*(Length3/12)+30:((89.5-66.5)+29)+((i-1)*(Length3/12)));
        CE_Icebreaking_days_t0 = [CE_Icebreaking_days_t0; CE_Icebreaking_days_t0_iter];
    end
    
    AC_Icebreaking_days_tm = [];
    
    for i = 1:1:12
        AC_Icebreaking_days_tm_iter = Route3_Icebreaking_days_tm((i-1)*(Length3/12)+1:(89.5-60.5)+((i-1)*(Length3/12)));
        AC_Icebreaking_days_tm = [AC_Icebreaking_days_tm; AC_Icebreaking_days_tm_iter];
    end
    
    CE_Icebreaking_days_tm = [];
    
    for i = 1:1:12
        CE_Icebreaking_days_tm_iter = Route3_Icebreaking_days_tm((i-1)*(Length3/12)+30:((89.5-66.5)+29)+((i-1)*(Length3/12)));
        CE_Icebreaking_days_tm = [CE_Icebreaking_days_tm; CE_Icebreaking_days_tm_iter];
    end
    
    AC_Icebreaking_days_tf = [];
    
    for i = 1:1:12
        AC_Icebreaking_days_tf_iter = Route3_Icebreaking_days_tf((i-1)*(Length3/12)+1:(89.5-60.5)+((i-1)*(Length3/12)));
        AC_Icebreaking_days_tf = [AC_Icebreaking_days_tf; AC_Icebreaking_days_tf_iter];
    end
    
    CE_Icebreaking_days_tf = [];
    
    for i = 1:1:12
        CE_Icebreaking_days_tf_iter = Route3_Icebreaking_days_tf((i-1)*(Length3/12)+30:((89.5-66.5)+29)+((i-1)*(Length3/12)));
        CE_Icebreaking_days_tf = [CE_Icebreaking_days_tf; CE_Icebreaking_days_tf_iter];
    end
    
    
    %Route 1 calculate the unit length (length per cell for each route segment)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Unit_length_AB = Unit_Length_Route1(1:17);
    Unit_length_BD = Unit_Length_Route1(18:140);
    Unit_length_DE = Unit_Length_Route1(141:150);
    Unit_length_EF = Unit_Length_Route1(151:153);
    Unit_length_FG = Unit_Length_Route1(154:156);
    
    AB_vector_length = length(AB_Icebreaking_days_t0);
    BD_vector_length = length(BD_Icebreaking_days_t0);
    DE_vector_length = length(DE_Icebreaking_days_t0);
    EF_vector_length = length(EF_Icebreaking_days_t0);
    FG_vector_length = length(FG_Icebreaking_days_t0);
    
    %Route 2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Unit_length_AG = Unit_Length_Route2(1:24);
    Unit_length_GH = Unit_Length_Route2(25:147);
    Unit_length_HE = Unit_Length_Route2(148:164);
    
    AG_vector_length = length(AG_Icebreaking_days_t0);
    GH_vector_length = length(GH_Icebreaking_days_t0);
    HE_vector_length = length(HE_Icebreaking_days_t0);
    
    %Route 3
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Unit_length_AC = Unit_Length_Route3(1:29);
    Unit_length_CE = Unit_Length_Route3(30:52);
    
    AC_vector_length = length(AC_Icebreaking_days_t0);
    CE_vector_length = length(CE_Icebreaking_days_t0);
    
    %Route 1 - Collect the data for each cell requiring an icebreaker and sum
    %them for every 12 months to see where and when the ship will need an
    %icebreaker
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    ABIcebreakerdays_t0 = reshape(AB_Icebreaking_days_t0, AB_vector_length/12, 12);
    BDIcebreakerdays_t0 = reshape(BD_Icebreaking_days_t0, BD_vector_length/12, 12);
    DEIcebreakerdays_t0 = reshape(DE_Icebreaking_days_t0, DE_vector_length/12, 12);
    EFIcebreakerdays_t0 = reshape(EF_Icebreaking_days_t0, EF_vector_length/12, 12);
    FGIcebreakerdays_t0 = reshape(FG_Icebreaking_days_t0, FG_vector_length/12, 12);
  
    ABIcebreakerdays_tm = reshape(AB_Icebreaking_days_tm, AB_vector_length/12, 12);
    BDIcebreakerdays_tm = reshape(BD_Icebreaking_days_tm, BD_vector_length/12, 12);
    DEIcebreakerdays_tm = reshape(DE_Icebreaking_days_tm, DE_vector_length/12, 12);
    EFIcebreakerdays_tm = reshape(EF_Icebreaking_days_tm, EF_vector_length/12, 12);
    FGIcebreakerdays_tm = reshape(FG_Icebreaking_days_tm, FG_vector_length/12, 12);
    
    ABIcebreakerdays_tf = reshape(AB_Icebreaking_days_tf, AB_vector_length/12, 12);
    BDIcebreakerdays_tf = reshape(BD_Icebreaking_days_tf, BD_vector_length/12, 12);
    DEIcebreakerdays_tf = reshape(DE_Icebreaking_days_tf, DE_vector_length/12, 12);
    EFIcebreakerdays_tf = reshape(EF_Icebreaking_days_tf, EF_vector_length/12, 12);
    FGIcebreakerdays_tf = reshape(FG_Icebreaking_days_tf, FG_vector_length/12, 12);
    
    %Route 2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    AGIcebreakerdays_t0 = reshape(AG_Icebreaking_days_t0, AG_vector_length/12, 12);
    GHIcebreakerdays_t0 = reshape(GH_Icebreaking_days_t0, GH_vector_length/12, 12);
    HEIcebreakerdays_t0 = reshape(HE_Icebreaking_days_t0, HE_vector_length/12, 12);
    
    AGIcebreakerdays_tm = reshape(AG_Icebreaking_days_tm, AG_vector_length/12, 12);
    GHIcebreakerdays_tm = reshape(GH_Icebreaking_days_tm, GH_vector_length/12, 12);
    HEIcebreakerdays_tm = reshape(HE_Icebreaking_days_tm, HE_vector_length/12, 12);
    
    AGIcebreakerdays_tf = reshape(AG_Icebreaking_days_tf, AG_vector_length/12, 12);
    GHIcebreakerdays_tf = reshape(GH_Icebreaking_days_tf, GH_vector_length/12, 12);
    HEIcebreakerdays_tf = reshape(HE_Icebreaking_days_tf, HE_vector_length/12, 12);
    
    %Route 3
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    ACIcebreakerdays_t0 = reshape(AC_Icebreaking_days_t0, AC_vector_length/12, 12);
    CEIcebreakerdays_t0 = reshape(CE_Icebreaking_days_t0, CE_vector_length/12, 12);

    ACIcebreakerdays_tm = reshape(AC_Icebreaking_days_tm, AC_vector_length/12, 12);
    CEIcebreakerdays_tm = reshape(CE_Icebreaking_days_tm, CE_vector_length/12, 12);

    ACIcebreakerdays_tf = reshape(AC_Icebreaking_days_tf, AC_vector_length/12, 12);
    CEIcebreakerdays_tf = reshape(CE_Icebreaking_days_tf, CE_vector_length/12, 12);
    
    % Begin to work out for how long the ship will need an icebreaker for and
    % based off POLARIS (IMO guidelines) when the ship is operating in tandem
    % with an icebreaker it operates at 3 knots, so it's important to work out
    % the distance the icebreakign ship will travel with an icebreaker for and
    % then divide this by 3 knots to get the time taken and convert this into
    % days. Then do this for each month and add together.
        
    AB_Icebreaker_length_t0 = Unit_length_AB.*ABIcebreakerdays_t0;   
    BD_Icebreaker_length_t0 = Unit_length_BD.*BDIcebreakerdays_t0;
    DE_Icebreaker_length_t0 = Unit_length_DE.*DEIcebreakerdays_t0;
    EF_Icebreaker_length_t0 = Unit_length_EF.*EFIcebreakerdays_t0;
    FG_Icebreaker_length_t0 = Unit_length_FG.*FGIcebreakerdays_t0(1:length(FGIcebreakerdays_t0(:,1))-1,:);
    
    AB_Icebreaker_length_tm = Unit_length_AB.*ABIcebreakerdays_tm;   
    BD_Icebreaker_length_tm = Unit_length_BD.*BDIcebreakerdays_tm;
    DE_Icebreaker_length_tm = Unit_length_DE.*DEIcebreakerdays_tm;
    EF_Icebreaker_length_tm = Unit_length_EF.*EFIcebreakerdays_tm;
    FG_Icebreaker_length_tm = Unit_length_FG.*FGIcebreakerdays_tm(1:length(FGIcebreakerdays_tm(:,1))-1,:);
    
    AB_Icebreaker_length_tf = Unit_length_AB.*ABIcebreakerdays_tf;
    BD_Icebreaker_length_tf = Unit_length_BD.*BDIcebreakerdays_tf;
    DE_Icebreaker_length_tf = Unit_length_DE.*DEIcebreakerdays_tf;
    EF_Icebreaker_length_tf = Unit_length_EF.*EFIcebreakerdays_tf;
    FG_Icebreaker_length_tf = Unit_length_FG.*FGIcebreakerdays_tf(1:length(FGIcebreakerdays_tf(:,1))-1,:);
    
    %Route 2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    AG_Icebreaker_length_t0 = Unit_length_AG.*AGIcebreakerdays_t0;
    GH_Icebreaker_length_t0 = Unit_length_GH.*GHIcebreakerdays_t0;
    HE_Icebreaker_length_t0 = Unit_length_HE.*HEIcebreakerdays_t0;
    
    AG_Icebreaker_length_tm = Unit_length_AG.*AGIcebreakerdays_tm;
    GH_Icebreaker_length_tm = Unit_length_GH.*GHIcebreakerdays_tm;
    HE_Icebreaker_length_tm = Unit_length_HE.*HEIcebreakerdays_tm;
    
    AG_Icebreaker_length_tf = Unit_length_AG.*AGIcebreakerdays_tf;
    GH_Icebreaker_length_tf = Unit_length_GH.*GHIcebreakerdays_tf;
    HE_Icebreaker_length_tf = Unit_length_HE.*HEIcebreakerdays_tf;
    
    %Route 3
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    AC_Icebreaker_length_t0 = Unit_length_AC.*ACIcebreakerdays_t0;
    CE_Icebreaker_length_t0 = Unit_length_CE.*CEIcebreakerdays_t0;
    
    AC_Icebreaker_length_tm = Unit_length_AC.*ACIcebreakerdays_tm;
    CE_Icebreaker_length_tm = Unit_length_CE.*CEIcebreakerdays_tm;
    
    AC_Icebreaker_length_tf = Unit_length_AC.*ACIcebreakerdays_tf;
    CE_Icebreaker_length_tf = Unit_length_CE.*CEIcebreakerdays_tf;

    %Working out the total icebreaking time for that route
    
    %Route 1
    %%%%%%%%%%%%%%%%%%%%%%
    IMO_rec_speed = 3;
    
    AB_Route_IBtime_Cal_t0 = sum(AB_Icebreaker_length_t0,1)'./IMO_rec_speed./24;
    BD_Route_IBtime_Cal_t0 = sum(BD_Icebreaker_length_t0,1)'./IMO_rec_speed./24;
    DE_Route_IBtime_Cal_t0 = sum(DE_Icebreaker_length_t0,1)'./IMO_rec_speed./24;
    EF_Route_IBtime_Cal_t0 = sum(EF_Icebreaker_length_t0,1)'./IMO_rec_speed./24;
    FG_Route_IBtime_Cal_t0 = sum(FG_Icebreaker_length_t0,1)'./IMO_rec_speed./24;
    
    AB_Route_IBtime_Cal_tm = sum(AB_Icebreaker_length_tm,1)'./IMO_rec_speed./24;
    BD_Route_IBtime_Cal_tm = sum(BD_Icebreaker_length_tm,1)'./IMO_rec_speed./24;
    DE_Route_IBtime_Cal_tm = sum(DE_Icebreaker_length_tm,1)'./IMO_rec_speed./24;
    EF_Route_IBtime_Cal_tm = sum(EF_Icebreaker_length_tm,1)'./IMO_rec_speed./24;
    FG_Route_IBtime_Cal_tm = sum(FG_Icebreaker_length_tm,1)'./IMO_rec_speed./24;
    
    AB_Route_IBtime_Cal_tf = sum(AB_Icebreaker_length_tf,1)'./IMO_rec_speed./24;
    BD_Route_IBtime_Cal_tf = sum(BD_Icebreaker_length_tf,1)'./IMO_rec_speed./24;
    DE_Route_IBtime_Cal_tf = sum(DE_Icebreaker_length_tf,1)'./IMO_rec_speed./24;
    EF_Route_IBtime_Cal_tf = sum(EF_Icebreaker_length_tf,1)'./IMO_rec_speed./24;
    FG_Route_IBtime_Cal_tf = sum(FG_Icebreaker_length_tf,1)'./IMO_rec_speed./24;

    %Route 2
    %%%%%%%%%%%%%%%%%%%%%%
    AG_Route_IBtime_Cal_t0 = sum(AG_Icebreaker_length_t0,1)'./IMO_rec_speed./24;
    GH_Route_IBtime_Cal_t0 = sum(GH_Icebreaker_length_t0,1)'./IMO_rec_speed./24;
    HE_Route_IBtime_Cal_t0 = sum(HE_Icebreaker_length_t0,1)'./IMO_rec_speed./24;
    
    AG_Route_IBtime_Cal_tm = sum(AG_Icebreaker_length_tm,1)'./IMO_rec_speed./24;
    GH_Route_IBtime_Cal_tm = sum(GH_Icebreaker_length_tm,1)'./IMO_rec_speed./24;
    HE_Route_IBtime_Cal_tm = sum(HE_Icebreaker_length_tm,1)'./IMO_rec_speed./24;
    
    AG_Route_IBtime_Cal_tf = sum(AG_Icebreaker_length_tf,1)'./IMO_rec_speed./24;
    GH_Route_IBtime_Cal_tf = sum(GH_Icebreaker_length_tf,1)'./IMO_rec_speed./24;
    HE_Route_IBtime_Cal_tf = sum(HE_Icebreaker_length_tf,1)'./IMO_rec_speed./24;
    
    %Route 3
    %%%%%%%%%%%%%%%%%%%%%%
    AC_Route_IBtime_Cal_t0 = sum(AC_Icebreaker_length_t0,1)'./IMO_rec_speed./24;
    CE_Route_IBtime_Cal_t0 = sum(CE_Icebreaker_length_t0,1)'./IMO_rec_speed./24;  
 
    AC_Route_IBtime_Cal_tm = sum(AC_Icebreaker_length_tm,1)'./IMO_rec_speed./24;
    CE_Route_IBtime_Cal_tm = sum(CE_Icebreaker_length_tm,1)'./IMO_rec_speed./24;  
    
    AC_Route_IBtime_Cal_tf = sum(AC_Icebreaker_length_tf,1)'./IMO_rec_speed./24;
    CE_Route_IBtime_Cal_tf = sum(CE_Icebreaker_length_tf,1)'./IMO_rec_speed./24; 
    
    Route_1_IB_vector_t0 = [AB_Route_IBtime_Cal_t0 BD_Route_IBtime_Cal_t0 DE_Route_IBtime_Cal_t0 EF_Route_IBtime_Cal_t0 FG_Route_IBtime_Cal_t0];
    Route_1_IB_vector_tm = [AB_Route_IBtime_Cal_tm BD_Route_IBtime_Cal_tm DE_Route_IBtime_Cal_tm EF_Route_IBtime_Cal_tm FG_Route_IBtime_Cal_tm];
    Route_1_IB_vector_tf = [AB_Route_IBtime_Cal_tf BD_Route_IBtime_Cal_tf DE_Route_IBtime_Cal_tf EF_Route_IBtime_Cal_tf FG_Route_IBtime_Cal_tf];
    
    Route_2_IB_vector_t0 = [AG_Route_IBtime_Cal_t0 GH_Route_IBtime_Cal_t0 HE_Route_IBtime_Cal_t0 EF_Route_IBtime_Cal_t0 FG_Route_IBtime_Cal_t0];
    Route_2_IB_vector_tm = [AG_Route_IBtime_Cal_tm GH_Route_IBtime_Cal_tm HE_Route_IBtime_Cal_tm EF_Route_IBtime_Cal_tm FG_Route_IBtime_Cal_tm];
    Route_2_IB_vector_tf = [AG_Route_IBtime_Cal_tf GH_Route_IBtime_Cal_tf HE_Route_IBtime_Cal_tf EF_Route_IBtime_Cal_tf FG_Route_IBtime_Cal_tf];
    
    Route_3_IB_vector_t0 = [AC_Route_IBtime_Cal_t0 CE_Route_IBtime_Cal_t0 EF_Route_IBtime_Cal_t0 FG_Route_IBtime_Cal_t0];
    Route_3_IB_vector_tm = [AC_Route_IBtime_Cal_tm CE_Route_IBtime_Cal_tm EF_Route_IBtime_Cal_tm FG_Route_IBtime_Cal_tm];
    Route_3_IB_vector_tf = [AC_Route_IBtime_Cal_tf CE_Route_IBtime_Cal_tf EF_Route_IBtime_Cal_tf FG_Route_IBtime_Cal_tf];
    
    Scenario1_Route1_IBdays_t0 = AB_Route_IBtime_Cal_t0 + BD_Route_IBtime_Cal_t0 + DE_Route_IBtime_Cal_t0 + EF_Route_IBtime_Cal_t0 + FG_Route_IBtime_Cal_t0;
    Scenario1_Route1_IBdays_tm = AB_Route_IBtime_Cal_tm + BD_Route_IBtime_Cal_tm + DE_Route_IBtime_Cal_tm + EF_Route_IBtime_Cal_tm + FG_Route_IBtime_Cal_tm;
    Scenario1_Route1_IBdays_tf = AB_Route_IBtime_Cal_tf + BD_Route_IBtime_Cal_tf + DE_Route_IBtime_Cal_tf + EF_Route_IBtime_Cal_tf + FG_Route_IBtime_Cal_tf;
    
    Scenario1_Route2_IBdays_t0 = AG_Route_IBtime_Cal_t0 + GH_Route_IBtime_Cal_t0 + HE_Route_IBtime_Cal_t0 + EF_Route_IBtime_Cal_t0 + FG_Route_IBtime_Cal_t0;
    Scenario1_Route2_IBdays_tm = AG_Route_IBtime_Cal_tm + GH_Route_IBtime_Cal_tm + HE_Route_IBtime_Cal_tm + EF_Route_IBtime_Cal_tm + FG_Route_IBtime_Cal_tm;
    Scenario1_Route2_IBdays_tf = AG_Route_IBtime_Cal_tf + GH_Route_IBtime_Cal_tf + HE_Route_IBtime_Cal_tf + EF_Route_IBtime_Cal_tf + FG_Route_IBtime_Cal_tf;
    
    Scenario1_Route3_IBdays_t0 = AC_Route_IBtime_Cal_t0 + CE_Route_IBtime_Cal_t0 + EF_Route_IBtime_Cal_t0 + FG_Route_IBtime_Cal_t0;
    Scenario1_Route3_IBdays_tm = AC_Route_IBtime_Cal_tm + CE_Route_IBtime_Cal_tm + EF_Route_IBtime_Cal_tm + FG_Route_IBtime_Cal_tm;
    Scenario1_Route3_IBdays_tf = AC_Route_IBtime_Cal_tf + CE_Route_IBtime_Cal_tf + EF_Route_IBtime_Cal_tf + FG_Route_IBtime_Cal_tf;
    
    Scenario1_Route1_Total_IBdays_t0 = sum(Scenario1_Route1_IBdays_t0);
    Scenario1_Route1_Total_IBdays_tm = sum(Scenario1_Route1_IBdays_tm);
    Scenario1_Route1_Total_IBdays_tf = sum(Scenario1_Route1_IBdays_tf);
    
    Scenario1_Route2_Total_IBdays_t0 = sum(Scenario1_Route2_IBdays_t0);
    Scenario1_Route2_Total_IBdays_tm = sum(Scenario1_Route2_IBdays_tm);
    Scenario1_Route2_Total_IBdays_tf = sum(Scenario1_Route2_IBdays_tf);
    
    Scenario1_Route3_Total_IBdays_t0 = sum(Scenario1_Route3_IBdays_t0);
    Scenario1_Route3_Total_IBdays_tm = sum(Scenario1_Route3_IBdays_tm);
    Scenario1_Route3_Total_IBdays_tf = sum(Scenario1_Route3_IBdays_tf);

    
%     %Now that I have the distance for each route segment per month the ship
%     %travels with an icebreaker I can work out the time and hence the total
%     %time per route the vessel needs an icebreaker, IMO recommended speed is
%     %3kts
    %Sum according to each row, then replace the cells with 0s and 1s depending
    %on whether the entire route is navigable at that month or not (1 being
    %viable and 0 being not viable, 0.001 otherwise model won't work - also gets rid of truncations accounts for uncertainty with the projections)
    Route_1_IceStrength_feasibility_Scenario2_t0 = sum(Route_1_IB_vector_t0,2);
    Route_1_IceStrength_feasibility_Scenario2_tm = sum(Route_1_IB_vector_tm,2);
    Route_1_IceStrength_feasibility_Scenario2_tf = sum(Route_1_IB_vector_tf,2);
    
    Route_2_IceStrength_feasibility_Scenario2_t0 = sum(Route_2_IB_vector_t0,2);
    Route_2_IceStrength_feasibility_Scenario2_tm = sum(Route_2_IB_vector_tm,2);
    Route_2_IceStrength_feasibility_Scenario2_tf = sum(Route_2_IB_vector_tf,2);
    
    Route_3_IceStrength_feasibility_Scenario2_t0 = sum(Route_3_IB_vector_t0,2);
    Route_3_IceStrength_feasibility_Scenario2_tm = sum(Route_3_IB_vector_tm,2);
    Route_3_IceStrength_feasibility_Scenario2_tf = sum(Route_3_IB_vector_tf,2);
    
    Route_1_IceStrength_feasibility_Scenario2_t0(Route_1_IceStrength_feasibility_Scenario2_t0<0.001) = 1; %0.001
    Route_1_IceStrength_feasibility_Scenario2_t0(Route_1_IceStrength_feasibility_Scenario2_t0>1) = 0;
    Route_1_IceStrength_feasibility_Scenario2_t0(Route_1_IceStrength_feasibility_Scenario2_t0~=1) = 0;
    
    Route_1_IceStrength_feasibility_Scenario2_tm(Route_1_IceStrength_feasibility_Scenario2_tm<0.001) = 1; %0.001
    Route_1_IceStrength_feasibility_Scenario2_tm(Route_1_IceStrength_feasibility_Scenario2_tm>1) = 0;
    Route_1_IceStrength_feasibility_Scenario2_tm(Route_1_IceStrength_feasibility_Scenario2_tm~=1) = 0;
    
    Route_1_IceStrength_feasibility_Scenario2_tf(Route_1_IceStrength_feasibility_Scenario2_tf<0.001) = 1; %0.001
    Route_1_IceStrength_feasibility_Scenario2_tf(Route_1_IceStrength_feasibility_Scenario2_tf>1) = 0;
    Route_1_IceStrength_feasibility_Scenario2_tf(Route_1_IceStrength_feasibility_Scenario2_tf~=1) = 0;
    
    Route_2_IceStrength_feasibility_Scenario2_t0(Route_2_IceStrength_feasibility_Scenario2_t0<0.001) = 1; %0.001
    Route_2_IceStrength_feasibility_Scenario2_t0(Route_2_IceStrength_feasibility_Scenario2_t0>1) = 0;
    Route_2_IceStrength_feasibility_Scenario2_t0(Route_2_IceStrength_feasibility_Scenario2_t0~=1) = 0;
    
    Route_2_IceStrength_feasibility_Scenario2_tm(Route_2_IceStrength_feasibility_Scenario2_tm<0.001) = 1; %0.001
    Route_2_IceStrength_feasibility_Scenario2_tm(Route_2_IceStrength_feasibility_Scenario2_tm>1) = 0;
    Route_2_IceStrength_feasibility_Scenario2_tm(Route_2_IceStrength_feasibility_Scenario2_tm~=1) = 0;
    
    Route_2_IceStrength_feasibility_Scenario2_tf(Route_2_IceStrength_feasibility_Scenario2_tf<0.001) = 1; %0.001
    Route_2_IceStrength_feasibility_Scenario2_tf(Route_2_IceStrength_feasibility_Scenario2_tf>1) = 0;
    Route_2_IceStrength_feasibility_Scenario2_tf(Route_2_IceStrength_feasibility_Scenario2_tf~=1) = 0;
    
    Route_3_IceStrength_feasibility_Scenario2_t0(Route_3_IceStrength_feasibility_Scenario2_t0<0.001) = 1; %0.001
    Route_3_IceStrength_feasibility_Scenario2_t0(Route_3_IceStrength_feasibility_Scenario2_t0>1) = 0;
    Route_3_IceStrength_feasibility_Scenario2_t0(Route_3_IceStrength_feasibility_Scenario2_t0~=1) = 0;
    
    Route_3_IceStrength_feasibility_Scenario2_tm(Route_3_IceStrength_feasibility_Scenario2_tm<0.001) = 1; %0.001
    Route_3_IceStrength_feasibility_Scenario2_tm(Route_3_IceStrength_feasibility_Scenario2_tm>1) = 0;
    Route_3_IceStrength_feasibility_Scenario2_tm(Route_3_IceStrength_feasibility_Scenario2_tm~=1) = 0;
    
    Route_3_IceStrength_feasibility_Scenario2_tf(Route_3_IceStrength_feasibility_Scenario2_tf<0.001) = 1; %0.001
    Route_3_IceStrength_feasibility_Scenario2_tf(Route_3_IceStrength_feasibility_Scenario2_tf>1) = 0;
    Route_3_IceStrength_feasibility_Scenario2_tf(Route_3_IceStrength_feasibility_Scenario2_tf~=1) = 0;
    
%     Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0 = repmat(Route_1_IceStrength_feasibility_Scenario2_t0,1,4);
%     Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm = repmat(Route_1_IceStrength_feasibility_Scenario2_tm,1,4);
%     Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf = repmat(Route_1_IceStrength_feasibility_Scenario2_tf,1,4);
%     
%     Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0 = repmat(Route_2_IceStrength_feasibility_Scenario2_t0,1,4);
%     Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm = repmat(Route_2_IceStrength_feasibility_Scenario2_tm,1,4);
%     Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf = repmat(Route_2_IceStrength_feasibility_Scenario2_tf,1,4);
%     
%     Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0 = repmat(Route_3_IceStrength_feasibility_Scenario2_t0,1,3);
%     Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm = repmat(Route_3_IceStrength_feasibility_Scenario2_tm,1,3);
%     Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf = repmat(Route_3_IceStrength_feasibility_Scenario2_tf,1,3);
    
Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0 = Route_1_IceStrength_feasibility_Scenario2_t0;
Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm = Route_1_IceStrength_feasibility_Scenario2_tm;
Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf = Route_1_IceStrength_feasibility_Scenario2_tf;

Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0 = Route_2_IceStrength_feasibility_Scenario2_t0;
Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm = Route_2_IceStrength_feasibility_Scenario2_tm;
Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf = Route_2_IceStrength_feasibility_Scenario2_tf;

Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0 = Route_3_IceStrength_feasibility_Scenario2_t0;
Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm = Route_3_IceStrength_feasibility_Scenario2_tm;
Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf = Route_3_IceStrength_feasibility_Scenario2_tf;


