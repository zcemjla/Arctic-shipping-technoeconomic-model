% by Joseph Lambert
% Version 1.3
% Route characterisation

function [Arctic_Route1_Total_D_A, Arctic_Route2_Total_D_A, Arctic_Route3_Total_D_A, SCE3_Suez_Route_D_S,...
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

Speed_length = length(d.design_speed_kts(:));
n_days = 30; %Number of days in a month, this is an assumption
Ice_Installed_Power_kW = Pow_ice(:);

n_ships = 20; 
Aux_power_Ice = Aux_Pow_ice; 

Ship_design_speed_length = Speed_length./n_ships;

%Boiler tonnes per day consumption

Boiler_tpd = Boil_cons./365; 
kWhpt_HFO = 40490.*0.27778;

%Returning optimal speed
NonIcesfc_design =d.design_main_engine_sfc(:);
NonIcesfc=d.design_main_engine_sfc(:);
Aux_power = d.installed_auxiliary_power_kW(:); %Extracting auxiliary power, I assume it's the same
Aux_sfc = d.design_auxiliary_engine_SFC_gkWhr(:); %Extracting auxiliary power, hence the same sfc
Main_Engine = d.design_engine_method(:); %Main engine 
Split_Main_Engine = split(Main_Engine);
NonIce_Installed_Power_kW = Pow_Nonice(:); %Extracting output power

%Extract the number of cylinders from WSM
N_Cylinders = [];
for i = 1:1:length(Main_Engine)
    if strcmp(Split_Main_Engine(i,2),'Engine')
        N_Cylinders_iter = 0;
    elseif strcmp(Split_Main_Engine(i,2),'5')
        N_Cylinders_iter = 5;
    elseif strcmp(Split_Main_Engine(i,2),'6')
        N_Cylinders_iter = 6;
    elseif strcmp(Split_Main_Engine(i,2),'7')
        N_Cylinders_iter = 7;
    elseif strcmp(Split_Main_Engine(i,2),'8')
        N_Cylinders_iter = 8;
    elseif strcmp(Split_Main_Engine(i,2),'9')
        N_Cylinders_iter = 9;
    elseif strcmp(Split_Main_Engine(i,2),'10')
        N_Cylinders_iter = 10;
    elseif strcmp(Split_Main_Engine(i,2),'11')
        N_Cylinders_iter = 11;
    elseif strcmp(Split_Main_Engine(i,2),'12')
        N_Cylinders_iter = 12;
    elseif strcmp(Split_Main_Engine(i,2),'13')
        N_Cylinders_iter = 13;
    elseif strcmp(Split_Main_Engine(i,2),'14')
        N_Cylinders_iter = 14; 
    elseif strcmp(Split_Main_Engine(i,2),'15')
        N_Cylinders_iter = 15;        
    end
    N_Cylinders = [N_Cylinders; N_Cylinders_iter];
end
MAN_BW_Engine = join(Split_Main_Engine(:,4:6));

Icesfc_design = [];
Change = [];
for i = 1:1:length(MAN_BW_Engine)
    
    Logic_mat = contains(Engine_DB.Engine,MAN_BW_Engine(i));
    Max_Cylinder = Engine_DB.Max_C(Logic_mat); Max_L3pc = Engine_DB.L3pc(Logic_mat);
    Max_Engine_Power = Max_Cylinder.*Max_L3pc;
    Ice_Cylinders_iter = ceil(Ice_Installed_Power_kW(i)./Max_L3pc);
    
    if sum(Logic_mat) == 0
        
        Icesfc_design_iter = NonIcesfc(i);
        Change_iter = 0;
    end
    if Ice_Cylinders_iter > Max_Cylinder
        Change_iter = 1;
        if Ice_Installed_Power_kW(i) > 5000 %Large engines from 3rd GHG study
            Icesfc_design_iter = 175.648; %Number from WSM
        elseif Ice_Installed_Power_kW(i) < 5000 %Small engines 
            Icesfc_design_iter = 190.6958;
        end
    elseif Ice_Cylinders_iter < Max_Cylinder
        Icesfc_design_iter = NonIcesfc(i);
        Change_iter = 0;
    elseif Ice_Cylinders_iter == Max_Cylinder    %3rd clause, in case the number of cyinders match exactly
        if Ice_Installed_Power_kW(i)< Max_Engine_Power
            Icesfc_design_iter = NonIcesfc(i);
        else
            if Ice_Installed_Power_kW(i) > 5000 %Large engines from 3rd GHG study
                Icesfc_design_iter = 175.648; %Number from WSM
            elseif Ice_Installed_Power_kW(i) < 5000 %Small engines
                Icesfc_design_iter = 190.6958;
            end
        end
            
    end
    
    Icesfc_design = [Icesfc_design; Icesfc_design_iter];
    Change = [Change; Change_iter];
end

%Rewriting the sfc to be in line with the 4th GHG study base SFC 185gkWh^-1
Icesfc_design(Icesfc_design == 175.648) = 185;
Logic = (Pow_ice == 0);
Icesfc_design(Logic) = 0;

[NonIceStrengthOutput_power_kW,IceStrengthOutput_power_kW, Alpha, v, Ice_Operating_Total_Resistance,...
    NonIce_Operating_Total_Resistance, Icesfc, NonIcesfc, C_T, S, Avg_Engine_Load, Foul_coeff, Weather_coeff] = Holtrop_Mennen_Equations(d, Pow_ice_rat, NonIce_Installed_Power_kW, Ice_Installed_Power_kW, NonIcesfc, Icesfc_design,...
    IMO_type);

%Calculating cumulative fuel consumption

%To calculate the output power for ice
%Use the IMO 3rd ghg equation P =
%(Pref*(Rt/Rref)^(2/3)*(Vt/Vref)^n)/Tau_W*Tau_F
% P ref is reference power, Rt is operating draught, Rref is reference
% draught, Vt is operating speed and Vref is reference speed. Tau_W and
% Tau_F are efficiency coefficients meant to deal with fouling and hull
% damage etc
% For now there are no operating specs so, to relax the assumptions the in
% the equation the efficiency coefficients is equal to 1 and the draught
% doesn't change
% Consequentially, the equation becomes:
%P = Pref*(Vt/Vref)^n
% Where n = 3 because of the third power relationship between average
% vessel speed and max speed used in the 2nd IMO ghg study

% Brief calcualtion for number of voyages based off design speed
Arctic_OW_Route1_D_A = Total_Initial_Arctic_Route_length -  Arctic_Route1_length; 

SCE2_Suez_Route_D_S = Total_Suez_Route_length.*ones(Speed_length,1);
SCE3_Suez_Route_D_S = Total_Suez_Route_length.*ones(Speed_length,1);

%Obtaining the time taken for the ships to traverse Non-Arctic waters
Arctic_OW_Route1_T_A = Arctic_OW_Route1_D_A./(24.*v);

[Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0, Ice_Energy_consumed_SCE1Route1_Arctic_t_t0,...
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm, Ice_Energy_consumed_SCE1Route1_Arctic_t_tm,...
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf, Ice_Energy_consumed_SCE1Route1_Arctic_t_tf,...
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0, Ice_Energy_consumed_SCE1Route2_Arctic_t_t0,...
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm, Ice_Energy_consumed_SCE1Route2_Arctic_t_tm,...
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf, Ice_Energy_consumed_SCE1Route2_Arctic_t_tf,...
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0, Ice_Energy_consumed_SCE1Route3_Arctic_t_t0,...
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm, Ice_Energy_consumed_SCE1Route3_Arctic_t_tm,...
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf, Ice_Energy_consumed_SCE1Route3_Arctic_t_tf,...  
   Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0, Ice_Energy_consumed_SCE2Route1_Arctic_t_t0,...
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm, Ice_Energy_consumed_SCE2Route1_Arctic_t_tm,...
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf, Ice_Energy_consumed_SCE2Route1_Arctic_t_tf,...
     Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0, Ice_Energy_consumed_SCE2Route2_Arctic_t_t0,...
     Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm, Ice_Energy_consumed_SCE2Route2_Arctic_t_tm,...
   Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf, Ice_Energy_consumed_SCE2Route2_Arctic_t_tf,...
     Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0, Ice_Energy_consumed_SCE2Route3_Arctic_t_t0,...
     Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm, Ice_Energy_consumed_SCE2Route3_Arctic_t_tm,...
    Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf, Ice_Energy_consumed_SCE2Route3_Arctic_t_tf,...
   NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0, NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0,...
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm, NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm,...
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf, NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf,...
     NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0, NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0,...
     NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm, NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm,...
   NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf, NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf,...
     NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0, NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0,...
     NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm, NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm,...
    NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf, NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf,...
    Logic_mat_IceStrength_feasibility_Scenario1, Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0, Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm, Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf,...
    Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0, Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm, Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf,...
    Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0, Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm, Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf,...
    SCE2_Route1_Arctic_nav_d_t0, SCE2_Route1_Arctic_nav_d_tm, SCE2_Route1_Arctic_nav_d_tf,...
    SCE2_Route2_Arctic_nav_d_t0, SCE2_Route2_Arctic_nav_d_tm, SCE2_Route2_Arctic_nav_d_tf,...
    SCE2_Route3_Arctic_nav_d_t0, SCE2_Route3_Arctic_nav_d_tm, SCE2_Route3_Arctic_nav_d_tf,...
    Reshaped_Time_days_SCE1Route1_t0, Reshaped_Time_days_SCE1Route1_tm, Reshaped_Time_days_SCE1Route1_tf,...
    Reshaped_Time_days_SCE1Route2_t0, Reshaped_Time_days_SCE1Route2_tm, Reshaped_Time_days_SCE1Route2_tf,...
    Reshaped_Time_days_SCE1Route3_t0, Reshaped_Time_days_SCE1Route3_tm, Reshaped_Time_days_SCE1Route3_tf,...
    Ice_Reshaped_Time_days_SCE2Route1_t0, Ice_Reshaped_Time_days_SCE2Route1_tm, Ice_Reshaped_Time_days_SCE2Route1_tf,...
    Ice_Reshaped_Time_days_SCE2Route2_t0, Ice_Reshaped_Time_days_SCE2Route2_tm, Ice_Reshaped_Time_days_SCE2Route2_tf,...
    Ice_Reshaped_Time_days_SCE2Route3_t0, Ice_Reshaped_Time_days_SCE2Route3_tm, Ice_Reshaped_Time_days_SCE2Route3_tf,...
    NonIce_Reshaped_Time_days_SCE2Route1_t0, NonIce_Reshaped_Time_days_SCE2Route1_tm, NonIce_Reshaped_Time_days_SCE2Route1_tf,...
    NonIce_Reshaped_Time_days_SCE2Route2_t0, NonIce_Reshaped_Time_days_SCE2Route2_tm, NonIce_Reshaped_Time_days_SCE2Route2_tf,...
    NonIce_Reshaped_Time_days_SCE2Route3_t0, NonIce_Reshaped_Time_days_SCE2Route3_tm, NonIce_Reshaped_Time_days_SCE2Route3_tf] = AddedIceresistance(Foul_coeff, Weather_coeff, C_T, S, IMO_type, Ice_Installed_Power_kW, NonIce_Installed_Power_kW, SCE3_Suez_nav_d, d, v, Alpha,...
    NonIce_Operating_Total_Resistance, Ice_Operating_Total_Resistance, Icesfc, NonIcesfc,...
    SIT_Route1_t0, SIT_Route1_tm, SIT_Route1_tf, SIT_Route2_t0, SIT_Route2_tm, SIT_Route2_tf,...
    SIT_Route3_t0, SIT_Route3_tm, SIT_Route3_tf,...
    SIC_Route1_t0, SIC_Route1_tm, SIC_Route1_tf, SIC_Route2_t0, SIC_Route2_tm, SIC_Route2_tf,...
    SIC_Route3_t0, SIC_Route3_tm, SIC_Route3_tf,...
    IceStrengthOutput_power_kW, NonIceStrengthOutput_power_kW,...
    Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0,...
    Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm,...
    Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf,...
    Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0,...
    Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm,...
    Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf,...
    Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0,...
    Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm,...
    Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf,...
    Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_t0,...
    Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_tm,...
    Logic_mat_Route_1_NonIceStrength_feasibility_Scenario2_tf,...
    Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_t0,...
    Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_tm,...
    Logic_mat_Route_2_NonIceStrength_feasibility_Scenario2_tf,...
    Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_t0,...
    Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_tm,...
    Logic_mat_Route_3_NonIceStrength_feasibility_Scenario2_tf,...
    Unit_length_AB, Unit_length_BD,...
    Unit_length_DE, Unit_length_EF, Unit_length_FG,...
    Unit_length_AG, Unit_length_GH, Unit_length_HE,...
    Unit_length_AC, Unit_length_CE, Avg_Engine_Load, Arctic_OW_Route1_T_A);

    
%Non-ice strengthened ships - here you calculate the Non ice strengthened
%ships consumption which is a bit simpler as I'm assuming that they don't
%break any ice since they won't encounter any 
%Scenario 2 is used because the concept of avoiding ice for a non-ice
%strengthened ship applies
%Scenario 1 is independent of ice thickness or time

%Need to calculate how many voyages are possible first

%Other Route lengths
Arctic_Route1_Total_D_A = Arctic_OW_Route1_D_A + Arctic_Route1_length; %The open water part of the route doesn't change
Arctic_Route2_Total_D_A = Arctic_OW_Route1_D_A + Arctic_Route2_length;
Arctic_Route3_Total_D_A = Arctic_OW_Route1_D_A + Arctic_Route3_length;

Arctic_Route1_Total_T_A = Arctic_Route1_Total_D_A./(24.*v);
Arctic_Route2_Total_T_A = Arctic_Route2_Total_D_A./(24.*v);
Arctic_Route3_Total_T_A = Arctic_Route3_Total_D_A./(24.*v);
        
%Scenario 2 matrices have different dimensions to scenario 3
SCE2_Suez_Route_T_S = SCE2_Suez_Route_D_S./(24.*v);

%Scenario 3
SCE3_Suez_Route_T_S = SCE3_Suez_Route_D_S./(24.*v);

%Transposing the matrices 
Reshaped_Time_days_SCE1Route1_t0 = Reshaped_Time_days_SCE1Route1_t0'; Reshaped_Time_days_SCE1Route1_tm = Reshaped_Time_days_SCE1Route1_tm'; Reshaped_Time_days_SCE1Route1_tf = Reshaped_Time_days_SCE1Route1_tf';
Reshaped_Time_days_SCE1Route2_t0 = Reshaped_Time_days_SCE1Route2_t0'; Reshaped_Time_days_SCE1Route2_tm = Reshaped_Time_days_SCE1Route2_tm'; Reshaped_Time_days_SCE1Route2_tf = Reshaped_Time_days_SCE1Route2_tf'; 
Reshaped_Time_days_SCE1Route3_t0 = Reshaped_Time_days_SCE1Route3_t0'; Reshaped_Time_days_SCE1Route3_tm = Reshaped_Time_days_SCE1Route3_tm'; Reshaped_Time_days_SCE1Route3_tf = Reshaped_Time_days_SCE1Route3_tf'; 

Ice_Reshaped_Time_days_SCE2Route1_t0 = Ice_Reshaped_Time_days_SCE2Route1_t0'; Ice_Reshaped_Time_days_SCE2Route1_tm = Ice_Reshaped_Time_days_SCE2Route1_tm'; Ice_Reshaped_Time_days_SCE2Route1_tf = Ice_Reshaped_Time_days_SCE2Route1_tf';
Ice_Reshaped_Time_days_SCE2Route2_t0 = Ice_Reshaped_Time_days_SCE2Route2_t0'; Ice_Reshaped_Time_days_SCE2Route2_tm = Ice_Reshaped_Time_days_SCE2Route2_tm'; Ice_Reshaped_Time_days_SCE2Route2_tf = Ice_Reshaped_Time_days_SCE2Route2_tf'; 
Ice_Reshaped_Time_days_SCE2Route3_t0 = Ice_Reshaped_Time_days_SCE2Route3_t0'; Ice_Reshaped_Time_days_SCE2Route3_tm = Ice_Reshaped_Time_days_SCE2Route3_tm'; Ice_Reshaped_Time_days_SCE2Route3_tf = Ice_Reshaped_Time_days_SCE2Route3_tf';

NonIce_Reshaped_Time_days_SCE2Route1_t0 = NonIce_Reshaped_Time_days_SCE2Route1_t0'; NonIce_Reshaped_Time_days_SCE2Route1_tm = NonIce_Reshaped_Time_days_SCE2Route1_tm'; NonIce_Reshaped_Time_days_SCE2Route1_tf = NonIce_Reshaped_Time_days_SCE2Route1_tf';
NonIce_Reshaped_Time_days_SCE2Route2_t0 = NonIce_Reshaped_Time_days_SCE2Route2_t0'; NonIce_Reshaped_Time_days_SCE2Route2_tm = NonIce_Reshaped_Time_days_SCE2Route2_tm'; NonIce_Reshaped_Time_days_SCE2Route2_tf = NonIce_Reshaped_Time_days_SCE2Route2_tf'; 
NonIce_Reshaped_Time_days_SCE2Route3_t0 = NonIce_Reshaped_Time_days_SCE2Route3_t0'; NonIce_Reshaped_Time_days_SCE2Route3_tm = NonIce_Reshaped_Time_days_SCE2Route3_tm'; NonIce_Reshaped_Time_days_SCE2Route3_tf = NonIce_Reshaped_Time_days_SCE2Route3_tf';

%Scenario 1 - Number of voyages, I construct windows with each column
%representing the days in a month, I assume 30 days in a month 

%Make the zeros into a large number so I can filter out the empty entries
%from the total time 
Reshaped_Time_days_SCE1Route1_t0(Reshaped_Time_days_SCE1Route1_t0 == 0) = 10^15; Reshaped_Time_days_SCE1Route1_tm(Reshaped_Time_days_SCE1Route1_tm == 0) = 10^15; Reshaped_Time_days_SCE1Route1_tf(Reshaped_Time_days_SCE1Route1_tf == 0) = 10^15;
Reshaped_Time_days_SCE1Route2_t0(Reshaped_Time_days_SCE1Route2_t0 == 0) = 10^15; Reshaped_Time_days_SCE1Route2_tm(Reshaped_Time_days_SCE1Route2_tm == 0) = 10^15; Reshaped_Time_days_SCE1Route2_tf(Reshaped_Time_days_SCE1Route2_tf == 0) = 10^15;
Reshaped_Time_days_SCE1Route3_t0(Reshaped_Time_days_SCE1Route3_t0 == 0) = 10^15; Reshaped_Time_days_SCE1Route3_tm(Reshaped_Time_days_SCE1Route3_tm == 0) = 10^15; Reshaped_Time_days_SCE1Route3_tf(Reshaped_Time_days_SCE1Route3_tf == 0) = 10^15;

Ice_Reshaped_Time_days_SCE2Route1_t0(Ice_Reshaped_Time_days_SCE2Route1_t0 == 0) = 10^15; Ice_Reshaped_Time_days_SCE2Route1_tm(Ice_Reshaped_Time_days_SCE2Route1_tm == 0) = 10^15; Ice_Reshaped_Time_days_SCE2Route1_tf(Ice_Reshaped_Time_days_SCE2Route1_tf == 0) = 10^15;
Ice_Reshaped_Time_days_SCE2Route2_t0(Ice_Reshaped_Time_days_SCE2Route2_t0 == 0) = 10^15; Ice_Reshaped_Time_days_SCE2Route2_tm(Ice_Reshaped_Time_days_SCE2Route2_tm == 0) = 10^15; Ice_Reshaped_Time_days_SCE2Route2_tf(Ice_Reshaped_Time_days_SCE2Route2_tf == 0) = 10^15;
Ice_Reshaped_Time_days_SCE2Route3_t0(Ice_Reshaped_Time_days_SCE2Route3_t0 == 0) = 10^15; Ice_Reshaped_Time_days_SCE2Route3_tm(Ice_Reshaped_Time_days_SCE2Route3_tm == 0) = 10^15; Ice_Reshaped_Time_days_SCE2Route3_tf(Ice_Reshaped_Time_days_SCE2Route3_tf == 0) = 10^15;

NonIce_Reshaped_Time_days_SCE2Route1_t0(NonIce_Reshaped_Time_days_SCE2Route1_t0 == 0) = 10^15; NonIce_Reshaped_Time_days_SCE2Route1_tm(NonIce_Reshaped_Time_days_SCE2Route1_tm == 0) = 10^15; NonIce_Reshaped_Time_days_SCE2Route1_tf(NonIce_Reshaped_Time_days_SCE2Route1_tf == 0) = 10^15;
NonIce_Reshaped_Time_days_SCE2Route2_t0(NonIce_Reshaped_Time_days_SCE2Route2_t0 == 0) = 10^15; NonIce_Reshaped_Time_days_SCE2Route2_tm(NonIce_Reshaped_Time_days_SCE2Route2_tm == 0) = 10^15; NonIce_Reshaped_Time_days_SCE2Route2_tf(NonIce_Reshaped_Time_days_SCE2Route2_tf == 0) = 10^15;
NonIce_Reshaped_Time_days_SCE2Route3_t0(NonIce_Reshaped_Time_days_SCE2Route3_t0 == 0) = 10^15; NonIce_Reshaped_Time_days_SCE2Route3_tm(NonIce_Reshaped_Time_days_SCE2Route3_tm == 0) = 10^15; NonIce_Reshaped_Time_days_SCE2Route3_tf(NonIce_Reshaped_Time_days_SCE2Route3_tf == 0) = 10^15;

SCE1_Route1_Total_T_days_t0 = Reshaped_Time_days_SCE1Route1_t0 + Arctic_OW_Route1_T_A;
SCE1_Route1_Total_T_days_tm = Reshaped_Time_days_SCE1Route1_tm + Arctic_OW_Route1_T_A;
SCE1_Route1_Total_T_days_tf = Reshaped_Time_days_SCE1Route1_tf + Arctic_OW_Route1_T_A;

SCE1_Route2_Total_T_days_t0 = Reshaped_Time_days_SCE1Route2_t0 + Arctic_OW_Route1_T_A;
SCE1_Route2_Total_T_days_tm = Reshaped_Time_days_SCE1Route2_tm + Arctic_OW_Route1_T_A;
SCE1_Route2_Total_T_days_tf = Reshaped_Time_days_SCE1Route2_tf + Arctic_OW_Route1_T_A;

SCE1_Route3_Total_T_days_t0 = Reshaped_Time_days_SCE1Route3_t0 + Arctic_OW_Route1_T_A;
SCE1_Route3_Total_T_days_tm = Reshaped_Time_days_SCE1Route3_tm + Arctic_OW_Route1_T_A;
SCE1_Route3_Total_T_days_tf = Reshaped_Time_days_SCE1Route3_tf + Arctic_OW_Route1_T_A;

Navigational_Space = 30.*ones(length(SCE1_Route1_Total_T_days_t0(:,1)), length(SCE1_Route1_Total_T_days_t0(1,:))); %Each cell represents a month

SCE1_Ice_Route1_n_t0 = Navigational_Space./SCE1_Route1_Total_T_days_t0;
SCE1_Ice_Route1_n_tm = Navigational_Space./SCE1_Route1_Total_T_days_tm;
SCE1_Ice_Route1_n_tf = Navigational_Space./SCE1_Route1_Total_T_days_tf;

SCE1_Ice_Route2_n_t0 = Navigational_Space./SCE1_Route2_Total_T_days_t0;
SCE1_Ice_Route2_n_tm = Navigational_Space./SCE1_Route2_Total_T_days_tm;
SCE1_Ice_Route2_n_tf = Navigational_Space./SCE1_Route2_Total_T_days_tf;

SCE1_Ice_Route3_n_t0 = Navigational_Space./SCE1_Route3_Total_T_days_t0;
SCE1_Ice_Route3_n_tm = Navigational_Space./SCE1_Route3_Total_T_days_tm;
SCE1_Ice_Route3_n_tf = Navigational_Space./SCE1_Route3_Total_T_days_tf;

SCE1_Ice_Route1_n_t0 = round(sum(SCE1_Ice_Route1_n_t0,2));
SCE1_Ice_Route1_n_tm = round(sum(SCE1_Ice_Route1_n_tm,2));
SCE1_Ice_Route1_n_tf = round(sum(SCE1_Ice_Route1_n_tf,2));

SCE1_Ice_Route2_n_t0 = round(sum(SCE1_Ice_Route2_n_t0,2));
SCE1_Ice_Route2_n_tm = round(sum(SCE1_Ice_Route2_n_tm,2));
SCE1_Ice_Route2_n_tf = round(sum(SCE1_Ice_Route2_n_tf,2));

SCE1_Ice_Route3_n_t0 = round(sum(SCE1_Ice_Route3_n_t0,2));
SCE1_Ice_Route3_n_tm = round(sum(SCE1_Ice_Route3_n_tm,2));
SCE1_Ice_Route3_n_tf = round(sum(SCE1_Ice_Route3_n_tf,2));

if isempty(Ice_Reshaped_Time_days_SCE2Route1_t0) == 1
    Ice_Reshaped_Time_days_SCE2Route1_t0 = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_Route1_Total_T_days_t0 = Ice_Reshaped_Time_days_SCE2Route1_t0 + Arctic_OW_Route1_T_A;

if isempty(Ice_Reshaped_Time_days_SCE2Route1_tm) == 1
    Ice_Reshaped_Time_days_SCE2Route1_tm = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_Route1_Total_T_days_tm = Ice_Reshaped_Time_days_SCE2Route1_tm + Arctic_OW_Route1_T_A;

if isempty(Ice_Reshaped_Time_days_SCE2Route1_tf) == 1
    Ice_Reshaped_Time_days_SCE2Route1_tf = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_Route1_Total_T_days_tf = Ice_Reshaped_Time_days_SCE2Route1_tf + Arctic_OW_Route1_T_A;

%If the ship can't go through the Arctic then the value is replaced with a
%large number so that the number of voyages (n) becomes zero
if isempty(Ice_Reshaped_Time_days_SCE2Route2_t0) == 1
    Ice_Reshaped_Time_days_SCE2Route2_t0 = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_Route2_Total_T_days_t0 = Ice_Reshaped_Time_days_SCE2Route2_t0 + Arctic_OW_Route1_T_A;

if isempty(Ice_Reshaped_Time_days_SCE2Route2_tm) == 1
    Ice_Reshaped_Time_days_SCE2Route2_tm = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_Route2_Total_T_days_tm = Ice_Reshaped_Time_days_SCE2Route2_tm + Arctic_OW_Route1_T_A;

if isempty(Ice_Reshaped_Time_days_SCE2Route2_tf) == 1
    Ice_Reshaped_Time_days_SCE2Route2_tf = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_Route2_Total_T_days_tf = Ice_Reshaped_Time_days_SCE2Route2_tf + Arctic_OW_Route1_T_A;


if isempty(Ice_Reshaped_Time_days_SCE2Route3_t0) == 1
    Ice_Reshaped_Time_days_SCE2Route3_t0 = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_Route3_Total_T_days_t0 = Ice_Reshaped_Time_days_SCE2Route3_t0 + Arctic_OW_Route1_T_A;

if isempty(Ice_Reshaped_Time_days_SCE2Route3_tm) == 1
    Ice_Reshaped_Time_days_SCE2Route3_tm = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_Route3_Total_T_days_tm = Ice_Reshaped_Time_days_SCE2Route3_tm + Arctic_OW_Route1_T_A;

if isempty(Ice_Reshaped_Time_days_SCE2Route3_tf) == 1
    Ice_Reshaped_Time_days_SCE2Route3_tf = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_Route3_Total_T_days_tf = Ice_Reshaped_Time_days_SCE2Route3_tf + Arctic_OW_Route1_T_A;

%OW
%%%%%%%%%%%%%%%%%%%%%
if isempty(NonIce_Reshaped_Time_days_SCE2Route1_t0) == 1
    NonIce_Reshaped_Time_days_SCE2Route1_t0 = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_NonIce_Route1_Total_T_days_t0 = NonIce_Reshaped_Time_days_SCE2Route1_t0 + Arctic_OW_Route1_T_A;

if isempty(NonIce_Reshaped_Time_days_SCE2Route1_tm) == 1
    NonIce_Reshaped_Time_days_SCE2Route1_tm = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_NonIce_Route1_Total_T_days_tm = NonIce_Reshaped_Time_days_SCE2Route1_tm + Arctic_OW_Route1_T_A;

if isempty(NonIce_Reshaped_Time_days_SCE2Route1_tf) == 1
    NonIce_Reshaped_Time_days_SCE2Route1_tf = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_NonIce_Route1_Total_T_days_tf = NonIce_Reshaped_Time_days_SCE2Route1_tf + Arctic_OW_Route1_T_A;

%If the ship can't go through the Arctic then the value is replaced with a
%large number so that the number of voyages (n) becomes zero
if isempty(NonIce_Reshaped_Time_days_SCE2Route2_t0) == 1
    NonIce_Reshaped_Time_days_SCE2Route2_t0 = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_NonIce_Route2_Total_T_days_t0 = NonIce_Reshaped_Time_days_SCE2Route2_t0 + Arctic_OW_Route1_T_A;

if isempty(NonIce_Reshaped_Time_days_SCE2Route2_tm) == 1
    NonIce_Reshaped_Time_days_SCE2Route2_tm = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_NonIce_Route2_Total_T_days_tm = NonIce_Reshaped_Time_days_SCE2Route2_tm + Arctic_OW_Route1_T_A;

if isempty(NonIce_Reshaped_Time_days_SCE2Route2_tf) == 1
    NonIce_Reshaped_Time_days_SCE2Route2_tf = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_NonIce_Route2_Total_T_days_tf = NonIce_Reshaped_Time_days_SCE2Route2_tf + Arctic_OW_Route1_T_A;


if isempty(NonIce_Reshaped_Time_days_SCE2Route3_t0) == 1
    NonIce_Reshaped_Time_days_SCE2Route3_t0 = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_NonIce_Route3_Total_T_days_t0 = NonIce_Reshaped_Time_days_SCE2Route3_t0 + Arctic_OW_Route1_T_A;

if isempty(NonIce_Reshaped_Time_days_SCE2Route3_tm) == 1
    NonIce_Reshaped_Time_days_SCE2Route3_tm = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_NonIce_Route3_Total_T_days_tm = NonIce_Reshaped_Time_days_SCE2Route3_tm + Arctic_OW_Route1_T_A;

if isempty(NonIce_Reshaped_Time_days_SCE2Route3_tf) == 1
    NonIce_Reshaped_Time_days_SCE2Route3_tf = 10^15.*ones(length(Arctic_OW_Route1_T_A(:,1)),1);
end

SCE2_NonIce_Route3_Total_T_days_tf = NonIce_Reshaped_Time_days_SCE2Route3_tf + Arctic_OW_Route1_T_A;

Navigational_Route1_Space_t0 = 30.*ones(length(SCE2_Route1_Total_T_days_t0(:,1)), length(SCE2_Route1_Total_T_days_t0(1,:))); %Each cell represents a month
Navigational_Route1_Space_tm = 30.*ones(length(SCE2_Route1_Total_T_days_tm(:,1)), length(SCE2_Route1_Total_T_days_tm(1,:)));
Navigational_Route1_Space_tf = 30.*ones(length(SCE2_Route1_Total_T_days_tf(:,1)), length(SCE2_Route1_Total_T_days_tf(1,:)));

Navigational_Route2_Space_t0 = 30.*ones(length(SCE2_Route2_Total_T_days_t0(:,1)), length(SCE2_Route2_Total_T_days_t0(1,:))); %Each cell represents a month
Navigational_Route2_Space_tm = 30.*ones(length(SCE2_Route2_Total_T_days_tm(:,1)), length(SCE2_Route2_Total_T_days_tm(1,:)));
Navigational_Route2_Space_tf = 30.*ones(length(SCE2_Route2_Total_T_days_tf(:,1)), length(SCE2_Route2_Total_T_days_tf(1,:)));

Navigational_Route3_Space_t0 = 30.*ones(length(SCE2_Route3_Total_T_days_t0(:,1)), length(SCE2_Route3_Total_T_days_t0(1,:))); %Each cell represents a month
Navigational_Route3_Space_tm = 30.*ones(length(SCE2_Route3_Total_T_days_tm(:,1)), length(SCE2_Route3_Total_T_days_tm(1,:)));
Navigational_Route3_Space_tf = 30.*ones(length(SCE2_Route3_Total_T_days_tf(:,1)), length(SCE2_Route3_Total_T_days_tf(1,:)));

SCE2_Ice_Route1_n_t0 = Navigational_Route1_Space_t0./SCE2_Route1_Total_T_days_t0;
SCE2_Ice_Route1_n_tm = Navigational_Route1_Space_tm./SCE2_Route1_Total_T_days_tm;
SCE2_Ice_Route1_n_tf = Navigational_Route1_Space_tf./SCE2_Route1_Total_T_days_tf;

SCE2_Ice_Route2_n_t0 = Navigational_Route2_Space_t0./SCE2_Route2_Total_T_days_t0;
SCE2_Ice_Route2_n_tm = Navigational_Route2_Space_tm./SCE2_Route2_Total_T_days_tm;
SCE2_Ice_Route2_n_tf = Navigational_Route2_Space_tf./SCE2_Route2_Total_T_days_tf;

SCE2_Ice_Route3_n_t0 = Navigational_Route3_Space_t0./SCE2_Route3_Total_T_days_t0;
SCE2_Ice_Route3_n_tm = Navigational_Route3_Space_tm./SCE2_Route3_Total_T_days_tm;
SCE2_Ice_Route3_n_tf = Navigational_Route3_Space_tf./SCE2_Route3_Total_T_days_tf;

SCE2_Ice_Route1_n_t0 = round(sum(SCE2_Ice_Route1_n_t0,2));
SCE2_Ice_Route1_n_tm = round(sum(SCE2_Ice_Route1_n_tm,2));
SCE2_Ice_Route1_n_tf = round(sum(SCE2_Ice_Route1_n_tf,2));

SCE2_Ice_Route2_n_t0 = round(sum(SCE2_Ice_Route2_n_t0,2));
SCE2_Ice_Route2_n_tm = round(sum(SCE2_Ice_Route2_n_tm,2));
SCE2_Ice_Route2_n_tf = round(sum(SCE2_Ice_Route2_n_tf,2));

SCE2_Ice_Route3_n_t0 = round(sum(SCE2_Ice_Route3_n_t0,2));
SCE2_Ice_Route3_n_tm = round(sum(SCE2_Ice_Route3_n_tm,2));
SCE2_Ice_Route3_n_tf = round(sum(SCE2_Ice_Route3_n_tf,2));

%OW
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Navigational_Route1_Space_t0 = 30.*ones(length(SCE2_NonIce_Route1_Total_T_days_t0(:,1)), length(SCE2_NonIce_Route1_Total_T_days_t0(1,:))); %Each cell represents a month
Navigational_Route1_Space_tm = 30.*ones(length(SCE2_NonIce_Route1_Total_T_days_tm(:,1)), length(SCE2_NonIce_Route1_Total_T_days_tm(1,:)));
Navigational_Route1_Space_tf = 30.*ones(length(SCE2_NonIce_Route1_Total_T_days_tf(:,1)), length(SCE2_NonIce_Route1_Total_T_days_tf(1,:)));

Navigational_Route2_Space_t0 = 30.*ones(length(SCE2_NonIce_Route2_Total_T_days_t0(:,1)), length(SCE2_NonIce_Route2_Total_T_days_t0(1,:))); %Each cell represents a month
Navigational_Route2_Space_tm = 30.*ones(length(SCE2_NonIce_Route2_Total_T_days_tm(:,1)), length(SCE2_NonIce_Route2_Total_T_days_tm(1,:)));
Navigational_Route2_Space_tf = 30.*ones(length(SCE2_NonIce_Route2_Total_T_days_tf(:,1)), length(SCE2_NonIce_Route2_Total_T_days_tf(1,:)));

Navigational_Route3_Space_t0 = 30.*ones(length(SCE2_NonIce_Route3_Total_T_days_t0(:,1)), length(SCE2_NonIce_Route3_Total_T_days_t0(1,:))); %Each cell represents a month
Navigational_Route3_Space_tm = 30.*ones(length(SCE2_NonIce_Route3_Total_T_days_tm(:,1)), length(SCE2_NonIce_Route3_Total_T_days_tm(1,:)));
Navigational_Route3_Space_tf = 30.*ones(length(SCE2_NonIce_Route3_Total_T_days_tf(:,1)), length(SCE2_NonIce_Route3_Total_T_days_tf(1,:)));

SCE2_NonIce_Route1_n_t0 = Navigational_Route1_Space_t0./SCE2_NonIce_Route1_Total_T_days_t0;
SCE2_NonIce_Route1_n_tm = Navigational_Route1_Space_tm./SCE2_NonIce_Route1_Total_T_days_tm;
SCE2_NonIce_Route1_n_tf = Navigational_Route1_Space_tf./SCE2_NonIce_Route1_Total_T_days_tf;

SCE2_NonIce_Route2_n_t0 = Navigational_Route2_Space_t0./SCE2_NonIce_Route2_Total_T_days_t0;
SCE2_NonIce_Route2_n_tm = Navigational_Route2_Space_tm./SCE2_NonIce_Route2_Total_T_days_tm;
SCE2_NonIce_Route2_n_tf = Navigational_Route2_Space_tf./SCE2_NonIce_Route2_Total_T_days_tf;

SCE2_NonIce_Route3_n_t0 = Navigational_Route3_Space_t0./SCE2_NonIce_Route3_Total_T_days_t0;
SCE2_NonIce_Route3_n_tm = Navigational_Route3_Space_tm./SCE2_NonIce_Route3_Total_T_days_tm;
SCE2_NonIce_Route3_n_tf = Navigational_Route3_Space_tf./SCE2_NonIce_Route3_Total_T_days_tf;

SCE2_NonIce_Route1_n_t0 = round(sum(SCE2_NonIce_Route1_n_t0,2));
SCE2_NonIce_Route1_n_tm = round(sum(SCE2_NonIce_Route1_n_tm,2));
SCE2_NonIce_Route1_n_tf = round(sum(SCE2_NonIce_Route1_n_tf,2));

SCE2_NonIce_Route2_n_t0 = round(sum(SCE2_NonIce_Route2_n_t0,2));
SCE2_NonIce_Route2_n_tm = round(sum(SCE2_NonIce_Route2_n_tm,2));
SCE2_NonIce_Route2_n_tf = round(sum(SCE2_NonIce_Route2_n_tf,2));

SCE2_NonIce_Route3_n_t0 = round(sum(SCE2_NonIce_Route3_n_t0,2));
SCE2_NonIce_Route3_n_tm = round(sum(SCE2_NonIce_Route3_n_tm,2));
SCE2_NonIce_Route3_n_tf = round(sum(SCE2_NonIce_Route3_n_tf,2));

%Add in the open water component of energy and fuel consumption
OW_Ice_Energy_consumed_kWh_SCE1Route1_Arctic_t0 = 24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE1_Ice_Route1_n_t0;
OW_Ice_Fuel_Consumed_SCE1Route1_Arctic_t_t0 = OW_Ice_Energy_consumed_kWh_SCE1Route1_Arctic_t0.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE1Route1_Arctic_tm = 24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE1_Ice_Route1_n_tm;
OW_Ice_Fuel_Consumed_SCE1Route1_Arctic_t_tm = OW_Ice_Energy_consumed_kWh_SCE1Route1_Arctic_tm.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE1Route1_Arctic_tf = 24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE1_Ice_Route1_n_tf;
OW_Ice_Fuel_Consumed_SCE1Route1_Arctic_t_tf = OW_Ice_Energy_consumed_kWh_SCE1Route1_Arctic_tf.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE1Route2_Arctic_t0 = 24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE1_Ice_Route2_n_t0;
OW_Ice_Fuel_Consumed_SCE1Route2_Arctic_t_t0 = OW_Ice_Energy_consumed_kWh_SCE1Route2_Arctic_t0.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE1Route2_Arctic_tm = 24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE1_Ice_Route2_n_tm;
OW_Ice_Fuel_Consumed_SCE1Route2_Arctic_t_tm = OW_Ice_Energy_consumed_kWh_SCE1Route2_Arctic_tm.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE1Route2_Arctic_tf =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE1_Ice_Route2_n_tf;
OW_Ice_Fuel_Consumed_SCE1Route2_Arctic_t_tf = OW_Ice_Energy_consumed_kWh_SCE1Route2_Arctic_tf.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE1Route3_Arctic_t0 =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE1_Ice_Route3_n_t0;
OW_Ice_Fuel_Consumed_SCE1Route3_Arctic_t_t0 = OW_Ice_Energy_consumed_kWh_SCE1Route3_Arctic_t0.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE1Route3_Arctic_tm =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE1_Ice_Route3_n_tm;
OW_Ice_Fuel_Consumed_SCE1Route3_Arctic_t_tm = OW_Ice_Energy_consumed_kWh_SCE1Route3_Arctic_tm.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE1Route3_Arctic_tf =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE1_Ice_Route3_n_tf;
OW_Ice_Fuel_Consumed_SCE1Route3_Arctic_t_tf = OW_Ice_Energy_consumed_kWh_SCE1Route3_Arctic_tf.*Icesfc.*10^-6;

Ice_Energy_consumed_SCE1Route1_Arctic_t_t0 = Ice_Energy_consumed_SCE1Route1_Arctic_t_t0 + OW_Ice_Energy_consumed_kWh_SCE1Route1_Arctic_t0;
Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0 = Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0 + OW_Ice_Fuel_Consumed_SCE1Route1_Arctic_t_t0;

Ice_Energy_consumed_SCE1Route1_Arctic_t_tm = Ice_Energy_consumed_SCE1Route1_Arctic_t_tm + OW_Ice_Energy_consumed_kWh_SCE1Route1_Arctic_tm;
Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm = Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm + OW_Ice_Fuel_Consumed_SCE1Route1_Arctic_t_tm;

Ice_Energy_consumed_SCE1Route1_Arctic_t_tf = Ice_Energy_consumed_SCE1Route1_Arctic_t_tf + OW_Ice_Energy_consumed_kWh_SCE1Route1_Arctic_tf;
Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf = Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf + OW_Ice_Fuel_Consumed_SCE1Route1_Arctic_t_tf;

Ice_Energy_consumed_SCE1Route2_Arctic_t_t0 = Ice_Energy_consumed_SCE1Route2_Arctic_t_t0 + OW_Ice_Energy_consumed_kWh_SCE1Route2_Arctic_t0;
Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0 = Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0 + OW_Ice_Fuel_Consumed_SCE1Route2_Arctic_t_t0;

Ice_Energy_consumed_SCE1Route2_Arctic_t_tm = Ice_Energy_consumed_SCE1Route2_Arctic_t_tm + OW_Ice_Energy_consumed_kWh_SCE1Route2_Arctic_tm;
Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm = Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm + OW_Ice_Fuel_Consumed_SCE1Route2_Arctic_t_tm;

Ice_Energy_consumed_SCE1Route2_Arctic_t_tf = Ice_Energy_consumed_SCE1Route2_Arctic_t_tf + OW_Ice_Energy_consumed_kWh_SCE1Route2_Arctic_tf;
Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf = Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf + OW_Ice_Fuel_Consumed_SCE1Route2_Arctic_t_tf;

Ice_Energy_consumed_SCE1Route3_Arctic_t_t0 = Ice_Energy_consumed_SCE1Route3_Arctic_t_t0 + OW_Ice_Energy_consumed_kWh_SCE1Route3_Arctic_t0;
Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0 = Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0 + OW_Ice_Fuel_Consumed_SCE1Route3_Arctic_t_t0;

Ice_Energy_consumed_SCE1Route3_Arctic_t_tm = Ice_Energy_consumed_SCE1Route3_Arctic_t_tm + OW_Ice_Energy_consumed_kWh_SCE1Route3_Arctic_tm;
Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm = Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm + OW_Ice_Fuel_Consumed_SCE1Route3_Arctic_t_tm;

Ice_Energy_consumed_SCE1Route3_Arctic_t_tf = Ice_Energy_consumed_SCE1Route3_Arctic_t_tf + OW_Ice_Energy_consumed_kWh_SCE1Route3_Arctic_tf;
Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf = Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf + OW_Ice_Fuel_Consumed_SCE1Route3_Arctic_t_tf;

%Scenario 2
OW_Ice_Energy_consumed_kWh_SCE2Route1_Arctic_t0 =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE2_Ice_Route1_n_t0;
OW_Ice_Fuel_Consumed_SCE2Route1_Arctic_t_t0 = OW_Ice_Energy_consumed_kWh_SCE2Route1_Arctic_t0.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE2Route1_Arctic_tm =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE2_Ice_Route1_n_tm;
OW_Ice_Fuel_Consumed_SCE2Route1_Arctic_t_tm = OW_Ice_Energy_consumed_kWh_SCE2Route1_Arctic_tm.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE2Route1_Arctic_tf =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE2_Ice_Route1_n_tf;
OW_Ice_Fuel_Consumed_SCE2Route1_Arctic_t_tf = OW_Ice_Energy_consumed_kWh_SCE2Route1_Arctic_tf.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE2Route2_Arctic_t0 =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE2_Ice_Route2_n_t0;
OW_Ice_Fuel_Consumed_SCE2Route2_Arctic_t_t0 = OW_Ice_Energy_consumed_kWh_SCE2Route2_Arctic_t0.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE2Route2_Arctic_tm =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE2_Ice_Route2_n_tm;
OW_Ice_Fuel_Consumed_SCE2Route2_Arctic_t_tm = OW_Ice_Energy_consumed_kWh_SCE2Route2_Arctic_tm.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE2Route2_Arctic_tf =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE2_Ice_Route2_n_tf;
OW_Ice_Fuel_Consumed_SCE2Route2_Arctic_t_tf = OW_Ice_Energy_consumed_kWh_SCE2Route2_Arctic_tf.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE2Route3_Arctic_t0 =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE2_Ice_Route3_n_t0;
OW_Ice_Fuel_Consumed_SCE2Route3_Arctic_t_t0 = OW_Ice_Energy_consumed_kWh_SCE2Route3_Arctic_t0.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE2Route3_Arctic_tm =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE2_Ice_Route3_n_tm;
OW_Ice_Fuel_Consumed_SCE2Route3_Arctic_t_tm = OW_Ice_Energy_consumed_kWh_SCE2Route3_Arctic_tm.*Icesfc.*10^-6;

OW_Ice_Energy_consumed_kWh_SCE2Route3_Arctic_tf =  24.*Arctic_OW_Route1_T_A.*IceStrengthOutput_power_kW.*SCE2_Ice_Route3_n_tf;
OW_Ice_Fuel_Consumed_SCE2Route3_Arctic_t_tf = OW_Ice_Energy_consumed_kWh_SCE2Route3_Arctic_tf.*Icesfc.*10^-6;

Ice_Energy_consumed_SCE2Route1_Arctic_t_t0 = Ice_Energy_consumed_SCE2Route1_Arctic_t_t0 + OW_Ice_Energy_consumed_kWh_SCE2Route1_Arctic_t0;
Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0 = Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0 + OW_Ice_Fuel_Consumed_SCE2Route1_Arctic_t_t0;

Ice_Energy_consumed_SCE2Route1_Arctic_t_tm = Ice_Energy_consumed_SCE2Route1_Arctic_t_tm + OW_Ice_Energy_consumed_kWh_SCE2Route1_Arctic_tm;
Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm = Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm + OW_Ice_Fuel_Consumed_SCE2Route1_Arctic_t_tm;

Ice_Energy_consumed_SCE2Route1_Arctic_t_tf = Ice_Energy_consumed_SCE2Route1_Arctic_t_tf + OW_Ice_Energy_consumed_kWh_SCE2Route1_Arctic_tf;
Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf = Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf + OW_Ice_Fuel_Consumed_SCE2Route1_Arctic_t_tf;

Ice_Energy_consumed_SCE2Route2_Arctic_t_t0 = Ice_Energy_consumed_SCE2Route2_Arctic_t_t0 + OW_Ice_Energy_consumed_kWh_SCE2Route2_Arctic_t0;
Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0 = Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0 + OW_Ice_Fuel_Consumed_SCE2Route2_Arctic_t_t0;

Ice_Energy_consumed_SCE2Route2_Arctic_t_tm = Ice_Energy_consumed_SCE2Route2_Arctic_t_tm + OW_Ice_Energy_consumed_kWh_SCE2Route2_Arctic_tm;
Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm = Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm + OW_Ice_Fuel_Consumed_SCE2Route2_Arctic_t_tm;

Ice_Energy_consumed_SCE2Route2_Arctic_t_tf = Ice_Energy_consumed_SCE2Route2_Arctic_t_tf + OW_Ice_Energy_consumed_kWh_SCE2Route2_Arctic_tf;
Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf = Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf + OW_Ice_Fuel_Consumed_SCE2Route2_Arctic_t_tf;

Ice_Energy_consumed_SCE2Route3_Arctic_t_t0 = Ice_Energy_consumed_SCE2Route3_Arctic_t_t0 + OW_Ice_Energy_consumed_kWh_SCE2Route3_Arctic_t0;
Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0 = Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0 + OW_Ice_Fuel_Consumed_SCE2Route3_Arctic_t_t0;

Ice_Energy_consumed_SCE2Route3_Arctic_t_tm = Ice_Energy_consumed_SCE2Route3_Arctic_t_tm + OW_Ice_Energy_consumed_kWh_SCE2Route3_Arctic_tm;
Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm = Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm + OW_Ice_Fuel_Consumed_SCE2Route3_Arctic_t_tm;

Ice_Energy_consumed_SCE2Route3_Arctic_t_tf = Ice_Energy_consumed_SCE2Route3_Arctic_t_tf + OW_Ice_Energy_consumed_kWh_SCE2Route3_Arctic_tf;
Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf = Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf + OW_Ice_Fuel_Consumed_SCE2Route3_Arctic_t_tf;

%OW
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OW_NonIce_Energy_consumed_kWh_SCE2Route1_Arctic_t0 =  24.*Arctic_OW_Route1_T_A.*NonIceStrengthOutput_power_kW.*SCE2_NonIce_Route1_n_t0;
OW_NonIce_Fuel_Consumed_SCE2Route1_Arctic_t_t0 = OW_NonIce_Energy_consumed_kWh_SCE2Route1_Arctic_t0.*NonIcesfc.*10^-6;

OW_NonIce_Energy_consumed_kWh_SCE2Route1_Arctic_tm =  24.*Arctic_OW_Route1_T_A.*NonIceStrengthOutput_power_kW.*SCE2_NonIce_Route1_n_tm;
OW_NonIce_Fuel_Consumed_SCE2Route1_Arctic_t_tm = OW_NonIce_Energy_consumed_kWh_SCE2Route1_Arctic_tm.*NonIcesfc.*10^-6;

OW_NonIce_Energy_consumed_kWh_SCE2Route1_Arctic_tf =  24.*Arctic_OW_Route1_T_A.*NonIceStrengthOutput_power_kW.*SCE2_NonIce_Route1_n_tf;
OW_NonIce_Fuel_Consumed_SCE2Route1_Arctic_t_tf = OW_NonIce_Energy_consumed_kWh_SCE2Route1_Arctic_tf.*NonIcesfc.*10^-6;

OW_NonIce_Energy_consumed_kWh_SCE2Route2_Arctic_t0 =  24.*Arctic_OW_Route1_T_A.*NonIceStrengthOutput_power_kW.*SCE2_NonIce_Route2_n_t0;
OW_NonIce_Fuel_Consumed_SCE2Route2_Arctic_t_t0 = OW_NonIce_Energy_consumed_kWh_SCE2Route2_Arctic_t0.*NonIcesfc.*10^-6;

OW_NonIce_Energy_consumed_kWh_SCE2Route2_Arctic_tm =  24.*Arctic_OW_Route1_T_A.*NonIceStrengthOutput_power_kW.*SCE2_NonIce_Route2_n_tm;
OW_NonIce_Fuel_Consumed_SCE2Route2_Arctic_t_tm = OW_NonIce_Energy_consumed_kWh_SCE2Route2_Arctic_tm.*NonIcesfc.*10^-6;

OW_NonIce_Energy_consumed_kWh_SCE2Route2_Arctic_tf =  24.*Arctic_OW_Route1_T_A.*NonIceStrengthOutput_power_kW.*SCE2_NonIce_Route2_n_tf;
OW_NonIce_Fuel_Consumed_SCE2Route2_Arctic_t_tf = OW_NonIce_Energy_consumed_kWh_SCE2Route2_Arctic_tf.*NonIcesfc.*10^-6;

OW_NonIce_Energy_consumed_kWh_SCE2Route3_Arctic_t0 =  24.*Arctic_OW_Route1_T_A.*NonIceStrengthOutput_power_kW.*SCE2_NonIce_Route3_n_t0;
OW_NonIce_Fuel_Consumed_SCE2Route3_Arctic_t_t0 = OW_NonIce_Energy_consumed_kWh_SCE2Route3_Arctic_t0.*NonIcesfc.*10^-6;

OW_NonIce_Energy_consumed_kWh_SCE2Route3_Arctic_tm =  24.*Arctic_OW_Route1_T_A.*NonIceStrengthOutput_power_kW.*SCE2_NonIce_Route3_n_tm;
OW_NonIce_Fuel_Consumed_SCE2Route3_Arctic_t_tm = OW_NonIce_Energy_consumed_kWh_SCE2Route3_Arctic_tm.*NonIcesfc.*10^-6;

OW_NonIce_Energy_consumed_kWh_SCE2Route3_Arctic_tf =  24.*Arctic_OW_Route1_T_A.*NonIceStrengthOutput_power_kW.*SCE2_NonIce_Route3_n_tf;
OW_NonIce_Fuel_Consumed_SCE2Route3_Arctic_t_tf = OW_NonIce_Energy_consumed_kWh_SCE2Route3_Arctic_tf.*NonIcesfc.*10^-6;

NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0 = NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0 + OW_NonIce_Energy_consumed_kWh_SCE2Route1_Arctic_t0;
NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0 = NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0 + OW_NonIce_Fuel_Consumed_SCE2Route1_Arctic_t_t0;

NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm = NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm + OW_NonIce_Energy_consumed_kWh_SCE2Route1_Arctic_tm;
NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm = NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm + OW_NonIce_Fuel_Consumed_SCE2Route1_Arctic_t_tm;

NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf = NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf + OW_NonIce_Energy_consumed_kWh_SCE2Route1_Arctic_tf;
NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf = NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf + OW_NonIce_Fuel_Consumed_SCE2Route1_Arctic_t_tf;

NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0 = NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0 + OW_NonIce_Energy_consumed_kWh_SCE2Route2_Arctic_t0;
NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0 = NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0 + OW_NonIce_Fuel_Consumed_SCE2Route2_Arctic_t_t0;

NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm = NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm + OW_NonIce_Energy_consumed_kWh_SCE2Route2_Arctic_tm;
NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm = NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm + OW_NonIce_Fuel_Consumed_SCE2Route2_Arctic_t_tm;

NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf = NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf + OW_NonIce_Energy_consumed_kWh_SCE2Route2_Arctic_tf;
NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf = NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf + OW_NonIce_Fuel_Consumed_SCE2Route2_Arctic_t_tf;

NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0 = NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0 + OW_NonIce_Energy_consumed_kWh_SCE2Route3_Arctic_t0;
NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0 = NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0 + OW_NonIce_Fuel_Consumed_SCE2Route3_Arctic_t_t0;

NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm = NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm + OW_NonIce_Energy_consumed_kWh_SCE2Route3_Arctic_tm;
NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm = NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm + OW_NonIce_Fuel_Consumed_SCE2Route3_Arctic_t_tm;

NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf = NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf + OW_NonIce_Energy_consumed_kWh_SCE2Route3_Arctic_tf;
NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf = NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf + OW_NonIce_Fuel_Consumed_SCE2Route3_Arctic_t_tf;

%Tidy up the calculations above
SCE1_Route1_Total_T_days_t0(SCE1_Route1_Total_T_days_t0 > 10^6) = 0; SCE1_Route1_Total_T_days_t0 = sum(SCE1_Route1_Total_T_days_t0,2);
SCE1_Route1_Total_T_days_tm(SCE1_Route1_Total_T_days_tm > 10^6) = 0; SCE1_Route1_Total_T_days_tm = sum(SCE1_Route1_Total_T_days_tm,2);
SCE1_Route1_Total_T_days_tf(SCE1_Route1_Total_T_days_tf > 10^6) = 0; SCE1_Route1_Total_T_days_tf = sum(SCE1_Route1_Total_T_days_tf,2);

SCE1_Route2_Total_T_days_t0(SCE1_Route2_Total_T_days_t0 > 10^6) = 0; SCE1_Route2_Total_T_days_t0 = sum(SCE1_Route2_Total_T_days_t0,2);
SCE1_Route2_Total_T_days_tm(SCE1_Route2_Total_T_days_tm > 10^6) = 0; SCE1_Route2_Total_T_days_tm = sum(SCE1_Route2_Total_T_days_tm,2);
SCE1_Route2_Total_T_days_tf(SCE1_Route2_Total_T_days_tf > 10^6) = 0; SCE1_Route2_Total_T_days_tf = sum(SCE1_Route2_Total_T_days_tf,2);

SCE1_Route3_Total_T_days_t0(SCE1_Route3_Total_T_days_t0 > 10^6) = 0; SCE1_Route3_Total_T_days_t0 = sum(SCE1_Route3_Total_T_days_t0,2);
SCE1_Route3_Total_T_days_tm(SCE1_Route3_Total_T_days_tm > 10^6) = 0; SCE1_Route3_Total_T_days_tm = sum(SCE1_Route3_Total_T_days_tm,2);
SCE1_Route3_Total_T_days_tf(SCE1_Route3_Total_T_days_tf > 10^6) = 0; SCE1_Route3_Total_T_days_tf = sum(SCE1_Route3_Total_T_days_tf,2);

SCE2_Route1_Total_T_days_t0(SCE2_Route1_Total_T_days_t0 > 10^6) = 0; SCE2_Route1_Total_T_days_t0 = sum(SCE2_Route1_Total_T_days_t0,2);
SCE2_Route1_Total_T_days_tm(SCE2_Route1_Total_T_days_tm > 10^6) = 0; SCE2_Route1_Total_T_days_tm = sum(SCE2_Route1_Total_T_days_tm,2);
SCE2_Route1_Total_T_days_tf(SCE2_Route1_Total_T_days_tf > 10^6) = 0; SCE2_Route1_Total_T_days_tf = sum(SCE2_Route1_Total_T_days_tf,2);

SCE2_Route2_Total_T_days_t0(SCE2_Route2_Total_T_days_t0 > 10^6) = 0; SCE2_Route2_Total_T_days_t0 = sum(SCE2_Route2_Total_T_days_t0,2);
SCE2_Route2_Total_T_days_tm(SCE2_Route2_Total_T_days_tm > 10^6) = 0; SCE2_Route2_Total_T_days_tm = sum(SCE2_Route2_Total_T_days_tm,2);
SCE2_Route2_Total_T_days_tf(SCE2_Route2_Total_T_days_tf > 10^6) = 0; SCE2_Route2_Total_T_days_tf = sum(SCE2_Route2_Total_T_days_tf,2);

SCE2_Route3_Total_T_days_t0(SCE2_Route3_Total_T_days_t0 > 10^6) = 0; SCE2_Route3_Total_T_days_t0 = sum(SCE2_Route3_Total_T_days_t0,2);
SCE2_Route3_Total_T_days_tm(SCE2_Route3_Total_T_days_tm > 10^6) = 0; SCE2_Route3_Total_T_days_tm = sum(SCE2_Route3_Total_T_days_tm,2);
SCE2_Route3_Total_T_days_tf(SCE2_Route3_Total_T_days_tf > 10^6) = 0; SCE2_Route3_Total_T_days_tf = sum(SCE2_Route3_Total_T_days_tf,2);

%OW
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

SCE2_NonIce_Route1_Total_T_days_t0(SCE2_NonIce_Route1_Total_T_days_t0 > 10^6) = 0; SCE2_NonIce_Route1_Total_T_days_t0 = sum(SCE2_NonIce_Route1_Total_T_days_t0,2);
SCE2_NonIce_Route1_Total_T_days_tm(SCE2_NonIce_Route1_Total_T_days_tm > 10^6) = 0; SCE2_NonIce_Route1_Total_T_days_tm = sum(SCE2_NonIce_Route1_Total_T_days_tm,2);
SCE2_NonIce_Route1_Total_T_days_tf(SCE2_NonIce_Route1_Total_T_days_tf > 10^6) = 0; SCE2_NonIce_Route1_Total_T_days_tf = sum(SCE2_NonIce_Route1_Total_T_days_tf,2);

SCE2_NonIce_Route2_Total_T_days_t0(SCE2_NonIce_Route2_Total_T_days_t0 > 10^6) = 0; SCE2_NonIce_Route2_Total_T_days_t0 = sum(SCE2_NonIce_Route2_Total_T_days_t0,2);
SCE2_NonIce_Route2_Total_T_days_tm(SCE2_NonIce_Route2_Total_T_days_tm > 10^6) = 0; SCE2_NonIce_Route2_Total_T_days_tm = sum(SCE2_NonIce_Route2_Total_T_days_tm,2);
SCE2_NonIce_Route2_Total_T_days_tf(SCE2_NonIce_Route2_Total_T_days_tf > 10^6) = 0; SCE2_NonIce_Route2_Total_T_days_tf = sum(SCE2_NonIce_Route2_Total_T_days_tf,2);

SCE2_NonIce_Route3_Total_T_days_t0(SCE2_NonIce_Route3_Total_T_days_t0 > 10^6) = 0; SCE2_NonIce_Route3_Total_T_days_t0 = sum(SCE2_NonIce_Route3_Total_T_days_t0,2);
SCE2_NonIce_Route3_Total_T_days_tm(SCE2_NonIce_Route3_Total_T_days_tm > 10^6) = 0; SCE2_NonIce_Route3_Total_T_days_tm = sum(SCE2_NonIce_Route3_Total_T_days_tm,2);
SCE2_NonIce_Route3_Total_T_days_tf(SCE2_NonIce_Route3_Total_T_days_tf > 10^6) = 0; SCE2_NonIce_Route3_Total_T_days_tf = sum(SCE2_NonIce_Route3_Total_T_days_tf,2);

%NonIce 
%Fuel consumption calculations 
NonIce_Arctic_nav_d_SCE1_Route1_t0 = SCE2_NonIce_Route1_Total_T_days_t0;

NonIce_Energy_consumed_kWh_SCE1Route1_Arctic_t0 = NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0;
NonIce_Fuel_consumed_SCE1Route1_Arctic_t_t0 = NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0;

%t_m

NonIce_Arctic_nav_d_SCE1_Route1_tm = SCE2_NonIce_Route1_Total_T_days_tm;

NonIce_Energy_consumed_kWh_SCE1Route1_Arctic_tm = NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm;
NonIce_Fuel_consumed_SCE1Route1_Arctic_t_tm = NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm;

%t_f

NonIce_Arctic_nav_d_SCE1_Route1_tf = SCE2_NonIce_Route1_Total_T_days_tf;

NonIce_Energy_consumed_kWh_SCE1Route1_Arctic_tf = NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf;
NonIce_Fuel_consumed_SCE1Route1_Arctic_t_tf = NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf;

%For calculating auxiliary and boiler consumption I need to know the number
%of days the vessel is navigating for 
Arctic_nav_d_SCE1_Route1_t0 = SCE1_Route1_Total_T_days_t0;
Arctic_nav_d_SCE1_Route1_tm = SCE1_Route1_Total_T_days_tm;
Arctic_nav_d_SCE1_Route1_tf = SCE1_Route1_Total_T_days_tf;

Ice_Aux_energy_consumed_kWh_SCE1_Route1_t0 = Aux_power_Ice.*24.*Arctic_nav_d_SCE1_Route1_t0;
Ice_Aux_fuel_consumed_SCE1_Route1_t_t0 = Ice_Aux_energy_consumed_kWh_SCE1_Route1_t0.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE1_Route1_tm = Aux_power_Ice.*24.*Arctic_nav_d_SCE1_Route1_tm;
Ice_Aux_fuel_consumed_SCE1_Route1_t_tm = Ice_Aux_energy_consumed_kWh_SCE1_Route1_tm.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE1_Route1_tf = Aux_power_Ice.*24.*Arctic_nav_d_SCE1_Route1_tf;
Ice_Aux_fuel_consumed_SCE1_Route1_t_tf = Ice_Aux_energy_consumed_kWh_SCE1_Route1_tf.*Aux_sfc.*10^-6;

%Non-ice strengthened ships - Auxiliary
NonIce_Aux_energy_consumed_kWh_SCE1_Route1_t0 = Aux_power.*24.*NonIce_Arctic_nav_d_SCE1_Route1_t0;
NonIce_Aux_fuel_consumed_SCE1_Route1_t_t0 = NonIce_Aux_energy_consumed_kWh_SCE1_Route1_t0.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE1_Route1_tm = Aux_power.*24.*NonIce_Arctic_nav_d_SCE1_Route1_tm;
NonIce_Aux_fuel_consumed_SCE1_Route1_t_tm = NonIce_Aux_energy_consumed_kWh_SCE1_Route1_tm.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE1_Route1_tf = Aux_power.*24.*NonIce_Arctic_nav_d_SCE1_Route1_tf;
NonIce_Aux_fuel_consumed_SCE1_Route1_t_tf = NonIce_Aux_energy_consumed_kWh_SCE1_Route1_tf.*Aux_sfc.*10^-6;

%Logic for getting rid of the non ice class ship boilers
Boil_Logic = (Pow_ice == 0);

%Boiler fuel consumed
Ice_Boil_fuel_consumed_SCE1_Route1_t_t0 = Boiler_tpd.*Arctic_nav_d_SCE1_Route1_t0;
Ice_Boil_fuel_consumed_SCE1_Route1_t_t0(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE1_Route1_t_tm = Boiler_tpd.*Arctic_nav_d_SCE1_Route1_tm;
Ice_Boil_fuel_consumed_SCE1_Route1_t_tm(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE1_Route1_t_tf = Boiler_tpd.*Arctic_nav_d_SCE1_Route1_tf;
Ice_Boil_fuel_consumed_SCE1_Route1_t_tf(Boil_Logic) = 0;

NonIce_Boil_fuel_consumed_SCE1_Route1_t_t0 = Boiler_tpd.*NonIce_Arctic_nav_d_SCE1_Route1_t0;
NonIce_Boil_fuel_consumed_SCE1_Route1_t_tm = Boiler_tpd.*NonIce_Arctic_nav_d_SCE1_Route1_tm;
NonIce_Boil_fuel_consumed_SCE1_Route1_t_tf = Boiler_tpd.*NonIce_Arctic_nav_d_SCE1_Route1_tf;

%Route 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Non-ice strengthened ships 

%t_0
NonIce_Arctic_nav_d_SCE1_Route2_t0 = SCE2_NonIce_Route2_Total_T_days_t0;

NonIce_Energy_consumed_kWh_SCE1Route2_Arctic_t0 = NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0;
NonIce_Fuel_consumed_SCE1Route2_Arctic_t_t0 = NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0;

%t_m

NonIce_Arctic_nav_d_SCE1_Route2_tm = SCE2_NonIce_Route2_Total_T_days_tm;

NonIce_Energy_consumed_kWh_SCE1Route2_Arctic_tm = NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm;
NonIce_Fuel_consumed_SCE1Route2_Arctic_t_tm = NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm;

%t_f

NonIce_Arctic_nav_d_SCE1_Route2_tf = SCE2_NonIce_Route2_Total_T_days_tf;

NonIce_Energy_consumed_kWh_SCE1Route2_Arctic_tf = NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf;
NonIce_Fuel_consumed_SCE1Route2_Arctic_t_tf = NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf;

%For calculating auxiliary and boiler consumption I need to know the number
%of days the vessel is navigating for 

Arctic_nav_d_SCE1_Route2_t0 = SCE1_Route2_Total_T_days_t0;
Arctic_nav_d_SCE1_Route2_tm = SCE1_Route2_Total_T_days_tm;
Arctic_nav_d_SCE1_Route2_tf = SCE1_Route2_Total_T_days_tf;

Ice_Aux_energy_consumed_kWh_SCE1_Route2_t0 = Aux_power_Ice.*24.*Arctic_nav_d_SCE1_Route2_t0;
Ice_Aux_fuel_consumed_SCE1_Route2_t_t0 = Ice_Aux_energy_consumed_kWh_SCE1_Route2_t0.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE1_Route2_tm = Aux_power_Ice.*24.*Arctic_nav_d_SCE1_Route2_tm;
Ice_Aux_fuel_consumed_SCE1_Route2_t_tm = Ice_Aux_energy_consumed_kWh_SCE1_Route2_tm.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE1_Route2_tf = Aux_power_Ice.*24.*Arctic_nav_d_SCE1_Route2_tf;
Ice_Aux_fuel_consumed_SCE1_Route2_t_tf = Ice_Aux_energy_consumed_kWh_SCE1_Route2_tf.*Aux_sfc.*10^-6;

%Non-ice strengthened ships - Auxiliary
NonIce_Aux_energy_consumed_kWh_SCE1_Route2_t0 = Aux_power.*24.*NonIce_Arctic_nav_d_SCE1_Route2_t0;
NonIce_Aux_fuel_consumed_SCE1_Route2_t_t0 = NonIce_Aux_energy_consumed_kWh_SCE1_Route2_t0.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE1_Route2_tm = Aux_power.*24.*NonIce_Arctic_nav_d_SCE1_Route2_tm;
NonIce_Aux_fuel_consumed_SCE1_Route2_t_tm = NonIce_Aux_energy_consumed_kWh_SCE1_Route2_tm.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE1_Route2_tf = Aux_power.*24.*NonIce_Arctic_nav_d_SCE1_Route2_tf;
NonIce_Aux_fuel_consumed_SCE1_Route2_t_tf = NonIce_Aux_energy_consumed_kWh_SCE1_Route2_tf.*Aux_sfc.*10^-6;

%Boiler emissions
Ice_Boil_fuel_consumed_SCE1_Route2_t_t0 = Boiler_tpd.*Arctic_nav_d_SCE1_Route2_t0;
Ice_Boil_fuel_consumed_SCE1_Route2_t_t0(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE1_Route2_t_tm = Boiler_tpd.*Arctic_nav_d_SCE1_Route2_tm;
Ice_Boil_fuel_consumed_SCE1_Route2_t_tm(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE1_Route2_t_tf = Boiler_tpd.*Arctic_nav_d_SCE1_Route2_tf;
Ice_Boil_fuel_consumed_SCE1_Route2_t_tf(Boil_Logic) = 0;

NonIce_Boil_fuel_consumed_SCE1_Route2_t_t0 = Boiler_tpd.*NonIce_Arctic_nav_d_SCE1_Route2_t0;
NonIce_Boil_fuel_consumed_SCE1_Route2_t_tm = Boiler_tpd.*NonIce_Arctic_nav_d_SCE1_Route2_tm;
NonIce_Boil_fuel_consumed_SCE1_Route2_t_tf = Boiler_tpd.*NonIce_Arctic_nav_d_SCE1_Route2_tf;

%Route 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Non-ice strengthened ships 

NonIce_Arctic_nav_d_SCE1_Route3_t0 = SCE2_NonIce_Route3_Total_T_days_t0;

NonIce_Energy_consumed_kWh_SCE1Route3_Arctic_t0 = NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0;
NonIce_Fuel_consumed_SCE1Route3_Arctic_t_t0 = NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0;

%t_m
%%%%%%%%%%%%%%%%

NonIce_Arctic_nav_d_SCE1_Route3_tm = SCE2_NonIce_Route3_Total_T_days_tm;

NonIce_Energy_consumed_kWh_SCE1Route3_Arctic_tm = NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm;
NonIce_Fuel_consumed_SCE1Route3_Arctic_t_tm = NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm;

%t_f
%%%%%%%%%%%%%%%%%

NonIce_Arctic_nav_d_SCE1_Route3_tf = SCE2_NonIce_Route3_Total_T_days_tf;

NonIce_Energy_consumed_kWh_SCE1Route3_Arctic_tf = NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf;
NonIce_Fuel_consumed_SCE1Route3_Arctic_t_tf = NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf;

%For calculating auxiliary and boiler consumption I need to know the number
%of days the vessel is navigating for 

Arctic_nav_d_SCE1_Route3_t0 = SCE1_Route3_Total_T_days_t0;
Arctic_nav_d_SCE1_Route3_tm = SCE1_Route3_Total_T_days_tm;
Arctic_nav_d_SCE1_Route3_tf = SCE1_Route3_Total_T_days_tf;

Ice_Aux_energy_consumed_kWh_SCE1_Route3_t0 = Aux_power_Ice.*24.*Arctic_nav_d_SCE1_Route3_t0;
Ice_Aux_fuel_consumed_SCE1_Route3_t_t0 = Ice_Aux_energy_consumed_kWh_SCE1_Route3_t0.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE1_Route3_tm = Aux_power_Ice.*24.*Arctic_nav_d_SCE1_Route3_tm;
Ice_Aux_fuel_consumed_SCE1_Route3_t_tm = Ice_Aux_energy_consumed_kWh_SCE1_Route3_tm.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE1_Route3_tf = Aux_power_Ice.*24.*Arctic_nav_d_SCE1_Route3_tf;
Ice_Aux_fuel_consumed_SCE1_Route3_t_tf = Ice_Aux_energy_consumed_kWh_SCE1_Route3_tf.*Aux_sfc.*10^-6;

%Non-ice strengthened ships - Auxiliary
NonIce_Aux_energy_consumed_kWh_SCE1_Route3_t0 = Aux_power.*24.*NonIce_Arctic_nav_d_SCE1_Route3_t0;
NonIce_Aux_fuel_consumed_SCE1_Route3_t_t0 = NonIce_Aux_energy_consumed_kWh_SCE1_Route3_t0.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE1_Route3_tm = Aux_power.*24.*NonIce_Arctic_nav_d_SCE1_Route3_tm;
NonIce_Aux_fuel_consumed_SCE1_Route3_t_tm = NonIce_Aux_energy_consumed_kWh_SCE1_Route3_tm.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE1_Route3_tf = Aux_power.*24.*NonIce_Arctic_nav_d_SCE1_Route3_tf;
NonIce_Aux_fuel_consumed_SCE1_Route3_t_tf = NonIce_Aux_energy_consumed_kWh_SCE1_Route3_tf.*Aux_sfc.*10^-6;

%Boiler emissions
Ice_Boil_fuel_consumed_SCE1_Route3_t_t0 = Boiler_tpd.*Arctic_nav_d_SCE1_Route3_t0;
Ice_Boil_fuel_consumed_SCE1_Route3_t_t0(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE1_Route3_t_tm = Boiler_tpd.*Arctic_nav_d_SCE1_Route3_tm;
Ice_Boil_fuel_consumed_SCE1_Route3_t_tm(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE1_Route3_t_tf = Boiler_tpd.*Arctic_nav_d_SCE1_Route3_tf;
Ice_Boil_fuel_consumed_SCE1_Route3_t_tf(Boil_Logic) = 0;

NonIce_Boil_fuel_consumed_SCE1_Route3_t_t0 = Boiler_tpd.*NonIce_Arctic_nav_d_SCE1_Route3_t0;
NonIce_Boil_fuel_consumed_SCE1_Route3_t_tm = Boiler_tpd.*NonIce_Arctic_nav_d_SCE1_Route3_tm;
NonIce_Boil_fuel_consumed_SCE1_Route3_t_tf = Boiler_tpd.*NonIce_Arctic_nav_d_SCE1_Route3_tf;

%Scenario2 - Use the Arctic when it's open but otherwise use the Suez 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Scenario 1 - Arctic year round - Extracting total fuel consumed
%Route 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Non-ice strengthened ships - here you calculate the Non ice strengthened
%ships consumption which is a bit simpler as I'm assuming that they don't
%break any ice since they won't encounter any 
%t_0

NonIce_Arctic_nav_d_SCE2_Route1_t0 = SCE2_NonIce_Route1_Total_T_days_t0; %Has already been calculated 

%t_m

NonIce_Arctic_nav_d_SCE2_Route1_tm = SCE2_NonIce_Route1_Total_T_days_tm;

%t_f

NonIce_Arctic_nav_d_SCE2_Route1_tf = SCE2_NonIce_Route1_Total_T_days_tf;

%For calculating auxiliary and boiler consumption I need to know the number
%of days the vessel is navigating for 

Arctic_nav_d_SCE2_Route1_t0 = SCE2_Route1_Total_T_days_t0;
Arctic_nav_d_SCE2_Route1_tm = SCE2_Route1_Total_T_days_tm;
Arctic_nav_d_SCE2_Route1_tf = SCE2_Route1_Total_T_days_tf;

Arctic_nav_d_SCE2_Route2_t0 = SCE2_Route2_Total_T_days_t0;
Arctic_nav_d_SCE2_Route2_tm = SCE2_Route2_Total_T_days_tm;
Arctic_nav_d_SCE2_Route2_tf = SCE2_Route2_Total_T_days_tf;

Arctic_nav_d_SCE2_Route3_t0 = SCE2_Route3_Total_T_days_t0;
Arctic_nav_d_SCE2_Route3_tm = SCE2_Route3_Total_T_days_tm;
Arctic_nav_d_SCE2_Route3_tf = SCE2_Route3_Total_T_days_tf;

Ice_Aux_energy_consumed_kWh_SCE2_Route1_t0 = Aux_power_Ice.*24.*Arctic_nav_d_SCE2_Route1_t0;
Ice_Aux_fuel_consumed_SCE2_Route1_t_t0 = Ice_Aux_energy_consumed_kWh_SCE2_Route1_t0.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE2_Route1_tm = Aux_power_Ice.*24.*Arctic_nav_d_SCE2_Route1_tm;
Ice_Aux_fuel_consumed_SCE2_Route1_t_tm = Ice_Aux_energy_consumed_kWh_SCE2_Route1_tm.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE2_Route1_tf = Aux_power_Ice.*24.*Arctic_nav_d_SCE2_Route1_tf;
Ice_Aux_fuel_consumed_SCE2_Route1_t_tf = Ice_Aux_energy_consumed_kWh_SCE2_Route1_tf.*Aux_sfc.*10^-6;

%Non-ice strengthened ships - Auxiliary
NonIce_Aux_energy_consumed_kWh_SCE2_Route1_t0 = Aux_power.*24.*NonIce_Arctic_nav_d_SCE2_Route1_t0;
NonIce_Aux_fuel_consumed_SCE2_Route1_t_t0 = NonIce_Aux_energy_consumed_kWh_SCE2_Route1_t0.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE2_Route1_tm = Aux_power.*24.*NonIce_Arctic_nav_d_SCE2_Route1_tm;
NonIce_Aux_fuel_consumed_SCE2_Route1_t_tm = NonIce_Aux_energy_consumed_kWh_SCE2_Route1_tm.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE2_Route1_tf = Aux_power.*24.*NonIce_Arctic_nav_d_SCE2_Route1_tf;
NonIce_Aux_fuel_consumed_SCE2_Route1_t_tf = NonIce_Aux_energy_consumed_kWh_SCE2_Route1_tf.*Aux_sfc.*10^-6;

%Boiler emissions
Ice_Boil_fuel_consumed_SCE2_Route1_t_t0 = Boiler_tpd.*Arctic_nav_d_SCE2_Route1_t0;
Ice_Boil_fuel_consumed_SCE2_Route1_t_t0(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE2_Route1_t_tm = Boiler_tpd.*Arctic_nav_d_SCE2_Route1_tm;
Ice_Boil_fuel_consumed_SCE2_Route1_t_tm(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE2_Route1_t_tf = Boiler_tpd.*Arctic_nav_d_SCE2_Route1_tf;
Ice_Boil_fuel_consumed_SCE2_Route1_t_tf(Boil_Logic) = 0;

NonIce_Boil_fuel_consumed_SCE2_Route1_t_t0 = Boiler_tpd.*NonIce_Arctic_nav_d_SCE2_Route1_t0;
NonIce_Boil_fuel_consumed_SCE2_Route1_t_tm = Boiler_tpd.*NonIce_Arctic_nav_d_SCE2_Route1_tm;
NonIce_Boil_fuel_consumed_SCE2_Route1_t_tf = Boiler_tpd.*NonIce_Arctic_nav_d_SCE2_Route1_tf;

%Route 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Non-ice strengthened ships 

NonIce_Arctic_nav_d_SCE2_Route2_t0 = SCE2_NonIce_Route2_Total_T_days_t0;

%t_m
%%%%%%%%%%%%%%%%%%%

NonIce_Arctic_nav_d_SCE2_Route2_tm = SCE2_NonIce_Route2_Total_T_days_tm;

%t_f
%%%%%%%%%%%%%%%%%%%%%%

NonIce_Arctic_nav_d_SCE2_Route2_tf = SCE2_NonIce_Route2_Total_T_days_tf;

%For calculating auxiliary and boiler consumption I need to know the number
%of days the vessel is navigating for 

Ice_Aux_energy_consumed_kWh_SCE2_Route2_t0 = Aux_power_Ice.*24.*Arctic_nav_d_SCE2_Route2_t0;
Ice_Aux_fuel_consumed_SCE2_Route2_t_t0 = Ice_Aux_energy_consumed_kWh_SCE2_Route2_t0.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE2_Route2_tm = Aux_power_Ice.*24.*Arctic_nav_d_SCE2_Route2_tm;
Ice_Aux_fuel_consumed_SCE2_Route2_t_tm = Ice_Aux_energy_consumed_kWh_SCE2_Route2_tm.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE2_Route2_tf = Aux_power_Ice.*24.*Arctic_nav_d_SCE2_Route2_tf;
Ice_Aux_fuel_consumed_SCE2_Route2_t_tf = Ice_Aux_energy_consumed_kWh_SCE2_Route2_tf.*Aux_sfc.*10^-6;

%Non-ice strengthened ships - Auxiliary
NonIce_Aux_energy_consumed_kWh_SCE2_Route2_t0 = Aux_power.*24.*NonIce_Arctic_nav_d_SCE2_Route2_t0;
NonIce_Aux_fuel_consumed_SCE2_Route2_t_t0 = NonIce_Aux_energy_consumed_kWh_SCE2_Route2_t0.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE2_Route2_tm = Aux_power.*24.*NonIce_Arctic_nav_d_SCE2_Route2_tm;
NonIce_Aux_fuel_consumed_SCE2_Route2_t_tm = NonIce_Aux_energy_consumed_kWh_SCE2_Route2_tm.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE2_Route2_tf = Aux_power.*24.*NonIce_Arctic_nav_d_SCE2_Route2_tf;
NonIce_Aux_fuel_consumed_SCE2_Route2_t_tf = NonIce_Aux_energy_consumed_kWh_SCE2_Route2_tf.*Aux_sfc.*10^-6;

%Boiler emissions
Ice_Boil_fuel_consumed_SCE2_Route2_t_t0 = Boiler_tpd.*Arctic_nav_d_SCE2_Route2_t0;
Ice_Boil_fuel_consumed_SCE2_Route2_t_t0(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE2_Route2_t_tm = Boiler_tpd.*Arctic_nav_d_SCE2_Route2_tm;
Ice_Boil_fuel_consumed_SCE2_Route2_t_tm(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE2_Route2_t_tf = Boiler_tpd.*Arctic_nav_d_SCE2_Route2_tf;
Ice_Boil_fuel_consumed_SCE2_Route2_t_tf(Boil_Logic) = 0;

NonIce_Boil_fuel_consumed_SCE2_Route2_t_t0 = Boiler_tpd.*NonIce_Arctic_nav_d_SCE2_Route2_t0;
NonIce_Boil_fuel_consumed_SCE2_Route2_t_tm = Boiler_tpd.*NonIce_Arctic_nav_d_SCE2_Route2_tm;
NonIce_Boil_fuel_consumed_SCE2_Route2_t_tf = Boiler_tpd.*NonIce_Arctic_nav_d_SCE2_Route2_tf;

%Route 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Non-ice strengthened ships 
%t_0

NonIce_Arctic_nav_d_SCE2_Route3_t0 = SCE2_NonIce_Route3_Total_T_days_t0;

%t_m

NonIce_Arctic_nav_d_SCE2_Route3_tm = SCE2_NonIce_Route3_Total_T_days_tm;

%t_f

NonIce_Arctic_nav_d_SCE2_Route3_tf = SCE2_NonIce_Route3_Total_T_days_tf;

%For calculating auxiliary and boiler consumption I need to know the number
%of days the vessel is navigating for 

Ice_Aux_energy_consumed_kWh_SCE2_Route3_t0 = Aux_power_Ice.*24.*Arctic_nav_d_SCE2_Route3_t0;
Ice_Aux_fuel_consumed_SCE2_Route3_t_t0 = Ice_Aux_energy_consumed_kWh_SCE2_Route3_t0.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE2_Route3_tm = Aux_power_Ice.*24.*Arctic_nav_d_SCE2_Route3_tm;
Ice_Aux_fuel_consumed_SCE2_Route3_t_tm = Ice_Aux_energy_consumed_kWh_SCE2_Route3_tm.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_kWh_SCE2_Route3_tf = Aux_power_Ice.*24.*Arctic_nav_d_SCE2_Route3_tf;
Ice_Aux_fuel_consumed_SCE2_Route3_t_tf = Ice_Aux_energy_consumed_kWh_SCE2_Route3_tf.*Aux_sfc.*10^-6;

%Non-ice strengthened ships - Auxiliary
NonIce_Aux_energy_consumed_kWh_SCE2_Route3_t0 = Aux_power.*24.*NonIce_Arctic_nav_d_SCE2_Route3_t0;
NonIce_Aux_fuel_consumed_SCE2_Route3_t_t0 = NonIce_Aux_energy_consumed_kWh_SCE2_Route3_t0.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE2_Route3_tm = Aux_power.*24.*NonIce_Arctic_nav_d_SCE2_Route3_tm;
NonIce_Aux_fuel_consumed_SCE2_Route3_t_tm = NonIce_Aux_energy_consumed_kWh_SCE2_Route3_tm.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_kWh_SCE2_Route3_tf = Aux_power.*24.*NonIce_Arctic_nav_d_SCE2_Route3_tf;
NonIce_Aux_fuel_consumed_SCE2_Route3_t_tf = NonIce_Aux_energy_consumed_kWh_SCE2_Route3_tf.*Aux_sfc.*10^-6;

%Boiler emissions
Ice_Boil_fuel_consumed_SCE2_Route3_t_t0 = Boiler_tpd.*Arctic_nav_d_SCE2_Route3_t0;
Ice_Boil_fuel_consumed_SCE2_Route3_t_t0(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE2_Route3_t_tm = Boiler_tpd.*Arctic_nav_d_SCE2_Route3_tm;
Ice_Boil_fuel_consumed_SCE2_Route3_t_tm(Boil_Logic) = 0;

Ice_Boil_fuel_consumed_SCE2_Route3_t_tf = Boiler_tpd.*Arctic_nav_d_SCE2_Route3_tf;
Ice_Boil_fuel_consumed_SCE2_Route3_t_tf(Boil_Logic) = 0;

NonIce_Boil_fuel_consumed_SCE2_Route3_t_t0 = Boiler_tpd.*NonIce_Arctic_nav_d_SCE2_Route3_t0;
NonIce_Boil_fuel_consumed_SCE2_Route3_t_tm = Boiler_tpd.*NonIce_Arctic_nav_d_SCE2_Route3_tm;
NonIce_Boil_fuel_consumed_SCE2_Route3_t_tf = Boiler_tpd.*NonIce_Arctic_nav_d_SCE2_Route3_tf;

%Suez
%%%%%%%%%%%%%%%%%%%%%%%%%%
IceSCE2Route1_Suez_nav_d_t0 = SCE3_Suez_nav_d - Arctic_nav_d_SCE2_Route1_t0;
IceSCE2Route1_Suez_nav_d_tm = SCE3_Suez_nav_d - Arctic_nav_d_SCE2_Route1_tm;
IceSCE2Route1_Suez_nav_d_tf = SCE3_Suez_nav_d - Arctic_nav_d_SCE2_Route1_tf;

for i = 1:1:length(IceSCE2Route1_Suez_nav_d_t0(:,1))
    if IceSCE2Route1_Suez_nav_d_t0(i) < 0
        IceSCE2Route1_Suez_nav_d_t0(i) = 0;
    else 
        IceSCE2Route1_Suez_nav_d_t0(i) = IceSCE2Route1_Suez_nav_d_t0(i);
    end
end

for i = 1:1:length(IceSCE2Route1_Suez_nav_d_tm(:,1))
    if IceSCE2Route1_Suez_nav_d_tm(i) < 0
        IceSCE2Route1_Suez_nav_d_tm(i) = 0;
    else 
        IceSCE2Route1_Suez_nav_d_tm(i) = IceSCE2Route1_Suez_nav_d_tm(i);
    end
end

for i = 1:1:length(IceSCE2Route1_Suez_nav_d_tf(:,1))
    if IceSCE2Route1_Suez_nav_d_tf(i) < 0
        IceSCE2Route1_Suez_nav_d_tf(i) = 0;
    else 
        IceSCE2Route1_Suez_nav_d_tf(i) = IceSCE2Route1_Suez_nav_d_tf(i);
    end
end

NonIceSCE2Route1_Suez_nav_d_t0 = SCE3_Suez_nav_d - NonIce_Arctic_nav_d_SCE2_Route1_t0;
NonIceSCE2Route1_Suez_nav_d_tm = SCE3_Suez_nav_d - NonIce_Arctic_nav_d_SCE2_Route1_tm;
NonIceSCE2Route1_Suez_nav_d_tf = SCE3_Suez_nav_d - NonIce_Arctic_nav_d_SCE2_Route1_tf;

for i = 1:1:length(NonIceSCE2Route1_Suez_nav_d_t0(:,1))
    if NonIceSCE2Route1_Suez_nav_d_t0(i) < 0
        NonIceSCE2Route1_Suez_nav_d_t0(i) = 0;
    else 
        NonIceSCE2Route1_Suez_nav_d_t0(i) = NonIceSCE2Route1_Suez_nav_d_t0(i);
    end
end

for i = 1:1:length(NonIceSCE2Route1_Suez_nav_d_tm(:,1))
    if NonIceSCE2Route1_Suez_nav_d_tm(i) < 0
        NonIceSCE2Route1_Suez_nav_d_tm(i) = 0;
    else 
        NonIceSCE2Route1_Suez_nav_d_tm(i) = NonIceSCE2Route1_Suez_nav_d_tm(i);
    end
end

for i = 1:1:length(NonIceSCE2Route1_Suez_nav_d_tf(:,1))
    if NonIceSCE2Route1_Suez_nav_d_tf(i) < 0
        NonIceSCE2Route1_Suez_nav_d_tf(i) = 0;
    else 
        NonIceSCE2Route1_Suez_nav_d_tf(i) = NonIceSCE2Route1_Suez_nav_d_tf(i);
    end
end

IceSCE2Route2_Suez_nav_d_t0 = SCE3_Suez_nav_d - Arctic_nav_d_SCE2_Route2_t0;
IceSCE2Route2_Suez_nav_d_tm = SCE3_Suez_nav_d - Arctic_nav_d_SCE2_Route2_tm;
IceSCE2Route2_Suez_nav_d_tf = SCE3_Suez_nav_d - Arctic_nav_d_SCE2_Route2_tf;

for i = 1:1:length(IceSCE2Route2_Suez_nav_d_t0(:,1))
    if IceSCE2Route2_Suez_nav_d_t0(i) < 0
        IceSCE2Route2_Suez_nav_d_t0(i) = 0;
    else 
        IceSCE2Route2_Suez_nav_d_t0(i) = IceSCE2Route2_Suez_nav_d_t0(i);
    end
end

for i = 1:1:length(IceSCE2Route2_Suez_nav_d_tm(:,1))
    if IceSCE2Route2_Suez_nav_d_tm(i) < 0
        IceSCE2Route2_Suez_nav_d_tm(i) = 0;
    else 
        IceSCE2Route2_Suez_nav_d_tm(i) = IceSCE2Route2_Suez_nav_d_tm(i);
    end
end

for i = 1:1:length(IceSCE2Route2_Suez_nav_d_tf(:,1))
    if IceSCE2Route2_Suez_nav_d_tf(i) < 0
        IceSCE2Route2_Suez_nav_d_tf(i) = 0;
    else 
        IceSCE2Route2_Suez_nav_d_tf(i) = IceSCE2Route2_Suez_nav_d_tf(i);
    end
end

NonIceSCE2Route2_Suez_nav_d_t0 = SCE3_Suez_nav_d - NonIce_Arctic_nav_d_SCE2_Route2_t0;
NonIceSCE2Route2_Suez_nav_d_tm = SCE3_Suez_nav_d - NonIce_Arctic_nav_d_SCE2_Route2_tm;
NonIceSCE2Route2_Suez_nav_d_tf = SCE3_Suez_nav_d - NonIce_Arctic_nav_d_SCE2_Route2_tf;

for i = 1:1:length(NonIceSCE2Route2_Suez_nav_d_t0(:,1))
    if NonIceSCE2Route2_Suez_nav_d_t0(i) < 0
        NonIceSCE2Route2_Suez_nav_d_t0(i) = 0;
    else 
        NonIceSCE2Route2_Suez_nav_d_t0(i) = NonIceSCE2Route2_Suez_nav_d_t0(i);
    end
end

for i = 1:1:length(NonIceSCE2Route2_Suez_nav_d_tm(:,1))
    if NonIceSCE2Route2_Suez_nav_d_tm(i) < 0
        NonIceSCE2Route2_Suez_nav_d_tm(i) = 0;
    else 
        NonIceSCE2Route2_Suez_nav_d_tm(i) = NonIceSCE2Route2_Suez_nav_d_tm(i);
    end
end

for i = 1:1:length(NonIceSCE2Route2_Suez_nav_d_tf(:,1))
    if NonIceSCE2Route2_Suez_nav_d_tf(i) < 0
        NonIceSCE2Route2_Suez_nav_d_tf(i) = 0;
    else 
        NonIceSCE2Route2_Suez_nav_d_tf(i) = NonIceSCE2Route2_Suez_nav_d_tf(i);
    end
end

IceSCE2Route3_Suez_nav_d_t0 = SCE3_Suez_nav_d - Arctic_nav_d_SCE2_Route3_t0;
IceSCE2Route3_Suez_nav_d_tm = SCE3_Suez_nav_d - Arctic_nav_d_SCE2_Route3_tm;
IceSCE2Route3_Suez_nav_d_tf = SCE3_Suez_nav_d - Arctic_nav_d_SCE2_Route3_tf;

for i = 1:1:length(IceSCE2Route3_Suez_nav_d_t0(:,1))
    if IceSCE2Route3_Suez_nav_d_t0(i) < 0
        IceSCE2Route3_Suez_nav_d_t0(i) = 0;
    else 
        IceSCE2Route3_Suez_nav_d_t0(i) = IceSCE2Route3_Suez_nav_d_t0(i);
    end
end

for i = 1:1:length(IceSCE2Route3_Suez_nav_d_tm(:,1))
    if IceSCE2Route3_Suez_nav_d_tm(i) < 0
        IceSCE2Route3_Suez_nav_d_tm(i) = 0;
    else 
        IceSCE2Route3_Suez_nav_d_tm(i) = IceSCE2Route3_Suez_nav_d_tm(i);
    end
end

for i = 1:1:length(IceSCE2Route3_Suez_nav_d_tf(:,1))
    if IceSCE2Route3_Suez_nav_d_tf(i) < 0
        IceSCE2Route3_Suez_nav_d_tf(i) = 0;
    else 
        IceSCE2Route3_Suez_nav_d_tf(i) = IceSCE2Route3_Suez_nav_d_tf(i);
    end
end

NonIceSCE2Route3_Suez_nav_d_t0 = SCE3_Suez_nav_d - NonIce_Arctic_nav_d_SCE2_Route3_t0;
NonIceSCE2Route3_Suez_nav_d_tm = SCE3_Suez_nav_d - NonIce_Arctic_nav_d_SCE2_Route3_tm;
NonIceSCE2Route3_Suez_nav_d_tf = SCE3_Suez_nav_d - NonIce_Arctic_nav_d_SCE2_Route3_tf;

for i = 1:1:length(NonIceSCE2Route3_Suez_nav_d_t0(:,1))
    if NonIceSCE2Route3_Suez_nav_d_t0(i) < 0
        NonIceSCE2Route3_Suez_nav_d_t0(i) = 0;
    else 
        NonIceSCE2Route3_Suez_nav_d_t0(i) = NonIceSCE2Route3_Suez_nav_d_t0(i);
    end
end

for i = 1:1:length(NonIceSCE2Route3_Suez_nav_d_tm(:,1))
    if NonIceSCE2Route3_Suez_nav_d_tm(i) < 0
        NonIceSCE2Route3_Suez_nav_d_tm(i) = 0;
    else 
        NonIceSCE2Route3_Suez_nav_d_tm(i) = NonIceSCE2Route3_Suez_nav_d_tm(i);
    end
end

for i = 1:1:length(NonIceSCE2Route3_Suez_nav_d_tf(:,1))
    if NonIceSCE2Route3_Suez_nav_d_tf(i) < 0
        NonIceSCE2Route3_Suez_nav_d_tf(i) = 0;
    else 
        NonIceSCE2Route3_Suez_nav_d_tf(i) = NonIceSCE2Route3_Suez_nav_d_tf(i);
    end
end

%Route 1 - Scenario 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Extra energy consumed as a consequence of travelling through the Suez
SCE2_Ice_Route1_Suez_n_t0 = round(IceSCE2Route1_Suez_nav_d_t0./SCE2_Suez_Route_T_S);
IceSCE2Route1_Suez_nav_d_t0 = SCE2_Ice_Route1_Suez_n_t0.*SCE2_Suez_Route_T_S;

Ice_Energy_consumed_Suez_kWh_SCE2Route1_t0 =IceSCE2Route1_Suez_nav_d_t0.*24.*IceStrengthOutput_power_kW;
Ice_Fuel_consumed_Suez_SCE2Route1_t_t0 =Ice_Energy_consumed_Suez_kWh_SCE2Route1_t0.*Icesfc.*10^-6;

SCE2_Ice_Route1_Suez_n_tm = round(IceSCE2Route1_Suez_nav_d_tm./SCE2_Suez_Route_T_S);
IceSCE2Route1_Suez_nav_d_tm = SCE2_Ice_Route1_Suez_n_tm.*SCE2_Suez_Route_T_S;

Ice_Energy_consumed_Suez_kWh_SCE2Route1_tm =IceSCE2Route1_Suez_nav_d_tm.*24.*IceStrengthOutput_power_kW;
Ice_Fuel_consumed_Suez_SCE2Route1_t_tm =Ice_Energy_consumed_Suez_kWh_SCE2Route1_tm.*Icesfc.*10^-6;

SCE2_Ice_Route1_Suez_n_tf = round(IceSCE2Route1_Suez_nav_d_tf./SCE2_Suez_Route_T_S);
IceSCE2Route1_Suez_nav_d_tf = SCE2_Ice_Route1_Suez_n_tf.*SCE2_Suez_Route_T_S;

Ice_Energy_consumed_Suez_kWh_SCE2Route1_tf =IceSCE2Route1_Suez_nav_d_tf.*24.*IceStrengthOutput_power_kW;
Ice_Fuel_consumed_Suez_SCE2Route1_t_tf =Ice_Energy_consumed_Suez_kWh_SCE2Route1_tf.*Icesfc.*10^-6;

SCE2_NonIce_Route1_Suez_n_t0 = round(NonIceSCE2Route1_Suez_nav_d_t0./SCE2_Suez_Route_T_S);
NonIceSCE2Route1_Suez_nav_d_t0 = SCE2_NonIce_Route1_Suez_n_t0.*SCE2_Suez_Route_T_S;

NonIce_Energy_consumed_Suez_kWh_SCE2Route1_t0 =NonIceSCE2Route1_Suez_nav_d_t0.*24.*NonIceStrengthOutput_power_kW;
NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0 =NonIce_Energy_consumed_Suez_kWh_SCE2Route1_t0.*NonIcesfc.*10^-6;

SCE2_NonIce_Route1_Suez_n_tm = round(NonIceSCE2Route1_Suez_nav_d_tm./SCE2_Suez_Route_T_S);
NonIceSCE2Route1_Suez_nav_d_tm = SCE2_NonIce_Route1_Suez_n_tm.*SCE2_Suez_Route_T_S;

NonIce_Energy_consumed_Suez_kWh_SCE2Route1_tm =NonIceSCE2Route1_Suez_nav_d_tm.*24.*NonIceStrengthOutput_power_kW;
NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm =NonIce_Energy_consumed_Suez_kWh_SCE2Route1_tm.*NonIcesfc.*10^-6;

SCE2_NonIce_Route1_Suez_n_tf = round(NonIceSCE2Route1_Suez_nav_d_tf./SCE2_Suez_Route_T_S);
NonIceSCE2Route1_Suez_nav_d_tf = SCE2_NonIce_Route1_Suez_n_tf.*SCE2_Suez_Route_T_S;

NonIce_Energy_consumed_Suez_kWh_SCE2Route1_tf =NonIceSCE2Route1_Suez_nav_d_tf.*24.*NonIceStrengthOutput_power_kW;
NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf =NonIce_Energy_consumed_Suez_kWh_SCE2Route1_tf.*NonIcesfc.*10^-6;

%Auxiliary and Boiler emissions
Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route1_t0 = Aux_power_Ice.*24.*IceSCE2Route1_Suez_nav_d_t0;
Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0 = Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route1_t0.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route1_tm = Aux_power_Ice.*24.*IceSCE2Route1_Suez_nav_d_tm;
Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm = Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route1_tm.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route1_tf = Aux_power_Ice.*24.*IceSCE2Route1_Suez_nav_d_tf;
Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf = Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route1_tf.*Aux_sfc.*10^-6;

%Non-ice strengthened ships - Auxiliary
NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route1_t0 = Aux_power.*24.*NonIceSCE2Route1_Suez_nav_d_t0;
NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0 = NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route1_t0.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route1_tm = Aux_power.*24.*NonIceSCE2Route1_Suez_nav_d_tm;
NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm = NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route1_tm.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route1_tf = Aux_power.*24.*NonIceSCE2Route1_Suez_nav_d_tf;
NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf = NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route1_tf.*Aux_sfc.*10^-6;

%Boiler
Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0 = Boiler_tpd.*IceSCE2Route1_Suez_nav_d_t0;
Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm = Boiler_tpd.*IceSCE2Route1_Suez_nav_d_tm;
Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf = Boiler_tpd.*IceSCE2Route1_Suez_nav_d_tf;

NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0 = Boiler_tpd.*NonIceSCE2Route1_Suez_nav_d_t0;
NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm = Boiler_tpd.*NonIceSCE2Route1_Suez_nav_d_tm;
NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf = Boiler_tpd.*NonIceSCE2Route1_Suez_nav_d_tf;

%Route 2 - Scenario 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Extra energy consumed as a consequence of travelling through the Suez
SCE2_Ice_Route2_Suez_n_t0 = round(IceSCE2Route2_Suez_nav_d_t0./SCE2_Suez_Route_T_S);
IceSCE2Route2_Suez_nav_d_t0 = SCE2_Ice_Route2_Suez_n_t0.*SCE2_Suez_Route_T_S;

Ice_Energy_consumed_Suez_kWh_SCE2Route2_t0 =IceSCE2Route2_Suez_nav_d_t0.*24.*IceStrengthOutput_power_kW;
Ice_Fuel_consumed_Suez_SCE2Route2_t_t0 =Ice_Energy_consumed_Suez_kWh_SCE2Route2_t0.*Icesfc.*10^-6;

SCE2_Ice_Route2_Suez_n_tm = round(IceSCE2Route2_Suez_nav_d_tm./SCE2_Suez_Route_T_S);
IceSCE2Route2_Suez_nav_d_tm = SCE2_Ice_Route2_Suez_n_tm.*SCE2_Suez_Route_T_S;

Ice_Energy_consumed_Suez_kWh_SCE2Route2_tm =IceSCE2Route2_Suez_nav_d_tm.*24.*IceStrengthOutput_power_kW;
Ice_Fuel_consumed_Suez_SCE2Route2_t_tm =Ice_Energy_consumed_Suez_kWh_SCE2Route2_tm.*Icesfc.*10^-6;

SCE2_Ice_Route2_Suez_n_tf = round(IceSCE2Route2_Suez_nav_d_tf./SCE2_Suez_Route_T_S);
IceSCE2Route2_Suez_nav_d_tf = SCE2_Ice_Route2_Suez_n_tf.*SCE2_Suez_Route_T_S;

Ice_Energy_consumed_Suez_kWh_SCE2Route2_tf =IceSCE2Route2_Suez_nav_d_tf.*24.*IceStrengthOutput_power_kW;
Ice_Fuel_consumed_Suez_SCE2Route2_t_tf =Ice_Energy_consumed_Suez_kWh_SCE2Route2_tf.*Icesfc.*10^-6;

SCE2_NonIce_Route2_Suez_n_t0 = round(NonIceSCE2Route2_Suez_nav_d_t0./SCE2_Suez_Route_T_S);
NonIceSCE2Route2_Suez_nav_d_t0 = SCE2_NonIce_Route2_Suez_n_t0.*SCE2_Suez_Route_T_S;

NonIce_Energy_consumed_Suez_kWh_SCE2Route2_t0 =NonIceSCE2Route2_Suez_nav_d_t0.*24.*NonIceStrengthOutput_power_kW;
NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0 =NonIce_Energy_consumed_Suez_kWh_SCE2Route2_t0.*NonIcesfc.*10^-6;

SCE2_NonIce_Route2_Suez_n_tm = round(NonIceSCE2Route2_Suez_nav_d_tm./SCE2_Suez_Route_T_S);
NonIceSCE2Route2_Suez_nav_d_tm = SCE2_NonIce_Route2_Suez_n_tm.*SCE2_Suez_Route_T_S;

NonIce_Energy_consumed_Suez_kWh_SCE2Route2_tm =NonIceSCE2Route2_Suez_nav_d_tm.*24.*NonIceStrengthOutput_power_kW;
NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm =NonIce_Energy_consumed_Suez_kWh_SCE2Route2_tm.*NonIcesfc.*10^-6;

SCE2_NonIce_Route2_Suez_n_tf = round(NonIceSCE2Route2_Suez_nav_d_tf./SCE2_Suez_Route_T_S);
NonIceSCE2Route2_Suez_nav_d_tf = SCE2_NonIce_Route2_Suez_n_tf.*SCE2_Suez_Route_T_S;

NonIce_Energy_consumed_Suez_kWh_SCE2Route2_tf =NonIceSCE2Route2_Suez_nav_d_tf.*24.*NonIceStrengthOutput_power_kW;
NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf =NonIce_Energy_consumed_Suez_kWh_SCE2Route2_tf.*NonIcesfc.*10^-6;

%Auxiliary and Boiler emissions
Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route2_t0 = Aux_power_Ice.*24.*IceSCE2Route2_Suez_nav_d_t0;
Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0 = Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route2_t0.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route2_tm = Aux_power_Ice.*24.*IceSCE2Route2_Suez_nav_d_tm;
Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm = Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route2_tm.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route2_tf = Aux_power_Ice.*24.*IceSCE2Route2_Suez_nav_d_tf;
Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf = Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route2_tf.*Aux_sfc.*10^-6;

%Non-ice strengthened ships - Auxiliary
NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route2_t0 = Aux_power.*24.*NonIceSCE2Route2_Suez_nav_d_t0;
NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0 = NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route2_t0.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route2_tm = Aux_power.*24.*NonIceSCE2Route2_Suez_nav_d_tm;
NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm = NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route2_tm.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route2_tf = Aux_power.*24.*NonIceSCE2Route2_Suez_nav_d_tf;
NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf = NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route2_tf.*Aux_sfc.*10^-6;

%Boiler
Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0 = Boiler_tpd.*IceSCE2Route2_Suez_nav_d_t0;
Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm = Boiler_tpd.*IceSCE2Route2_Suez_nav_d_tm;
Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf = Boiler_tpd.*IceSCE2Route2_Suez_nav_d_tf;

NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0 = Boiler_tpd.*NonIceSCE2Route2_Suez_nav_d_t0;
NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm = Boiler_tpd.*NonIceSCE2Route2_Suez_nav_d_tm;
NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf = Boiler_tpd.*NonIceSCE2Route2_Suez_nav_d_tf;

%Route 3 - Scenario 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Extra energy consumed as a consequence of travelling through the Suez
SCE2_Ice_Route3_Suez_n_t0 = round(IceSCE2Route3_Suez_nav_d_t0./SCE2_Suez_Route_T_S);
IceSCE2Route3_Suez_nav_d_t0 = SCE2_Ice_Route3_Suez_n_t0.*SCE2_Suez_Route_T_S;

Ice_Energy_consumed_Suez_kWh_SCE2Route3_t0 =IceSCE2Route3_Suez_nav_d_t0.*24.*IceStrengthOutput_power_kW;
Ice_Fuel_consumed_Suez_SCE2Route3_t_t0 =Ice_Energy_consumed_Suez_kWh_SCE2Route3_t0.*Icesfc.*10^-6;

SCE2_Ice_Route3_Suez_n_tm = round(IceSCE2Route3_Suez_nav_d_tm./SCE2_Suez_Route_T_S);
IceSCE2Route3_Suez_nav_d_tm = SCE2_Ice_Route3_Suez_n_tm.*SCE2_Suez_Route_T_S;

Ice_Energy_consumed_Suez_kWh_SCE2Route3_tm =IceSCE2Route3_Suez_nav_d_tm.*24.*IceStrengthOutput_power_kW;
Ice_Fuel_consumed_Suez_SCE2Route3_t_tm =Ice_Energy_consumed_Suez_kWh_SCE2Route3_tm.*Icesfc.*10^-6;

SCE2_Ice_Route3_Suez_n_tf = round(IceSCE2Route3_Suez_nav_d_tf./SCE2_Suez_Route_T_S);
IceSCE2Route3_Suez_nav_d_tf = SCE2_Ice_Route3_Suez_n_tf.*SCE2_Suez_Route_T_S;

Ice_Energy_consumed_Suez_kWh_SCE2Route3_tf =IceSCE2Route3_Suez_nav_d_tf.*24.*IceStrengthOutput_power_kW;
Ice_Fuel_consumed_Suez_SCE2Route3_t_tf =Ice_Energy_consumed_Suez_kWh_SCE2Route3_tf.*Icesfc.*10^-6;

SCE2_NonIce_Route3_Suez_n_t0 = round(NonIceSCE2Route3_Suez_nav_d_t0./SCE2_Suez_Route_T_S);
NonIceSCE2Route3_Suez_nav_d_t0 = SCE2_NonIce_Route3_Suez_n_t0.*SCE2_Suez_Route_T_S;

NonIce_Energy_consumed_Suez_kWh_SCE2Route3_t0 =NonIceSCE2Route3_Suez_nav_d_t0.*24.*NonIceStrengthOutput_power_kW;
NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0 =NonIce_Energy_consumed_Suez_kWh_SCE2Route3_t0.*NonIcesfc.*10^-6;

SCE2_NonIce_Route3_Suez_n_tm = round(NonIceSCE2Route3_Suez_nav_d_tm./SCE2_Suez_Route_T_S);
NonIceSCE2Route3_Suez_nav_d_tm = SCE2_NonIce_Route3_Suez_n_tm.*SCE2_Suez_Route_T_S;

NonIce_Energy_consumed_Suez_kWh_SCE2Route3_tm =NonIceSCE2Route3_Suez_nav_d_tm.*24.*NonIceStrengthOutput_power_kW;
NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm =NonIce_Energy_consumed_Suez_kWh_SCE2Route3_tm.*NonIcesfc.*10^-6;

SCE2_NonIce_Route3_Suez_n_tf = round(NonIceSCE2Route3_Suez_nav_d_tf./SCE2_Suez_Route_T_S);
NonIceSCE2Route3_Suez_nav_d_tf = SCE2_NonIce_Route3_Suez_n_tf.*SCE2_Suez_Route_T_S;

NonIce_Energy_consumed_Suez_kWh_SCE2Route3_tf =NonIceSCE2Route3_Suez_nav_d_tf.*24.*NonIceStrengthOutput_power_kW;
NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf =NonIce_Energy_consumed_Suez_kWh_SCE2Route3_tf.*NonIcesfc.*10^-6;

%Auxiliary and Boiler
Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route3_t0 = Aux_power_Ice.*24.*IceSCE2Route3_Suez_nav_d_t0;
Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0 = Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route3_t0.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route3_tm = Aux_power_Ice.*24.*IceSCE2Route3_Suez_nav_d_tm;
Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm = Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route3_tm.*Aux_sfc.*10^-6;

Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route3_tf = Aux_power_Ice.*24.*IceSCE2Route3_Suez_nav_d_tf;
Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf = Ice_Aux_energy_consumed_Suez_kWh_SCE2_Route3_tf.*Aux_sfc.*10^-6;

%Non-ice strengthened ships - Auxiliary
NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route3_t0 = Aux_power.*24.*NonIceSCE2Route3_Suez_nav_d_t0;
NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0 = NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route3_t0.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route3_tm = Aux_power.*24.*NonIceSCE2Route3_Suez_nav_d_tm;
NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm = NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route3_tm.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route3_tf = Aux_power.*24.*NonIceSCE2Route3_Suez_nav_d_tf;
NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf = NonIce_Aux_energy_consumed_Suez_kWh_SCE2_Route3_tf.*Aux_sfc.*10^-6;

%Boiler
Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0 = Boiler_tpd.*IceSCE2Route3_Suez_nav_d_t0;
Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm = Boiler_tpd.*IceSCE2Route3_Suez_nav_d_tm;
Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf = Boiler_tpd.*IceSCE2Route3_Suez_nav_d_tf;

NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0 = Boiler_tpd.*NonIceSCE2Route3_Suez_nav_d_t0;
NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm = Boiler_tpd.*NonIceSCE2Route3_Suez_nav_d_tm;
NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf = Boiler_tpd.*NonIceSCE2Route3_Suez_nav_d_tf;

%Total number of voyages for scenario 2 
SCE2_Ice_Route1_Total_n_t0 = SCE2_Ice_Route1_Suez_n_t0 + SCE2_Ice_Route1_n_t0;
SCE2_Ice_Route1_Total_n_tm = SCE2_Ice_Route1_Suez_n_tm + SCE2_Ice_Route1_n_tm;
SCE2_Ice_Route1_Total_n_tf = SCE2_Ice_Route1_Suez_n_tf + SCE2_Ice_Route1_n_tf;

SCE2_Ice_Route2_Total_n_t0 = SCE2_Ice_Route2_Suez_n_t0 + SCE2_Ice_Route2_n_t0;
SCE2_Ice_Route2_Total_n_tm = SCE2_Ice_Route2_Suez_n_tm + SCE2_Ice_Route2_n_tm;
SCE2_Ice_Route2_Total_n_tf = SCE2_Ice_Route2_Suez_n_tf + SCE2_Ice_Route2_n_tf;

SCE2_Ice_Route3_Total_n_t0 = SCE2_Ice_Route3_Suez_n_t0 + SCE2_Ice_Route3_n_t0;
SCE2_Ice_Route3_Total_n_tm = SCE2_Ice_Route3_Suez_n_tm + SCE2_Ice_Route3_n_tm;
SCE2_Ice_Route3_Total_n_tf = SCE2_Ice_Route3_Suez_n_tf + SCE2_Ice_Route3_n_tf;

SCE2_NonIce_Route1_Total_n_t0 = SCE2_NonIce_Route1_Suez_n_t0 + SCE2_NonIce_Route1_n_t0;
SCE2_NonIce_Route1_Total_n_tm = SCE2_NonIce_Route1_Suez_n_tm + SCE2_NonIce_Route1_n_tm;
SCE2_NonIce_Route1_Total_n_tf = SCE2_NonIce_Route1_Suez_n_tf + SCE2_NonIce_Route1_n_tf;

SCE2_NonIce_Route2_Total_n_t0 = SCE2_NonIce_Route2_Suez_n_t0 + SCE2_NonIce_Route2_n_t0;
SCE2_NonIce_Route2_Total_n_tm = SCE2_NonIce_Route2_Suez_n_tm + SCE2_NonIce_Route2_n_tm;
SCE2_NonIce_Route2_Total_n_tf = SCE2_NonIce_Route2_Suez_n_tf + SCE2_NonIce_Route2_n_tf;

SCE2_NonIce_Route3_Total_n_t0 = SCE2_NonIce_Route3_Suez_n_t0 + SCE2_NonIce_Route3_n_t0;
SCE2_NonIce_Route3_Total_n_tm = SCE2_NonIce_Route3_Suez_n_tm + SCE2_NonIce_Route3_n_tm;
SCE2_NonIce_Route3_Total_n_tf = SCE2_NonIce_Route3_Suez_n_tf + SCE2_NonIce_Route3_n_tf;

%Adding these together to get the total emissions
Total_Ice_Fuel_consumed_Suez_SCE2Route1_t_t0 = Ice_Fuel_consumed_Suez_SCE2Route1_t_t0 + Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0;
Total_Ice_Fuel_consumed_Suez_SCE2Route1_t_tm = Ice_Fuel_consumed_Suez_SCE2Route1_t_tm + Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm;
Total_Ice_Fuel_consumed_Suez_SCE2Route1_t_tf = Ice_Fuel_consumed_Suez_SCE2Route1_t_tf + Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf;

Total_NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0 = NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0 + NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0;
Total_NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm = NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm + NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm;
Total_NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf = NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf + NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf;

%Auxiliary
Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route1_t_t0 = Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0 + Ice_Aux_fuel_consumed_SCE2_Route1_t_t0;
Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route1_t_tm = Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm + Ice_Aux_fuel_consumed_SCE2_Route1_t_tm;
Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route1_t_tf = Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf + Ice_Aux_fuel_consumed_SCE2_Route1_t_tf;

Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route1_t_t0 = NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0 + NonIce_Aux_fuel_consumed_SCE2_Route1_t_t0;
Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route1_t_tm = NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm + NonIce_Aux_fuel_consumed_SCE2_Route1_t_tm;
Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route1_t_tf = NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf + NonIce_Aux_fuel_consumed_SCE2_Route1_t_tf;

%Boiler
Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route1_t_t0 = Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0 + Ice_Boil_fuel_consumed_SCE2_Route1_t_t0;
Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route1_t_tm = Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm + Ice_Boil_fuel_consumed_SCE2_Route1_t_tm;
Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route1_t_tf = Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf + Ice_Boil_fuel_consumed_SCE2_Route1_t_tf;

Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route1_t_t0 = NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0 + NonIce_Boil_fuel_consumed_SCE2_Route1_t_t0;
Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route1_t_tm = NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm + NonIce_Boil_fuel_consumed_SCE2_Route1_t_tm;
Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route1_t_tf = NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf + NonIce_Boil_fuel_consumed_SCE2_Route1_t_tf;

%Adding these together to get the total emissions
Total_Ice_Fuel_consumed_Suez_SCE2Route2_t_t0 = Ice_Fuel_consumed_Suez_SCE2Route2_t_t0 + Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0;
Total_Ice_Fuel_consumed_Suez_SCE2Route2_t_tm = Ice_Fuel_consumed_Suez_SCE2Route2_t_tm + Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm;
Total_Ice_Fuel_consumed_Suez_SCE2Route2_t_tf = Ice_Fuel_consumed_Suez_SCE2Route2_t_tf + Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf;

Total_NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0 = NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0 + NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0;
Total_NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm = NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm + NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm;
Total_NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf = NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf + NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf;

%Auxiliary
Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route2_t_t0 = Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0 + Ice_Aux_fuel_consumed_SCE2_Route2_t_t0;
Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route2_t_tm = Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm + Ice_Aux_fuel_consumed_SCE2_Route2_t_tm;
Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route2_t_tf = Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf + Ice_Aux_fuel_consumed_SCE2_Route2_t_tf;

Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route2_t_t0 = NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0 + NonIce_Aux_fuel_consumed_SCE2_Route2_t_t0;
Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route2_t_tm = NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm + NonIce_Aux_fuel_consumed_SCE2_Route2_t_tm;
Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route2_t_tf = NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf + NonIce_Aux_fuel_consumed_SCE2_Route2_t_tf;

%Boiler
Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route2_t_t0 = Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0 + Ice_Boil_fuel_consumed_SCE2_Route2_t_t0;
Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route2_t_tm = Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm + Ice_Boil_fuel_consumed_SCE2_Route2_t_tm;
Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route2_t_tf = Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf + Ice_Boil_fuel_consumed_SCE2_Route2_t_tf;

Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route2_t_t0 = NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0 + NonIce_Boil_fuel_consumed_SCE2_Route2_t_t0;
Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route2_t_tm = NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm + NonIce_Boil_fuel_consumed_SCE2_Route2_t_tm;
Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route2_t_tf = NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf + NonIce_Boil_fuel_consumed_SCE2_Route2_t_tf;

%Main Engine
Total_Ice_Fuel_consumed_Suez_SCE2Route3_t_t0 = Ice_Fuel_consumed_Suez_SCE2Route3_t_t0 + Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0;
Total_Ice_Fuel_consumed_Suez_SCE2Route3_t_tm = Ice_Fuel_consumed_Suez_SCE2Route3_t_tm + Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm;
Total_Ice_Fuel_consumed_Suez_SCE2Route3_t_tf = Ice_Fuel_consumed_Suez_SCE2Route3_t_tf + Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf;

Total_NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0 = NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0 + NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0;
Total_NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm = NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm + NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm;
Total_NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf = NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf + NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf;

%Auxiliary
Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route3_t_t0 = Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0 + Ice_Aux_fuel_consumed_SCE2_Route3_t_t0;
Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route3_t_tm = Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm + Ice_Aux_fuel_consumed_SCE2_Route3_t_tm;
Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route3_t_tf = Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf + Ice_Aux_fuel_consumed_SCE2_Route3_t_tf;

Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route3_t_t0 = NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0 + NonIce_Aux_fuel_consumed_SCE2_Route3_t_t0;
Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route3_t_tm = NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm + NonIce_Aux_fuel_consumed_SCE2_Route3_t_tm;
Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route3_t_tf = NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf + NonIce_Aux_fuel_consumed_SCE2_Route3_t_tf;

%Boiler
Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route3_t_t0 = Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0 + Ice_Boil_fuel_consumed_SCE2_Route3_t_t0;
Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route3_t_tm = Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm + Ice_Boil_fuel_consumed_SCE2_Route3_t_tm;
Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route3_t_tf = Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf + Ice_Boil_fuel_consumed_SCE2_Route3_t_tf;

Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route3_t_t0 = NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0 + NonIce_Boil_fuel_consumed_SCE2_Route3_t_t0;
Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route3_t_tm = NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm + NonIce_Boil_fuel_consumed_SCE2_Route3_t_tm;
Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route3_t_tf = NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf + NonIce_Boil_fuel_consumed_SCE2_Route3_t_tf;

%Scenario3 - Suez year round
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE3_Suez_n_S = round(SCE3_Suez_nav_d./SCE3_Suez_Route_T_S);
IceSCE3_Suez_nav_d = SCE3_Suez_n_S.*SCE3_Suez_Route_T_S;

Ice_Energy_consumed_Suez_kWh_SCE3 = IceSCE3_Suez_nav_d(:).*24.*IceStrengthOutput_power_kW;
Ice_Fuel_consumed_SCE3_Suez_t = Ice_Energy_consumed_Suez_kWh_SCE3 .*Icesfc.*10^-6;

NonIce_Energy_consumed_Suez_kWh_SCE3 = IceSCE3_Suez_nav_d(:).*24.*NonIceStrengthOutput_power_kW;
NonIce_Fuel_consumed_SCE3_Suez_t = NonIce_Energy_consumed_Suez_kWh_SCE3.*NonIcesfc.*10^-6;

%Calculating the auxiliary fuel consumption
Ice_Aux_energy_consumed_Suez_kWh = Aux_power_Ice.*24.*IceSCE3_Suez_nav_d(:);
Ice_Aux_Fuel_consumed_SCE3_Suez_t = Ice_Aux_energy_consumed_Suez_kWh.*Aux_sfc.*10^-6;

NonIce_Aux_energy_consumed_Suez_kWh = Aux_power.*24.*IceSCE3_Suez_nav_d(:);
NonIce_Aux_Fuel_consumed_SCE3_Suez_t = NonIce_Aux_energy_consumed_Suez_kWh.*Aux_sfc.*10^-6;

%Boiler
Ice_Boil_Fuel_consumed_SCE3_Suez_t = Boiler_tpd.*IceSCE3_Suez_nav_d(:);
Ice_Boil_Fuel_consumed_SCE3_Suez_t = Ice_Boil_Fuel_consumed_SCE3_Suez_t.*ones(Speed_length,1);
Ice_Boil_Fuel_consumed_SCE3_Suez_t(Boil_Logic) = 0;

NonIce_Boil_Fuel_consumed_SCE3_Suez_t = Boiler_tpd.*IceSCE3_Suez_nav_d(:);
NonIce_Boil_Fuel_consumed_SCE3_Suez_t = NonIce_Boil_Fuel_consumed_SCE3_Suez_t.*ones(Speed_length,1);

%Energy storage per ship design (max capacity of fuel tanks)- Fourth IMO
%GHG study
Residual_fuel_mass_pdwt = 0.053; %Median value is taken from the 4th GHG study because they do too
Ice_Energy_capacity_kWh = Residual_fuel_mass_pdwt.*dwt.*11.1666667.*1000; %11.1666667 is kWh per kg of HFO
NonIce_Energy_capacity_kWh = Residual_fuel_mass_pdwt.*dwt.*11.1666667.*1000;

%Total days spent in the voyage
SCE1_Ice_Total_days_Route1_t0 = Arctic_nav_d_SCE1_Route1_t0;
SCE1_Ice_Total_days_Route1_tm = Arctic_nav_d_SCE1_Route1_tm;
SCE1_Ice_Total_days_Route1_tf = Arctic_nav_d_SCE1_Route1_tf;

SCE1_Ice_Total_days_Route2_t0 = Arctic_nav_d_SCE1_Route2_t0;
SCE1_Ice_Total_days_Route2_tm = Arctic_nav_d_SCE1_Route2_tm;
SCE1_Ice_Total_days_Route2_tf = Arctic_nav_d_SCE1_Route2_tf;

SCE1_Ice_Total_days_Route3_t0 = Arctic_nav_d_SCE1_Route3_t0;
SCE1_Ice_Total_days_Route3_tm = Arctic_nav_d_SCE1_Route3_tm;
SCE1_Ice_Total_days_Route3_tf = Arctic_nav_d_SCE1_Route3_tf;

SCE1_NonIce_Total_days_Route1_t0 = NonIce_Arctic_nav_d_SCE1_Route1_t0;
SCE1_NonIce_Total_days_Route1_tm = NonIce_Arctic_nav_d_SCE1_Route1_tm;
SCE1_NonIce_Total_days_Route1_tf = NonIce_Arctic_nav_d_SCE1_Route1_tf;

SCE1_NonIce_Total_days_Route2_t0 = NonIce_Arctic_nav_d_SCE1_Route2_t0;
SCE1_NonIce_Total_days_Route2_tm = NonIce_Arctic_nav_d_SCE1_Route2_tm;
SCE1_NonIce_Total_days_Route2_tf = NonIce_Arctic_nav_d_SCE1_Route2_tf;

SCE1_NonIce_Total_days_Route3_t0 = NonIce_Arctic_nav_d_SCE1_Route3_t0;
SCE1_NonIce_Total_days_Route3_tm = NonIce_Arctic_nav_d_SCE1_Route3_tm;
SCE1_NonIce_Total_days_Route3_tf = NonIce_Arctic_nav_d_SCE1_Route3_tf;

SCE2_Ice_Total_days_Route1_t0 = IceSCE2Route1_Suez_nav_d_t0 + Arctic_nav_d_SCE2_Route1_t0;
SCE2_Ice_Total_days_Route1_tm = IceSCE2Route1_Suez_nav_d_tm + Arctic_nav_d_SCE2_Route1_tm;
SCE2_Ice_Total_days_Route1_tf = IceSCE2Route1_Suez_nav_d_tf + Arctic_nav_d_SCE2_Route1_tf;

SCE2_Ice_Total_days_Route2_t0 = IceSCE2Route2_Suez_nav_d_t0 + Arctic_nav_d_SCE2_Route2_t0;
SCE2_Ice_Total_days_Route2_tm = IceSCE2Route2_Suez_nav_d_tm + Arctic_nav_d_SCE2_Route2_tm;
SCE2_Ice_Total_days_Route2_tf = IceSCE2Route2_Suez_nav_d_tf + Arctic_nav_d_SCE2_Route2_tf;

SCE2_Ice_Total_days_Route3_t0 = IceSCE2Route3_Suez_nav_d_t0 + Arctic_nav_d_SCE2_Route3_t0;
SCE2_Ice_Total_days_Route3_tm = IceSCE2Route3_Suez_nav_d_tm + Arctic_nav_d_SCE2_Route3_tm;
SCE2_Ice_Total_days_Route3_tf = IceSCE2Route3_Suez_nav_d_tf + Arctic_nav_d_SCE2_Route3_tf;

SCE2_NonIce_Total_days_Route1_t0 = NonIceSCE2Route1_Suez_nav_d_t0 + NonIce_Arctic_nav_d_SCE2_Route1_t0;
SCE2_NonIce_Total_days_Route1_tm = NonIceSCE2Route1_Suez_nav_d_tm + NonIce_Arctic_nav_d_SCE2_Route1_tm;
SCE2_NonIce_Total_days_Route1_tf = NonIceSCE2Route1_Suez_nav_d_tf + NonIce_Arctic_nav_d_SCE2_Route1_tf;

SCE2_NonIce_Total_days_Route2_t0 = NonIceSCE2Route2_Suez_nav_d_t0 + NonIce_Arctic_nav_d_SCE2_Route2_t0;
SCE2_NonIce_Total_days_Route2_tm = NonIceSCE2Route2_Suez_nav_d_tm + NonIce_Arctic_nav_d_SCE2_Route2_tm;
SCE2_NonIce_Total_days_Route2_tf = NonIceSCE2Route2_Suez_nav_d_tf + NonIce_Arctic_nav_d_SCE2_Route2_tf;

SCE2_NonIce_Total_days_Route3_t0 = NonIceSCE2Route3_Suez_nav_d_t0 + NonIce_Arctic_nav_d_SCE2_Route3_t0;
SCE2_NonIce_Total_days_Route3_tm = NonIceSCE2Route3_Suez_nav_d_tm + NonIce_Arctic_nav_d_SCE2_Route3_tm;
SCE2_NonIce_Total_days_Route3_tf = NonIceSCE2Route3_Suez_nav_d_tf + NonIce_Arctic_nav_d_SCE2_Route3_tf;

SCE3_Ice_Total_days = IceSCE3_Suez_nav_d;
SCE3_NonIce_Total_days = IceSCE3_Suez_nav_d;

%Tabulating the outputs
%Scenario1
%%%%%%%%%%%%%%%%%%%%%
Scenario1_Fuel_consumption = table(Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0, NonIce_Fuel_consumed_SCE1Route1_Arctic_t_t0,...
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm, NonIce_Fuel_consumed_SCE1Route1_Arctic_t_tm,...
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf, NonIce_Fuel_consumed_SCE1Route1_Arctic_t_tf,...
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0, NonIce_Fuel_consumed_SCE1Route2_Arctic_t_t0,...
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm, NonIce_Fuel_consumed_SCE1Route2_Arctic_t_tm,...
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf, NonIce_Fuel_consumed_SCE1Route2_Arctic_t_tf,...
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0, NonIce_Fuel_consumed_SCE1Route3_Arctic_t_t0,...
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm, NonIce_Fuel_consumed_SCE1Route3_Arctic_t_tm,...
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf, NonIce_Fuel_consumed_SCE1Route3_Arctic_t_tf);

Scenario1_Aux_Fuel_consumption = table(Ice_Aux_fuel_consumed_SCE1_Route1_t_t0, NonIce_Aux_fuel_consumed_SCE1_Route1_t_t0,...
    Ice_Aux_fuel_consumed_SCE1_Route1_t_tm, NonIce_Aux_fuel_consumed_SCE1_Route1_t_tm,...
    Ice_Aux_fuel_consumed_SCE1_Route1_t_tf, NonIce_Aux_fuel_consumed_SCE1_Route1_t_tf,...
    Ice_Aux_fuel_consumed_SCE1_Route2_t_t0, NonIce_Aux_fuel_consumed_SCE1_Route2_t_t0,...
    Ice_Aux_fuel_consumed_SCE1_Route2_t_tm, NonIce_Aux_fuel_consumed_SCE1_Route2_t_tm,...
    Ice_Aux_fuel_consumed_SCE1_Route2_t_tf, NonIce_Aux_fuel_consumed_SCE1_Route2_t_tf,...
    Ice_Aux_fuel_consumed_SCE1_Route3_t_t0, NonIce_Aux_fuel_consumed_SCE1_Route3_t_t0,...
    Ice_Aux_fuel_consumed_SCE1_Route3_t_tm, NonIce_Aux_fuel_consumed_SCE1_Route3_t_tm,...
    Ice_Aux_fuel_consumed_SCE1_Route3_t_tf, NonIce_Aux_fuel_consumed_SCE1_Route3_t_tf);

Scenario1_Boil_Fuel_consumption = table(Ice_Boil_fuel_consumed_SCE1_Route1_t_t0, NonIce_Boil_fuel_consumed_SCE1_Route1_t_t0,...
    Ice_Boil_fuel_consumed_SCE1_Route1_t_tm, NonIce_Boil_fuel_consumed_SCE1_Route1_t_tm,...
    Ice_Boil_fuel_consumed_SCE1_Route1_t_tf, NonIce_Boil_fuel_consumed_SCE1_Route1_t_tf,...
    Ice_Boil_fuel_consumed_SCE1_Route2_t_t0, NonIce_Boil_fuel_consumed_SCE1_Route2_t_t0,...
    Ice_Boil_fuel_consumed_SCE1_Route2_t_tm, NonIce_Boil_fuel_consumed_SCE1_Route2_t_tm,...
    Ice_Boil_fuel_consumed_SCE1_Route2_t_tf, NonIce_Boil_fuel_consumed_SCE1_Route2_t_tf,...
    Ice_Boil_fuel_consumed_SCE1_Route3_t_t0, NonIce_Boil_fuel_consumed_SCE1_Route3_t_t0,...
    Ice_Boil_fuel_consumed_SCE1_Route3_t_tm, NonIce_Boil_fuel_consumed_SCE1_Route3_t_tm,...
    Ice_Boil_fuel_consumed_SCE1_Route3_t_tf, NonIce_Boil_fuel_consumed_SCE1_Route3_t_tf);

%Scenario2
%%%%%%%%%%%%%%%%%%%%%
Scenario2_Fuel_consumption = table(Total_Ice_Fuel_consumed_Suez_SCE2Route1_t_t0, Total_NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0,...
    Total_Ice_Fuel_consumed_Suez_SCE2Route1_t_tm, Total_NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm,...
    Total_Ice_Fuel_consumed_Suez_SCE2Route1_t_tf, Total_NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf,...
    Total_Ice_Fuel_consumed_Suez_SCE2Route2_t_t0, Total_NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0,...
    Total_Ice_Fuel_consumed_Suez_SCE2Route2_t_tm, Total_NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm,...
    Total_Ice_Fuel_consumed_Suez_SCE2Route2_t_tf, Total_NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf,...
    Total_Ice_Fuel_consumed_Suez_SCE2Route3_t_t0, Total_NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0,...
    Total_Ice_Fuel_consumed_Suez_SCE2Route3_t_tm, Total_NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm,...
    Total_Ice_Fuel_consumed_Suez_SCE2Route3_t_tf, Total_NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf);
    
Scenario2_Aux_Fuel_consumption = table(Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route1_t_t0, Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route1_t_t0,...
    Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route1_t_tm, Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route1_t_tm,...
    Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route1_t_tf, Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route1_t_tf,...
    Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route2_t_t0, Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route2_t_t0,...
    Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route2_t_tm, Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route2_t_tm,...
    Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route2_t_tf, Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route2_t_tf,...
    Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route3_t_t0, Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route3_t_t0,...
    Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route3_t_tm, Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route3_t_tm,...
    Total_Ice_Aux_Fuel_consumed_Suez_SCE2Route3_t_tf, Total_NonIce_Aux_Fuel_consumed_Suez_SCE2Route3_t_tf);

Scenario2_Boil_Fuel_consumption = table(Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route1_t_t0, Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route1_t_t0,...
    Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route1_t_tm, Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route1_t_tm,...
    Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route1_t_tf, Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route1_t_tf,...
    Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route2_t_t0, Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route2_t_t0,...
    Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route2_t_tm, Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route2_t_tm,...
    Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route2_t_tf, Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route2_t_tf,...
    Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route3_t_t0, Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route3_t_t0,...
    Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route3_t_tm, Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route3_t_tm,...
    Total_Ice_Boil_Fuel_consumed_Suez_SCE2Route3_t_tf, Total_NonIce_Boil_Fuel_consumed_Suez_SCE2Route3_t_tf);


%Scenario3
%%%%%%%%%%%%%%%%%%%%%
Scenario3_Fuel_consumption = table(Ice_Fuel_consumed_SCE3_Suez_t, NonIce_Fuel_consumed_SCE3_Suez_t);
Scenario3_Aux_Fuel_consumption = table(Ice_Aux_Fuel_consumed_SCE3_Suez_t, NonIce_Aux_Fuel_consumed_SCE3_Suez_t);
Scenario3_Boil_Fuel_consumption = table(Ice_Boil_Fuel_consumed_SCE3_Suez_t, NonIce_Boil_Fuel_consumed_SCE3_Suez_t);

%SCE1 will be the same as SCE2
SCE1_NonIce_Route1_n_t0 = SCE2_NonIce_Route1_n_t0;
SCE1_NonIce_Route1_n_tm = SCE2_NonIce_Route1_n_tm;
SCE1_NonIce_Route1_n_tf = SCE2_NonIce_Route1_n_tf;

SCE1_NonIce_Route2_n_t0 = SCE2_NonIce_Route2_n_t0;
SCE1_NonIce_Route2_n_tm = SCE2_NonIce_Route2_n_tm;
SCE1_NonIce_Route2_n_tf = SCE2_NonIce_Route2_n_tf;

SCE1_NonIce_Route3_n_t0 = SCE2_NonIce_Route3_n_t0;
SCE1_NonIce_Route3_n_tm = SCE2_NonIce_Route3_n_tm;
SCE1_NonIce_Route3_n_tf = SCE2_NonIce_Route3_n_tf;




