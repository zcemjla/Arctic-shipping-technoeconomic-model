function [SCE1_Ice_Total_Voyage_cost_t0, SCE1_Ice_OpEx_t0, SCE1_Ice_Total_CapEx_t0, SCE1_Global_Ice_CO2eqtax_t0, SCE1_Global_Ice_AP_Damage_matrix_t0, SCE1_Global_Ice_Clim_Damage_matrix_t0,...
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
    SCE3_Suez_nav_d, d, IMO_type, TEU, dwt, gt, Ice_gt, t,Ice_Energy_capacity_kWh, NonIce_Energy_capacity_kWh, Capital_Advance, Pow_ice, Pow_ice_rat,...
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
    Arctic_damage_costs, Suez_damage_costs, GWP100_CH4, GWP100_N2O, GWP100_BCArctic, GWP100_BCSuez, Carbon_price_t0, Carbon_price_tm, Carbon_price_tf,...
    Arctic_Route1_Total_D_A, Arctic_Route2_Total_D_A, Arctic_Route3_Total_D_A, SCE3_Suez_Route_D_S, inp, NonIcesfc_design);

%%Commercial

%This function calculates the profits for the initial year, the
%intermediary year and the final year and outputs commercial indicators
%that can then be used to assess the feasibility of Arctic shipping and
%allocate the optimal design choice combined with the route

%Need to return and annualise the the fuel costs
%Fuel index
% 2-stroke/HFO = 1
% 2-stroke/LSHFO = 2
% 2-stroke/MDO = 3
% 4-stroke/LNG = 4
% 4-stroke/NH3 = 5
% Fuel cell/NH3 = 6

% %Emissions index
% Carbon_dioxide_op = 1
% Carbon_dioxide_up = 2
% Natural_gas_op = 3
% Natural_gas_up = 4
% Nitrous_oxide_op = 5
% Nitrous_oxide_up = 6
% Sulphur_oxides_op = 7
% Sulphur_oxides_up = 8
% Nitrogen_oxides_op = 9
% Nitrogen_oxides_up = 10
% PM_op = 11
% PM_up = 12
% BC_op = 13
% BC_up = 14

load('Input_data\Commercial_data\Drybulktc.mat');
Cont_tc = readtable('Input_data\Commercial_data\Cont_tc.csv');
Wet_bulk_tc = readtable('Input_data\Commercial_data\Wet_bulk_tc.csv');

%Capital costs
[Cargo_dwt, SCE1_NonIce_Cap_Value_t0, SCE1_NonIce_Cap_Value_tm, SCE1_NonIce_Cap_Value_tf, SCE1_Ice_Cap_Value_t0, SCE1_Ice_Cap_Value_tm, SCE1_Ice_Cap_Value_tf,...
    SCE2_NonIce_Cap_Value_t0, SCE2_NonIce_Cap_Value_tm, SCE2_NonIce_Cap_Value_tf, SCE2_Ice_Cap_Value_t0, SCE2_Ice_Cap_Value_tm, SCE2_Ice_Cap_Value_tf,...
    SCE3_NonIce_Cap_Value_t0, SCE3_NonIce_Cap_Value_tm, SCE3_NonIce_Cap_Value_tf, SCE3_Ice_Cap_Value_t0, SCE3_Ice_Cap_Value_tm, SCE3_Ice_Cap_Value_tf,...
    SCE1_Ice_Total_CapEx_t0, SCE1_Ice_Total_CapEx_tm, SCE1_Ice_Total_CapEx_tf,...
    SCE1_NonIce_Total_CapEx_t0, SCE1_NonIce_Total_CapEx_tm, SCE1_NonIce_Total_CapEx_tf, SCE2_Ice_Total_CapEx_t0, SCE2_Ice_Total_CapEx_tm, SCE2_Ice_Total_CapEx_tf,...
    SCE2_NonIce_Total_CapEx_t0, SCE2_NonIce_Total_CapEx_tm, SCE2_NonIce_Total_CapEx_tf, SCE3_Ice_Total_CapEx_t0, SCE3_Ice_Total_CapEx_tm, SCE3_Ice_Total_CapEx_tf,...
    SCE3_NonIce_Total_CapEx_t0, SCE3_NonIce_Total_CapEx_tm, SCE3_NonIce_Total_CapEx_tf, SCE1_Ice_dwt_rev_loss_t0, SCE1_Ice_dwt_rev_loss_tm, SCE1_Ice_dwt_rev_loss_tf,...
    SCE1_NonIce_dwt_rev_loss_t0, SCE1_NonIce_dwt_rev_loss_tm, SCE1_NonIce_dwt_rev_loss_tf, SCE2_Ice_dwt_rev_loss_t0, SCE2_Ice_dwt_rev_loss_tm, SCE2_Ice_dwt_rev_loss_tf,...
    SCE2_NonIce_dwt_rev_loss_t0, SCE2_NonIce_dwt_rev_loss_tm, SCE2_NonIce_dwt_rev_loss_tf,...
    SCE3_Ice_dwt_rev_loss, SCE3_NonIce_dwt_rev_loss, SCE1_Ice_AddOpex_t0, SCE1_Ice_AddOpex_tm, SCE1_Ice_AddOpex_tf, SCE1_NonIce_AddOpex_t0,...
    SCE1_NonIce_AddOpex_tm, SCE1_NonIce_AddOpex_tf, SCE2_Ice_AddOpex_t0, SCE2_Ice_AddOpex_tm, SCE2_Ice_AddOpex_tf, SCE2_NonIce_AddOpex_t0,...
    SCE2_NonIce_AddOpex_tm, SCE2_NonIce_AddOpex_tf, SCE3_Ice_AddOpex_t0, SCE3_Ice_AddOpex_tm, SCE3_Ice_AddOpex_tf, SCE3_NonIce_AddOpex_t0,...
    SCE3_NonIce_AddOpex_tm, SCE3_NonIce_AddOpex_tf, SCE1_Ice_dwt, SCE1_NonIce_dwt, SCE2_Ice_dwt, SCE2_NonIce_dwt, SCE3_Ice_dwt, SCE3_NonIce_dwt] = CapExp_AddExp(TLC_PA_MW, dwtloss_pMWh, Aux_Pow_ice, Dry_Bulk_Rev_pt, Container_Rev_pt, Wet_Bulk_Rev_pt,...
    Storage_Cost_kW, Engine_Unit_Cost_MW, Learning_Curve_t0, Learning_Curve_tm, Learning_Curve_tf, Loan_Interest_Rate,...
    Amortisation_period, d, Ice_dwt, Ice_dwt_loss, dwt, t,Ice_Energy_capacity_kWh, NonIce_Energy_capacity_kWh, Capital_Advance, Pow_ice_rat);

%Port fee
%Scenario 1
SCE1_Ice_Port_dues_Route1_t0 = 2.*Port_fee.*SCE1_Ice_dwt.*SCE1_Ice_Route1_n_t0(:,1); %I assume no ballast voyages, so each voyage involves a loading and unloading fee
SCE1_Ice_Port_dues_Route1_tm = 2.*Port_fee.*SCE1_Ice_dwt.*SCE1_Ice_Route1_n_tm(:,1);
SCE1_Ice_Port_dues_Route1_tf = 2.*Port_fee.*SCE1_Ice_dwt.*SCE1_Ice_Route1_n_tf(:,1);

SCE1_Ice_Port_dues_Route2_t0 = 2.*Port_fee.*SCE1_Ice_dwt.*SCE1_Ice_Route2_n_t0(:,1);
SCE1_Ice_Port_dues_Route2_tm = 2.*Port_fee.*SCE1_Ice_dwt.*SCE1_Ice_Route2_n_tm(:,1);
SCE1_Ice_Port_dues_Route2_tf = 2.*Port_fee.*SCE1_Ice_dwt.*SCE1_Ice_Route2_n_tf(:,1);

SCE1_Ice_Port_dues_Route3_t0 = 2.*Port_fee.*SCE1_Ice_dwt.*SCE1_Ice_Route3_n_t0(:,1);
SCE1_Ice_Port_dues_Route3_tm = 2.*Port_fee.*SCE1_Ice_dwt.*SCE1_Ice_Route3_n_tm(:,1);
SCE1_Ice_Port_dues_Route3_tf = 2.*Port_fee.*SCE1_Ice_dwt.*SCE1_Ice_Route3_n_tf(:,1);

%The Non ice number of voyages variable needs to be readjusted
SCE1_NonIce_Port_dues_Route1_t0 = 2.*Port_fee.*SCE1_NonIce_dwt.*SCE1_NonIce_Route1_n_t0(:,1);
SCE1_NonIce_Port_dues_Route1_tm = 2.*Port_fee.*SCE1_NonIce_dwt.*SCE1_NonIce_Route1_n_tm(:,1);
SCE1_NonIce_Port_dues_Route1_tf = 2.*Port_fee.*SCE1_NonIce_dwt.*SCE1_NonIce_Route1_n_tf(:,1);

SCE1_NonIce_Port_dues_Route2_t0 = 2.*Port_fee.*SCE1_NonIce_dwt.*SCE1_NonIce_Route2_n_t0(:,1);
SCE1_NonIce_Port_dues_Route2_tm = 2.*Port_fee.*SCE1_NonIce_dwt.*SCE1_NonIce_Route2_n_tm(:,1);
SCE1_NonIce_Port_dues_Route2_tf = 2.*Port_fee.*SCE1_NonIce_dwt.*SCE1_NonIce_Route2_n_tf(:,1);

SCE1_NonIce_Port_dues_Route3_t0 = 2.*Port_fee.*SCE1_NonIce_dwt.*SCE1_NonIce_Route3_n_t0(:,1);
SCE1_NonIce_Port_dues_Route3_tm = 2.*Port_fee.*SCE1_NonIce_dwt.*SCE1_NonIce_Route3_n_tm(:,1);
SCE1_NonIce_Port_dues_Route3_tf = 2.*Port_fee.*SCE1_NonIce_dwt.*SCE1_NonIce_Route3_n_tf(:,1);

%Scenario 2
SCE2_Ice_Port_dues_Route1_t0 = 2.*Port_fee.*SCE2_Ice_dwt.*SCE2_Ice_Route1_Total_n_t0;
SCE2_Ice_Port_dues_Route1_tm = 2.*Port_fee.*SCE2_Ice_dwt.*SCE2_Ice_Route1_Total_n_tm;
SCE2_Ice_Port_dues_Route1_tf = 2.*Port_fee.*SCE2_Ice_dwt.*SCE2_Ice_Route1_Total_n_tf;

SCE2_Ice_Port_dues_Route2_t0 = 2.*Port_fee.*SCE2_Ice_dwt.*SCE2_Ice_Route2_Total_n_t0;
SCE2_Ice_Port_dues_Route2_tm = 2.*Port_fee.*SCE2_Ice_dwt.*SCE2_Ice_Route2_Total_n_tm;
SCE2_Ice_Port_dues_Route2_tf = 2.*Port_fee.*SCE2_Ice_dwt.*SCE2_Ice_Route2_Total_n_tf;

SCE2_Ice_Port_dues_Route3_t0 = 2.*Port_fee.*SCE2_Ice_dwt.*SCE2_Ice_Route3_Total_n_t0;
SCE2_Ice_Port_dues_Route3_tm = 2.*Port_fee.*SCE2_Ice_dwt.*SCE2_Ice_Route3_Total_n_tm;
SCE2_Ice_Port_dues_Route3_tf = 2.*Port_fee.*SCE2_Ice_dwt.*SCE2_Ice_Route3_Total_n_tf;

SCE2_NonIce_Port_dues_Route1_t0 = 2.*Port_fee.*SCE2_NonIce_dwt.*SCE2_NonIce_Route1_Total_n_t0(:,1);
SCE2_NonIce_Port_dues_Route1_tm = 2.*Port_fee.*SCE2_NonIce_dwt.*SCE2_NonIce_Route1_Total_n_tm(:,1);
SCE2_NonIce_Port_dues_Route1_tf = 2.*Port_fee.*SCE2_NonIce_dwt.*SCE2_NonIce_Route1_Total_n_tf(:,1);

SCE2_NonIce_Port_dues_Route2_t0 = 2.*Port_fee.*SCE2_NonIce_dwt.*SCE2_NonIce_Route2_Total_n_t0(:,1);
SCE2_NonIce_Port_dues_Route2_tm = 2.*Port_fee.*SCE2_NonIce_dwt.*SCE2_NonIce_Route2_Total_n_tm(:,1);
SCE2_NonIce_Port_dues_Route2_tf = 2.*Port_fee.*SCE2_NonIce_dwt.*SCE2_NonIce_Route2_Total_n_tf(:,1);

SCE2_NonIce_Port_dues_Route3_t0 = 2.*Port_fee.*SCE2_NonIce_dwt.*SCE2_NonIce_Route3_Total_n_t0(:,1);
SCE2_NonIce_Port_dues_Route3_tm = 2.*Port_fee.*SCE2_NonIce_dwt.*SCE2_NonIce_Route3_Total_n_tm(:,1);
SCE2_NonIce_Port_dues_Route3_tf = 2.*Port_fee.*SCE2_NonIce_dwt.*SCE2_NonIce_Route3_Total_n_tf(:,1);

%Scenario 3
SCE3_Ice_Port_dues_Suez = 2.*Port_fee.*SCE3_Ice_dwt.*round(SCE3_Suez_n_S);
SCE3_NonIce_Port_dues_Suez = 2.*Port_fee.*SCE3_NonIce_dwt.*round(SCE3_Suez_n_S);

%Interpolate Suez tariff first so that I can use it for scenario based
%analysis on the Arctic tariff 
Suez_fee = zeros(length(IMO_type(:,1)),1);
for i = 1:1:length(IMO_type)
    if IMO_type(i) == 1
        Suez_fee(i) = interp1(DB_Suez_fee.GRT,DB_Suez_fee.Suez_toll,gt(i),'linear','extrap'); %Suez fee has been extrapolated 
    elseif IMO_type(i) == 4
        Suez_fee(i) = interp1(Cont_Suez_fee.GT,Cont_Suez_fee.Suez_toll,gt(i),'linear','extrap');
    elseif IMO_type(i) == 7
        Suez_fee(i) = interp1(WB_Suez_fee.GT,WB_Suez_fee.Suez_toll,gt(i),'linear','extrap');
    end
end

Ice_Suez_fee = zeros(length(IMO_type(:,1)),1);
for i = 1:1:length(IMO_type)
    if IMO_type(i) == 1
        Ice_Suez_fee(i) = interp1(DB_Suez_fee.GRT,DB_Suez_fee.Suez_toll,Ice_gt(i),'linear','extrap'); %Suez fee has been extrapolated 
    elseif IMO_type(i) == 4
        Ice_Suez_fee(i) = interp1(Cont_Suez_fee.GT,Cont_Suez_fee.Suez_toll,Ice_gt(i),'linear','extrap');
    elseif IMO_type(i) == 7
        Ice_Suez_fee(i) = interp1(WB_Suez_fee.GT,WB_Suez_fee.Suez_toll,Ice_gt(i),'linear','extrap');
    end
end

%Ice-breaking tariff - Scenario 1 - For non ice strengthened ships, they
%are always escorted by an icebreaker regardless of the route and for the
%duration of their time in the Artic sea

Summer_Ice_IB_fee = zeros(length(gt(:,1)),1);
for i = 1:1:length(gt)
        Summer_Ice_IB_fee(i) = interp1(Summer_IB_fees.GT,Summer_IB_fees.Ice_Fee,Ice_gt(i),'linear','extrap');
        Summer_Ice_IB_fee(i) = Summer_Ice_IB_fee(i)./0.8; %20% VAT
end

Summer_NonIce_IB_fee = zeros(length(gt(:,1)),1);
for i = 1:1:length(gt)
        Summer_NonIce_IB_fee(i) = interp1(Summer_IB_fees.GT,Summer_IB_fees.OW_fee,gt(i),'linear','extrap');
        Summer_NonIce_IB_fee(i) = Summer_NonIce_IB_fee(i)./0.8; 
end

Winter_Ice_IB_fee = zeros(length(gt(:,1)),1);
for i = 1:1:length(gt)
    Winter_Ice_IB_fee(i) = interp1(Winter_IB_fees.GT,Winter_IB_fees.Ice_Fee,Ice_gt(i),'linear','extrap');
    Winter_Ice_IB_fee(i) = Winter_Ice_IB_fee(i)./0.8;
end

%For scenario analysis 
if inp.SSP370 == 1
    Summer_Ice_IB_fee_t0 = Summer_Ice_IB_fee;
    Summer_Ice_IB_fee_tm = Summer_Ice_IB_fee;
    Summer_Ice_IB_fee_tf = Summer_Ice_IB_fee;
    
    Summer_NonIce_IB_fee_t0 = Summer_NonIce_IB_fee;
    Summer_NonIce_IB_fee_tm = Summer_NonIce_IB_fee;
    Summer_NonIce_IB_fee_tf = Summer_NonIce_IB_fee;
    
    Winter_Ice_IB_fee_t0 = Winter_Ice_IB_fee;
    Winter_Ice_IB_fee_tm = Winter_Ice_IB_fee;
    Winter_Ice_IB_fee_tf = Winter_Ice_IB_fee;
    
else
    Summer_Ice_IB_fee_t0 = Summer_Ice_IB_fee; %Assume competition with the SCA so the NSRA charges teh same price as the SCA
    Summer_Ice_IB_fee_tm = Ice_Suez_fee;
    Summer_Ice_IB_fee_tf = Ice_Suez_fee;
    
    Summer_NonIce_IB_fee_t0 = Summer_NonIce_IB_fee;
    Summer_NonIce_IB_fee_tm = Summer_NonIce_IB_fee;
    Summer_NonIce_IB_fee_tf = Summer_NonIce_IB_fee;
    
    Winter_Ice_IB_fee_t0 = Winter_Ice_IB_fee;
    Winter_Ice_IB_fee_tm = Winter_Ice_IB_fee;
    Winter_Ice_IB_fee_tf = Winter_Ice_IB_fee;
    
end

SCE1_Ice_IB_tariff_Route1_t0 = zeros(length(gt(:,1)),1);
for i = 1:1:20
    
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1:length(Logic_mat_IceStrength_feasibility_Scenario1)./20);
    Summer_months = sum(Logic_mat_IceStrength_feasibility_Scenario1_iter(7:11));
    Summer_voyages = round(SCE1_Ice_Route1_n_t0(1 + 5.*(i - 1):5*i).*Summer_months./sum(Logic_mat_IceStrength_feasibility_Scenario1_iter));
    SCE1_Ice_IB_tariff_Route1_t0(1 + 5*(i - 1):5*i) = (Summer_voyages.*Summer_Ice_IB_fee_t0(1 + 5*(i - 1):5*i)) + ((SCE1_Ice_Route1_n_t0(1 + 5.*(i - 1):5*i) - Summer_voyages).*Winter_Ice_IB_fee_t0(1 + 5.*(i - 1):5*i));
end

SCE1_Ice_IB_tariff_Route1_tm = zeros(length(gt(:,1)),1);
for i = 1:1:20
    
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1:length(Logic_mat_IceStrength_feasibility_Scenario1)./20);
    Summer_months = sum(Logic_mat_IceStrength_feasibility_Scenario1_iter(7:11));
    Summer_voyages = round(SCE1_Ice_Route1_n_tm(1 + 5.*(i - 1):5*i).*Summer_months./sum(Logic_mat_IceStrength_feasibility_Scenario1_iter));
    SCE1_Ice_IB_tariff_Route1_tm(1 + 5*(i - 1):5*i) = (Summer_voyages.*Summer_Ice_IB_fee_tm(1 + 5*(i - 1):5*i)) + ((SCE1_Ice_Route1_n_tm(1 + 5.*(i - 1):5*i) - Summer_voyages).*Winter_Ice_IB_fee_tm(1 + 5.*(i - 1):5*i));
end
 
SCE1_Ice_IB_tariff_Route1_tf = zeros(length(gt(:,1)),1);
for i = 1:1:20
    
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1:length(Logic_mat_IceStrength_feasibility_Scenario1)./20);
    Summer_months = sum(Logic_mat_IceStrength_feasibility_Scenario1_iter(7:11));
    Summer_voyages = round(SCE1_Ice_Route1_n_tf(1 + 5.*(i - 1):5*i).*Summer_months./sum(Logic_mat_IceStrength_feasibility_Scenario1_iter));
    SCE1_Ice_IB_tariff_Route1_tf(1 + 5*(i - 1):5*i) = (Summer_voyages.*Summer_Ice_IB_fee_tf(1 + 5*(i - 1):5*i)) + ((SCE1_Ice_Route1_n_tf(1 + 5.*(i - 1):5*i) - Summer_voyages).*Winter_Ice_IB_fee_tf(1 + 5.*(i - 1):5*i));
end

SCE1_Ice_IB_tariff_Route2_t0 = zeros(length(gt(:,1)),1);
for i = 1:1:20
    
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1:length(Logic_mat_IceStrength_feasibility_Scenario1)./20);
    Summer_months = sum(Logic_mat_IceStrength_feasibility_Scenario1_iter(7:11));
    Summer_voyages = round(SCE1_Ice_Route2_n_t0(1 + 5.*(i - 1):5*i).*Summer_months./sum(Logic_mat_IceStrength_feasibility_Scenario1_iter));
    SCE1_Ice_IB_tariff_Route2_t0(1 + 5*(i - 1):5*i) = (Summer_voyages.*Summer_Ice_IB_fee_t0(1 + 5*(i - 1):5*i)) + ((SCE1_Ice_Route2_n_t0(1 + 5.*(i - 1):5*i) - Summer_voyages).*Winter_Ice_IB_fee_t0(1 + 5.*(i - 1):5*i));
end

SCE1_Ice_IB_tariff_Route2_tm = zeros(length(gt(:,1)),1);
for i = 1:1:20
    
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1:length(Logic_mat_IceStrength_feasibility_Scenario1)./20);
    Summer_months = sum(Logic_mat_IceStrength_feasibility_Scenario1_iter(7:11));
    Summer_voyages = round(SCE1_Ice_Route2_n_tm(1 + 5.*(i - 1):5*i).*Summer_months./sum(Logic_mat_IceStrength_feasibility_Scenario1_iter));
    SCE1_Ice_IB_tariff_Route2_tm(1 + 5*(i - 1):5*i) = (Summer_voyages.*Summer_Ice_IB_fee_tm(1 + 5*(i - 1):5*i)) + ((SCE1_Ice_Route2_n_tm(1 + 5.*(i - 1):5*i) - Summer_voyages).*Winter_Ice_IB_fee_tm(1 + 5.*(i - 1):5*i));
end
 
SCE1_Ice_IB_tariff_Route2_tf = zeros(length(gt(:,1)),1);
for i = 1:1:20
    
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1:length(Logic_mat_IceStrength_feasibility_Scenario1)./20);
    Summer_months = sum(Logic_mat_IceStrength_feasibility_Scenario1_iter(7:11));
    Summer_voyages = round(SCE1_Ice_Route2_n_tf(1 + 5.*(i - 1):5*i).*Summer_months./sum(Logic_mat_IceStrength_feasibility_Scenario1_iter));
    SCE1_Ice_IB_tariff_Route2_tf(1 + 5*(i - 1):5*i) = (Summer_voyages.*Summer_Ice_IB_fee_tf(1 + 5*(i - 1):5*i)) + ((SCE1_Ice_Route2_n_tf(1 + 5.*(i - 1):5*i) - Summer_voyages).*Winter_Ice_IB_fee_tf(1 + 5.*(i - 1):5*i));
end

SCE1_Ice_IB_tariff_Route3_t0 = zeros(length(gt(:,1)),1);
for i = 1:1:20
    
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1:length(Logic_mat_IceStrength_feasibility_Scenario1)./20);
    Summer_months = sum(Logic_mat_IceStrength_feasibility_Scenario1_iter(7:11));
    Summer_voyages = round(SCE1_Ice_Route3_n_t0(1 + 5.*(i - 1):5*i).*Summer_months./sum(Logic_mat_IceStrength_feasibility_Scenario1_iter));
    SCE1_Ice_IB_tariff_Route3_t0(1 + 5*(i - 1):5*i) = (Summer_voyages.*Summer_Ice_IB_fee_t0(1 + 5*(i - 1):5*i)) + ((SCE1_Ice_Route3_n_t0(1 + 5.*(i - 1):5*i) - Summer_voyages).*Winter_Ice_IB_fee_t0(1 + 5.*(i - 1):5*i));
end

SCE1_Ice_IB_tariff_Route3_tm = zeros(length(gt(:,1)),1);
for i = 1:1:20
    
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1:length(Logic_mat_IceStrength_feasibility_Scenario1)./20);
    Summer_months = sum(Logic_mat_IceStrength_feasibility_Scenario1_iter(7:11));
    Summer_voyages = round(SCE1_Ice_Route3_n_tm(1 + 5.*(i - 1):5*i).*Summer_months./sum(Logic_mat_IceStrength_feasibility_Scenario1_iter));
    SCE1_Ice_IB_tariff_Route3_tm(1 + 5*(i - 1):5*i) = (Summer_voyages.*Summer_Ice_IB_fee_tm(1 + 5*(i - 1):5*i)) + ((SCE1_Ice_Route3_n_tm(1 + 5.*(i - 1):5*i) - Summer_voyages).*Winter_Ice_IB_fee_tm(1 + 5.*(i - 1):5*i));
end
 
SCE1_Ice_IB_tariff_Route3_tf = zeros(length(gt(:,1)),1);
for i = 1:1:20
    
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1:length(Logic_mat_IceStrength_feasibility_Scenario1)./20);
    Summer_months = sum(Logic_mat_IceStrength_feasibility_Scenario1_iter(7:11));
    Summer_voyages = round(SCE1_Ice_Route3_n_tf(1 + 5.*(i - 1):5*i).*Summer_months./sum(Logic_mat_IceStrength_feasibility_Scenario1_iter));
    SCE1_Ice_IB_tariff_Route3_tf(1 + 5*(i - 1):5*i) = (Summer_voyages.*Summer_Ice_IB_fee_tf(1 + 5*(i - 1):5*i)) + ((SCE1_Ice_Route3_n_tf(1 + 5.*(i - 1):5*i) - Summer_voyages).*Winter_Ice_IB_fee_tf(1 + 5.*(i - 1):5*i));
end

SCE1_NonIce_IB_tariff_Route1_t0 = Summer_NonIce_IB_fee_t0.*SCE1_NonIce_Route1_n_t0;
SCE1_NonIce_IB_tariff_Route1_tm = Summer_NonIce_IB_fee_tm.*SCE1_NonIce_Route1_n_tm;
SCE1_NonIce_IB_tariff_Route1_tf = Summer_NonIce_IB_fee_tf.*SCE1_NonIce_Route1_n_tf;

SCE1_NonIce_IB_tariff_Route2_t0 = Summer_NonIce_IB_fee_t0.*SCE1_NonIce_Route2_n_t0;
SCE1_NonIce_IB_tariff_Route2_tm = Summer_NonIce_IB_fee_tm.*SCE1_NonIce_Route2_n_tm;
SCE1_NonIce_IB_tariff_Route2_tf = Summer_NonIce_IB_fee_tf.*SCE1_NonIce_Route2_n_tf;

SCE1_NonIce_IB_tariff_Route3_t0 = Summer_NonIce_IB_fee_t0.*SCE1_NonIce_Route3_n_t0;
SCE1_NonIce_IB_tariff_Route3_tm = Summer_NonIce_IB_fee_tm.*SCE1_NonIce_Route3_n_tm;
SCE1_NonIce_IB_tariff_Route3_tf = Summer_NonIce_IB_fee_tf.*SCE1_NonIce_Route3_n_tf;

SCE2_Ice_IB_tariff_Route1_t0 = Summer_Ice_IB_fee_t0.*SCE2_Ice_Route1_n_t0;
SCE2_Ice_IB_tariff_Route1_tm = Summer_Ice_IB_fee_tm.*SCE2_Ice_Route1_n_tm;
SCE2_Ice_IB_tariff_Route1_tf = Summer_Ice_IB_fee_tf.*SCE2_Ice_Route1_n_tf;

SCE2_Ice_IB_tariff_Route2_t0 = Summer_Ice_IB_fee_t0.*SCE2_Ice_Route2_n_t0;
SCE2_Ice_IB_tariff_Route2_tm = Summer_Ice_IB_fee_tm.*SCE2_Ice_Route2_n_tm;
SCE2_Ice_IB_tariff_Route2_tf = Summer_Ice_IB_fee_tf.*SCE2_Ice_Route2_n_tf;

SCE2_Ice_IB_tariff_Route3_t0 = Summer_Ice_IB_fee_t0.*SCE2_Ice_Route3_n_t0;
SCE2_Ice_IB_tariff_Route3_tm = Summer_Ice_IB_fee_tm.*SCE2_Ice_Route3_n_tm;
SCE2_Ice_IB_tariff_Route3_tf = Summer_Ice_IB_fee_tf.*SCE2_Ice_Route3_n_tf;

SCE2_NonIce_IB_tariff_Route1_t0 = Summer_NonIce_IB_fee_t0.*SCE2_NonIce_Route1_n_t0;
SCE2_NonIce_IB_tariff_Route1_tm = Summer_NonIce_IB_fee_tm.*SCE2_NonIce_Route1_n_tm;
SCE2_NonIce_IB_tariff_Route1_tf = Summer_NonIce_IB_fee_tf.*SCE2_NonIce_Route1_n_tf;

SCE2_NonIce_IB_tariff_Route2_t0 = Summer_NonIce_IB_fee_t0.*SCE2_NonIce_Route2_n_t0;
SCE2_NonIce_IB_tariff_Route2_tm = Summer_NonIce_IB_fee_tm.*SCE2_NonIce_Route2_n_tm;
SCE2_NonIce_IB_tariff_Route2_tf = Summer_NonIce_IB_fee_tf.*SCE2_NonIce_Route2_n_tf;

SCE2_NonIce_IB_tariff_Route3_t0 = Summer_NonIce_IB_fee_t0.*SCE2_NonIce_Route3_n_t0;
SCE2_NonIce_IB_tariff_Route3_tm = Summer_NonIce_IB_fee_tm.*SCE2_NonIce_Route3_n_tm;
SCE2_NonIce_IB_tariff_Route3_tf = Summer_NonIce_IB_fee_tf.*SCE2_NonIce_Route3_n_tf;

%IP_fee
IP_fee = zeros(length(gt(:,1)),1);
for i = 1:1:length(IP_fee)
    if gt(i) <= 5000
        IP_fee(i) = IP_fees.IP_fee(1);
    elseif gt(i) > 5000 && gt(i) <= 10000
        IP_fee(i) = IP_fees.IP_fee(2);
    elseif  gt(i) > 10000 && gt(i) <= 20000
        IP_fee(i) = IP_fees.IP_fee(3);
    elseif gt(i) > 20000 && gt(i) <= 40000
        IP_fee(i) = IP_fees.IP_fee(4);
    elseif gt(i) > 40000 && gt(i) <= 100000
        IP_fee(i) = IP_fees.IP_fee(5);
    elseif gt(i) > 100000
        IP_fee(i) = IP_fees.IP_fee(6);
    end
end

Ice_IP_fee = zeros(length(gt(:,1)),1);
for i = 1:1:length(IP_fee)
    if Ice_gt(i) <= 5000
        Ice_IP_fee(i) = IP_fees.IP_fee(1);
    elseif Ice_gt(i) > 5000 && Ice_gt(i) <= 10000
        Ice_IP_fee(i) = IP_fees.IP_fee(2);
    elseif  Ice_gt(i) > 10000 && Ice_gt(i) <= 20000
        Ice_IP_fee(i) = IP_fees.IP_fee(3);
    elseif Ice_gt(i) > 20000 && Ice_gt(i) <= 40000
        Ice_IP_fee(i) = IP_fees.IP_fee(4);
    elseif Ice_gt(i) > 40000 && Ice_gt(i) <= 100000
        Ice_IP_fee(i) = IP_fees.IP_fee(5);
    elseif Ice_gt(i) > 100000
        Ice_IP_fee(i) = IP_fees.IP_fee(6);
    end
end

SCE1_Ice_IP_fee_Route1_t0 = Ice_IP_fee.*SCE1_Ice_Route1_n_t0;
SCE1_Ice_IP_fee_Route1_tm = Ice_IP_fee.*SCE1_Ice_Route1_n_tm;
SCE1_Ice_IP_fee_Route1_tf = Ice_IP_fee.*SCE1_Ice_Route1_n_tf;

SCE1_Ice_IP_fee_Route2_t0 = Ice_IP_fee.*SCE1_Ice_Route2_n_t0;
SCE1_Ice_IP_fee_Route2_tm = Ice_IP_fee.*SCE1_Ice_Route2_n_tm;
SCE1_Ice_IP_fee_Route2_tf = Ice_IP_fee.*SCE1_Ice_Route2_n_tf;

SCE1_Ice_IP_fee_Route3_t0 = Ice_IP_fee.*SCE1_Ice_Route3_n_t0;
SCE1_Ice_IP_fee_Route3_tm = Ice_IP_fee.*SCE1_Ice_Route3_n_tm;
SCE1_Ice_IP_fee_Route3_tf = Ice_IP_fee.*SCE1_Ice_Route3_n_tf;

SCE1_NonIce_IP_fee_Route1_t0 = IP_fee.*SCE1_NonIce_Route1_n_t0;
SCE1_NonIce_IP_fee_Route1_tm = IP_fee.*SCE1_NonIce_Route1_n_tm;
SCE1_NonIce_IP_fee_Route1_tf = IP_fee.*SCE1_NonIce_Route1_n_tf;

SCE1_NonIce_IP_fee_Route2_t0 = IP_fee.*SCE1_NonIce_Route2_n_t0;
SCE1_NonIce_IP_fee_Route2_tm = IP_fee.*SCE1_NonIce_Route2_n_tm;
SCE1_NonIce_IP_fee_Route2_tf = IP_fee.*SCE1_NonIce_Route2_n_tf;

SCE1_NonIce_IP_fee_Route3_t0 = IP_fee.*SCE1_NonIce_Route3_n_t0;
SCE1_NonIce_IP_fee_Route3_tm = IP_fee.*SCE1_NonIce_Route3_n_tm;
SCE1_NonIce_IP_fee_Route3_tf = IP_fee.*SCE1_NonIce_Route3_n_tf;

SCE2_Ice_IP_fee_Route1_t0 = Ice_IP_fee.*SCE2_Ice_Route1_n_t0;
SCE2_Ice_IP_fee_Route1_tm = Ice_IP_fee.*SCE2_Ice_Route1_n_tm;
SCE2_Ice_IP_fee_Route1_tf = Ice_IP_fee.*SCE2_Ice_Route1_n_tf;

SCE2_Ice_IP_fee_Route2_t0 = Ice_IP_fee.*SCE2_Ice_Route2_n_t0;
SCE2_Ice_IP_fee_Route2_tm = Ice_IP_fee.*SCE2_Ice_Route2_n_tm;
SCE2_Ice_IP_fee_Route2_tf = Ice_IP_fee.*SCE2_Ice_Route2_n_tf;

SCE2_Ice_IP_fee_Route3_t0 = Ice_IP_fee.*SCE2_Ice_Route3_n_t0;
SCE2_Ice_IP_fee_Route3_tm = Ice_IP_fee.*SCE2_Ice_Route3_n_tm;
SCE2_Ice_IP_fee_Route3_tf = Ice_IP_fee.*SCE2_Ice_Route3_n_tf;

SCE2_NonIce_IP_fee_Route1_t0 = IP_fee.*SCE2_NonIce_Route1_n_t0;
SCE2_NonIce_IP_fee_Route1_tm = IP_fee.*SCE2_NonIce_Route1_n_tm;
SCE2_NonIce_IP_fee_Route1_tf = IP_fee.*SCE2_NonIce_Route1_n_tf;

SCE2_NonIce_IP_fee_Route2_t0 = IP_fee.*SCE2_NonIce_Route2_n_t0;
SCE2_NonIce_IP_fee_Route2_tm = IP_fee.*SCE2_NonIce_Route2_n_tm;
SCE2_NonIce_IP_fee_Route2_tf = IP_fee.*SCE2_NonIce_Route2_n_tf;

SCE2_NonIce_IP_fee_Route3_t0 = IP_fee.*SCE2_NonIce_Route3_n_t0;
SCE2_NonIce_IP_fee_Route3_tm = IP_fee.*SCE2_NonIce_Route3_n_tm;
SCE2_NonIce_IP_fee_Route3_tf = IP_fee.*SCE2_NonIce_Route3_n_tf;

%Suez tariff
SCE2_Ice_Suez_tariff_Route1_t0 = Ice_Suez_fee.*SCE2_Ice_Route1_Suez_n_t0;
SCE2_Ice_Suez_tariff_Route1_tm = Ice_Suez_fee.*SCE2_Ice_Route1_Suez_n_tm;
SCE2_Ice_Suez_tariff_Route1_tf = Ice_Suez_fee.*SCE2_Ice_Route1_Suez_n_tf;

SCE2_Ice_Suez_tariff_Route2_t0 = Ice_Suez_fee.*SCE2_Ice_Route2_Suez_n_t0;
SCE2_Ice_Suez_tariff_Route2_tm = Ice_Suez_fee.*SCE2_Ice_Route2_Suez_n_tm;
SCE2_Ice_Suez_tariff_Route2_tf = Ice_Suez_fee.*SCE2_Ice_Route2_Suez_n_tf;

SCE2_Ice_Suez_tariff_Route3_t0 = Ice_Suez_fee.*SCE2_Ice_Route3_Suez_n_t0;
SCE2_Ice_Suez_tariff_Route3_tm = Ice_Suez_fee.*SCE2_Ice_Route3_Suez_n_tm;
SCE2_Ice_Suez_tariff_Route3_tf = Ice_Suez_fee.*SCE2_Ice_Route3_Suez_n_tf;

SCE2_NonIce_Suez_tariff_Route1_t0 = Suez_fee.*round(SCE2_NonIce_Route1_Suez_n_t0);
SCE2_NonIce_Suez_tariff_Route1_tm = Suez_fee.*round(SCE2_NonIce_Route1_Suez_n_tm);
SCE2_NonIce_Suez_tariff_Route1_tf = Suez_fee.*round(SCE2_NonIce_Route1_Suez_n_tf);

SCE2_NonIce_Suez_tariff_Route2_t0 = Suez_fee.*round(SCE2_NonIce_Route2_Suez_n_t0);
SCE2_NonIce_Suez_tariff_Route2_tm = Suez_fee.*round(SCE2_NonIce_Route2_Suez_n_tm);
SCE2_NonIce_Suez_tariff_Route2_tf = Suez_fee.*round(SCE2_NonIce_Route2_Suez_n_tf);

SCE2_NonIce_Suez_tariff_Route3_t0 = Suez_fee.*round(SCE2_NonIce_Route3_Suez_n_t0);
SCE2_NonIce_Suez_tariff_Route3_tm = Suez_fee.*round(SCE2_NonIce_Route3_Suez_n_tm);
SCE2_NonIce_Suez_tariff_Route3_tf = Suez_fee.*round(SCE2_NonIce_Route3_Suez_n_tf);

%Scenario 3
SCE3_Ice_Suez_tariff = Ice_Suez_fee.*SCE3_Suez_n_S;
SCE3_NonIce_Suez_tariff = Suez_fee.*SCE3_Suez_n_S;

%Fuel costs 
%Scenario 1
%%%%%%%%%%%%%%%%%%%%
    
%Main Engine
SCE1_Ice_Fuel_costs_t0 = SCE1_Fuel_costs_t0{:,1:2:end};
SCE1_NonIce_Fuel_costs_t0 = SCE1_Fuel_costs_t0{:,2:2:end};

SCE1_Ice_Fuel_costs_tm = SCE1_Fuel_costs_tm{:,1:2:end};
SCE1_NonIce_Fuel_costs_tm = SCE1_Fuel_costs_tm{:,2:2:end};

SCE1_Ice_Fuel_costs_tf = SCE1_Fuel_costs_tf{:,1:2:end};
SCE1_NonIce_Fuel_costs_tf = SCE1_Fuel_costs_tf{:,2:2:end};

%Auxiliary Engine
SCE1_Ice_Aux_Fuel_costs_t0 = SCE1_Aux_Fuel_costs_t0{:,1:2:end};
SCE1_NonIce_Aux_Fuel_costs_t0 = SCE1_Aux_Fuel_costs_t0{:,2:2:end};

SCE1_Ice_Aux_Fuel_costs_tm = SCE1_Aux_Fuel_costs_tm{:,1:2:end};
SCE1_NonIce_Aux_Fuel_costs_tm = SCE1_Aux_Fuel_costs_tm{:,2:2:end};

SCE1_Ice_Aux_Fuel_costs_tf = SCE1_Aux_Fuel_costs_tf{:,1:2:end};
SCE1_NonIce_Aux_Fuel_costs_tf = SCE1_Aux_Fuel_costs_tf{:,2:2:end};

%Boiler 
SCE1_Ice_Boil_Fuel_costs_t0 = SCE1_Boil_Fuel_costs_t0{:,1:2:end};
SCE1_NonIce_Boil_Fuel_costs_t0 = SCE1_Boil_Fuel_costs_t0{:,2:2:end};

SCE1_Ice_Boil_Fuel_costs_tm = SCE1_Boil_Fuel_costs_tm{:,1:2:end};
SCE1_NonIce_Boil_Fuel_costs_tm = SCE1_Boil_Fuel_costs_tm{:,2:2:end};

SCE1_Ice_Boil_Fuel_costs_tf = SCE1_Boil_Fuel_costs_tf{:,1:2:end};
SCE1_NonIce_Boil_Fuel_costs_tf = SCE1_Boil_Fuel_costs_tf{:,2:2:end};

SCE1_Ice_Total_Fuel_costs_t0 = SCE1_Ice_Fuel_costs_t0 + SCE1_Ice_Aux_Fuel_costs_t0 + SCE1_Ice_Boil_Fuel_costs_t0;
SCE1_Ice_Total_Fuel_costs_tm = SCE1_Ice_Fuel_costs_tm + SCE1_Ice_Aux_Fuel_costs_tm + SCE1_Ice_Boil_Fuel_costs_tm;
SCE1_Ice_Total_Fuel_costs_tf = SCE1_Ice_Fuel_costs_tf + SCE1_Ice_Aux_Fuel_costs_tf + SCE1_Ice_Boil_Fuel_costs_tf;

SCE1_NonIce_Total_Fuel_costs_t0 = SCE1_NonIce_Fuel_costs_t0 + SCE1_NonIce_Aux_Fuel_costs_t0 + SCE1_NonIce_Boil_Fuel_costs_t0;
SCE1_NonIce_Total_Fuel_costs_tm = SCE1_NonIce_Fuel_costs_tm + SCE1_NonIce_Aux_Fuel_costs_tm + SCE1_NonIce_Boil_Fuel_costs_tm;
SCE1_NonIce_Total_Fuel_costs_tf = SCE1_NonIce_Fuel_costs_tf + SCE1_NonIce_Aux_Fuel_costs_tf + SCE1_NonIce_Boil_Fuel_costs_tf;

%Main Engine
SCE2_Ice_Fuel_costs_t0 = SCE2_Fuel_costs_t0{:,1:2:end};
SCE2_NonIce_Fuel_costs_t0 = SCE2_Fuel_costs_t0{:,2:2:end};

SCE2_Ice_Fuel_costs_tm = SCE2_Fuel_costs_tm{:,1:2:end};
SCE2_NonIce_Fuel_costs_tm = SCE2_Fuel_costs_tm{:,2:2:end};

SCE2_Ice_Fuel_costs_tf = SCE2_Fuel_costs_tf{:,1:2:end};
SCE2_NonIce_Fuel_costs_tf = SCE2_Fuel_costs_tf{:,2:2:end};

%Auxiliary Engine
SCE2_Ice_Aux_Fuel_costs_t0 = SCE2_Aux_Fuel_costs_t0{:,1:2:end};
SCE2_NonIce_Aux_Fuel_costs_t0 = SCE2_Aux_Fuel_costs_t0{:,2:2:end};

SCE2_Ice_Aux_Fuel_costs_tm = SCE2_Aux_Fuel_costs_tm{:,1:2:end};
SCE2_NonIce_Aux_Fuel_costs_tm = SCE2_Aux_Fuel_costs_tm{:,2:2:end};

SCE2_Ice_Aux_Fuel_costs_tf = SCE2_Aux_Fuel_costs_tf{:,1:2:end};
SCE2_NonIce_Aux_Fuel_costs_tf = SCE2_Aux_Fuel_costs_tf{:,2:2:end};

%Boiler 
SCE2_Ice_Boil_Fuel_costs_t0 = SCE2_Boil_Fuel_costs_t0{:,1:2:end};
SCE2_NonIce_Boil_Fuel_costs_t0 = SCE2_Boil_Fuel_costs_t0{:,2:2:end};

SCE2_Ice_Boil_Fuel_costs_tm = SCE2_Boil_Fuel_costs_tm{:,1:2:end};
SCE2_NonIce_Boil_Fuel_costs_tm = SCE2_Boil_Fuel_costs_tm{:,2:2:end};

SCE2_Ice_Boil_Fuel_costs_tf = SCE2_Boil_Fuel_costs_tf{:,1:2:end};
SCE2_NonIce_Boil_Fuel_costs_tf = SCE2_Boil_Fuel_costs_tf{:,2:2:end};

SCE2_Ice_Total_Fuel_costs_t0 = SCE2_Ice_Fuel_costs_t0 + SCE2_Ice_Aux_Fuel_costs_t0 + SCE2_Ice_Boil_Fuel_costs_t0;
SCE2_Ice_Total_Fuel_costs_tm = SCE2_Ice_Fuel_costs_tm + SCE2_Ice_Aux_Fuel_costs_tm + SCE2_Ice_Boil_Fuel_costs_tm;
SCE2_Ice_Total_Fuel_costs_tf = SCE2_Ice_Fuel_costs_tf + SCE2_Ice_Aux_Fuel_costs_tf + SCE2_Ice_Boil_Fuel_costs_tf;

SCE2_NonIce_Total_Fuel_costs_t0 = SCE2_NonIce_Fuel_costs_t0 + SCE2_NonIce_Aux_Fuel_costs_t0 + SCE2_NonIce_Boil_Fuel_costs_t0;
SCE2_NonIce_Total_Fuel_costs_tm = SCE2_NonIce_Fuel_costs_tm + SCE2_NonIce_Aux_Fuel_costs_tm + SCE2_NonIce_Boil_Fuel_costs_tm;
SCE2_NonIce_Total_Fuel_costs_tf = SCE2_NonIce_Fuel_costs_tf + SCE2_NonIce_Aux_Fuel_costs_tf + SCE2_NonIce_Boil_Fuel_costs_tf;

%Scenario 3 
SCE3_Total_Fuel_costs_t0 = SCE3_Fuel_costs_t0{:,:} + SCE3_Aux_Fuel_costs_t0{:,:} + SCE3_Boil_Fuel_costs_t0{:,:};
SCE3_Total_Fuel_costs_tm = SCE3_Fuel_costs_tm{:,:} + SCE3_Aux_Fuel_costs_tm{:,:} + SCE3_Boil_Fuel_costs_tm{:,:};
SCE3_Total_Fuel_costs_tf = SCE3_Fuel_costs_tf{:,:} + SCE3_Aux_Fuel_costs_tf{:,:} + SCE3_Boil_Fuel_costs_tf{:,:};

SCE3_Ice_Total_Fuel_costs_t0 = SCE3_Total_Fuel_costs_t0(:,1:2:end);
SCE3_NonIce_Total_Fuel_costs_t0 = SCE3_Total_Fuel_costs_t0(:,2:2:end);

SCE3_Ice_Total_Fuel_costs_tm = SCE3_Total_Fuel_costs_tm(:,1:2:end);
SCE3_NonIce_Total_Fuel_costs_tm = SCE3_Total_Fuel_costs_tm(:,2:2:end);

SCE3_Ice_Total_Fuel_costs_tf = SCE3_Total_Fuel_costs_tf(:,1:2:end);
SCE3_NonIce_Total_Fuel_costs_tf = SCE3_Total_Fuel_costs_tf(:,2:2:end);

%Charter rates - it is assumed that the ice strengthend ship takes the
%non-ice strengthened ship's charter rate to remain competitive
SO_tc = zeros(length(IMO_type),1);
for i = 1:1:length(IMO_type)
    if IMO_type(i) == 1
        SO_tc(i) = interp1(Drybulktc.dwt,Drybulktc.time_charter,dwt(i),'linear','extrap');
    elseif IMO_type(i) == 4
        SO_tc(i) = interp1(Cont_tc.TEU,Cont_tc.timeCharterDayRate__day,TEU(i),'linear','extrap');
    elseif IMO_type(i) == 7
        SO_tc(i) = interp1(Wet_bulk_tc.dwt,Wet_bulk_tc.time_charter,dwt(i),'linear','extrap');
    end
end

%Charterer freight rate - first I must calculate the voyage cost
%and then the transport work;
%Port dues
SCE1_Ice_Port_dues_t0 = zeros(length(SCE1_Ice_Port_dues_Route1_t0(:,1)),3.*length(SCE1_Ice_Port_dues_Route1_t0(1,:)));
for i = 1:1:length(SCE1_Ice_Port_dues_Route1_t0(1,:))
    SCE1_Ice_Port_dues_t0(:,(3.*(i-1))+1) = SCE1_Ice_Port_dues_Route1_t0(:,i); 
    SCE1_Ice_Port_dues_t0(:,(3.*(i-1))+2) = SCE1_Ice_Port_dues_Route2_t0(:,i); 
    SCE1_Ice_Port_dues_t0(:,(3.*(i-1))+3) = SCE1_Ice_Port_dues_Route3_t0(:,i); 
end

SCE1_Ice_Port_dues_tm = zeros(length(SCE1_Ice_Port_dues_Route1_tm(:,1)),3.*length(SCE1_Ice_Port_dues_Route1_tm(1,:)));
for i = 1:1:length(SCE1_Ice_Port_dues_Route1_tm(1,:))
    SCE1_Ice_Port_dues_tm(:,(3.*(i-1))+1) = SCE1_Ice_Port_dues_Route1_tm(:,i); 
    SCE1_Ice_Port_dues_tm(:,(3.*(i-1))+2) = SCE1_Ice_Port_dues_Route2_tm(:,i); 
    SCE1_Ice_Port_dues_tm(:,(3.*(i-1))+3) = SCE1_Ice_Port_dues_Route3_tm(:,i); 
end

SCE1_Ice_Port_dues_tf = zeros(length(SCE1_Ice_Port_dues_Route1_tf(:,1)),3.*length(SCE1_Ice_Port_dues_Route1_tf(1,:)));
for i = 1:1:length(SCE1_Ice_Port_dues_Route1_tf(1,:))
    SCE1_Ice_Port_dues_tf(:,(3.*(i-1))+1) = SCE1_Ice_Port_dues_Route1_tf(:,i); 
    SCE1_Ice_Port_dues_tf(:,(3.*(i-1))+2) = SCE1_Ice_Port_dues_Route2_tf(:,i); 
    SCE1_Ice_Port_dues_tf(:,(3.*(i-1))+3) = SCE1_Ice_Port_dues_Route3_tf(:,i); 
end

SCE1_NonIce_Port_dues_t0 = zeros(length(SCE1_NonIce_Port_dues_Route1_t0(:,1)),3.*length(SCE1_NonIce_Port_dues_Route1_t0(1,:)));
for i = 1:1:length(SCE1_NonIce_Port_dues_Route1_t0(1,:))
    SCE1_NonIce_Port_dues_t0(:,(3.*(i-1))+1) = SCE1_NonIce_Port_dues_Route1_t0(:,i); 
    SCE1_NonIce_Port_dues_t0(:,(3.*(i-1))+2) = SCE1_NonIce_Port_dues_Route2_t0(:,i); 
    SCE1_NonIce_Port_dues_t0(:,(3.*(i-1))+3) = SCE1_NonIce_Port_dues_Route3_t0(:,i); 
end

SCE1_NonIce_Port_dues_tm = zeros(length(SCE1_NonIce_Port_dues_Route1_tm(:,1)),3.*length(SCE1_NonIce_Port_dues_Route1_tm(1,:)));
for i = 1:1:length(SCE1_NonIce_Port_dues_Route1_tm(1,:))
    SCE1_NonIce_Port_dues_tm(:,(3.*(i-1))+1) = SCE1_NonIce_Port_dues_Route1_tm(:,i); 
    SCE1_NonIce_Port_dues_tm(:,(3.*(i-1))+2) = SCE1_NonIce_Port_dues_Route2_tm(:,i); 
    SCE1_NonIce_Port_dues_tm(:,(3.*(i-1))+3) = SCE1_NonIce_Port_dues_Route3_tm(:,i); 
end

SCE1_NonIce_Port_dues_tf = zeros(length(SCE1_NonIce_Port_dues_Route1_tf(:,1)),3.*length(SCE1_NonIce_Port_dues_Route1_tf(1,:)));
for i = 1:1:length(SCE1_NonIce_Port_dues_Route1_tf(1,:))
    SCE1_NonIce_Port_dues_tf(:,(3.*(i-1))+1) = SCE1_NonIce_Port_dues_Route1_tf(:,i); 
    SCE1_NonIce_Port_dues_tf(:,(3.*(i-1))+2) = SCE1_NonIce_Port_dues_Route2_tf(:,i); 
    SCE1_NonIce_Port_dues_tf(:,(3.*(i-1))+3) = SCE1_NonIce_Port_dues_Route3_tf(:,i); 
end

%Scenario 2
SCE2_Ice_Port_dues_t0 = zeros(length(SCE2_Ice_Port_dues_Route1_t0(:,1)),3.*length(SCE2_Ice_Port_dues_Route1_t0(1,:)));
for i = 1:1:length(SCE2_Ice_Port_dues_Route1_t0(1,:))
    SCE2_Ice_Port_dues_t0(:,(3.*(i-1))+1) = SCE2_Ice_Port_dues_Route1_t0(:,i); 
    SCE2_Ice_Port_dues_t0(:,(3.*(i-1))+2) = SCE2_Ice_Port_dues_Route2_t0(:,i); 
    SCE2_Ice_Port_dues_t0(:,(3.*(i-1))+3) = SCE2_Ice_Port_dues_Route3_t0(:,i); 
end

SCE2_Ice_Port_dues_tm = zeros(length(SCE2_Ice_Port_dues_Route1_tm(:,1)),3.*length(SCE2_Ice_Port_dues_Route1_tm(1,:)));
for i = 1:1:length(SCE2_Ice_Port_dues_Route1_tm(1,:))
    SCE2_Ice_Port_dues_tm(:,(3.*(i-1))+1) = SCE2_Ice_Port_dues_Route1_tm(:,i); 
    SCE2_Ice_Port_dues_tm(:,(3.*(i-1))+2) = SCE2_Ice_Port_dues_Route2_tm(:,i); 
    SCE2_Ice_Port_dues_tm(:,(3.*(i-1))+3) = SCE2_Ice_Port_dues_Route3_tm(:,i); 
end

SCE2_Ice_Port_dues_tf = zeros(length(SCE2_Ice_Port_dues_Route1_tf(:,1)),3.*length(SCE2_Ice_Port_dues_Route1_tf(1,:)));
for i = 1:1:length(SCE2_Ice_Port_dues_Route1_tf(1,:))
    SCE2_Ice_Port_dues_tf(:,(3.*(i-1))+1) = SCE2_Ice_Port_dues_Route1_tf(:,i); 
    SCE2_Ice_Port_dues_tf(:,(3.*(i-1))+2) = SCE2_Ice_Port_dues_Route2_tf(:,i); 
    SCE2_Ice_Port_dues_tf(:,(3.*(i-1))+3) = SCE2_Ice_Port_dues_Route3_tf(:,i); 
end

SCE2_NonIce_Port_dues_t0 = zeros(length(SCE2_NonIce_Port_dues_Route1_t0(:,1)),3.*length(SCE2_NonIce_Port_dues_Route1_t0(1,:)));
for i = 1:1:length(SCE2_NonIce_Port_dues_Route1_t0(1,:))
    SCE2_NonIce_Port_dues_t0(:,(3.*(i-1))+1) = SCE2_NonIce_Port_dues_Route1_t0(:,i); 
    SCE2_NonIce_Port_dues_t0(:,(3.*(i-1))+2) = SCE2_NonIce_Port_dues_Route2_t0(:,i); 
    SCE2_NonIce_Port_dues_t0(:,(3.*(i-1))+3) = SCE2_NonIce_Port_dues_Route3_t0(:,i); 
end

SCE2_NonIce_Port_dues_tm = zeros(length(SCE2_NonIce_Port_dues_Route1_tm(:,1)),3.*length(SCE2_NonIce_Port_dues_Route1_tm(1,:)));
for i = 1:1:length(SCE2_NonIce_Port_dues_Route1_tm(1,:))
    SCE2_NonIce_Port_dues_tm(:,(3.*(i-1))+1) = SCE2_NonIce_Port_dues_Route1_tm(:,i); 
    SCE2_NonIce_Port_dues_tm(:,(3.*(i-1))+2) = SCE2_NonIce_Port_dues_Route2_tm(:,i); 
    SCE2_NonIce_Port_dues_tm(:,(3.*(i-1))+3) = SCE2_NonIce_Port_dues_Route3_tm(:,i); 
end

SCE2_NonIce_Port_dues_tf = zeros(length(SCE2_NonIce_Port_dues_Route1_tf(:,1)),3.*length(SCE2_NonIce_Port_dues_Route1_tf(1,:)));
for i = 1:1:length(SCE2_NonIce_Port_dues_Route1_tf(1,:))
    SCE2_NonIce_Port_dues_tf(:,(3.*(i-1))+1) = SCE2_NonIce_Port_dues_Route1_tf(:,i); 
    SCE2_NonIce_Port_dues_tf(:,(3.*(i-1))+2) = SCE2_NonIce_Port_dues_Route2_tf(:,i); 
    SCE2_NonIce_Port_dues_tf(:,(3.*(i-1))+3) = SCE2_NonIce_Port_dues_Route3_tf(:,i); 
end

%Icebreaking tariff 
SCE1_Ice_IB_tariff_t0 = [SCE1_Ice_IB_tariff_Route1_t0 SCE1_Ice_IB_tariff_Route2_t0 SCE1_Ice_IB_tariff_Route3_t0];
SCE1_Ice_IB_tariff_tm = [SCE1_Ice_IB_tariff_Route1_tm SCE1_Ice_IB_tariff_Route2_tm SCE1_Ice_IB_tariff_Route3_tm];
SCE1_Ice_IB_tariff_tf = [SCE1_Ice_IB_tariff_Route1_tf SCE1_Ice_IB_tariff_Route2_tf SCE1_Ice_IB_tariff_Route3_tf];

SCE1_Ice_IB_tariff_t0 = repmat(SCE1_Ice_IB_tariff_t0,1,length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE1_Ice_IB_tariff_tm = repmat(SCE1_Ice_IB_tariff_tm,1,length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE1_Ice_IB_tariff_tf = repmat(SCE1_Ice_IB_tariff_tf,1,length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);

SCE1_NonIce_IB_tariff_t0 = [SCE1_NonIce_IB_tariff_Route1_t0 SCE1_NonIce_IB_tariff_Route2_t0 SCE1_NonIce_IB_tariff_Route3_t0];
SCE1_NonIce_IB_tariff_tm = [SCE1_NonIce_IB_tariff_Route1_tm SCE1_NonIce_IB_tariff_Route2_tm SCE1_NonIce_IB_tariff_Route3_tm];
SCE1_NonIce_IB_tariff_tf = [SCE1_NonIce_IB_tariff_Route1_tf SCE1_NonIce_IB_tariff_Route2_tf SCE1_NonIce_IB_tariff_Route3_tf];

SCE1_NonIce_IB_tariff_t0 = repmat(SCE1_NonIce_IB_tariff_t0,1,length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE1_NonIce_IB_tariff_tm = repmat(SCE1_NonIce_IB_tariff_tm,1,length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE1_NonIce_IB_tariff_tf = repmat(SCE1_NonIce_IB_tariff_tf,1,length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);

%Scenario 2
SCE2_Ice_IB_tariff_t0 = [SCE2_Ice_IB_tariff_Route1_t0 SCE2_Ice_IB_tariff_Route2_t0 SCE2_Ice_IB_tariff_Route3_t0];
SCE2_Ice_IB_tariff_tm = [SCE2_Ice_IB_tariff_Route1_tm SCE2_Ice_IB_tariff_Route2_tm SCE2_Ice_IB_tariff_Route3_tm];
SCE2_Ice_IB_tariff_tf = [SCE2_Ice_IB_tariff_Route1_tf SCE2_Ice_IB_tariff_Route2_tf SCE2_Ice_IB_tariff_Route3_tf];

SCE2_Ice_IB_tariff_t0 = repmat(SCE2_Ice_IB_tariff_t0,1,length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE2_Ice_IB_tariff_tm = repmat(SCE2_Ice_IB_tariff_tm,1,length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE2_Ice_IB_tariff_tf = repmat(SCE2_Ice_IB_tariff_tf,1,length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);

SCE2_NonIce_IB_tariff_t0 = [SCE2_NonIce_IB_tariff_Route1_t0 SCE2_NonIce_IB_tariff_Route2_t0 SCE2_NonIce_IB_tariff_Route3_t0];
SCE2_NonIce_IB_tariff_tm = [SCE2_NonIce_IB_tariff_Route1_tm SCE2_NonIce_IB_tariff_Route2_tm SCE2_NonIce_IB_tariff_Route3_tm];
SCE2_NonIce_IB_tariff_tf = [SCE2_NonIce_IB_tariff_Route1_tf SCE2_NonIce_IB_tariff_Route2_tf SCE2_NonIce_IB_tariff_Route3_tf];

SCE2_NonIce_IB_tariff_t0 = repmat(SCE2_NonIce_IB_tariff_t0,1,length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE2_NonIce_IB_tariff_tm = repmat(SCE2_NonIce_IB_tariff_tm,1,length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE2_NonIce_IB_tariff_tf = repmat(SCE2_NonIce_IB_tariff_tf,1,length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);

%Suez tariff
SCE2_Ice_Suez_tariff_t0 = [SCE2_Ice_Suez_tariff_Route1_t0 SCE2_Ice_Suez_tariff_Route2_t0 SCE2_Ice_Suez_tariff_Route3_t0];
SCE2_Ice_Suez_tariff_tm = [SCE2_Ice_Suez_tariff_Route1_tm SCE2_Ice_Suez_tariff_Route2_tm SCE2_Ice_Suez_tariff_Route3_tm];
SCE2_Ice_Suez_tariff_tf = [SCE2_Ice_Suez_tariff_Route1_tf SCE2_Ice_Suez_tariff_Route2_tf SCE2_Ice_Suez_tariff_Route3_tf];

SCE2_Ice_Suez_tariff_t0 = repmat(SCE2_Ice_Suez_tariff_t0,1,length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE2_Ice_Suez_tariff_tm = repmat(SCE2_Ice_Suez_tariff_tm,1,length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE2_Ice_Suez_tariff_tf = repmat(SCE2_Ice_Suez_tariff_tf,1,length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);

SCE2_NonIce_Suez_tariff_t0 = [SCE2_NonIce_Suez_tariff_Route1_t0 SCE2_NonIce_Suez_tariff_Route2_t0 SCE2_NonIce_Suez_tariff_Route3_t0];
SCE2_NonIce_Suez_tariff_tm = [SCE2_NonIce_Suez_tariff_Route1_tm SCE2_NonIce_Suez_tariff_Route2_tm SCE2_NonIce_Suez_tariff_Route3_tm];
SCE2_NonIce_Suez_tariff_tf = [SCE2_NonIce_Suez_tariff_Route1_tf SCE2_NonIce_Suez_tariff_Route2_tf SCE2_NonIce_Suez_tariff_Route3_tf];

SCE2_NonIce_Suez_tariff_t0 = repmat(SCE2_NonIce_Suez_tariff_t0,1,length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE2_NonIce_Suez_tariff_tm = repmat(SCE2_NonIce_Suez_tariff_tm,1,length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE2_NonIce_Suez_tariff_tf = repmat(SCE2_NonIce_Suez_tariff_tf,1,length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);

%IP_fee
SCE1_Ice_IP_fee_t0 = [SCE1_Ice_IP_fee_Route1_t0 SCE1_Ice_IP_fee_Route2_t0 SCE1_Ice_IP_fee_Route3_t0];
SCE1_Ice_IP_fee_tm = [SCE1_Ice_IP_fee_Route1_tm SCE1_Ice_IP_fee_Route2_tm SCE1_Ice_IP_fee_Route3_tm];
SCE1_Ice_IP_fee_tf = [SCE1_Ice_IP_fee_Route1_tf SCE1_Ice_IP_fee_Route2_tf SCE1_Ice_IP_fee_Route3_tf];

SCE1_Ice_IP_fee_t0 = repmat(SCE1_Ice_IP_fee_t0,1,length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE1_Ice_IP_fee_tm = repmat(SCE1_Ice_IP_fee_tm,1,length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE1_Ice_IP_fee_tf = repmat(SCE1_Ice_IP_fee_tf,1,length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);

SCE1_NonIce_IP_fee_t0 = [SCE1_NonIce_IP_fee_Route1_t0 SCE1_NonIce_IP_fee_Route2_t0 SCE1_NonIce_IP_fee_Route3_t0];
SCE1_NonIce_IP_fee_tm = [SCE1_NonIce_IP_fee_Route1_tm SCE1_NonIce_IP_fee_Route2_tm SCE1_NonIce_IP_fee_Route3_tm];
SCE1_NonIce_IP_fee_tf = [SCE1_NonIce_IP_fee_Route1_tf SCE1_NonIce_IP_fee_Route2_tf SCE1_NonIce_IP_fee_Route3_tf];

SCE1_NonIce_IP_fee_t0 = repmat(SCE1_NonIce_IP_fee_t0,1,length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE1_NonIce_IP_fee_tm = repmat(SCE1_NonIce_IP_fee_tm,1,length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE1_NonIce_IP_fee_tf = repmat(SCE1_NonIce_IP_fee_tf,1,length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);

%Scenario 2
SCE2_Ice_IP_fee_t0 = [SCE2_Ice_IP_fee_Route1_t0 SCE2_Ice_IP_fee_Route2_t0 SCE2_Ice_IP_fee_Route3_t0];
SCE2_Ice_IP_fee_tm = [SCE2_Ice_IP_fee_Route1_tm SCE2_Ice_IP_fee_Route2_tm SCE2_Ice_IP_fee_Route3_tm];
SCE2_Ice_IP_fee_tf = [SCE2_Ice_IP_fee_Route1_tf SCE2_Ice_IP_fee_Route2_tf SCE2_Ice_IP_fee_Route3_tf];

SCE2_Ice_IP_fee_t0 = repmat(SCE2_Ice_IP_fee_t0,1,length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE2_Ice_IP_fee_tm = repmat(SCE2_Ice_IP_fee_tm,1,length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE2_Ice_IP_fee_tf = repmat(SCE2_Ice_IP_fee_tf,1,length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);

SCE2_NonIce_IP_fee_t0 = [SCE2_NonIce_IP_fee_Route1_t0 SCE2_NonIce_IP_fee_Route2_t0 SCE2_NonIce_IP_fee_Route3_t0];
SCE2_NonIce_IP_fee_tm = [SCE2_NonIce_IP_fee_Route1_tm SCE2_NonIce_IP_fee_Route2_tm SCE2_NonIce_IP_fee_Route3_tm];
SCE2_NonIce_IP_fee_tf = [SCE2_NonIce_IP_fee_Route1_tf SCE2_NonIce_IP_fee_Route2_tf SCE2_NonIce_IP_fee_Route3_tf];

SCE2_NonIce_IP_fee_t0 = repmat(SCE2_NonIce_IP_fee_t0,1,length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE2_NonIce_IP_fee_tm = repmat(SCE2_NonIce_IP_fee_tm,1,length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE2_NonIce_IP_fee_tf = repmat(SCE2_NonIce_IP_fee_tf,1,length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);

%Days spent on the voyage
SCE1_Ice_Total_days_t0= [SCE1_Ice_Total_days_Route1_t0 SCE1_Ice_Total_days_Route2_t0 SCE1_Ice_Total_days_Route3_t0];
SCE1_Ice_Total_days_tm= [SCE1_Ice_Total_days_Route1_tm SCE1_Ice_Total_days_Route2_tm SCE1_Ice_Total_days_Route3_tm];
SCE1_Ice_Total_days_tf= [SCE1_Ice_Total_days_Route1_tf SCE1_Ice_Total_days_Route2_tf SCE1_Ice_Total_days_Route3_tf];

SCE1_Ice_Total_days_t0 = repmat(SCE1_Ice_Total_days_t0,1,length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE1_Ice_Total_days_tm = repmat(SCE1_Ice_Total_days_tm,1,length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE1_Ice_Total_days_tf = repmat(SCE1_Ice_Total_days_tf,1,length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);

SCE1_NonIce_Total_days_t0= [SCE1_NonIce_Total_days_Route1_t0 SCE1_NonIce_Total_days_Route2_t0 SCE1_NonIce_Total_days_Route3_t0];
SCE1_NonIce_Total_days_tm= [SCE1_NonIce_Total_days_Route1_tm SCE1_NonIce_Total_days_Route2_tm SCE1_NonIce_Total_days_Route3_tm];
SCE1_NonIce_Total_days_tf= [SCE1_NonIce_Total_days_Route1_tf SCE1_NonIce_Total_days_Route2_tf SCE1_NonIce_Total_days_Route3_tf];

SCE1_NonIce_Total_days_t0 = repmat(SCE1_NonIce_Total_days_t0,1,length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE1_NonIce_Total_days_tm = repmat(SCE1_NonIce_Total_days_tm,1,length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE1_NonIce_Total_days_tf = repmat(SCE1_NonIce_Total_days_tf,1,length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);

SCE2_Ice_Total_days_t0= [SCE2_Ice_Total_days_Route1_t0 SCE2_Ice_Total_days_Route2_t0 SCE2_Ice_Total_days_Route3_t0];
SCE2_Ice_Total_days_tm= [SCE2_Ice_Total_days_Route1_tm SCE2_Ice_Total_days_Route2_tm SCE2_Ice_Total_days_Route3_tm];
SCE2_Ice_Total_days_tf= [SCE2_Ice_Total_days_Route1_tf SCE2_Ice_Total_days_Route2_tf SCE2_Ice_Total_days_Route3_tf];

SCE2_Ice_Total_days_t0 = repmat(SCE2_Ice_Total_days_t0,1,length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE2_Ice_Total_days_tm = repmat(SCE2_Ice_Total_days_tm,1,length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE2_Ice_Total_days_tf = repmat(SCE2_Ice_Total_days_tf,1,length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);

SCE2_NonIce_Total_days_t0= [SCE2_NonIce_Total_days_Route1_t0 SCE2_NonIce_Total_days_Route2_t0 SCE2_NonIce_Total_days_Route3_t0];
SCE2_NonIce_Total_days_tm= [SCE2_NonIce_Total_days_Route1_tm SCE2_NonIce_Total_days_Route2_tm SCE2_NonIce_Total_days_Route3_tm];
SCE2_NonIce_Total_days_tf= [SCE2_NonIce_Total_days_Route1_tf SCE2_NonIce_Total_days_Route2_tf SCE2_NonIce_Total_days_Route3_tf];

SCE2_NonIce_Total_days_t0 = repmat(SCE2_NonIce_Total_days_t0,1,length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE2_NonIce_Total_days_tm = repmat(SCE2_NonIce_Total_days_tm,1,length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE2_NonIce_Total_days_tf = repmat(SCE2_NonIce_Total_days_tf,1,length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);

%I need to align the number of voyages too 
SCE1_Ice_n_t0 = [SCE1_Ice_Route1_n_t0 SCE1_Ice_Route2_n_t0 SCE1_Ice_Route3_n_t0];
SCE1_Ice_n_tm = [SCE1_Ice_Route1_n_tm SCE1_Ice_Route2_n_tm SCE1_Ice_Route3_n_tm];
SCE1_Ice_n_tf = [SCE1_Ice_Route1_n_tf SCE1_Ice_Route2_n_tf SCE1_Ice_Route3_n_tf];

SCE1_Ice_n_t0 = repmat(SCE1_Ice_n_t0,1,length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE1_Ice_n_tm = repmat(SCE1_Ice_n_tm,1,length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE1_Ice_n_tf = repmat(SCE1_Ice_n_tf,1,length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);

SCE2_Ice_n_t0 = [SCE2_Ice_Route1_n_t0 SCE2_Ice_Route2_n_t0 SCE2_Ice_Route3_n_t0];
SCE2_Ice_n_tm = [SCE2_Ice_Route1_n_tm SCE2_Ice_Route2_n_tm SCE2_Ice_Route3_n_tm];
SCE2_Ice_n_tf = [SCE2_Ice_Route1_n_tf SCE2_Ice_Route2_n_tf SCE2_Ice_Route3_n_tf];

SCE2_Ice_Suez_n_t0 = [SCE2_Ice_Route1_Suez_n_t0 SCE2_Ice_Route2_Suez_n_t0 SCE2_Ice_Route3_Suez_n_t0];
SCE2_Ice_Suez_n_tm = [SCE2_Ice_Route1_Suez_n_tm SCE2_Ice_Route2_Suez_n_tm SCE2_Ice_Route3_Suez_n_tm];
SCE2_Ice_Suez_n_tf = [SCE2_Ice_Route1_Suez_n_tf SCE2_Ice_Route2_Suez_n_tf SCE2_Ice_Route3_Suez_n_tf];

SCE2_Ice_n_t0 = repmat(SCE2_Ice_n_t0,1,length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE2_Ice_n_tm = repmat(SCE2_Ice_n_tm,1,length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE2_Ice_n_tf = repmat(SCE2_Ice_n_tf,1,length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);

SCE2_Ice_Suez_n_t0 = repmat(SCE2_Ice_Suez_n_t0,1,length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE2_Ice_Suez_n_tm = repmat(SCE2_Ice_Suez_n_tm,1,length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE2_Ice_Suez_n_tf = repmat(SCE2_Ice_Suez_n_tf,1,length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);

%Non ice
SCE1_NonIce_n_t0 = [SCE1_NonIce_Route1_n_t0 SCE1_NonIce_Route2_n_t0 SCE1_NonIce_Route3_n_t0];
SCE1_NonIce_n_tm = [SCE1_NonIce_Route1_n_tm SCE1_NonIce_Route2_n_tm SCE1_NonIce_Route3_n_tm];
SCE1_NonIce_n_tf = [SCE1_NonIce_Route1_n_tf SCE1_NonIce_Route2_n_tf SCE1_NonIce_Route3_n_tf];

SCE1_NonIce_n_t0 = repmat(SCE1_NonIce_n_t0,1,length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE1_NonIce_n_tm = repmat(SCE1_NonIce_n_tm,1,length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE1_NonIce_n_tf = repmat(SCE1_NonIce_n_tf,1,length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);

SCE2_NonIce_n_t0 = [SCE2_NonIce_Route1_n_t0 SCE2_NonIce_Route2_n_t0 SCE2_NonIce_Route3_n_t0];
SCE2_NonIce_n_tm = [SCE2_NonIce_Route1_n_tm SCE2_NonIce_Route2_n_tm SCE2_NonIce_Route3_n_tm];
SCE2_NonIce_n_tf = [SCE2_NonIce_Route1_n_tf SCE2_NonIce_Route2_n_tf SCE2_NonIce_Route3_n_tf];

SCE2_NonIce_Suez_n_t0 = [SCE2_NonIce_Route1_Suez_n_t0 SCE2_NonIce_Route2_Suez_n_t0 SCE2_NonIce_Route3_Suez_n_t0];
SCE2_NonIce_Suez_n_tm = [SCE2_NonIce_Route1_Suez_n_tm SCE2_NonIce_Route2_Suez_n_tm SCE2_NonIce_Route3_Suez_n_tm];
SCE2_NonIce_Suez_n_tf = [SCE2_NonIce_Route1_Suez_n_tf SCE2_NonIce_Route2_Suez_n_tf SCE2_NonIce_Route3_Suez_n_tf];

SCE2_NonIce_n_t0 = repmat(SCE2_NonIce_n_t0,1,length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE2_NonIce_n_tm = repmat(SCE2_NonIce_n_tm,1,length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE2_NonIce_n_tf = repmat(SCE2_NonIce_n_tf,1,length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);

SCE2_NonIce_Suez_n_t0 = repmat(SCE2_NonIce_Suez_n_t0,1,length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE2_NonIce_Suez_n_tm = repmat(SCE2_NonIce_Suez_n_tm,1,length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE2_NonIce_Suez_n_tf = repmat(SCE2_NonIce_Suez_n_tf,1,length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);

%Operating expenses
CrewFee = 1.2*10^6; SCE1_CrewFee = CrewFee.*ones(length(SCE1_NonIce_Cap_Value_t0(:,1)),length(SCE1_NonIce_Cap_Value_t0(1,:))); %Hansen
SCE2_CrewFee = SCE1_CrewFee; SCE3_CrewFee = CrewFee.*ones(length(SCE3_NonIce_Cap_Value_t0(:,1)),length(SCE3_NonIce_Cap_Value_t0(1,:)));

SCE1_NonIce_Maint_fee_t0 = 0.01095.*SCE1_NonIce_Cap_Value_t0; %Otsuka and Hansen
SCE1_Ice_Maint_fee_t0 = 0.01095.*SCE1_Ice_Cap_Value_t0;

SCE1_NonIce_Maint_fee_tm = 0.01095.*SCE1_NonIce_Cap_Value_tm; 
SCE1_Ice_Maint_fee_tm= 0.01095.*SCE1_Ice_Cap_Value_tm;

SCE1_NonIce_Maint_fee_tf = 0.01095.*SCE1_NonIce_Cap_Value_tf; 
SCE1_Ice_Maint_fee_tf = 0.01095.*SCE1_Ice_Cap_Value_tf;

SCE2_NonIce_Maint_fee_t0 = 0.01095.*SCE2_NonIce_Cap_Value_t0;
SCE2_Ice_Maint_fee_t0 = 0.01095.*SCE2_Ice_Cap_Value_t0;

SCE2_NonIce_Maint_fee_tm = 0.01095.*SCE2_NonIce_Cap_Value_tm; 
SCE2_Ice_Maint_fee_tm= 0.01095.*SCE2_Ice_Cap_Value_tm;

SCE2_NonIce_Maint_fee_tf = 0.01095.*SCE2_NonIce_Cap_Value_tf; 
SCE2_Ice_Maint_fee_tf = 0.01095.*SCE2_Ice_Cap_Value_tf;

SCE3_NonIce_Maint_fee_t0 = 0.01095.*SCE3_NonIce_Cap_Value_t0; 
SCE3_Ice_Maint_fee_t0 = 0.01095.*SCE3_Ice_Cap_Value_t0;

SCE3_NonIce_Maint_fee_tm = 0.01095.*SCE3_NonIce_Cap_Value_tm; 
SCE3_Ice_Maint_fee_tm= 0.01095.*SCE3_Ice_Cap_Value_tm;

SCE3_NonIce_Maint_fee_tf = 0.01095.*SCE3_NonIce_Cap_Value_tf; 
SCE3_Ice_Maint_fee_tf = 0.01095.*SCE3_Ice_Cap_Value_tf;

SCE1_NonIce_Ins_fee_t0 = 0.00343.*SCE1_NonIce_Cap_Value_t0 ; %Otsuka and Hansen - extra insurance for the Arctic 
SCE1_Ice_Ins_fee_t0 = 0.00343.*SCE1_Ice_Cap_Value_t0 ;

SCE1_NonIce_Ins_fee_tm = 0.00343.*SCE1_NonIce_Cap_Value_tm ; 
SCE1_Ice_Ins_fee_tm = 0.00343.*SCE1_Ice_Cap_Value_tm ;

SCE1_NonIce_Ins_fee_tf = 0.00343.*SCE1_NonIce_Cap_Value_tf ; 
SCE1_Ice_Ins_fee_tf = 0.00343.*SCE1_Ice_Cap_Value_tf ;

SCE2_NonIce_Ins_fee_t0 = 0.00343.*SCE2_NonIce_Cap_Value_t0 ; 
SCE2_Ice_Ins_fee_t0 = 0.00343.*SCE2_Ice_Cap_Value_t0 ;

SCE2_NonIce_Ins_fee_tm = 0.00343.*SCE2_NonIce_Cap_Value_tm ; 
SCE2_Ice_Ins_fee_tm = 0.00343.*SCE2_Ice_Cap_Value_tm ;

SCE2_NonIce_Ins_fee_tf = 0.00343.*SCE2_NonIce_Cap_Value_tf ; 
SCE2_Ice_Ins_fee_tf = 0.00343.*SCE2_Ice_Cap_Value_tf ;

SCE3_NonIce_Ins_fee_t0 = 0.00343.*SCE3_NonIce_Cap_Value_t0;
SCE3_Ice_Ins_fee_t0 = 0.00343.*SCE3_Ice_Cap_Value_t0;

SCE3_NonIce_Ins_fee_tm = 0.00343.*SCE3_NonIce_Cap_Value_tm; 
SCE3_Ice_Ins_fee_tm = 0.00343.*SCE3_Ice_Cap_Value_tm;

SCE3_NonIce_Ins_fee_tf = 0.00343.*SCE3_NonIce_Cap_Value_tf; 
SCE3_Ice_Ins_fee_tf = 0.00343.*SCE3_Ice_Cap_Value_tf;

%Aggregating the operating expenses together
SCE1_NonIce_OpEx_t0 = SCE1_CrewFee+ SCE1_NonIce_Maint_fee_t0 + SCE1_NonIce_Ins_fee_t0 + SCE1_NonIce_AddOpex_t0;
SCE1_Ice_OpEx_t0 = SCE1_CrewFee+ SCE1_Ice_Maint_fee_t0 + SCE1_Ice_Ins_fee_t0 + SCE1_Ice_AddOpex_t0;

SCE1_NonIce_OpEx_tm = SCE1_CrewFee+ SCE1_NonIce_Maint_fee_tm + SCE1_NonIce_Ins_fee_tm + SCE1_NonIce_AddOpex_tm;
SCE1_Ice_OpEx_tm = SCE1_CrewFee+ SCE1_Ice_Maint_fee_tm + SCE1_Ice_Ins_fee_tm + SCE1_Ice_AddOpex_tm;

SCE1_NonIce_OpEx_tf = SCE1_CrewFee+ SCE1_NonIce_Maint_fee_tf + SCE1_NonIce_Ins_fee_tf + SCE1_NonIce_AddOpex_tf;
SCE1_Ice_OpEx_tf = SCE1_CrewFee+ SCE1_Ice_Maint_fee_tf + SCE1_Ice_Ins_fee_tf + SCE1_Ice_AddOpex_tf;

SCE2_NonIce_OpEx_t0 = SCE2_CrewFee+ SCE2_NonIce_Maint_fee_t0 + SCE2_NonIce_Ins_fee_t0 + SCE2_NonIce_AddOpex_t0;
SCE2_Ice_OpEx_t0 = SCE2_CrewFee+ SCE2_Ice_Maint_fee_t0 + SCE2_Ice_Ins_fee_t0 + SCE2_Ice_AddOpex_t0;

SCE2_NonIce_OpEx_tm = SCE2_CrewFee+ SCE2_NonIce_Maint_fee_tm + SCE2_NonIce_Ins_fee_tm + SCE2_NonIce_AddOpex_tm;
SCE2_Ice_OpEx_tm = SCE2_CrewFee+ SCE2_Ice_Maint_fee_tm + SCE2_Ice_Ins_fee_tm + SCE2_Ice_AddOpex_tm;

SCE2_NonIce_OpEx_tf = SCE2_CrewFee+ SCE2_NonIce_Maint_fee_tf + SCE2_NonIce_Ins_fee_tf + SCE2_NonIce_AddOpex_tf;
SCE2_Ice_OpEx_tf = SCE2_CrewFee+ SCE2_Ice_Maint_fee_tf + SCE2_Ice_Ins_fee_tf + SCE2_Ice_AddOpex_tf;

SCE3_NonIce_OpEx_t0 = SCE3_CrewFee+ SCE3_NonIce_Maint_fee_t0 + SCE3_NonIce_Ins_fee_t0 + SCE3_NonIce_AddOpex_t0;
SCE3_Ice_OpEx_t0 = SCE3_CrewFee+ SCE3_Ice_Maint_fee_t0 + SCE3_Ice_Ins_fee_t0 + SCE3_Ice_AddOpex_t0;

SCE3_NonIce_OpEx_tm = SCE3_CrewFee+ SCE3_NonIce_Maint_fee_tm + SCE3_NonIce_Ins_fee_tm + SCE3_NonIce_AddOpex_tm;
SCE3_Ice_OpEx_tm = SCE3_CrewFee+ SCE3_Ice_Maint_fee_tm + SCE3_Ice_Ins_fee_tm + SCE3_Ice_AddOpex_tm;

SCE3_NonIce_OpEx_tf = SCE3_CrewFee+ SCE3_NonIce_Maint_fee_tf + SCE3_NonIce_Ins_fee_tf + SCE3_NonIce_AddOpex_tf;
SCE3_Ice_OpEx_tf = SCE3_CrewFee+ SCE3_Ice_Maint_fee_tf + SCE3_Ice_Ins_fee_tf + SCE3_Ice_AddOpex_tf;

%Total voyage costs 
SCE1_Ice_Total_Voyage_cost_t0 = SCE1_Ice_Total_Fuel_costs_t0 + SCE1_Ice_Port_dues_t0  + SCE1_Ice_IB_tariff_t0 + SCE1_Ice_IP_fee_t0 + (SCE1_Ice_Total_days_t0.*SO_tc) + (SCE1_Ice_n_t0.*SCE1_Ice_dwt_rev_loss_t0);
SCE1_Ice_Total_Voyage_cost_tm = SCE1_Ice_Total_Fuel_costs_tm + SCE1_Ice_Port_dues_tm  + SCE1_Ice_IB_tariff_tm + SCE1_Ice_IP_fee_tm + (SCE1_Ice_Total_days_tm.*SO_tc) + (SCE1_Ice_n_tm.*SCE1_Ice_dwt_rev_loss_tm);
SCE1_Ice_Total_Voyage_cost_tf = SCE1_Ice_Total_Fuel_costs_tf + SCE1_Ice_Port_dues_tf  + SCE1_Ice_IB_tariff_tf + SCE1_Ice_IP_fee_tf + (SCE1_Ice_Total_days_tf.*SO_tc) + (SCE1_Ice_n_tf.*SCE1_Ice_dwt_rev_loss_tf);

SCE1_NonIce_Total_Voyage_cost_t0 = SCE1_NonIce_Total_Fuel_costs_t0 + SCE1_NonIce_Port_dues_t0 + SCE1_NonIce_IB_tariff_t0 + SCE1_NonIce_IP_fee_t0 + (SCE1_NonIce_Total_days_t0.*SO_tc) + (SCE1_NonIce_n_t0.*SCE1_NonIce_dwt_rev_loss_t0);
SCE1_NonIce_Total_Voyage_cost_tm = SCE1_NonIce_Total_Fuel_costs_tm + SCE1_NonIce_Port_dues_tm + SCE1_NonIce_IB_tariff_tm + SCE1_NonIce_IP_fee_tm + (SCE1_NonIce_Total_days_tm.*SO_tc) + (SCE1_NonIce_n_tm.*SCE1_NonIce_dwt_rev_loss_tm);
SCE1_NonIce_Total_Voyage_cost_tf = SCE1_NonIce_Total_Fuel_costs_tf + SCE1_NonIce_Port_dues_tf + SCE1_NonIce_IB_tariff_tf + SCE1_NonIce_IP_fee_tf + (SCE1_NonIce_Total_days_tf.*SO_tc) + (SCE1_NonIce_n_tf.*SCE1_NonIce_dwt_rev_loss_tf);

SCE2_Ice_Total_Voyage_cost_t0 = SCE2_Ice_Total_Fuel_costs_t0 + SCE2_Ice_Port_dues_t0 + SCE2_Ice_Suez_tariff_t0 + SCE2_Ice_IB_tariff_t0 + SCE2_Ice_IP_fee_t0 + (SCE2_Ice_Total_days_t0.*SO_tc) + (((SCE2_Ice_n_t0) + (SCE2_Ice_Suez_n_t0)).*SCE2_Ice_dwt_rev_loss_t0);
SCE2_Ice_Total_Voyage_cost_tm = SCE2_Ice_Total_Fuel_costs_tm + SCE2_Ice_Port_dues_tm + SCE2_Ice_Suez_tariff_tm + SCE2_Ice_IB_tariff_tm + SCE2_Ice_IP_fee_tm + (SCE2_Ice_Total_days_tm.*SO_tc) + (((SCE2_Ice_n_tm) + (SCE2_Ice_Suez_n_tm)).*SCE2_Ice_dwt_rev_loss_tm);
SCE2_Ice_Total_Voyage_cost_tf = SCE2_Ice_Total_Fuel_costs_tf + SCE2_Ice_Port_dues_tf + SCE2_Ice_Suez_tariff_tf + SCE2_Ice_IB_tariff_tf + SCE2_Ice_IP_fee_tf + (SCE2_Ice_Total_days_tf.*SO_tc) + (((SCE2_Ice_n_tf) + (SCE2_Ice_Suez_n_tf)).*SCE2_Ice_dwt_rev_loss_tf);

SCE2_NonIce_Total_Voyage_cost_t0 = SCE2_NonIce_Total_Fuel_costs_t0 + SCE2_NonIce_Port_dues_t0 + SCE2_NonIce_Suez_tariff_t0 + SCE2_NonIce_IB_tariff_t0 + SCE2_NonIce_IP_fee_t0 + (SCE2_NonIce_Total_days_t0.*SO_tc) + (((SCE2_NonIce_n_t0) + (SCE2_NonIce_Suez_n_t0)).*SCE2_NonIce_dwt_rev_loss_t0);
SCE2_NonIce_Total_Voyage_cost_tm = SCE2_NonIce_Total_Fuel_costs_tm + SCE2_NonIce_Port_dues_tm + SCE2_NonIce_Suez_tariff_tm + SCE2_NonIce_IB_tariff_tm + SCE2_NonIce_IP_fee_tm + (SCE2_NonIce_Total_days_tm.*SO_tc) + (((SCE2_NonIce_n_tm) + (SCE2_NonIce_Suez_n_tm)).*SCE2_NonIce_dwt_rev_loss_tm);
SCE2_NonIce_Total_Voyage_cost_tf = SCE2_NonIce_Total_Fuel_costs_tf + SCE2_NonIce_Port_dues_tf + SCE2_NonIce_Suez_tariff_tf + SCE2_NonIce_IB_tariff_tf + SCE2_NonIce_IP_fee_tf + (SCE2_NonIce_Total_days_tf.*SO_tc) + (((SCE2_NonIce_n_tf) + (SCE2_NonIce_Suez_n_tf)).*SCE2_NonIce_dwt_rev_loss_tf);

SCE3_Ice_Total_Voyage_cost_t0 = SCE3_Ice_Total_Fuel_costs_t0 + SCE3_Ice_Port_dues_Suez + SCE3_Ice_Suez_tariff + (SCE3_Ice_Total_days.*SO_tc) + (SCE3_Suez_n_S.*SCE3_Ice_dwt_rev_loss);
SCE3_Ice_Total_Voyage_cost_tm = SCE3_Ice_Total_Fuel_costs_tm + SCE3_Ice_Port_dues_Suez + SCE3_Ice_Suez_tariff + (SCE3_Ice_Total_days.*SO_tc) + (SCE3_Suez_n_S.*SCE3_Ice_dwt_rev_loss);
SCE3_Ice_Total_Voyage_cost_tf = SCE3_Ice_Total_Fuel_costs_tf + SCE3_Ice_Port_dues_Suez + SCE3_Ice_Suez_tariff + (SCE3_Ice_Total_days.*SO_tc) + (SCE3_Suez_n_S.*SCE3_Ice_dwt_rev_loss);

SCE3_NonIce_Total_Voyage_cost_t0 = SCE3_NonIce_Total_Fuel_costs_t0 + SCE3_NonIce_Port_dues_Suez + SCE3_NonIce_Suez_tariff + (SCE3_NonIce_Total_days.*SO_tc) + (SCE3_Suez_n_S.*SCE3_NonIce_dwt_rev_loss);
SCE3_NonIce_Total_Voyage_cost_tm = SCE3_NonIce_Total_Fuel_costs_tm + SCE3_NonIce_Port_dues_Suez + SCE3_NonIce_Suez_tariff + (SCE3_NonIce_Total_days.*SO_tc) + (SCE3_Suez_n_S.*SCE3_NonIce_dwt_rev_loss);
SCE3_NonIce_Total_Voyage_cost_tf = SCE3_NonIce_Total_Fuel_costs_tf + SCE3_NonIce_Port_dues_Suez + SCE3_NonIce_Suez_tariff + (SCE3_NonIce_Total_days.*SO_tc) + (SCE3_Suez_n_S.*SCE3_NonIce_dwt_rev_loss);


%% Emissions and emission factors 
%First extract the fuel consumption for each engine and fuel, I do this by
%using the fuel cost matrices and divide by their corresponding fuel
%prices, but first I need to concatenate the fuel prices together
%I need to pull out the route data from the global table, I can't do it all
%in one go as MATLAB doesn't support this type of operation unfortunately
Table_width = width(SCE1_Fuel_cons_t0);

SCE1_Fuel_cons_mat_t0 = SCE1_Fuel_cons_t0{:,:};
SCE1_Fuel_cons_mat_tm = SCE1_Fuel_cons_tm{:,:};
SCE1_Fuel_cons_mat_tf = SCE1_Fuel_cons_tf{:,:};

SCE2_Fuel_cons_mat_t0 = SCE2_Fuel_cons_t0{:,:};
SCE2_Fuel_cons_mat_tm = SCE2_Fuel_cons_tm{:,:};
SCE2_Fuel_cons_mat_tf = SCE2_Fuel_cons_tf{:,:};

SCE3_Fuel_cons_mat_t0 = SCE3_Fuel_cons_t0{:,:};
SCE3_Fuel_cons_mat_tm = SCE3_Fuel_cons_tm{:,:};
SCE3_Fuel_cons_mat_tf = SCE3_Fuel_cons_tf{:,:};

Scenario1_Ice_Fuel_consumption_Route1_t0 = SCE1_Fuel_cons_mat_t0(:,1:6:end);
Scenario1_NonIce_Fuel_consumption_Route1_t0 = SCE1_Fuel_cons_mat_t0(:,4:6:end);

Scenario1_Ice_Fuel_consumption_Route1_tm = SCE1_Fuel_cons_mat_tm(:,1:6:end);
Scenario1_NonIce_Fuel_consumption_Route1_tm = SCE1_Fuel_cons_mat_tm(:,4:6:end);

Scenario1_Ice_Fuel_consumption_Route1_tf = SCE1_Fuel_cons_mat_tf(:,1:6:end);
Scenario1_NonIce_Fuel_consumption_Route1_tf = SCE1_Fuel_cons_mat_tf(:,4:6:end);

Scenario2_Ice_Fuel_consumption_Route1_t0 = SCE2_Fuel_cons_mat_t0(:,1:6:end);
Scenario2_NonIce_Fuel_consumption_Route1_t0 = SCE2_Fuel_cons_mat_t0(:,4:6:end);

Scenario2_Ice_Fuel_consumption_Route1_tm = SCE2_Fuel_cons_mat_tm(:,1:6:end);
Scenario2_NonIce_Fuel_consumption_Route1_tm = SCE2_Fuel_cons_mat_tm(:,4:6:end);

Scenario2_Ice_Fuel_consumption_Route1_tf = SCE2_Fuel_cons_mat_tf(:,1:6:end);
Scenario2_NonIce_Fuel_consumption_Route1_tf = SCE2_Fuel_cons_mat_tf(:,4:6:end);

Scenario1_Ice_Fuel_consumption_Route2_t0 = SCE1_Fuel_cons_mat_t0(:,2:6:end);
Scenario1_NonIce_Fuel_consumption_Route2_t0 = SCE1_Fuel_cons_mat_t0(:,5:6:end);

Scenario1_Ice_Fuel_consumption_Route2_tm = SCE1_Fuel_cons_mat_tm(:,2:6:end);
Scenario1_NonIce_Fuel_consumption_Route2_tm = SCE1_Fuel_cons_mat_tm(:,5:6:end);

Scenario1_Ice_Fuel_consumption_Route2_tf = SCE1_Fuel_cons_mat_tf(:,2:6:end);
Scenario1_NonIce_Fuel_consumption_Route2_tf = SCE1_Fuel_cons_mat_tf(:,5:6:end);

Scenario2_Ice_Fuel_consumption_Route2_t0 = SCE2_Fuel_cons_mat_t0(:,2:6:end);
Scenario2_NonIce_Fuel_consumption_Route2_t0 = SCE2_Fuel_cons_mat_t0(:,5:6:end);

Scenario2_Ice_Fuel_consumption_Route2_tm = SCE2_Fuel_cons_mat_tm(:,2:6:end);
Scenario2_NonIce_Fuel_consumption_Route2_tm = SCE2_Fuel_cons_mat_tm(:,5:6:end);

Scenario2_Ice_Fuel_consumption_Route2_tf = SCE2_Fuel_cons_mat_tf(:,2:6:end);
Scenario2_NonIce_Fuel_consumption_Route2_tf = SCE2_Fuel_cons_mat_tf(:,5:6:end);

Scenario1_Ice_Fuel_consumption_Route3_t0 = SCE1_Fuel_cons_mat_t0(:,3:6:end);
Scenario1_NonIce_Fuel_consumption_Route3_t0 = SCE1_Fuel_cons_mat_t0(:,6:6:end);

Scenario1_Ice_Fuel_consumption_Route3_tm = SCE1_Fuel_cons_mat_tm(:,3:6:end);
Scenario1_NonIce_Fuel_consumption_Route3_tm = SCE1_Fuel_cons_mat_tm(:,6:6:end);

Scenario1_Ice_Fuel_consumption_Route3_tf = SCE1_Fuel_cons_mat_tf(:,3:6:end);
Scenario1_NonIce_Fuel_consumption_Route3_tf = SCE1_Fuel_cons_mat_tf(:,6:6:end);

Scenario2_Ice_Fuel_consumption_Route3_t0 = SCE2_Fuel_cons_mat_t0(:,3:6:end);
Scenario2_NonIce_Fuel_consumption_Route3_t0 = SCE2_Fuel_cons_mat_t0(:,6:6:end);

Scenario2_Ice_Fuel_consumption_Route3_tm = SCE2_Fuel_cons_mat_tm(:,3:6:end);
Scenario2_NonIce_Fuel_consumption_Route3_tm = SCE2_Fuel_cons_mat_tm(:,6:6:end);

Scenario2_Ice_Fuel_consumption_Route3_tf = SCE2_Fuel_cons_mat_tf(:,3:6:end);
Scenario2_NonIce_Fuel_consumption_Route3_tf = SCE2_Fuel_cons_mat_tf(:,6:6:end);

%Scenario 3
Scenario3_Ice_Fuel_consumption_t0 = SCE3_Fuel_cons_mat_t0(:,1:2:end);
Scenario3_NonIce_Fuel_consumption_t0 = SCE3_Fuel_cons_mat_t0(:,2:2:end);

Scenario3_Ice_Fuel_consumption_tm = SCE3_Fuel_cons_mat_tm(:,1:2:end);
Scenario3_NonIce_Fuel_consumption_tm = SCE3_Fuel_cons_mat_tm(:,2:2:end);

Scenario3_Ice_Fuel_consumption_tf = SCE3_Fuel_cons_mat_tf(:,1:2:end);
Scenario3_NonIce_Fuel_consumption_tf = SCE3_Fuel_cons_mat_tf(:,2:2:end);

%Auxiliary 
%Auxiliary engine
SCE1_Aux_Fuel_cons_mat_t0 = SCE1_Aux_Fuel_cons_t0{:,:};
SCE1_Aux_Fuel_cons_mat_tm = SCE1_Aux_Fuel_cons_tm{:,:};
SCE1_Aux_Fuel_cons_mat_tf = SCE1_Aux_Fuel_cons_tf{:,:};

SCE2_Aux_Fuel_cons_mat_t0 = SCE2_Aux_Fuel_cons_t0{:,:};
SCE2_Aux_Fuel_cons_mat_tm = SCE2_Aux_Fuel_cons_tm{:,:};
SCE2_Aux_Fuel_cons_mat_tf = SCE2_Aux_Fuel_cons_tf{:,:};

SCE3_Aux_Fuel_cons_mat_t0 = SCE3_Aux_Fuel_cons_t0{:,:};
SCE3_Aux_Fuel_cons_mat_tm = SCE3_Aux_Fuel_cons_tm{:,:};
SCE3_Aux_Fuel_cons_mat_tf = SCE3_Aux_Fuel_cons_tf{:,:};

Scenario1_Ice_Aux_Fuel_consumption_Route1_t0 = SCE1_Aux_Fuel_cons_mat_t0(:,1:6:end);
Scenario1_NonIce_Aux_Fuel_consumption_Route1_t0 = SCE1_Aux_Fuel_cons_mat_t0(:,4:6:end);

Scenario1_Ice_Aux_Fuel_consumption_Route1_tm = SCE1_Aux_Fuel_cons_mat_tm(:,1:6:end);
Scenario1_NonIce_Aux_Fuel_consumption_Route1_tm = SCE1_Aux_Fuel_cons_mat_tm(:,4:6:end);

Scenario1_Ice_Aux_Fuel_consumption_Route1_tf = SCE1_Aux_Fuel_cons_mat_tf(:,1:6:end);
Scenario1_NonIce_Aux_Fuel_consumption_Route1_tf = SCE1_Aux_Fuel_cons_mat_tf(:,4:6:end);

Scenario2_Ice_Aux_Fuel_consumption_Route1_t0 = SCE2_Aux_Fuel_cons_mat_t0(:,1:6:end);
Scenario2_NonIce_Aux_Fuel_consumption_Route1_t0 = SCE2_Aux_Fuel_cons_mat_t0(:,4:6:end);

Scenario2_Ice_Aux_Fuel_consumption_Route1_tm = SCE2_Aux_Fuel_cons_mat_tm(:,1:6:end);
Scenario2_NonIce_Aux_Fuel_consumption_Route1_tm = SCE2_Aux_Fuel_cons_mat_tm(:,4:6:end);

Scenario2_Ice_Aux_Fuel_consumption_Route1_tf = SCE2_Aux_Fuel_cons_mat_tf(:,1:6:end);
Scenario2_NonIce_Aux_Fuel_consumption_Route1_tf = SCE2_Aux_Fuel_cons_mat_tf(:,4:6:end);

Scenario1_Ice_Aux_Fuel_consumption_Route2_t0 = SCE1_Aux_Fuel_cons_mat_t0(:,2:6:end);
Scenario1_NonIce_Aux_Fuel_consumption_Route2_t0 = SCE1_Aux_Fuel_cons_mat_t0(:,5:6:end);

Scenario1_Ice_Aux_Fuel_consumption_Route2_tm = SCE1_Aux_Fuel_cons_mat_tm(:,2:6:end);
Scenario1_NonIce_Aux_Fuel_consumption_Route2_tm = SCE1_Aux_Fuel_cons_mat_tm(:,5:6:end);

Scenario1_Ice_Aux_Fuel_consumption_Route2_tf = SCE1_Aux_Fuel_cons_mat_tf(:,2:6:end);
Scenario1_NonIce_Aux_Fuel_consumption_Route2_tf = SCE1_Aux_Fuel_cons_mat_tf(:,5:6:end);

Scenario2_Ice_Aux_Fuel_consumption_Route2_t0 = SCE2_Aux_Fuel_cons_mat_t0(:,2:6:end);
Scenario2_NonIce_Aux_Fuel_consumption_Route2_t0 = SCE2_Aux_Fuel_cons_mat_t0(:,5:6:end);

Scenario2_Ice_Aux_Fuel_consumption_Route2_tm = SCE2_Aux_Fuel_cons_mat_tm(:,2:6:end);
Scenario2_NonIce_Aux_Fuel_consumption_Route2_tm = SCE2_Aux_Fuel_cons_mat_tm(:,5:6:end);

Scenario2_Ice_Aux_Fuel_consumption_Route2_tf = SCE2_Aux_Fuel_cons_mat_tf(:,2:6:end);
Scenario2_NonIce_Aux_Fuel_consumption_Route2_tf = SCE2_Aux_Fuel_cons_mat_tf(:,5:6:end);

Scenario1_Ice_Aux_Fuel_consumption_Route3_t0 = SCE1_Aux_Fuel_cons_mat_t0(:,3:6:end);
Scenario1_NonIce_Aux_Fuel_consumption_Route3_t0 = SCE1_Aux_Fuel_cons_mat_t0(:,6:6:end);

Scenario1_Ice_Aux_Fuel_consumption_Route3_tm = SCE1_Aux_Fuel_cons_mat_tm(:,3:6:end);
Scenario1_NonIce_Aux_Fuel_consumption_Route3_tm = SCE1_Aux_Fuel_cons_mat_tm(:,6:6:end);

Scenario1_Ice_Aux_Fuel_consumption_Route3_tf = SCE1_Aux_Fuel_cons_mat_tf(:,3:6:end);
Scenario1_NonIce_Aux_Fuel_consumption_Route3_tf = SCE1_Aux_Fuel_cons_mat_tf(:,6:6:end);

Scenario2_Ice_Aux_Fuel_consumption_Route3_t0 = SCE2_Aux_Fuel_cons_mat_t0(:,3:6:end);
Scenario2_NonIce_Aux_Fuel_consumption_Route3_t0 = SCE2_Aux_Fuel_cons_mat_t0(:,6:6:end);

Scenario2_Ice_Aux_Fuel_consumption_Route3_tm = SCE2_Aux_Fuel_cons_mat_tm(:,3:6:end);
Scenario2_NonIce_Aux_Fuel_consumption_Route3_tm = SCE2_Aux_Fuel_cons_mat_tm(:,6:6:end);

Scenario2_Ice_Aux_Fuel_consumption_Route3_tf = SCE2_Aux_Fuel_cons_mat_tf(:,3:6:end);
Scenario2_NonIce_Aux_Fuel_consumption_Route3_tf = SCE2_Aux_Fuel_cons_mat_tf(:,6:6:end);

%Scenario 3
Scenario3_Ice_Aux_Fuel_consumption_t0 = SCE3_Aux_Fuel_cons_mat_t0(:,1:2:end);
Scenario3_NonIce_Aux_Fuel_consumption_t0 = SCE3_Aux_Fuel_cons_mat_t0(:,2:2:end);

Scenario3_Ice_Aux_Fuel_consumption_tm = SCE3_Aux_Fuel_cons_mat_tm(:,1:2:end);
Scenario3_NonIce_Aux_Fuel_consumption_tm = SCE3_Aux_Fuel_cons_mat_tm(:,2:2:end);

Scenario3_Ice_Aux_Fuel_consumption_tf = SCE3_Aux_Fuel_cons_mat_tf(:,1:2:end);
Scenario3_NonIce_Aux_Fuel_consumption_tf = SCE3_Aux_Fuel_cons_mat_tf(:,2:2:end);

%Boiler

%Boiler 
SCE1_Boil_Fuel_cons_mat_t0 = SCE1_Boil_Fuel_cons_t0{:,:};
SCE1_Boil_Fuel_cons_mat_tm = SCE1_Boil_Fuel_cons_tm{:,:};
SCE1_Boil_Fuel_cons_mat_tf = SCE1_Boil_Fuel_cons_tf{:,:};

SCE2_Boil_Fuel_cons_mat_t0 = SCE2_Boil_Fuel_cons_t0{:,:};
SCE2_Boil_Fuel_cons_mat_tm = SCE2_Boil_Fuel_cons_tm{:,:};
SCE2_Boil_Fuel_cons_mat_tf = SCE2_Boil_Fuel_cons_tf{:,:};

SCE3_Boil_Fuel_cons_mat_t0 = SCE3_Boil_Fuel_cons_t0{:,:};
SCE3_Boil_Fuel_cons_mat_tm = SCE3_Boil_Fuel_cons_tm{:,:};
SCE3_Boil_Fuel_cons_mat_tf = SCE3_Boil_Fuel_cons_tf{:,:};

Scenario1_Ice_Boil_Fuel_consumption_Route1_t0 = SCE1_Boil_Fuel_cons_mat_t0(:,1:6:end);
Scenario1_NonIce_Boil_Fuel_consumption_Route1_t0 = SCE1_Boil_Fuel_cons_mat_t0(:,4:6:end);

Scenario1_Ice_Boil_Fuel_consumption_Route1_tm = SCE1_Boil_Fuel_cons_mat_tm(:,1:6:end);
Scenario1_NonIce_Boil_Fuel_consumption_Route1_tm = SCE1_Boil_Fuel_cons_mat_tm(:,4:6:end);

Scenario1_Ice_Boil_Fuel_consumption_Route1_tf = SCE1_Boil_Fuel_cons_mat_tf(:,1:6:end);
Scenario1_NonIce_Boil_Fuel_consumption_Route1_tf = SCE1_Boil_Fuel_cons_mat_tf(:,4:6:end);

Scenario2_Ice_Boil_Fuel_consumption_Route1_t0 = SCE2_Boil_Fuel_cons_mat_t0(:,1:6:end);
Scenario2_NonIce_Boil_Fuel_consumption_Route1_t0 = SCE2_Boil_Fuel_cons_mat_t0(:,4:6:end);

Scenario2_Ice_Boil_Fuel_consumption_Route1_tm = SCE2_Boil_Fuel_cons_mat_tm(:,1:6:end);
Scenario2_NonIce_Boil_Fuel_consumption_Route1_tm = SCE2_Boil_Fuel_cons_mat_tm(:,4:6:end);

Scenario2_Ice_Boil_Fuel_consumption_Route1_tf = SCE2_Boil_Fuel_cons_mat_tf(:,1:6:end);
Scenario2_NonIce_Boil_Fuel_consumption_Route1_tf = SCE2_Boil_Fuel_cons_mat_tf(:,4:6:end);

Scenario1_Ice_Boil_Fuel_consumption_Route2_t0 = SCE1_Boil_Fuel_cons_mat_t0(:,2:6:end);
Scenario1_NonIce_Boil_Fuel_consumption_Route2_t0 = SCE1_Boil_Fuel_cons_mat_t0(:,5:6:end);

Scenario1_Ice_Boil_Fuel_consumption_Route2_tm = SCE1_Boil_Fuel_cons_mat_tm(:,2:6:end);
Scenario1_NonIce_Boil_Fuel_consumption_Route2_tm = SCE1_Boil_Fuel_cons_mat_tm(:,5:6:end);

Scenario1_Ice_Boil_Fuel_consumption_Route2_tf = SCE1_Boil_Fuel_cons_mat_tf(:,2:6:end);
Scenario1_NonIce_Boil_Fuel_consumption_Route2_tf = SCE1_Boil_Fuel_cons_mat_tf(:,5:6:end);

Scenario2_Ice_Boil_Fuel_consumption_Route2_t0 = SCE2_Boil_Fuel_cons_mat_t0(:,2:6:end);
Scenario2_NonIce_Boil_Fuel_consumption_Route2_t0 = SCE2_Boil_Fuel_cons_mat_t0(:,5:6:end);

Scenario2_Ice_Boil_Fuel_consumption_Route2_tm = SCE2_Boil_Fuel_cons_mat_tm(:,2:6:end);
Scenario2_NonIce_Boil_Fuel_consumption_Route2_tm = SCE2_Boil_Fuel_cons_mat_tm(:,5:6:end);

Scenario2_Ice_Boil_Fuel_consumption_Route2_tf = SCE2_Boil_Fuel_cons_mat_tf(:,2:6:end);
Scenario2_NonIce_Boil_Fuel_consumption_Route2_tf = SCE2_Boil_Fuel_cons_mat_tf(:,5:6:end);

Scenario1_Ice_Boil_Fuel_consumption_Route3_t0 = SCE1_Boil_Fuel_cons_mat_t0(:,3:6:end);
Scenario1_NonIce_Boil_Fuel_consumption_Route3_t0 = SCE1_Boil_Fuel_cons_mat_t0(:,6:6:end);

Scenario1_Ice_Boil_Fuel_consumption_Route3_tm = SCE1_Boil_Fuel_cons_mat_tm(:,3:6:end);
Scenario1_NonIce_Boil_Fuel_consumption_Route3_tm = SCE1_Boil_Fuel_cons_mat_tm(:,6:6:end);

Scenario1_Ice_Boil_Fuel_consumption_Route3_tf = SCE1_Boil_Fuel_cons_mat_tf(:,3:6:end);
Scenario1_NonIce_Boil_Fuel_consumption_Route3_tf = SCE1_Boil_Fuel_cons_mat_tf(:,6:6:end);

Scenario2_Ice_Boil_Fuel_consumption_Route3_t0 = SCE2_Boil_Fuel_cons_mat_t0(:,3:6:end);
Scenario2_NonIce_Boil_Fuel_consumption_Route3_t0 = SCE2_Boil_Fuel_cons_mat_t0(:,6:6:end);

Scenario2_Ice_Boil_Fuel_consumption_Route3_tm = SCE2_Boil_Fuel_cons_mat_tm(:,3:6:end);
Scenario2_NonIce_Boil_Fuel_consumption_Route3_tm = SCE2_Boil_Fuel_cons_mat_tm(:,6:6:end);

Scenario2_Ice_Boil_Fuel_consumption_Route3_tf = SCE2_Boil_Fuel_cons_mat_tf(:,3:6:end);
Scenario2_NonIce_Boil_Fuel_consumption_Route3_tf = SCE2_Boil_Fuel_cons_mat_tf(:,6:6:end);


%Scenario 3
Scenario3_Ice_Boil_Fuel_consumption_t0 = SCE3_Boil_Fuel_cons_mat_t0(:,1:2:end);
Scenario3_NonIce_Boil_Fuel_consumption_t0 = SCE3_Boil_Fuel_cons_mat_t0(:,2:2:end);

Scenario3_Ice_Boil_Fuel_consumption_tm = SCE3_Boil_Fuel_cons_mat_tm(:,1:2:end);
Scenario3_NonIce_Boil_Fuel_consumption_tm = SCE3_Boil_Fuel_cons_mat_tm(:,2:2:end);

Scenario3_Ice_Boil_Fuel_consumption_tf = SCE3_Boil_Fuel_cons_mat_tf(:,1:2:end);
Scenario3_NonIce_Boil_Fuel_consumption_tf = SCE3_Boil_Fuel_cons_mat_tf(:,2:2:end);

    %Emissions
%Need to multiply by emission factors 
EFs = EF{:,:}';

%Suez emissions
Scenario2_Ice_Fuel_consumption_Suez_Route1_t0 = [Ice_Fuel_consumed_Suez_SCE2Route1_t_t0 Ice_Fuel_consumed_Suez_SCE2Route1_t_t0 (Ice_Fuel_consumed_Suez_SCE2Route1_t_t0.*(40.2./42.7)),...
    Ice_Fuel_consumed_Suez_SCE2Route1_t_t0.*(172./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route1_t_t0.*(391./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route1_t_t0.*456./Icesfc_design];

Scenario2_Ice_Fuel_consumption_Suez_Route1_tm = [Ice_Fuel_consumed_Suez_SCE2Route1_t_tm Ice_Fuel_consumed_Suez_SCE2Route1_t_tm (Ice_Fuel_consumed_Suez_SCE2Route1_t_tm.*(40.2./42.7)),...
    Ice_Fuel_consumed_Suez_SCE2Route1_t_tm.*(172./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route1_t_tm.*(391./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route1_t_tm.*456./Icesfc_design];

Scenario2_Ice_Fuel_consumption_Suez_Route1_tf = [Ice_Fuel_consumed_Suez_SCE2Route1_t_tf Ice_Fuel_consumed_Suez_SCE2Route1_t_tf (Ice_Fuel_consumed_Suez_SCE2Route1_t_tf.*(40.2./42.7)),...
    Ice_Fuel_consumed_Suez_SCE2Route1_t_tf.*(172./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route1_t_tf.*(391./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route1_t_tf.*456./Icesfc_design];

Scenario2_Ice_Fuel_consumption_Suez_Route2_t0 = [Ice_Fuel_consumed_Suez_SCE2Route2_t_t0 Ice_Fuel_consumed_Suez_SCE2Route2_t_t0 (Ice_Fuel_consumed_Suez_SCE2Route2_t_t0.*(40.2./42.7)),...
    Ice_Fuel_consumed_Suez_SCE2Route2_t_t0.*(172./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route2_t_t0.*(391./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route2_t_t0.*456./Icesfc_design];

Scenario2_Ice_Fuel_consumption_Suez_Route2_tm = [Ice_Fuel_consumed_Suez_SCE2Route2_t_tm Ice_Fuel_consumed_Suez_SCE2Route2_t_tm (Ice_Fuel_consumed_Suez_SCE2Route2_t_tm.*(40.2./42.7)),...
    Ice_Fuel_consumed_Suez_SCE2Route2_t_tm.*(172./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route2_t_tm.*(391./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route2_t_tm.*456./Icesfc_design];

Scenario2_Ice_Fuel_consumption_Suez_Route2_tf = [Ice_Fuel_consumed_Suez_SCE2Route2_t_tf Ice_Fuel_consumed_Suez_SCE2Route2_t_tf (Ice_Fuel_consumed_Suez_SCE2Route2_t_tf.*(40.2./42.7)),...
    Ice_Fuel_consumed_Suez_SCE2Route2_t_tf.*(172./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route2_t_tf.*(391./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route2_t_tf.*456./Icesfc_design];

Scenario2_Ice_Fuel_consumption_Suez_Route3_t0 = [Ice_Fuel_consumed_Suez_SCE2Route3_t_t0 Ice_Fuel_consumed_Suez_SCE2Route3_t_t0 (Ice_Fuel_consumed_Suez_SCE2Route3_t_t0.*(40.2./42.7)),...
    Ice_Fuel_consumed_Suez_SCE2Route3_t_t0.*(172./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route3_t_t0.*(391./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route3_t_t0.*456./Icesfc_design];

Scenario2_Ice_Fuel_consumption_Suez_Route3_tm = [Ice_Fuel_consumed_Suez_SCE2Route3_t_tm Ice_Fuel_consumed_Suez_SCE2Route3_t_tm (Ice_Fuel_consumed_Suez_SCE2Route3_t_tm.*(40.2./42.7)),...
    Ice_Fuel_consumed_Suez_SCE2Route3_t_tm.*(172./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route3_t_tm.*(391./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route3_t_tm.*456./Icesfc_design];

Scenario2_Ice_Fuel_consumption_Suez_Route3_tf = [Ice_Fuel_consumed_Suez_SCE2Route3_t_tf Ice_Fuel_consumed_Suez_SCE2Route3_t_tf (Ice_Fuel_consumed_Suez_SCE2Route3_t_tf.*(40.2./42.7)),...
    Ice_Fuel_consumed_Suez_SCE2Route3_t_tf.*(172./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route3_t_tf.*(391./Icesfc_design) Ice_Fuel_consumed_Suez_SCE2Route3_t_tf.*456./Icesfc_design];

Scenario2_NonIce_Fuel_consumption_Suez_Route1_t0 = [NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0 NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0 (NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0.*(40.2./42.7)),...
    NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0.*(172./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0.*(391./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route1_t_t0.*456./d.design_main_engine_sfc(:)];

Scenario2_NonIce_Fuel_consumption_Suez_Route1_tm = [NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm (NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm.*(40.2./42.7)),...
    NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm.*(172./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm.*(391./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route1_t_tm.*456./d.design_main_engine_sfc(:)];

Scenario2_NonIce_Fuel_consumption_Suez_Route1_tf = [NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf (NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf.*(40.2./42.7)),...
    NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf.*(172./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf.*(391./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route1_t_tf.*456./d.design_main_engine_sfc(:)];

Scenario2_NonIce_Fuel_consumption_Suez_Route2_t0 = [NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0 NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0 (NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0.*(40.2./42.7)),...
    NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0.*(172./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0.*(391./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route2_t_t0.*456./d.design_main_engine_sfc(:)];

Scenario2_NonIce_Fuel_consumption_Suez_Route2_tm = [NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm (NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm.*(40.2./42.7)),...
    NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm.*(172./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm.*(391./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route2_t_tm.*456./d.design_main_engine_sfc(:)];

Scenario2_NonIce_Fuel_consumption_Suez_Route2_tf = [NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf (NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf.*(40.2./42.7)),...
    NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf.*(172./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf.*(391./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route2_t_tf.*456./d.design_main_engine_sfc(:)];

Scenario2_NonIce_Fuel_consumption_Suez_Route3_t0 = [NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0 NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0 (NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0.*(40.2./42.7)),...
    NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0.*(172./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0.*(391./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route3_t_t0.*456./d.design_main_engine_sfc(:)];

Scenario2_NonIce_Fuel_consumption_Suez_Route3_tm = [NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm (NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm.*(40.2./42.7)),...
    NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm.*(172./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm.*(391./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route3_t_tm.*456./d.design_main_engine_sfc(:)];

Scenario2_NonIce_Fuel_consumption_Suez_Route3_tf = [NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf (NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf.*(40.2./42.7)),...
    NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf.*(172./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf.*(391./d.design_main_engine_sfc(:)) NonIce_Fuel_consumed_Suez_SCE2Route3_t_tf.*456./d.design_main_engine_sfc(:)];

%Auxiliary 
Scenario2_Ice_Aux_Fuel_consumption_Suez_Route1_t0 = [Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0 Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0 (Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0.*(40.2./42.7)),...
    Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0.*(172./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0.*(391./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0.*456./Icesfc_design];

Scenario2_Ice_Aux_Fuel_consumption_Suez_Route1_tm = [Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm (Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm.*(40.2./42.7)),...
    Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm.*(172./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm.*(391./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm.*456./Icesfc_design];

Scenario2_Ice_Aux_Fuel_consumption_Suez_Route1_tf = [Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf (Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf.*(40.2./42.7)),...
    Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf.*(172./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf.*(391./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf.*456./Icesfc_design];

Scenario2_Ice_Aux_Fuel_consumption_Suez_Route2_t0 = [Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0 Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0 (Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0.*(40.2./42.7)),...
    Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0.*(172./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0.*(391./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0.*456./Icesfc_design];

Scenario2_Ice_Aux_Fuel_consumption_Suez_Route2_tm = [Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm (Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm.*(40.2./42.7)),...
    Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm.*(172./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm.*(391./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm.*456./Icesfc_design];

Scenario2_Ice_Aux_Fuel_consumption_Suez_Route2_tf = [Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf (Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf.*(40.2./42.7)),...
    Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf.*(172./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf.*(391./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf.*456./Icesfc_design];

Scenario2_Ice_Aux_Fuel_consumption_Suez_Route3_t0 = [Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0 Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0 (Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0.*(40.2./42.7)),...
    Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0.*(172./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0.*(391./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0.*456./Icesfc_design];

Scenario2_Ice_Aux_Fuel_consumption_Suez_Route3_tm = [Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm (Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm.*(40.2./42.7)),...
    Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm.*(172./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm.*(391./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm.*456./Icesfc_design];

Scenario2_Ice_Aux_Fuel_consumption_Suez_Route3_tf = [Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf (Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf.*(40.2./42.7)),...
    Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf.*(172./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf.*(391./Icesfc_design) Ice_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf.*456./Icesfc_design];

Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route1_t0 = [NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0 NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0 (NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0.*(40.2./42.7)),...
    NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0.*(172./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0.*(391./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_t0.*456./NonIcesfc_design];

Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route1_tm = [NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm (NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm.*(40.2./42.7)),...
    NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm.*(172./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm.*(391./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tm.*456./NonIcesfc_design];

Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route1_tf = [NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf (NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf.*(40.2./42.7)),...
    NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf.*(172./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf.*(391./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route1_t_tf.*456./NonIcesfc_design];

Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route2_t0 = [NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0 NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0 (NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0.*(40.2./42.7)),...
    NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0.*(172./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0.*(391./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_t0.*456./NonIcesfc_design];

Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route2_tm = [NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm (NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm.*(40.2./42.7)),...
    NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm.*(172./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm.*(391./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tm.*456./NonIcesfc_design];

Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route2_tf = [NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf (NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf.*(40.2./42.7)),...
    NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf.*(172./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf.*(391./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route2_t_tf.*456./NonIcesfc_design];

Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route3_t0 = [NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0 NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0 (NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0.*(40.2./42.7)),...
    NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0.*(172./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0.*(391./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_t0.*456./NonIcesfc_design];

Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route3_tm = [NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm (NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm.*(40.2./42.7)),...
    NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm.*(172./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm.*(391./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tm.*456./NonIcesfc_design];

Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route3_tf = [NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf (NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf.*(40.2./42.7)),...
    NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf.*(172./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf.*(391./NonIcesfc_design) NonIce_Aux_fuel_consumed_Suez_SCE2_Route3_t_tf.*456./NonIcesfc_design];

%Boiler 
Scenario2_Ice_Boil_Fuel_consumption_Suez_Route1_t0 = [Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0 Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0 (Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0.*(40.2./42.7)),...
    Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0.*(172./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0.*(391./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0.*456./Icesfc_design];

Scenario2_Ice_Boil_Fuel_consumption_Suez_Route1_tm = [Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm (Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm.*(40.2./42.7)),...
    Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm.*(172./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm.*(391./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm.*456./Icesfc_design];

Scenario2_Ice_Boil_Fuel_consumption_Suez_Route1_tf = [Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf (Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf.*(40.2./42.7)),...
    Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf.*(172./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf.*(391./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf.*456./Icesfc_design];

Scenario2_Ice_Boil_Fuel_consumption_Suez_Route2_t0 = [Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0 Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0 (Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0.*(40.2./42.7)),...
    Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0.*(172./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0.*(391./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0.*456./Icesfc_design];

Scenario2_Ice_Boil_Fuel_consumption_Suez_Route2_tm = [Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm (Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm.*(40.2./42.7)),...
    Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm.*(172./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm.*(391./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm.*456./Icesfc_design];

Scenario2_Ice_Boil_Fuel_consumption_Suez_Route2_tf = [Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf (Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf.*(40.2./42.7)),...
    Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf.*(172./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf.*(391./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf.*456./Icesfc_design];

Scenario2_Ice_Boil_Fuel_consumption_Suez_Route3_t0 = [Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0 Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0 (Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0.*(40.2./42.7)),...
    Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0.*(172./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0.*(391./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0.*456./Icesfc_design];

Scenario2_Ice_Boil_Fuel_consumption_Suez_Route3_tm = [Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm (Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm.*(40.2./42.7)),...
    Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm.*(172./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm.*(391./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm.*456./Icesfc_design];

Scenario2_Ice_Boil_Fuel_consumption_Suez_Route3_tf = [Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf (Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf.*(40.2./42.7)),...
    Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf.*(172./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf.*(391./Icesfc_design) Ice_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf.*456./Icesfc_design];

Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route1_t0 = [NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0 NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0 (NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0.*(40.2./42.7)),...
    NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0.*(172./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0.*(391./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_t0.*456./NonIcesfc_design];

Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route1_tm = [NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm (NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm.*(40.2./42.7)),...
    NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm.*(172./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm.*(391./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tm.*456./NonIcesfc_design];

Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route1_tf = [NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf (NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf.*(40.2./42.7)),...
    NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf.*(172./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf.*(391./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route1_t_tf.*456./NonIcesfc_design];

Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route2_t0 = [NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0 NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0 (NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0.*(40.2./42.7)),...
    NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0.*(172./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0.*(391./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_t0.*456./NonIcesfc_design];

Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route2_tm = [NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm (NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm.*(40.2./42.7)),...
    NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm.*(172./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm.*(391./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tm.*456./NonIcesfc_design];

Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route2_tf = [NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf (NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf.*(40.2./42.7)),...
    NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf.*(172./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf.*(391./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route2_t_tf.*456./NonIcesfc_design];

Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route3_t0 = [NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0 NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0 (NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0.*(40.2./42.7)),...
    NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0.*(172./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0.*(391./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_t0.*456./NonIcesfc_design];

Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route3_tm = [NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm (NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm.*(40.2./42.7)),...
    NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm.*(172./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm.*(391./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tm.*456./NonIcesfc_design];

Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route3_tf = [NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf (NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf.*(40.2./42.7)),...
    NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf.*(172./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf.*(391./NonIcesfc_design) NonIce_Boil_fuel_consumed_Suez_SCE2_Route3_t_tf.*456./NonIcesfc_design];

% 2-stroke/HFO = 1
% 2-stroke/LSHFO = 2
% 2-stroke/MDO = 3
% 4-stroke/LNG = 4
% 4-stroke/NH3 = 5
% FC/NH3 = 6

%Summing fuel consumption together
Scenario1_Ice_Total_Fuel_consumption_Route1_t0 = Scenario1_Ice_Fuel_consumption_Route1_t0 + Scenario1_Ice_Aux_Fuel_consumption_Route1_t0 + Scenario1_Ice_Boil_Fuel_consumption_Route1_t0;
Scenario1_Ice_Total_Fuel_consumption_Route1_tm = Scenario1_Ice_Fuel_consumption_Route1_tm + Scenario1_Ice_Aux_Fuel_consumption_Route1_tm + Scenario1_Ice_Boil_Fuel_consumption_Route1_tm;
Scenario1_Ice_Total_Fuel_consumption_Route1_tf = Scenario1_Ice_Fuel_consumption_Route1_tf + Scenario1_Ice_Aux_Fuel_consumption_Route1_tf + Scenario1_Ice_Boil_Fuel_consumption_Route1_tf;

Scenario1_Ice_Total_Fuel_consumption_Route2_t0 = Scenario1_Ice_Fuel_consumption_Route2_t0 + Scenario1_Ice_Aux_Fuel_consumption_Route2_t0 + Scenario1_Ice_Boil_Fuel_consumption_Route2_t0;
Scenario1_Ice_Total_Fuel_consumption_Route2_tm = Scenario1_Ice_Fuel_consumption_Route2_tm + Scenario1_Ice_Aux_Fuel_consumption_Route2_tm + Scenario1_Ice_Boil_Fuel_consumption_Route2_tm;
Scenario1_Ice_Total_Fuel_consumption_Route2_tf = Scenario1_Ice_Fuel_consumption_Route2_tf + Scenario1_Ice_Aux_Fuel_consumption_Route2_tf + Scenario1_Ice_Boil_Fuel_consumption_Route2_tf;

Scenario1_Ice_Total_Fuel_consumption_Route3_t0 = Scenario1_Ice_Fuel_consumption_Route3_t0 + Scenario1_Ice_Aux_Fuel_consumption_Route3_t0 + Scenario1_Ice_Boil_Fuel_consumption_Route3_t0;
Scenario1_Ice_Total_Fuel_consumption_Route3_tm = Scenario1_Ice_Fuel_consumption_Route3_tm + Scenario1_Ice_Aux_Fuel_consumption_Route3_tm + Scenario1_Ice_Boil_Fuel_consumption_Route3_tm;
Scenario1_Ice_Total_Fuel_consumption_Route3_tf = Scenario1_Ice_Fuel_consumption_Route3_tf + Scenario1_Ice_Aux_Fuel_consumption_Route3_tf + Scenario1_Ice_Boil_Fuel_consumption_Route3_tf;

Scenario1_NonIce_Total_Fuel_consumption_Route1_t0 = Scenario1_NonIce_Fuel_consumption_Route1_t0 + Scenario1_NonIce_Aux_Fuel_consumption_Route1_t0 + Scenario1_NonIce_Boil_Fuel_consumption_Route1_t0;
Scenario1_NonIce_Total_Fuel_consumption_Route1_tm = Scenario1_NonIce_Fuel_consumption_Route1_tm + Scenario1_NonIce_Aux_Fuel_consumption_Route1_tm + Scenario1_NonIce_Boil_Fuel_consumption_Route1_tm;
Scenario1_NonIce_Total_Fuel_consumption_Route1_tf = Scenario1_NonIce_Fuel_consumption_Route1_tf + Scenario1_NonIce_Aux_Fuel_consumption_Route1_tf + Scenario1_NonIce_Boil_Fuel_consumption_Route1_tf;

Scenario1_NonIce_Total_Fuel_consumption_Route2_t0 = Scenario1_NonIce_Fuel_consumption_Route2_t0 + Scenario1_NonIce_Aux_Fuel_consumption_Route2_t0 + Scenario1_NonIce_Boil_Fuel_consumption_Route2_t0;
Scenario1_NonIce_Total_Fuel_consumption_Route2_tm = Scenario1_NonIce_Fuel_consumption_Route2_tm + Scenario1_NonIce_Aux_Fuel_consumption_Route2_tm + Scenario1_NonIce_Boil_Fuel_consumption_Route2_tm;
Scenario1_NonIce_Total_Fuel_consumption_Route2_tf = Scenario1_NonIce_Fuel_consumption_Route2_tf + Scenario1_NonIce_Aux_Fuel_consumption_Route2_tf + Scenario1_NonIce_Boil_Fuel_consumption_Route2_tf;

Scenario1_NonIce_Total_Fuel_consumption_Route3_t0 = Scenario1_NonIce_Fuel_consumption_Route3_t0 + Scenario1_NonIce_Aux_Fuel_consumption_Route3_t0 + Scenario1_NonIce_Boil_Fuel_consumption_Route3_t0;
Scenario1_NonIce_Total_Fuel_consumption_Route3_tm = Scenario1_NonIce_Fuel_consumption_Route3_tm + Scenario1_NonIce_Aux_Fuel_consumption_Route3_tm + Scenario1_NonIce_Boil_Fuel_consumption_Route3_tm;
Scenario1_NonIce_Total_Fuel_consumption_Route3_tf = Scenario1_NonIce_Fuel_consumption_Route3_tf + Scenario1_NonIce_Aux_Fuel_consumption_Route3_tf + Scenario1_NonIce_Boil_Fuel_consumption_Route3_tf;

%Total Suez values - combined fuel consumption is subtracted with these
%values to get the Arctic emissions and damages 
Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_t0 = Scenario2_Ice_Fuel_consumption_Suez_Route1_t0 + Scenario2_Ice_Aux_Fuel_consumption_Suez_Route1_t0 + Scenario2_Ice_Boil_Fuel_consumption_Suez_Route1_t0;
Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tm = Scenario2_Ice_Fuel_consumption_Suez_Route1_tm + Scenario2_Ice_Aux_Fuel_consumption_Suez_Route1_tm + Scenario2_Ice_Boil_Fuel_consumption_Suez_Route1_tm;
Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tf = Scenario2_Ice_Fuel_consumption_Suez_Route1_tf + Scenario2_Ice_Aux_Fuel_consumption_Suez_Route1_tf + Scenario2_Ice_Boil_Fuel_consumption_Suez_Route1_tf;

Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_t0 = Scenario2_Ice_Fuel_consumption_Suez_Route2_t0 + Scenario2_Ice_Aux_Fuel_consumption_Suez_Route2_t0 + Scenario2_Ice_Boil_Fuel_consumption_Suez_Route2_t0;
Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tm = Scenario2_Ice_Fuel_consumption_Suez_Route2_tm + Scenario2_Ice_Aux_Fuel_consumption_Suez_Route2_tm + Scenario2_Ice_Boil_Fuel_consumption_Suez_Route2_tm;
Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tf = Scenario2_Ice_Fuel_consumption_Suez_Route2_tf + Scenario2_Ice_Aux_Fuel_consumption_Suez_Route2_tf + Scenario2_Ice_Boil_Fuel_consumption_Suez_Route2_tf;

Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_t0 = Scenario2_Ice_Fuel_consumption_Suez_Route3_t0 + Scenario2_Ice_Aux_Fuel_consumption_Suez_Route3_t0 + Scenario2_Ice_Boil_Fuel_consumption_Suez_Route3_t0;
Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tm = Scenario2_Ice_Fuel_consumption_Suez_Route3_tm + Scenario2_Ice_Aux_Fuel_consumption_Suez_Route3_tm + Scenario2_Ice_Boil_Fuel_consumption_Suez_Route3_tm;
Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tf = Scenario2_Ice_Fuel_consumption_Suez_Route3_tf + Scenario2_Ice_Aux_Fuel_consumption_Suez_Route3_tf + Scenario2_Ice_Boil_Fuel_consumption_Suez_Route3_tf;

Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_t0 = Scenario2_NonIce_Fuel_consumption_Suez_Route1_t0 + Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route1_t0 + Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route1_t0;
Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tm = Scenario2_NonIce_Fuel_consumption_Suez_Route1_tm + Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route1_tm + Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route1_tm;
Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tf = Scenario2_NonIce_Fuel_consumption_Suez_Route1_tf + Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route1_tf + Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route1_tf;

Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_t0 = Scenario2_NonIce_Fuel_consumption_Suez_Route2_t0 + Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route2_t0 + Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route2_t0;
Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tm = Scenario2_NonIce_Fuel_consumption_Suez_Route2_tm + Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route2_tm + Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route2_tm;
Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tf = Scenario2_NonIce_Fuel_consumption_Suez_Route2_tf + Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route2_tf + Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route2_tf;

Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_t0 = Scenario2_NonIce_Fuel_consumption_Suez_Route3_t0 + Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route3_t0 + Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route3_t0;
Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tm = Scenario2_NonIce_Fuel_consumption_Suez_Route3_tm + Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route3_tm + Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route3_tm;
Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tf = Scenario2_NonIce_Fuel_consumption_Suez_Route3_tf + Scenario2_NonIce_Aux_Fuel_consumption_Suez_Route3_tf + Scenario2_NonIce_Boil_Fuel_consumption_Suez_Route3_tf;

Scenario2_Ice_Total_Fuel_consumption_Route1_t0 = Scenario2_Ice_Fuel_consumption_Route1_t0 + Scenario2_Ice_Aux_Fuel_consumption_Route1_t0 + Scenario2_Ice_Boil_Fuel_consumption_Route1_t0;
Scenario2_Ice_Total_Fuel_consumption_Route1_tm = Scenario2_Ice_Fuel_consumption_Route1_tm + Scenario2_Ice_Aux_Fuel_consumption_Route1_tm + Scenario2_Ice_Boil_Fuel_consumption_Route1_tm;
Scenario2_Ice_Total_Fuel_consumption_Route1_tf = Scenario2_Ice_Fuel_consumption_Route1_tf + Scenario2_Ice_Aux_Fuel_consumption_Route1_tf + Scenario2_Ice_Boil_Fuel_consumption_Route1_tf;

Scenario2_Ice_Total_Fuel_consumption_Route2_t0 = Scenario2_Ice_Fuel_consumption_Route2_t0 + Scenario2_Ice_Aux_Fuel_consumption_Route2_t0 + Scenario2_Ice_Boil_Fuel_consumption_Route2_t0;
Scenario2_Ice_Total_Fuel_consumption_Route2_tm = Scenario2_Ice_Fuel_consumption_Route2_tm + Scenario2_Ice_Aux_Fuel_consumption_Route2_tm + Scenario2_Ice_Boil_Fuel_consumption_Route2_tm;
Scenario2_Ice_Total_Fuel_consumption_Route2_tf = Scenario2_Ice_Fuel_consumption_Route2_tf + Scenario2_Ice_Aux_Fuel_consumption_Route2_tf + Scenario2_Ice_Boil_Fuel_consumption_Route2_tf;

Scenario2_Ice_Total_Fuel_consumption_Route3_t0 = Scenario2_Ice_Fuel_consumption_Route3_t0 + Scenario2_Ice_Aux_Fuel_consumption_Route3_t0 + Scenario2_Ice_Boil_Fuel_consumption_Route3_t0;
Scenario2_Ice_Total_Fuel_consumption_Route3_tm = Scenario2_Ice_Fuel_consumption_Route3_tm + Scenario2_Ice_Aux_Fuel_consumption_Route3_tm + Scenario2_Ice_Boil_Fuel_consumption_Route3_tm;
Scenario2_Ice_Total_Fuel_consumption_Route3_tf = Scenario2_Ice_Fuel_consumption_Route3_tf + Scenario2_Ice_Aux_Fuel_consumption_Route3_tf + Scenario2_Ice_Boil_Fuel_consumption_Route3_tf;

Scenario2_NonIce_Total_Fuel_consumption_Route1_t0 = Scenario2_NonIce_Fuel_consumption_Route1_t0 + Scenario2_NonIce_Aux_Fuel_consumption_Route1_t0 + Scenario2_NonIce_Boil_Fuel_consumption_Route1_t0;
Scenario2_NonIce_Total_Fuel_consumption_Route1_tm = Scenario2_NonIce_Fuel_consumption_Route1_tm + Scenario2_NonIce_Aux_Fuel_consumption_Route1_tm + Scenario2_NonIce_Boil_Fuel_consumption_Route1_tm;
Scenario2_NonIce_Total_Fuel_consumption_Route1_tf = Scenario2_NonIce_Fuel_consumption_Route1_tf + Scenario2_NonIce_Aux_Fuel_consumption_Route1_tf + Scenario2_NonIce_Boil_Fuel_consumption_Route1_tf;

Scenario2_NonIce_Total_Fuel_consumption_Route2_t0 = Scenario2_NonIce_Fuel_consumption_Route2_t0 + Scenario2_NonIce_Aux_Fuel_consumption_Route2_t0 + Scenario2_NonIce_Boil_Fuel_consumption_Route2_t0;
Scenario2_NonIce_Total_Fuel_consumption_Route2_tm = Scenario2_NonIce_Fuel_consumption_Route2_tm + Scenario2_NonIce_Aux_Fuel_consumption_Route2_tm + Scenario2_NonIce_Boil_Fuel_consumption_Route2_tm;
Scenario2_NonIce_Total_Fuel_consumption_Route2_tf = Scenario2_NonIce_Fuel_consumption_Route2_tf + Scenario2_NonIce_Aux_Fuel_consumption_Route2_tf + Scenario2_NonIce_Boil_Fuel_consumption_Route2_tf;

Scenario2_NonIce_Total_Fuel_consumption_Route3_t0 = Scenario2_NonIce_Fuel_consumption_Route3_t0 + Scenario2_NonIce_Aux_Fuel_consumption_Route3_t0 + Scenario2_NonIce_Boil_Fuel_consumption_Route3_t0;
Scenario2_NonIce_Total_Fuel_consumption_Route3_tm = Scenario2_NonIce_Fuel_consumption_Route3_tm + Scenario2_NonIce_Aux_Fuel_consumption_Route3_tm + Scenario2_NonIce_Boil_Fuel_consumption_Route3_tm;
Scenario2_NonIce_Total_Fuel_consumption_Route3_tf = Scenario2_NonIce_Fuel_consumption_Route3_tf + Scenario2_NonIce_Aux_Fuel_consumption_Route3_tf + Scenario2_NonIce_Boil_Fuel_consumption_Route3_tf;

%Finally, Arctic values
Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_t0 = Scenario2_Ice_Total_Fuel_consumption_Route1_t0 - Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_t0;
Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_tm = Scenario2_Ice_Total_Fuel_consumption_Route1_tm - Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tm;
Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_tf = Scenario2_Ice_Total_Fuel_consumption_Route1_tf - Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tf;

Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_t0 = Scenario2_Ice_Total_Fuel_consumption_Route2_t0 - Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_t0;
Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_tm = Scenario2_Ice_Total_Fuel_consumption_Route2_tm - Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tm;
Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_tf = Scenario2_Ice_Total_Fuel_consumption_Route2_tf - Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tf;

Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_t0 = Scenario2_Ice_Total_Fuel_consumption_Route3_t0 - Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_t0;
Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_tm = Scenario2_Ice_Total_Fuel_consumption_Route3_tm - Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tm;
Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_tf = Scenario2_Ice_Total_Fuel_consumption_Route3_tf - Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tf;

Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_t0 = Scenario2_NonIce_Total_Fuel_consumption_Route1_t0 - Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_t0;
Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_tm = Scenario2_NonIce_Total_Fuel_consumption_Route1_tm - Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tm;
Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_tf = Scenario2_NonIce_Total_Fuel_consumption_Route1_tf - Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tf;

Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_t0 = Scenario2_NonIce_Total_Fuel_consumption_Route2_t0 - Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_t0;
Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_tm = Scenario2_NonIce_Total_Fuel_consumption_Route2_tm - Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tm;
Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_tf = Scenario2_NonIce_Total_Fuel_consumption_Route2_tf - Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tf;

Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_t0 = Scenario2_NonIce_Total_Fuel_consumption_Route3_t0 - Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_t0;
Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_tm = Scenario2_NonIce_Total_Fuel_consumption_Route3_tm - Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tm;
Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_tf = Scenario2_NonIce_Total_Fuel_consumption_Route3_tf - Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tf;

%Scenario 3
Scenario3_Ice_Total_Fuel_consumption_t0 = Scenario3_Ice_Fuel_consumption_t0 + Scenario3_Ice_Aux_Fuel_consumption_t0 + Scenario3_Ice_Boil_Fuel_consumption_t0;
Scenario3_Ice_Total_Fuel_consumption_tm = Scenario3_Ice_Fuel_consumption_tm + Scenario3_Ice_Aux_Fuel_consumption_tm + Scenario3_Ice_Boil_Fuel_consumption_tm;
Scenario3_Ice_Total_Fuel_consumption_tf = Scenario3_Ice_Fuel_consumption_tf + Scenario3_Ice_Aux_Fuel_consumption_tf + Scenario3_Ice_Boil_Fuel_consumption_tf;

Scenario3_NonIce_Total_Fuel_consumption_t0 = Scenario3_NonIce_Fuel_consumption_t0 + Scenario3_NonIce_Aux_Fuel_consumption_t0 + Scenario3_NonIce_Boil_Fuel_consumption_t0;
Scenario3_NonIce_Total_Fuel_consumption_tm = Scenario3_NonIce_Fuel_consumption_tm + Scenario3_NonIce_Aux_Fuel_consumption_tm + Scenario3_NonIce_Boil_Fuel_consumption_tm;
Scenario3_NonIce_Total_Fuel_consumption_tf = Scenario3_NonIce_Fuel_consumption_tf + Scenario3_NonIce_Aux_Fuel_consumption_tf + Scenario3_NonIce_Boil_Fuel_consumption_tf;

%Route 1 - Ice
SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0 = zeros(length(EFs(:,1)).*length(Scenario1_Ice_Total_Fuel_consumption_Route1_t0(:,1)),length(Scenario1_Ice_Total_Fuel_consumption_Route1_t0(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route1_t0(:,1))
    
    SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_Ice_Total_Fuel_consumption_Route1_t0(i,:);
    
end

SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm = zeros(length(EFs(:,1)).*length(Scenario1_Ice_Total_Fuel_consumption_Route1_tm(:,1)),length(Scenario1_Ice_Total_Fuel_consumption_Route1_tm(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route1_tm(:,1))
    
    SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_Ice_Total_Fuel_consumption_Route1_tm(i,:);
    
end

SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf = zeros(length(EFs(:,1)).*length(Scenario1_Ice_Total_Fuel_consumption_Route1_tf(:,1)),length(Scenario1_Ice_Total_Fuel_consumption_Route1_tf(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route1_tf(:,1))
    
    SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_Ice_Total_Fuel_consumption_Route1_tf(i,:);
    
end

SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0 = zeros(length(EFs(:,1)).*length(Scenario1_Ice_Total_Fuel_consumption_Route2_t0(:,1)),length(Scenario1_Ice_Total_Fuel_consumption_Route2_t0(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route2_t0(:,1))
    
    SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_Ice_Total_Fuel_consumption_Route2_t0(i,:);
    
end

SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm = zeros(length(EFs(:,1)).*length(Scenario1_Ice_Total_Fuel_consumption_Route2_tm(:,1)),length(Scenario1_Ice_Total_Fuel_consumption_Route2_tm(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route2_tm(:,1))
    
    SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_Ice_Total_Fuel_consumption_Route2_tm(i,:);
    
end

SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf = zeros(length(EFs(:,1)).*length(Scenario1_Ice_Total_Fuel_consumption_Route2_tf(:,1)),length(Scenario1_Ice_Total_Fuel_consumption_Route2_tf(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route2_tf(:,1))
    
    SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_Ice_Total_Fuel_consumption_Route2_tf(i,:);
    
end

SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0 = zeros(length(EFs(:,1)).*length(Scenario1_Ice_Total_Fuel_consumption_Route3_t0(:,1)),length(Scenario1_Ice_Total_Fuel_consumption_Route3_t0(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route3_t0(:,1))
    
    SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_Ice_Total_Fuel_consumption_Route3_t0(i,:);
    
end

SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm = zeros(length(EFs(:,1)).*length(Scenario1_Ice_Total_Fuel_consumption_Route3_tm(:,1)),length(Scenario1_Ice_Total_Fuel_consumption_Route3_tm(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route3_tm(:,1))
    
    SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_Ice_Total_Fuel_consumption_Route3_tm(i,:);
    
end

SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf = zeros(length(EFs(:,1)).*length(Scenario1_Ice_Total_Fuel_consumption_Route3_tf(:,1)),length(Scenario1_Ice_Total_Fuel_consumption_Route3_tf(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route3_tf(:,1))
    
    SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_Ice_Total_Fuel_consumption_Route3_tf(i,:);
    
end

%NonIce
SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0 = zeros(length(EFs(:,1)).*length(Scenario1_NonIce_Total_Fuel_consumption_Route1_t0(:,1)),length(Scenario1_NonIce_Total_Fuel_consumption_Route1_t0(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route1_t0(:,1))
    
    SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_NonIce_Total_Fuel_consumption_Route1_t0(i,:);
    
end

SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm = zeros(length(EFs(:,1)).*length(Scenario1_NonIce_Total_Fuel_consumption_Route1_tm(:,1)),length(Scenario1_NonIce_Total_Fuel_consumption_Route1_tm(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route1_tm(:,1))
    
    SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_NonIce_Total_Fuel_consumption_Route1_tm(i,:);
    
end

SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf = zeros(length(EFs(:,1)).*length(Scenario1_NonIce_Total_Fuel_consumption_Route1_tf(:,1)),length(Scenario1_NonIce_Total_Fuel_consumption_Route1_tf(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route1_tf(:,1))
    
    SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_NonIce_Total_Fuel_consumption_Route1_tf(i,:);
    
end

SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0 = zeros(length(EFs(:,1)).*length(Scenario1_NonIce_Total_Fuel_consumption_Route2_t0(:,1)),length(Scenario1_NonIce_Total_Fuel_consumption_Route2_t0(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route2_t0(:,1))
    
    SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_NonIce_Total_Fuel_consumption_Route2_t0(i,:);
    
end

SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm = zeros(length(EFs(:,1)).*length(Scenario1_NonIce_Total_Fuel_consumption_Route2_tm(:,1)),length(Scenario1_NonIce_Total_Fuel_consumption_Route2_tm(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route2_tm(:,1))
    
    SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_NonIce_Total_Fuel_consumption_Route2_tm(i,:);
    
end

SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf = zeros(length(EFs(:,1)).*length(Scenario1_NonIce_Total_Fuel_consumption_Route2_tf(:,1)),length(Scenario1_NonIce_Total_Fuel_consumption_Route2_tf(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route2_tf(:,1))
    
    SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_NonIce_Total_Fuel_consumption_Route2_tf(i,:);
    
end

SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0 = zeros(length(EFs(:,1)).*length(Scenario1_NonIce_Total_Fuel_consumption_Route3_t0(:,1)),length(Scenario1_NonIce_Total_Fuel_consumption_Route3_t0(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route3_t0(:,1))
    
    SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_NonIce_Total_Fuel_consumption_Route3_t0(i,:);
    
end

SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm = zeros(length(EFs(:,1)).*length(Scenario1_NonIce_Total_Fuel_consumption_Route3_tm(:,1)),length(Scenario1_NonIce_Total_Fuel_consumption_Route3_tm(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route3_tm(:,1))
    
    SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_NonIce_Total_Fuel_consumption_Route3_tm(i,:);
    
end

SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf = zeros(length(EFs(:,1)).*length(Scenario1_NonIce_Total_Fuel_consumption_Route3_tf(:,1)),length(Scenario1_NonIce_Total_Fuel_consumption_Route3_tf(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route3_tf(:,1))
    
    SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario1_NonIce_Total_Fuel_consumption_Route3_tf(i,:);
    
end


%Scenario 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Route 1 - Ice - Suez emissions
SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_t0 = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_t0(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_t0(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_t0(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tm = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tm(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tm(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tm(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tf = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tf(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tf(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Suez_Route1_tf(i,:);
    
end

%Route 2
SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_t0 = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_t0(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_t0(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_t0(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tm = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tm(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tm(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tm(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tf = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tf(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tf(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Suez_Route2_tf(i,:);
    
end

%Route 3
SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_t0 = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_t0(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_t0(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_t0(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tm = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tm(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tm(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tm(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tf = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tf(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tf(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Suez_Route3_tf(i,:);
    
end

%Non ice 
SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_t0 = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_t0(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_t0(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_t0(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tm = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tm(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tm(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tm(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tf = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tf(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tf(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Suez_Route1_tf(i,:);
    
end

%Route 2
SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_t0 = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_t0(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_t0(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_t0(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tm = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tm(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tm(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tm(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tf = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tf(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tf(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Suez_Route2_tf(i,:);
    
end

%Route 3
SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_t0 = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_t0(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_t0(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_t0(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tm = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tm(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tm(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tm(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tf = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tf(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tf(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Suez_Route3_tf(i,:);
    
end

%Arctic emissions
SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_t0 = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_t0(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_t0(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_t0(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tm = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_tm(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_tm(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_tm(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tf = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_tf(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_tf(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Arctic_Route1_tf(i,:);
    
end

%Route 2
SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_t0 = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_t0(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_t0(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_t0(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tm = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_tm(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_tm(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_tm(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tf = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_tf(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_tf(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Arctic_Route2_tf(i,:);
    
end

%Route 3
SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_t0 = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_t0(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_t0(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_t0(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tm = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_tm(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_tm(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_tm(i,:);
    
end

SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tf = zeros(length(EFs(:,1)).*length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_tf(:,1)),length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_tf(:,1))
    
    SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_Ice_Total_Fuel_consumption_Arctic_Route3_tf(i,:);
    
end

%Non ice 
SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_t0 = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_t0(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_t0(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_t0(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tm = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_tm(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_tm(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_tm(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tf = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_tf(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_tf(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route1_tf(i,:);
    
end

%Route 2
SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_t0 = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_t0(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_t0(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_t0(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tm = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_tm(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_tm(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_tm(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tf = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_tf(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_tf(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route2_tf(i,:);
    
end

%Route 3
SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_t0 = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_t0(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_t0(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_t0(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tm = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_tm(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_tm(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_tm(i,:);
    
end

SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tf = zeros(length(EFs(:,1)).*length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_tf(:,1)),length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_tf(:,1))
    
    SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario2_NonIce_Total_Fuel_consumption_Arctic_Route3_tf(i,:);
    
end

%Scenario 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE3_Global_Ice_Emission_Inventory_matrix_t0 = zeros(length(EFs(:,1)).*length(Scenario3_Ice_Total_Fuel_consumption_t0(:,1)),length(Scenario3_Ice_Total_Fuel_consumption_t0(1,:)));
for i = 1:1:length(Scenario3_Ice_Fuel_consumption_t0(:,1))
    
    SCE3_Global_Ice_Emission_Inventory_matrix_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario3_Ice_Total_Fuel_consumption_t0(i,:);
    
end

SCE3_Global_Ice_Emission_Inventory_matrix_tm = zeros(length(EFs(:,1)).*length(Scenario3_Ice_Total_Fuel_consumption_tm(:,1)),length(Scenario3_Ice_Total_Fuel_consumption_tm(1,:)));
for i = 1:1:length(Scenario3_Ice_Fuel_consumption_tm(:,1))
    
    SCE3_Global_Ice_Emission_Inventory_matrix_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario3_Ice_Total_Fuel_consumption_tm(i,:);
    
end

SCE3_Global_Ice_Emission_Inventory_matrix_tf = zeros(length(EFs(:,1)).*length(Scenario3_Ice_Total_Fuel_consumption_tf(:,1)),length(Scenario3_Ice_Total_Fuel_consumption_tf(1,:)));
for i = 1:1:length(Scenario3_Ice_Fuel_consumption_tf(:,1))
    
    SCE3_Global_Ice_Emission_Inventory_matrix_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario3_Ice_Total_Fuel_consumption_tf(i,:);
    
end

SCE3_Global_NonIce_Emission_Inventory_matrix_t0 = zeros(length(EFs(:,1)).*length(Scenario3_NonIce_Total_Fuel_consumption_t0(:,1)),length(Scenario3_NonIce_Total_Fuel_consumption_t0(1,:)));
for i = 1:1:length(Scenario3_NonIce_Fuel_consumption_t0(:,1))
    
    SCE3_Global_NonIce_Emission_Inventory_matrix_t0(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario3_NonIce_Total_Fuel_consumption_t0(i,:);
    
end

SCE3_Global_NonIce_Emission_Inventory_matrix_tm = zeros(length(EFs(:,1)).*length(Scenario3_NonIce_Total_Fuel_consumption_tm(:,1)),length(Scenario3_NonIce_Total_Fuel_consumption_tm(1,:)));
for i = 1:1:length(Scenario3_NonIce_Fuel_consumption_tm(:,1))
    
    SCE3_Global_NonIce_Emission_Inventory_matrix_tm(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario3_NonIce_Total_Fuel_consumption_tm(i,:);
    
end

SCE3_Global_NonIce_Emission_Inventory_matrix_tf = zeros(length(EFs(:,1)).*length(Scenario3_NonIce_Total_Fuel_consumption_tf(:,1)),length(Scenario3_NonIce_Total_Fuel_consumption_tf(1,:)));
for i = 1:1:length(Scenario3_NonIce_Fuel_consumption_tf(:,1))
    
    SCE3_Global_NonIce_Emission_Inventory_matrix_tf(1 + length(EFs(:,1)).*(i-1): length(EFs(:,1)).*i,:) =EFs(:,:).*Scenario3_NonIce_Total_Fuel_consumption_tf(i,:);
    
end

%Scenario 2 - total emissions
SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0 = SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_t0 + SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_t0;
SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm = SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tm + SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tm;
SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf = SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tf + SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tf;

SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0 = SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_t0 + SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_t0;
SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm = SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tm + SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tm;
SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf = SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tf + SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tf;

SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0 = SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_t0 + SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_t0;
SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm = SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tm + SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tm;
SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf = SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tf + SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tf;

SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0 = SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_t0 + SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_t0;
SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm = SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tm + SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tm;
SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf = SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tf + SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tf;

SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0 = SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_t0 + SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_t0;
SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm = SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tm + SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tm;
SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf = SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tf + SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tf;

SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0 = SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_t0 + SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_t0;
SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm = SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tm + SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tm;
SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf = SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tf + SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tf;

%% Carbon tax

SCE1_Global_Ice_CO2eq_matrix_Route1_t0 = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_Ice_CO2eq_matrix_Route1_t0(i,:) = sum(SCE1_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_CO2eq_matrix_Route1_t0 = SCE1_Global_Ice_CO2eq_matrix_Route1_t0(1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),:);

SCE1_Global_Ice_CO2eq_matrix_Route1_tm = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_Ice_CO2eq_matrix_Route1_tm(i,:) = sum(SCE1_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_CO2eq_matrix_Route1_tm = SCE1_Global_Ice_CO2eq_matrix_Route1_tm(1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_Ice_CO2eq_matrix_Route1_tf = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_Ice_CO2eq_matrix_Route1_tf(i,:) = sum(SCE1_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_CO2eq_matrix_Route1_tf = SCE1_Global_Ice_CO2eq_matrix_Route1_tf(1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),:);

%Route 2

SCE1_Global_Ice_CO2eq_matrix_Route2_t0 = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_Ice_CO2eq_matrix_Route2_t0(i,:) = sum(SCE1_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_CO2eq_matrix_Route2_t0 = SCE1_Global_Ice_CO2eq_matrix_Route2_t0(1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),:);

SCE1_Global_Ice_CO2eq_matrix_Route2_tm = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_Ice_CO2eq_matrix_Route2_tm(i,:) = sum(SCE1_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_CO2eq_matrix_Route2_tm = SCE1_Global_Ice_CO2eq_matrix_Route2_tm(1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_Ice_CO2eq_matrix_Route2_tf = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_Ice_CO2eq_matrix_Route2_tf(i,:) = sum(SCE1_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_CO2eq_matrix_Route2_tf = SCE1_Global_Ice_CO2eq_matrix_Route2_tf(1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),:);

%Route 3

SCE1_Global_Ice_CO2eq_matrix_Route3_t0 = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_Ice_CO2eq_matrix_Route3_t0(i,:) = sum(SCE1_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_CO2eq_matrix_Route3_t0 = SCE1_Global_Ice_CO2eq_matrix_Route3_t0(1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),:);

SCE1_Global_Ice_CO2eq_matrix_Route3_tm = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_Ice_CO2eq_matrix_Route3_tm(i,:) = sum(SCE1_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_CO2eq_matrix_Route3_tm = SCE1_Global_Ice_CO2eq_matrix_Route3_tm(1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_Ice_CO2eq_matrix_Route3_tf = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_Ice_CO2eq_matrix_Route3_tf(i,:) = sum(SCE1_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_CO2eq_matrix_Route3_tf = SCE1_Global_Ice_CO2eq_matrix_Route3_tf(1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),:);

%Non Ice
SCE1_Global_NonIce_CO2eq_matrix_Route1_t0 = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(i,:) = sum(SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_CO2eq_matrix_Route1_t0 = SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),:);

SCE1_Global_NonIce_CO2eq_matrix_Route1_tm = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(i,:) = sum(SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_CO2eq_matrix_Route1_tm = SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_NonIce_CO2eq_matrix_Route1_tf = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(i,:) = sum(SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_CO2eq_matrix_Route1_tf = SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Route 2

SCE1_Global_NonIce_CO2eq_matrix_Route2_t0 = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(i,:) = sum(SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_CO2eq_matrix_Route2_t0 = SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),:);

SCE1_Global_NonIce_CO2eq_matrix_Route2_tm = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(i,:) = sum(SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_CO2eq_matrix_Route2_tm = SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_NonIce_CO2eq_matrix_Route2_tf = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(i,:) = sum(SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_CO2eq_matrix_Route2_tf = SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Route 3

SCE1_Global_NonIce_CO2eq_matrix_Route3_t0 = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(i,:) = sum(SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_CO2eq_matrix_Route3_t0 = SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),:);

SCE1_Global_NonIce_CO2eq_matrix_Route3_tm = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(i,:) = sum(SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_CO2eq_matrix_Route3_tm = SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_NonIce_CO2eq_matrix_Route3_tf = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(i,:) = sum(SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_CO2eq_matrix_Route3_tf = SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Scenario 2

SCE2_Global_Ice_CO2eq_matrix_Route1_t0 = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_Ice_CO2eq_matrix_Route1_t0(i,:) = sum(SCE2_Global_Ice_CO2eq_matrix_Route1_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_CO2eq_matrix_Route1_t0 = SCE2_Global_Ice_CO2eq_matrix_Route1_t0(1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),:);

SCE2_Global_Ice_CO2eq_matrix_Route1_tm = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_Ice_CO2eq_matrix_Route1_tm(i,:) = sum(SCE2_Global_Ice_CO2eq_matrix_Route1_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_CO2eq_matrix_Route1_tm = SCE2_Global_Ice_CO2eq_matrix_Route1_tm(1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_Ice_CO2eq_matrix_Route1_tf = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_Ice_CO2eq_matrix_Route1_tf(i,:) = sum(SCE2_Global_Ice_CO2eq_matrix_Route1_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_CO2eq_matrix_Route1_tf = SCE2_Global_Ice_CO2eq_matrix_Route1_tf(1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),:);

%Route 2

SCE2_Global_Ice_CO2eq_matrix_Route2_t0 = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_Ice_CO2eq_matrix_Route2_t0(i,:) = sum(SCE2_Global_Ice_CO2eq_matrix_Route2_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_CO2eq_matrix_Route2_t0 = SCE2_Global_Ice_CO2eq_matrix_Route2_t0(1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),:);

SCE2_Global_Ice_CO2eq_matrix_Route2_tm = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_Ice_CO2eq_matrix_Route2_tm(i,:) = sum(SCE2_Global_Ice_CO2eq_matrix_Route2_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_CO2eq_matrix_Route2_tm = SCE2_Global_Ice_CO2eq_matrix_Route2_tm(1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_Ice_CO2eq_matrix_Route2_tf = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_Ice_CO2eq_matrix_Route2_tf(i,:) = sum(SCE2_Global_Ice_CO2eq_matrix_Route2_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_CO2eq_matrix_Route2_tf = SCE2_Global_Ice_CO2eq_matrix_Route2_tf(1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),:);

%Route 3

SCE2_Global_Ice_CO2eq_matrix_Route3_t0 = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_Ice_CO2eq_matrix_Route3_t0(i,:) = sum(SCE2_Global_Ice_CO2eq_matrix_Route3_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_CO2eq_matrix_Route3_t0 = SCE2_Global_Ice_CO2eq_matrix_Route3_t0(1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),:);

SCE2_Global_Ice_CO2eq_matrix_Route3_tm = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_Ice_CO2eq_matrix_Route3_tm(i,:) = sum(SCE2_Global_Ice_CO2eq_matrix_Route3_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_CO2eq_matrix_Route3_tm = SCE2_Global_Ice_CO2eq_matrix_Route3_tm(1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_Ice_CO2eq_matrix_Route3_tf = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_Ice_CO2eq_matrix_Route3_tf(i,:) = sum(SCE2_Global_Ice_CO2eq_matrix_Route3_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_CO2eq_matrix_Route3_tf = SCE2_Global_Ice_CO2eq_matrix_Route3_tf(1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),:);

%Non Ice
SCE2_Global_NonIce_CO2eq_matrix_Route1_t0 = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(i,:) = sum(SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_CO2eq_matrix_Route1_t0 = SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),:);

SCE2_Global_NonIce_CO2eq_matrix_Route1_tm = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(i,:) = sum(SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_CO2eq_matrix_Route1_tm = SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_NonIce_CO2eq_matrix_Route1_tf = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(i,:) = sum(SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_CO2eq_matrix_Route1_tf = SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Route 2

SCE2_Global_NonIce_CO2eq_matrix_Route2_t0 = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(i,:) = sum(SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_CO2eq_matrix_Route2_t0 = SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),:);

SCE2_Global_NonIce_CO2eq_matrix_Route2_tm = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(i,:) = sum(SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_CO2eq_matrix_Route2_tm = SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_NonIce_CO2eq_matrix_Route2_tf = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(i,:) = sum(SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_CO2eq_matrix_Route2_tf = SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Route 3

SCE2_Global_NonIce_CO2eq_matrix_Route3_t0 = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(i,:) = sum(SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_CO2eq_matrix_Route3_t0 = SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),:);

SCE2_Global_NonIce_CO2eq_matrix_Route3_tm = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(i,:) = sum(SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_CO2eq_matrix_Route3_tm = SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_NonIce_CO2eq_matrix_Route3_tf = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(i,:) = sum(SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_CO2eq_matrix_Route3_tf = SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Scenario 3

SCE3_Global_Ice_CO2eq_matrix_t0 = zeros(8.*length(SCE3_Ice_Total_Fuel_costs_t0(:,1)),length(SCE3_Ice_Total_Fuel_costs_t0(1,:)));
for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE3_Global_Ice_CO2eq_matrix_t0(8.*(i-1) + 1,:) = SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 1,:);
    SCE3_Global_Ice_CO2eq_matrix_t0(8.*(i-1) + 2,:) = SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 2,:);
    SCE3_Global_Ice_CO2eq_matrix_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 3,:);
    SCE3_Global_Ice_CO2eq_matrix_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 4,:);
    SCE3_Global_Ice_CO2eq_matrix_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 5,:);
    SCE3_Global_Ice_CO2eq_matrix_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 6,:);
    SCE3_Global_Ice_CO2eq_matrix_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 13,:);
    SCE3_Global_Ice_CO2eq_matrix_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE3_Global_Ice_CO2eq_matrix_t0(i,:) = sum(SCE3_Global_Ice_CO2eq_matrix_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE3_Global_Ice_CO2eq_matrix_t0 = SCE3_Global_Ice_CO2eq_matrix_t0(1:length(SCE3_Ice_Total_Fuel_costs_t0(:,1)),:);

SCE3_Global_Ice_CO2eq_matrix_tm = zeros(8.*length(SCE3_Ice_Total_Fuel_costs_tm(:,1)),length(SCE3_Ice_Total_Fuel_costs_tm(1,:)));
for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE3_Global_Ice_CO2eq_matrix_tm(8.*(i-1) + 1,:) = SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 1,:);
    SCE3_Global_Ice_CO2eq_matrix_tm(8.*(i-1) + 2,:) = SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 2,:);
    SCE3_Global_Ice_CO2eq_matrix_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 3,:);
    SCE3_Global_Ice_CO2eq_matrix_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 4,:);
    SCE3_Global_Ice_CO2eq_matrix_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 5,:);
    SCE3_Global_Ice_CO2eq_matrix_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 6,:);
    SCE3_Global_Ice_CO2eq_matrix_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 13,:);
    SCE3_Global_Ice_CO2eq_matrix_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE3_Global_Ice_CO2eq_matrix_tm(i,:) = sum(SCE3_Global_Ice_CO2eq_matrix_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE3_Global_Ice_CO2eq_matrix_tm = SCE3_Global_Ice_CO2eq_matrix_tm(1:length(SCE3_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE3_Global_Ice_CO2eq_matrix_tf = zeros(8.*length(SCE3_Ice_Total_Fuel_costs_tf(:,1)),length(SCE3_Ice_Total_Fuel_costs_tf(1,:)));
for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE3_Global_Ice_CO2eq_matrix_tf(8.*(i-1) + 1,:) = SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 1,:);
    SCE3_Global_Ice_CO2eq_matrix_tf(8.*(i-1) + 2,:) = SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 2,:);
    SCE3_Global_Ice_CO2eq_matrix_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 3,:);
    SCE3_Global_Ice_CO2eq_matrix_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 4,:);
    SCE3_Global_Ice_CO2eq_matrix_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 5,:);
    SCE3_Global_Ice_CO2eq_matrix_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 6,:);
    SCE3_Global_Ice_CO2eq_matrix_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 13,:);
    SCE3_Global_Ice_CO2eq_matrix_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE3_Global_Ice_CO2eq_matrix_tf(i,:) = sum(SCE3_Global_Ice_CO2eq_matrix_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE3_Global_Ice_CO2eq_matrix_tf = SCE3_Global_Ice_CO2eq_matrix_tf(1:length(SCE3_Ice_Total_Fuel_costs_tf(:,1)),:);

%Non Ice
SCE3_Global_NonIce_CO2eq_matrix_t0 = zeros(8.*length(SCE3_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE3_NonIce_Total_Fuel_costs_t0(1,:)));
for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE3_Global_NonIce_CO2eq_matrix_t0(8.*(i-1) + 1,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 1,:);
    SCE3_Global_NonIce_CO2eq_matrix_t0(8.*(i-1) + 2,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 2,:);
    SCE3_Global_NonIce_CO2eq_matrix_t0(8.*(i-1) + 3,:) = GWP100_CH4.*SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 3,:);
    SCE3_Global_NonIce_CO2eq_matrix_t0(8.*(i-1) + 4,:) = GWP100_CH4.*SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 4,:);
    SCE3_Global_NonIce_CO2eq_matrix_t0(8.*(i-1) + 5,:) = GWP100_N2O.*SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 5,:);
    SCE3_Global_NonIce_CO2eq_matrix_t0(8.*(i-1) + 6,:) = GWP100_N2O.*SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 6,:);
    SCE3_Global_NonIce_CO2eq_matrix_t0(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 13,:);
    SCE3_Global_NonIce_CO2eq_matrix_t0(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE3_Global_NonIce_CO2eq_matrix_t0(i,:) = sum(SCE3_Global_NonIce_CO2eq_matrix_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE3_Global_NonIce_CO2eq_matrix_t0 = SCE3_Global_NonIce_CO2eq_matrix_t0(1:length(SCE3_NonIce_Total_Fuel_costs_t0(:,1)),:);

SCE3_Global_NonIce_CO2eq_matrix_tm = zeros(8.*length(SCE3_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE3_NonIce_Total_Fuel_costs_tm(1,:)));
for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE3_Global_NonIce_CO2eq_matrix_tm(8.*(i-1) + 1,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 1,:);
    SCE3_Global_NonIce_CO2eq_matrix_tm(8.*(i-1) + 2,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 2,:);
    SCE3_Global_NonIce_CO2eq_matrix_tm(8.*(i-1) + 3,:) = GWP100_CH4.*SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 3,:);
    SCE3_Global_NonIce_CO2eq_matrix_tm(8.*(i-1) + 4,:) = GWP100_CH4.*SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 4,:);
    SCE3_Global_NonIce_CO2eq_matrix_tm(8.*(i-1) + 5,:) = GWP100_N2O.*SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 5,:);
    SCE3_Global_NonIce_CO2eq_matrix_tm(8.*(i-1) + 6,:) = GWP100_N2O.*SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 6,:);
    SCE3_Global_NonIce_CO2eq_matrix_tm(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 13,:);
    SCE3_Global_NonIce_CO2eq_matrix_tm(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE3_Global_NonIce_CO2eq_matrix_tm(i,:) = sum(SCE3_Global_NonIce_CO2eq_matrix_tm(8.*(i-1) + 1:8.*i,:));
    
end
SCE3_Global_NonIce_CO2eq_matrix_tm = SCE3_Global_NonIce_CO2eq_matrix_tm(1:length(SCE3_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE3_Global_NonIce_CO2eq_matrix_tf = zeros(8.*length(SCE3_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE3_NonIce_Total_Fuel_costs_tf(1,:)));
for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE3_Global_NonIce_CO2eq_matrix_tf(8.*(i-1) + 1,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 1,:);
    SCE3_Global_NonIce_CO2eq_matrix_tf(8.*(i-1) + 2,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 2,:);
    SCE3_Global_NonIce_CO2eq_matrix_tf(8.*(i-1) + 3,:) = GWP100_CH4.*SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 3,:);
    SCE3_Global_NonIce_CO2eq_matrix_tf(8.*(i-1) + 4,:) = GWP100_CH4.*SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 4,:);
    SCE3_Global_NonIce_CO2eq_matrix_tf(8.*(i-1) + 5,:) = GWP100_N2O.*SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 5,:);
    SCE3_Global_NonIce_CO2eq_matrix_tf(8.*(i-1) + 6,:) = GWP100_N2O.*SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 6,:);
    SCE3_Global_NonIce_CO2eq_matrix_tf(8.*(i-1) + 7,:) = GWP100_BCArctic.*SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 13,:);
    SCE3_Global_NonIce_CO2eq_matrix_tf(8.*(i-1) + 8,:) = GWP100_BCSuez.*SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 14,:);
    
end

for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE3_Global_NonIce_CO2eq_matrix_tf(i,:) = sum(SCE3_Global_NonIce_CO2eq_matrix_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE3_Global_NonIce_CO2eq_matrix_tf = SCE3_Global_NonIce_CO2eq_matrix_tf(1:length(SCE3_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Align the matrices together 

SCE1_Global_Ice_CO2eq_matrix_t0 = zeros(length(SCE1_Global_Ice_CO2eq_matrix_Route1_t0(:,1)),3.*length(SCE1_Global_Ice_CO2eq_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE1_Global_Ice_CO2eq_matrix_Route1_t0(1,:))

    SCE1_Global_Ice_CO2eq_matrix_t0(:,(3.*(i-1))+1) = SCE1_Global_Ice_CO2eq_matrix_Route1_t0(:,i);
    SCE1_Global_Ice_CO2eq_matrix_t0(:,(3.*(i-1))+2) = SCE1_Global_Ice_CO2eq_matrix_Route2_t0(:,i);
    SCE1_Global_Ice_CO2eq_matrix_t0(:,(3.*(i-1))+3) = SCE1_Global_Ice_CO2eq_matrix_Route3_t0(:,i);
    
end

SCE1_Global_Ice_CO2eq_matrix_tm = zeros(length(SCE1_Global_Ice_CO2eq_matrix_Route1_tm(:,1)),3.*length(SCE1_Global_Ice_CO2eq_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE1_Global_Ice_CO2eq_matrix_Route1_tm(1,:))

    SCE1_Global_Ice_CO2eq_matrix_tm(:,(3.*(i-1))+1) = SCE1_Global_Ice_CO2eq_matrix_Route1_tm(:,i);
    SCE1_Global_Ice_CO2eq_matrix_tm(:,(3.*(i-1))+2) = SCE1_Global_Ice_CO2eq_matrix_Route2_tm(:,i);
    SCE1_Global_Ice_CO2eq_matrix_tm(:,(3.*(i-1))+3) = SCE1_Global_Ice_CO2eq_matrix_Route3_tm(:,i);
    
end

SCE1_Global_Ice_CO2eq_matrix_tf = zeros(length(SCE1_Global_Ice_CO2eq_matrix_Route1_tf(:,1)),3.*length(SCE1_Global_Ice_CO2eq_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE1_Global_Ice_CO2eq_matrix_Route1_tf(1,:))

    SCE1_Global_Ice_CO2eq_matrix_tf(:,(3.*(i-1))+1) = SCE1_Global_Ice_CO2eq_matrix_Route1_tf(:,i);
    SCE1_Global_Ice_CO2eq_matrix_tf(:,(3.*(i-1))+2) = SCE1_Global_Ice_CO2eq_matrix_Route2_tf(:,i);
    SCE1_Global_Ice_CO2eq_matrix_tf(:,(3.*(i-1))+3) = SCE1_Global_Ice_CO2eq_matrix_Route3_tf(:,i);
    
end

%Non ice
SCE1_Global_NonIce_CO2eq_matrix_t0 = zeros(length(SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(:,1)),3.*length(SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(1,:))

    SCE1_Global_NonIce_CO2eq_matrix_t0(:,(3.*(i-1))+1) = SCE1_Global_NonIce_CO2eq_matrix_Route1_t0(:,i);
    SCE1_Global_NonIce_CO2eq_matrix_t0(:,(3.*(i-1))+2) = SCE1_Global_NonIce_CO2eq_matrix_Route2_t0(:,i);
    SCE1_Global_NonIce_CO2eq_matrix_t0(:,(3.*(i-1))+3) = SCE1_Global_NonIce_CO2eq_matrix_Route3_t0(:,i);
    
end

SCE1_Global_NonIce_CO2eq_matrix_tm = zeros(length(SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(:,1)),3.*length(SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(1,:))

    SCE1_Global_NonIce_CO2eq_matrix_tm(:,(3.*(i-1))+1) = SCE1_Global_NonIce_CO2eq_matrix_Route1_tm(:,i);
    SCE1_Global_NonIce_CO2eq_matrix_tm(:,(3.*(i-1))+2) = SCE1_Global_NonIce_CO2eq_matrix_Route2_tm(:,i);
    SCE1_Global_NonIce_CO2eq_matrix_tm(:,(3.*(i-1))+3) = SCE1_Global_NonIce_CO2eq_matrix_Route3_tm(:,i);
    
end

SCE1_Global_NonIce_CO2eq_matrix_tf = zeros(length(SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(:,1)),3.*length(SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(1,:))

    SCE1_Global_NonIce_CO2eq_matrix_tf(:,(3.*(i-1))+1) = SCE1_Global_NonIce_CO2eq_matrix_Route1_tf(:,i);
    SCE1_Global_NonIce_CO2eq_matrix_tf(:,(3.*(i-1))+2) = SCE1_Global_NonIce_CO2eq_matrix_Route2_tf(:,i);
    SCE1_Global_NonIce_CO2eq_matrix_tf(:,(3.*(i-1))+3) = SCE1_Global_NonIce_CO2eq_matrix_Route3_tf(:,i);
    
end

%Scenario 2
SCE2_Global_Ice_CO2eq_matrix_t0 = zeros(length(SCE2_Global_Ice_CO2eq_matrix_Route1_t0(:,1)),3.*length(SCE2_Global_Ice_CO2eq_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE2_Global_Ice_CO2eq_matrix_Route1_t0(1,:))

    SCE2_Global_Ice_CO2eq_matrix_t0(:,(3.*(i-1))+1) = SCE2_Global_Ice_CO2eq_matrix_Route1_t0(:,i);
    SCE2_Global_Ice_CO2eq_matrix_t0(:,(3.*(i-1))+2) = SCE2_Global_Ice_CO2eq_matrix_Route2_t0(:,i);
    SCE2_Global_Ice_CO2eq_matrix_t0(:,(3.*(i-1))+3) = SCE2_Global_Ice_CO2eq_matrix_Route3_t0(:,i);
    
end

SCE2_Global_Ice_CO2eq_matrix_tm = zeros(length(SCE2_Global_Ice_CO2eq_matrix_Route1_tm(:,1)),3.*length(SCE2_Global_Ice_CO2eq_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE2_Global_Ice_CO2eq_matrix_Route1_tm(1,:))

    SCE2_Global_Ice_CO2eq_matrix_tm(:,(3.*(i-1))+1) = SCE2_Global_Ice_CO2eq_matrix_Route1_tm(:,i);
    SCE2_Global_Ice_CO2eq_matrix_tm(:,(3.*(i-1))+2) = SCE2_Global_Ice_CO2eq_matrix_Route2_tm(:,i);
    SCE2_Global_Ice_CO2eq_matrix_tm(:,(3.*(i-1))+3) = SCE2_Global_Ice_CO2eq_matrix_Route3_tm(:,i);
    
end

SCE2_Global_Ice_CO2eq_matrix_tf = zeros(length(SCE2_Global_Ice_CO2eq_matrix_Route1_tf(:,1)),3.*length(SCE2_Global_Ice_CO2eq_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE2_Global_Ice_CO2eq_matrix_Route1_tf(1,:))

    SCE2_Global_Ice_CO2eq_matrix_tf(:,(3.*(i-1))+1) = SCE2_Global_Ice_CO2eq_matrix_Route1_tf(:,i);
    SCE2_Global_Ice_CO2eq_matrix_tf(:,(3.*(i-1))+2) = SCE2_Global_Ice_CO2eq_matrix_Route2_tf(:,i);
    SCE2_Global_Ice_CO2eq_matrix_tf(:,(3.*(i-1))+3) = SCE2_Global_Ice_CO2eq_matrix_Route3_tf(:,i);
    
end

%Non ice
SCE2_Global_NonIce_CO2eq_matrix_t0 = zeros(length(SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(:,1)),3.*length(SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(1,:))

    SCE2_Global_NonIce_CO2eq_matrix_t0(:,(3.*(i-1))+1) = SCE2_Global_NonIce_CO2eq_matrix_Route1_t0(:,i);
    SCE2_Global_NonIce_CO2eq_matrix_t0(:,(3.*(i-1))+2) = SCE2_Global_NonIce_CO2eq_matrix_Route2_t0(:,i);
    SCE2_Global_NonIce_CO2eq_matrix_t0(:,(3.*(i-1))+3) = SCE2_Global_NonIce_CO2eq_matrix_Route3_t0(:,i);
    
end

SCE2_Global_NonIce_CO2eq_matrix_tm = zeros(length(SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(:,1)),3.*length(SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(1,:))

    SCE2_Global_NonIce_CO2eq_matrix_tm(:,(3.*(i-1))+1) = SCE2_Global_NonIce_CO2eq_matrix_Route1_tm(:,i);
    SCE2_Global_NonIce_CO2eq_matrix_tm(:,(3.*(i-1))+2) = SCE2_Global_NonIce_CO2eq_matrix_Route2_tm(:,i);
    SCE2_Global_NonIce_CO2eq_matrix_tm(:,(3.*(i-1))+3) = SCE2_Global_NonIce_CO2eq_matrix_Route3_tm(:,i);
    
end

SCE2_Global_NonIce_CO2eq_matrix_tf = zeros(length(SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(:,1)),3.*length(SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(1,:))

    SCE2_Global_NonIce_CO2eq_matrix_tf(:,(3.*(i-1))+1) = SCE2_Global_NonIce_CO2eq_matrix_Route1_tf(:,i);
    SCE2_Global_NonIce_CO2eq_matrix_tf(:,(3.*(i-1))+2) = SCE2_Global_NonIce_CO2eq_matrix_Route2_tf(:,i);
    SCE2_Global_NonIce_CO2eq_matrix_tf(:,(3.*(i-1))+3) = SCE2_Global_NonIce_CO2eq_matrix_Route3_tf(:,i);
    
end

%Extracting air pollutants 

SCE1_Global_Ice_AP_matrix_Route1_t0 = zeros(3.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_Ice_AP_matrix_Route1_t0(3.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 7,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_matrix_Route1_t0(3.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 9,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_matrix_Route1_t0(3.*(i-1) + 3,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 11,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 12,:);
    
end

SCE1_Global_Ice_AP_matrix_Route1_tm = zeros(3.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_Ice_AP_matrix_Route1_tm(3.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 7,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_matrix_Route1_tm(3.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 9,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_matrix_Route1_tm(3.*(i-1) + 3,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 11,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 12,:);
    
end

SCE1_Global_Ice_AP_matrix_Route1_tf = zeros(3.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_Ice_AP_matrix_Route1_tf(3.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 7,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_matrix_Route1_tf(3.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 9,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_matrix_Route1_tf(3.*(i-1) + 3,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 11,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 12,:);
    
end

SCE1_Global_Ice_AP_matrix_Route2_t0 = zeros(3.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_Ice_AP_matrix_Route2_t0(3.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 7,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_matrix_Route2_t0(3.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 9,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_matrix_Route2_t0(3.*(i-1) + 3,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 11,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 12,:);
    
end

SCE1_Global_Ice_AP_matrix_Route2_tm = zeros(3.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_Ice_AP_matrix_Route2_tm(3.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 7,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_matrix_Route2_tm(3.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 9,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_matrix_Route2_tm(3.*(i-1) + 3,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 11,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 12,:);
    
end

SCE1_Global_Ice_AP_matrix_Route2_tf = zeros(3.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_Ice_AP_matrix_Route2_tf(3.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 7,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_matrix_Route2_tf(3.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 9,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_matrix_Route2_tf(3.*(i-1) + 3,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 11,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 12,:);
    
end

SCE1_Global_Ice_AP_matrix_Route3_t0 = zeros(3.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_Ice_AP_matrix_Route3_t0(3.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 7,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_matrix_Route3_t0(3.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 9,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_matrix_Route3_t0(3.*(i-1) + 3,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 11,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 12,:);
    
end

SCE1_Global_Ice_AP_matrix_Route3_tm = zeros(3.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_Ice_AP_matrix_Route3_tm(3.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 7,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_matrix_Route3_tm(3.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 9,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_matrix_Route3_tm(3.*(i-1) + 3,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 11,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 12,:);
    
end

SCE1_Global_Ice_AP_matrix_Route3_tf = zeros(3.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_Ice_AP_matrix_Route3_tf(3.*(i-1) + 1,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 7,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_matrix_Route3_tf(3.*(i-1) + 2,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 9,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_matrix_Route3_tf(3.*(i-1) + 3,:) = SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 11,:) + SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 12,:);
    
end

%SCE1 - NonIce 

SCE1_Global_NonIce_AP_matrix_Route1_t0 = zeros(3.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_NonIce_AP_matrix_Route1_t0(3.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 7,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_matrix_Route1_t0(3.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 9,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_matrix_Route1_t0(3.*(i-1) + 3,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 11,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 12,:);
    
end

SCE1_Global_NonIce_AP_matrix_Route1_tm = zeros(3.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_NonIce_AP_matrix_Route1_tm(3.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 7,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_matrix_Route1_tm(3.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 9,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_matrix_Route1_tm(3.*(i-1) + 3,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 11,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 12,:);
    
end

SCE1_Global_NonIce_AP_matrix_Route1_tf = zeros(3.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_NonIce_AP_matrix_Route1_tf(3.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 7,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_matrix_Route1_tf(3.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 9,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_matrix_Route1_tf(3.*(i-1) + 3,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 11,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 12,:);
    
end

SCE1_Global_NonIce_AP_matrix_Route2_t0 = zeros(3.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_NonIce_AP_matrix_Route2_t0(3.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 7,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_matrix_Route2_t0(3.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 9,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_matrix_Route2_t0(3.*(i-1) + 3,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 11,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 12,:);
    
end

SCE1_Global_NonIce_AP_matrix_Route2_tm = zeros(3.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_NonIce_AP_matrix_Route2_tm(3.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 7,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_matrix_Route2_tm(3.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 9,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_matrix_Route2_tm(3.*(i-1) + 3,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 11,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 12,:);
    
end

SCE1_Global_NonIce_AP_matrix_Route2_tf = zeros(3.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_NonIce_AP_matrix_Route2_tf(3.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 7,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_matrix_Route2_tf(3.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 9,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_matrix_Route2_tf(3.*(i-1) + 3,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 11,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 12,:);
    
end

SCE1_Global_NonIce_AP_matrix_Route3_t0 = zeros(3.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE1_Global_NonIce_AP_matrix_Route3_t0(3.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 7,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_matrix_Route3_t0(3.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 9,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_matrix_Route3_t0(3.*(i-1) + 3,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 11,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 12,:);
    
end

SCE1_Global_NonIce_AP_matrix_Route3_tm = zeros(3.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE1_Global_NonIce_AP_matrix_Route3_tm(3.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 7,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_matrix_Route3_tm(3.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 9,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_matrix_Route3_tm(3.*(i-1) + 3,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 11,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 12,:);
    
end

SCE1_Global_NonIce_AP_matrix_Route3_tf = zeros(3.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE1_Global_NonIce_AP_matrix_Route3_tf(3.*(i-1) + 1,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 7,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_matrix_Route3_tf(3.*(i-1) + 2,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 9,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_matrix_Route3_tf(3.*(i-1) + 3,:) = SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 11,:) + SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 12,:);
    
end


%SCE 2

SCE2_Global_Ice_AP_matrix_Route1_t0 = zeros(3.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_Ice_AP_matrix_Route1_t0(3.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 7,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_matrix_Route1_t0(3.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 9,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_matrix_Route1_t0(3.*(i-1) + 3,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 11,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 12,:);
    
end

SCE2_Global_Ice_AP_matrix_Route1_tm = zeros(3.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_Ice_AP_matrix_Route1_tm(3.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 7,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_matrix_Route1_tm(3.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 9,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_matrix_Route1_tm(3.*(i-1) + 3,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 11,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 12,:);
    
end

SCE2_Global_Ice_AP_matrix_Route1_tf = zeros(3.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_Ice_AP_matrix_Route1_tf(3.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 7,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_matrix_Route1_tf(3.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 9,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_matrix_Route1_tf(3.*(i-1) + 3,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 11,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 12,:);
    
end

SCE2_Global_Ice_AP_matrix_Route2_t0 = zeros(3.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_Ice_AP_matrix_Route2_t0(3.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 7,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_matrix_Route2_t0(3.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 9,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_matrix_Route2_t0(3.*(i-1) + 3,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 11,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 12,:);
    
end

SCE2_Global_Ice_AP_matrix_Route2_tm = zeros(3.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_Ice_AP_matrix_Route2_tm(3.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 7,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_matrix_Route2_tm(3.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 9,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_matrix_Route2_tm(3.*(i-1) + 3,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 11,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 12,:);
    
end

SCE2_Global_Ice_AP_matrix_Route2_tf = zeros(3.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_Ice_AP_matrix_Route2_tf(3.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 7,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_matrix_Route2_tf(3.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 9,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_matrix_Route2_tf(3.*(i-1) + 3,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 11,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 12,:);
    
end

SCE2_Global_Ice_AP_matrix_Route3_t0 = zeros(3.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_Ice_AP_matrix_Route3_t0(3.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 7,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_matrix_Route3_t0(3.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 9,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_matrix_Route3_t0(3.*(i-1) + 3,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 11,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 12,:);
    
end

SCE2_Global_Ice_AP_matrix_Route3_tm = zeros(3.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_Ice_AP_matrix_Route3_tm(3.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 7,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_matrix_Route3_tm(3.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 9,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_matrix_Route3_tm(3.*(i-1) + 3,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 11,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 12,:);
    
end

SCE2_Global_Ice_AP_matrix_Route3_tf = zeros(3.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_Ice_AP_matrix_Route3_tf(3.*(i-1) + 1,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 7,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_matrix_Route3_tf(3.*(i-1) + 2,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 9,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_matrix_Route3_tf(3.*(i-1) + 3,:) = SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 11,:) + SCE2_Global_Ice_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 12,:);
    
end

%SCE2 - NonIce 

SCE2_Global_NonIce_AP_matrix_Route1_t0 = zeros(3.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_NonIce_AP_matrix_Route1_t0(3.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 7,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_matrix_Route1_t0(3.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 9,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_matrix_Route1_t0(3.*(i-1) + 3,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 11,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_t0(14.*(i - 1) + 12,:);
    
end

SCE2_Global_NonIce_AP_matrix_Route1_tm = zeros(3.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_NonIce_AP_matrix_Route1_tm(3.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 7,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_matrix_Route1_tm(3.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 9,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_matrix_Route1_tm(3.*(i-1) + 3,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 11,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tm(14.*(i - 1) + 12,:);
    
end

SCE2_Global_NonIce_AP_matrix_Route1_tf = zeros(3.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_NonIce_AP_matrix_Route1_tf(3.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 7,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_matrix_Route1_tf(3.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 9,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_matrix_Route1_tf(3.*(i-1) + 3,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 11,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route1_tf(14.*(i - 1) + 12,:);
    
end

SCE2_Global_NonIce_AP_matrix_Route2_t0 = zeros(3.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_NonIce_AP_matrix_Route2_t0(3.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 7,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_matrix_Route2_t0(3.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 9,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_matrix_Route2_t0(3.*(i-1) + 3,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 11,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_t0(14.*(i - 1) + 12,:);
    
end

SCE2_Global_NonIce_AP_matrix_Route2_tm = zeros(3.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_NonIce_AP_matrix_Route2_tm(3.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 7,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_matrix_Route2_tm(3.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 9,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_matrix_Route2_tm(3.*(i-1) + 3,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 11,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tm(14.*(i - 1) + 12,:);
    
end

SCE2_Global_NonIce_AP_matrix_Route2_tf = zeros(3.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_NonIce_AP_matrix_Route2_tf(3.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 7,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_matrix_Route2_tf(3.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 9,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_matrix_Route2_tf(3.*(i-1) + 3,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 11,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route2_tf(14.*(i - 1) + 12,:);
    
end

SCE2_Global_NonIce_AP_matrix_Route3_t0 = zeros(3.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE2_Global_NonIce_AP_matrix_Route3_t0(3.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 7,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_matrix_Route3_t0(3.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 9,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_matrix_Route3_t0(3.*(i-1) + 3,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 11,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_t0(14.*(i - 1) + 12,:);
    
end

SCE2_Global_NonIce_AP_matrix_Route3_tm = zeros(3.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE2_Global_NonIce_AP_matrix_Route3_tm(3.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 7,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_matrix_Route3_tm(3.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 9,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_matrix_Route3_tm(3.*(i-1) + 3,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 11,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tm(14.*(i - 1) + 12,:);
    
end

SCE2_Global_NonIce_AP_matrix_Route3_tf = zeros(3.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE2_Global_NonIce_AP_matrix_Route3_tf(3.*(i-1) + 1,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 7,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_matrix_Route3_tf(3.*(i-1) + 2,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 9,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_matrix_Route3_tf(3.*(i-1) + 3,:) = SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 11,:) + SCE2_Global_NonIce_Emission_Inventory_matrix_Route3_tf(14.*(i - 1) + 12,:);
    
end

SCE3_Global_Ice_AP_matrix_t0 = zeros(3.*length(SCE3_Ice_Total_Fuel_costs_t0(:,1)),length(SCE3_Ice_Total_Fuel_costs_t0(1,:))); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_t0(:,1))
   
    SCE3_Global_Ice_AP_matrix_t0(3.*(i-1) + 1,:) = SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 7,:) + SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 8,:);
    SCE3_Global_Ice_AP_matrix_t0(3.*(i-1) + 2,:) = SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 9,:) + SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 10,:);
    SCE3_Global_Ice_AP_matrix_t0(3.*(i-1) + 3,:) = SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 11,:) + SCE3_Global_Ice_Emission_Inventory_matrix_t0(14.*(i - 1) + 12,:);
    
end

SCE3_Global_Ice_AP_matrix_tm = zeros(3.*length(SCE3_Ice_Total_Fuel_costs_tm(:,1)),length(SCE3_Ice_Total_Fuel_costs_tm(1,:))); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_tm(:,1))
   
    SCE3_Global_Ice_AP_matrix_tm(3.*(i-1) + 1,:) = SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 7,:) + SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 8,:);
    SCE3_Global_Ice_AP_matrix_tm(3.*(i-1) + 2,:) = SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 9,:) + SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 10,:);
    SCE3_Global_Ice_AP_matrix_tm(3.*(i-1) + 3,:) = SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 11,:) + SCE3_Global_Ice_Emission_Inventory_matrix_tm(14.*(i - 1) + 12,:);
    
end

SCE3_Global_Ice_AP_matrix_tf = zeros(3.*length(SCE3_Ice_Total_Fuel_costs_tf(:,1)),length(SCE3_Ice_Total_Fuel_costs_tf(1,:))); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_tf(:,1))
   
    SCE3_Global_Ice_AP_matrix_tf(3.*(i-1) + 1,:) = SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 7,:) + SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 8,:);
    SCE3_Global_Ice_AP_matrix_tf(3.*(i-1) + 2,:) = SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 9,:) + SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 10,:);
    SCE3_Global_Ice_AP_matrix_tf(3.*(i-1) + 3,:) = SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 11,:) + SCE3_Global_Ice_Emission_Inventory_matrix_tf(14.*(i - 1) + 12,:);
    
end

SCE3_Global_NonIce_AP_matrix_t0 = zeros(3.*length(SCE3_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE3_NonIce_Total_Fuel_costs_t0(1,:))); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_t0(:,1))
   
    SCE3_Global_NonIce_AP_matrix_t0(3.*(i-1) + 1,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 7,:) + SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 8,:);
    SCE3_Global_NonIce_AP_matrix_t0(3.*(i-1) + 2,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 9,:) + SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 10,:);
    SCE3_Global_NonIce_AP_matrix_t0(3.*(i-1) + 3,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 11,:) + SCE3_Global_NonIce_Emission_Inventory_matrix_t0(14.*(i - 1) + 12,:);
    
end

SCE3_Global_NonIce_AP_matrix_tm = zeros(3.*length(SCE3_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE3_NonIce_Total_Fuel_costs_tm(1,:))); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_tm(:,1))
   
    SCE3_Global_NonIce_AP_matrix_tm(3.*(i-1) + 1,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 7,:) + SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 8,:);
    SCE3_Global_NonIce_AP_matrix_tm(3.*(i-1) + 2,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 9,:) + SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 10,:);
    SCE3_Global_NonIce_AP_matrix_tm(3.*(i-1) + 3,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 11,:) + SCE3_Global_NonIce_Emission_Inventory_matrix_tm(14.*(i - 1) + 12,:);
    
end

SCE3_Global_NonIce_AP_matrix_tf = zeros(3.*length(SCE3_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE3_NonIce_Total_Fuel_costs_tf(1,:))); %SOx, NOx and PM (in that order) 

for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_tf(:,1))
   
    SCE3_Global_NonIce_AP_matrix_tf(3.*(i-1) + 1,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 7,:) + SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 8,:);
    SCE3_Global_NonIce_AP_matrix_tf(3.*(i-1) + 2,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 9,:) + SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 10,:);
    SCE3_Global_NonIce_AP_matrix_tf(3.*(i-1) + 3,:) = SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 11,:) + SCE3_Global_NonIce_Emission_Inventory_matrix_tf(14.*(i - 1) + 12,:);
    
end
%Aligning the matrices 
% SCE1_Global_Ice_CO2eq_matrix_t0 = zeros(length(SCE1_Global_Ice_CO2eq_matrix_Route1_t0(:,1)),3.*length(SCE1_Global_Ice_CO2eq_matrix_Route1_t0(1,:)));
% 
% for i = 1:1:length(SCE1_Global_Ice_CO2eq_matrix_Route1_t0(1,:))
% 
%     SCE1_Global_Ice_CO2eq_matrix_t0(:,(3.*(i-1))+1) = SCE1_Global_Ice_CO2eq_matrix_Route1_t0(:,i);
%     SCE1_Global_Ice_CO2eq_matrix_t0(:,(3.*(i-1))+2) = SCE1_Global_Ice_CO2eq_matrix_Route2_t0(:,i);
%     SCE1_Global_Ice_CO2eq_matrix_t0(:,(3.*(i-1))+3) = SCE1_Global_Ice_CO2eq_matrix_Route3_t0(:,i);
%     
% end

SCE1_Global_Ice_AP_matrix_t0 = zeros(length(SCE1_Global_Ice_AP_matrix_Route1_t0(:,1)),3.*length(SCE1_Global_Ice_AP_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE1_Global_Ice_AP_matrix_Route1_t0(1,:))

    SCE1_Global_Ice_AP_matrix_t0(:,(3.*(i-1))+1) = SCE1_Global_Ice_AP_matrix_Route1_t0(:,i);
    SCE1_Global_Ice_AP_matrix_t0(:,(3.*(i-1))+2) = SCE1_Global_Ice_AP_matrix_Route2_t0(:,i);
    SCE1_Global_Ice_AP_matrix_t0(:,(3.*(i-1))+3) = SCE1_Global_Ice_AP_matrix_Route3_t0(:,i);
    
end

SCE1_Global_Ice_AP_matrix_tm = zeros(length(SCE1_Global_Ice_AP_matrix_Route1_tm(:,1)),3.*length(SCE1_Global_Ice_AP_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE1_Global_Ice_AP_matrix_Route1_tm(1,:))

    SCE1_Global_Ice_AP_matrix_tm(:,(3.*(i-1))+1) = SCE1_Global_Ice_AP_matrix_Route1_tm(:,i);
    SCE1_Global_Ice_AP_matrix_tm(:,(3.*(i-1))+2) = SCE1_Global_Ice_AP_matrix_Route2_tm(:,i);
    SCE1_Global_Ice_AP_matrix_tm(:,(3.*(i-1))+3) = SCE1_Global_Ice_AP_matrix_Route3_tm(:,i);
    
end

SCE1_Global_Ice_AP_matrix_tf = zeros(length(SCE1_Global_Ice_AP_matrix_Route1_tf(:,1)),3.*length(SCE1_Global_Ice_AP_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE1_Global_Ice_AP_matrix_Route1_tf(1,:))

    SCE1_Global_Ice_AP_matrix_tf(:,(3.*(i-1))+1) = SCE1_Global_Ice_AP_matrix_Route1_tf(:,i);
    SCE1_Global_Ice_AP_matrix_tf(:,(3.*(i-1))+2) = SCE1_Global_Ice_AP_matrix_Route2_tf(:,i);
    SCE1_Global_Ice_AP_matrix_tf(:,(3.*(i-1))+3) = SCE1_Global_Ice_AP_matrix_Route3_tf(:,i);
    
end

SCE1_Global_NonIce_AP_matrix_t0 = zeros(length(SCE1_Global_NonIce_AP_matrix_Route1_t0(:,1)),3.*length(SCE1_Global_NonIce_AP_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE1_Global_NonIce_AP_matrix_Route1_t0(1,:))

    SCE1_Global_NonIce_AP_matrix_t0(:,(3.*(i-1))+1) = SCE1_Global_NonIce_AP_matrix_Route1_t0(:,i);
    SCE1_Global_NonIce_AP_matrix_t0(:,(3.*(i-1))+2) = SCE1_Global_NonIce_AP_matrix_Route2_t0(:,i);
    SCE1_Global_NonIce_AP_matrix_t0(:,(3.*(i-1))+3) = SCE1_Global_NonIce_AP_matrix_Route3_t0(:,i);
    
end

SCE1_Global_NonIce_AP_matrix_tm = zeros(length(SCE1_Global_NonIce_AP_matrix_Route1_tm(:,1)),3.*length(SCE1_Global_NonIce_AP_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE1_Global_NonIce_AP_matrix_Route1_tm(1,:))

    SCE1_Global_NonIce_AP_matrix_tm(:,(3.*(i-1))+1) = SCE1_Global_NonIce_AP_matrix_Route1_tm(:,i);
    SCE1_Global_NonIce_AP_matrix_tm(:,(3.*(i-1))+2) = SCE1_Global_NonIce_AP_matrix_Route2_tm(:,i);
    SCE1_Global_NonIce_AP_matrix_tm(:,(3.*(i-1))+3) = SCE1_Global_NonIce_AP_matrix_Route3_tm(:,i);
    
end

SCE1_Global_NonIce_AP_matrix_tf = zeros(length(SCE1_Global_NonIce_AP_matrix_Route1_tf(:,1)),3.*length(SCE1_Global_NonIce_AP_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE1_Global_NonIce_AP_matrix_Route1_tf(1,:))

    SCE1_Global_NonIce_AP_matrix_tf(:,(3.*(i-1))+1) = SCE1_Global_NonIce_AP_matrix_Route1_tf(:,i);
    SCE1_Global_NonIce_AP_matrix_tf(:,(3.*(i-1))+2) = SCE1_Global_NonIce_AP_matrix_Route2_tf(:,i);
    SCE1_Global_NonIce_AP_matrix_tf(:,(3.*(i-1))+3) = SCE1_Global_NonIce_AP_matrix_Route3_tf(:,i);
    
end

%Scenario 2
SCE2_Global_Ice_AP_matrix_t0 = zeros(length(SCE2_Global_Ice_AP_matrix_Route1_t0(:,1)),3.*length(SCE2_Global_Ice_AP_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE2_Global_Ice_AP_matrix_Route1_t0(1,:))

    SCE2_Global_Ice_AP_matrix_t0(:,(3.*(i-1))+1) = SCE2_Global_Ice_AP_matrix_Route1_t0(:,i);
    SCE2_Global_Ice_AP_matrix_t0(:,(3.*(i-1))+2) = SCE2_Global_Ice_AP_matrix_Route2_t0(:,i);
    SCE2_Global_Ice_AP_matrix_t0(:,(3.*(i-1))+3) = SCE2_Global_Ice_AP_matrix_Route3_t0(:,i);
    
end

SCE2_Global_Ice_AP_matrix_tm = zeros(length(SCE2_Global_Ice_AP_matrix_Route1_tm(:,1)),3.*length(SCE2_Global_Ice_AP_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE2_Global_Ice_AP_matrix_Route1_tm(1,:))

    SCE2_Global_Ice_AP_matrix_tm(:,(3.*(i-1))+1) = SCE2_Global_Ice_AP_matrix_Route1_tm(:,i);
    SCE2_Global_Ice_AP_matrix_tm(:,(3.*(i-1))+2) = SCE2_Global_Ice_AP_matrix_Route2_tm(:,i);
    SCE2_Global_Ice_AP_matrix_tm(:,(3.*(i-1))+3) = SCE2_Global_Ice_AP_matrix_Route3_tm(:,i);
    
end

SCE2_Global_Ice_AP_matrix_tf = zeros(length(SCE2_Global_Ice_AP_matrix_Route1_tf(:,1)),3.*length(SCE2_Global_Ice_AP_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE2_Global_Ice_AP_matrix_Route1_tf(1,:))

    SCE2_Global_Ice_AP_matrix_tf(:,(3.*(i-1))+1) = SCE2_Global_Ice_AP_matrix_Route1_tf(:,i);
    SCE2_Global_Ice_AP_matrix_tf(:,(3.*(i-1))+2) = SCE2_Global_Ice_AP_matrix_Route2_tf(:,i);
    SCE2_Global_Ice_AP_matrix_tf(:,(3.*(i-1))+3) = SCE2_Global_Ice_AP_matrix_Route3_tf(:,i);
    
end

SCE2_Global_NonIce_AP_matrix_t0 = zeros(length(SCE2_Global_NonIce_AP_matrix_Route1_t0(:,1)),3.*length(SCE2_Global_NonIce_AP_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE2_Global_NonIce_AP_matrix_Route1_t0(1,:))

    SCE2_Global_NonIce_AP_matrix_t0(:,(3.*(i-1))+1) = SCE2_Global_NonIce_AP_matrix_Route1_t0(:,i);
    SCE2_Global_NonIce_AP_matrix_t0(:,(3.*(i-1))+2) = SCE2_Global_NonIce_AP_matrix_Route2_t0(:,i);
    SCE2_Global_NonIce_AP_matrix_t0(:,(3.*(i-1))+3) = SCE2_Global_NonIce_AP_matrix_Route3_t0(:,i);
    
end

SCE2_Global_NonIce_AP_matrix_tm = zeros(length(SCE2_Global_NonIce_AP_matrix_Route1_tm(:,1)),3.*length(SCE2_Global_NonIce_AP_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE2_Global_NonIce_AP_matrix_Route1_tm(1,:))

    SCE2_Global_NonIce_AP_matrix_tm(:,(3.*(i-1))+1) = SCE2_Global_NonIce_AP_matrix_Route1_tm(:,i);
    SCE2_Global_NonIce_AP_matrix_tm(:,(3.*(i-1))+2) = SCE2_Global_NonIce_AP_matrix_Route2_tm(:,i);
    SCE2_Global_NonIce_AP_matrix_tm(:,(3.*(i-1))+3) = SCE2_Global_NonIce_AP_matrix_Route3_tm(:,i);
    
end

SCE2_Global_NonIce_AP_matrix_tf = zeros(length(SCE2_Global_NonIce_AP_matrix_Route1_tf(:,1)),3.*length(SCE2_Global_NonIce_AP_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE2_Global_NonIce_AP_matrix_Route1_tf(1,:))

    SCE2_Global_NonIce_AP_matrix_tf(:,(3.*(i-1))+1) = SCE2_Global_NonIce_AP_matrix_Route1_tf(:,i);
    SCE2_Global_NonIce_AP_matrix_tf(:,(3.*(i-1))+2) = SCE2_Global_NonIce_AP_matrix_Route2_tf(:,i);
    SCE2_Global_NonIce_AP_matrix_tf(:,(3.*(i-1))+3) = SCE2_Global_NonIce_AP_matrix_Route3_tf(:,i);
    
end

SCE1_Ice_SOx_matrix_t0 = SCE1_Global_Ice_AP_matrix_t0(1:3:end,:); SCE1_Ice_NOx_matrix_t0 = SCE1_Global_Ice_AP_matrix_t0(2:3:end,:); SCE1_Ice_PM_matrix_t0 = SCE1_Global_Ice_AP_matrix_t0(3:3:end,:);
SCE1_Ice_SOx_matrix_tm = SCE1_Global_Ice_AP_matrix_tm(1:3:end,:); SCE1_Ice_NOx_matrix_tm = SCE1_Global_Ice_AP_matrix_tm(2:3:end,:); SCE1_Ice_PM_matrix_tm = SCE1_Global_Ice_AP_matrix_tm(3:3:end,:);
SCE1_Ice_SOx_matrix_tf = SCE1_Global_Ice_AP_matrix_tf(1:3:end,:); SCE1_Ice_NOx_matrix_tf = SCE1_Global_Ice_AP_matrix_tf(2:3:end,:); SCE1_Ice_PM_matrix_tf = SCE1_Global_Ice_AP_matrix_tf(3:3:end,:);

SCE1_NonIce_SOx_matrix_t0 = SCE1_Global_NonIce_AP_matrix_t0(1:3:end,:); SCE1_NonIce_NOx_matrix_t0 = SCE1_Global_NonIce_AP_matrix_t0(2:3:end,:); SCE1_NonIce_PM_matrix_t0 = SCE1_Global_NonIce_AP_matrix_t0(3:3:end,:);
SCE1_NonIce_SOx_matrix_tm = SCE1_Global_NonIce_AP_matrix_tm(1:3:end,:); SCE1_NonIce_NOx_matrix_tm = SCE1_Global_NonIce_AP_matrix_tm(2:3:end,:); SCE1_NonIce_PM_matrix_tm = SCE1_Global_NonIce_AP_matrix_tm(3:3:end,:);
SCE1_NonIce_SOx_matrix_tf = SCE1_Global_NonIce_AP_matrix_tf(1:3:end,:); SCE1_NonIce_NOx_matrix_tf = SCE1_Global_NonIce_AP_matrix_tf(2:3:end,:); SCE1_NonIce_PM_matrix_tf = SCE1_Global_NonIce_AP_matrix_tf(3:3:end,:);

SCE2_Ice_SOx_matrix_t0 = SCE2_Global_Ice_AP_matrix_t0(1:3:end,:); SCE2_Ice_NOx_matrix_t0 = SCE2_Global_Ice_AP_matrix_t0(2:3:end,:); SCE2_Ice_PM_matrix_t0 = SCE2_Global_Ice_AP_matrix_t0(3:3:end,:);
SCE2_Ice_SOx_matrix_tm = SCE2_Global_Ice_AP_matrix_tm(1:3:end,:); SCE2_Ice_NOx_matrix_tm = SCE2_Global_Ice_AP_matrix_tm(2:3:end,:); SCE2_Ice_PM_matrix_tm = SCE2_Global_Ice_AP_matrix_tm(3:3:end,:);
SCE2_Ice_SOx_matrix_tf = SCE2_Global_Ice_AP_matrix_tf(1:3:end,:); SCE2_Ice_NOx_matrix_tf = SCE2_Global_Ice_AP_matrix_tf(2:3:end,:); SCE2_Ice_PM_matrix_tf = SCE2_Global_Ice_AP_matrix_tf(3:3:end,:);

SCE2_NonIce_SOx_matrix_t0 = SCE2_Global_NonIce_AP_matrix_t0(1:3:end,:); SCE2_NonIce_NOx_matrix_t0 = SCE2_Global_NonIce_AP_matrix_t0(2:3:end,:); SCE2_NonIce_PM_matrix_t0 = SCE2_Global_NonIce_AP_matrix_t0(3:3:end,:);
SCE2_NonIce_SOx_matrix_tm = SCE2_Global_NonIce_AP_matrix_tm(1:3:end,:); SCE2_NonIce_NOx_matrix_tm = SCE2_Global_NonIce_AP_matrix_tm(2:3:end,:); SCE2_NonIce_PM_matrix_tm = SCE2_Global_NonIce_AP_matrix_tm(3:3:end,:);
SCE2_NonIce_SOx_matrix_tf = SCE2_Global_NonIce_AP_matrix_tf(1:3:end,:); SCE2_NonIce_NOx_matrix_tf = SCE2_Global_NonIce_AP_matrix_tf(2:3:end,:); SCE2_NonIce_PM_matrix_tf = SCE2_Global_NonIce_AP_matrix_tf(3:3:end,:);

SCE3_Ice_SOx_matrix_t0 = SCE3_Global_Ice_AP_matrix_t0(1:3:end,:); SCE3_Ice_NOx_matrix_t0 = SCE3_Global_Ice_AP_matrix_t0(2:3:end,:); SCE3_Ice_PM_matrix_t0 = SCE3_Global_Ice_AP_matrix_t0(3:3:end,:);
SCE3_Ice_SOx_matrix_tm = SCE3_Global_Ice_AP_matrix_tm(1:3:end,:); SCE3_Ice_NOx_matrix_tm = SCE3_Global_Ice_AP_matrix_tm(2:3:end,:); SCE3_Ice_PM_matrix_tm = SCE3_Global_Ice_AP_matrix_tm(3:3:end,:);
SCE3_Ice_SOx_matrix_tf = SCE3_Global_Ice_AP_matrix_tf(1:3:end,:); SCE3_Ice_NOx_matrix_tf = SCE3_Global_Ice_AP_matrix_tf(2:3:end,:); SCE3_Ice_PM_matrix_tf = SCE3_Global_Ice_AP_matrix_tf(3:3:end,:);

SCE3_NonIce_SOx_matrix_t0 = SCE3_Global_NonIce_AP_matrix_t0(1:3:end,:); SCE3_NonIce_NOx_matrix_t0 = SCE3_Global_NonIce_AP_matrix_t0(2:3:end,:); SCE3_NonIce_PM_matrix_t0 = SCE3_Global_NonIce_AP_matrix_t0(3:3:end,:);
SCE3_NonIce_SOx_matrix_tm = SCE3_Global_NonIce_AP_matrix_tm(1:3:end,:); SCE3_NonIce_NOx_matrix_tm = SCE3_Global_NonIce_AP_matrix_tm(2:3:end,:); SCE3_NonIce_PM_matrix_tm = SCE3_Global_NonIce_AP_matrix_tm(3:3:end,:);
SCE3_NonIce_SOx_matrix_tf = SCE3_Global_NonIce_AP_matrix_tf(1:3:end,:); SCE3_NonIce_NOx_matrix_tf = SCE3_Global_NonIce_AP_matrix_tf(2:3:end,:); SCE3_NonIce_PM_matrix_tf = SCE3_Global_NonIce_AP_matrix_tf(3:3:end,:);

%% Financial unit cost 

%First amalgamate the route lengths

Arctic_Route_Total_D_A = [Arctic_Route1_Total_D_A Arctic_Route2_Total_D_A Arctic_Route3_Total_D_A]; Arctic_Route_Total_D_A = repmat(Arctic_Route_Total_D_A,height(d),6);
SCE2_Suez_Route_D_S =  repmat(SCE3_Suez_Route_D_S,1,length(Arctic_Route_Total_D_A(1,:)));
SCE3_Suez_Route_D_S =  repmat(SCE3_Suez_Route_D_S,1,6);

%Charterer freight rate - Only non ice so far - plus get rid of infinite
%and NANs
SCE1_Global_Ice_CO2eqtax_t0 = Carbon_price_t0.*SCE1_Global_Ice_CO2eq_matrix_t0;
SCE1_Global_Ice_CO2eqtax_tm = Carbon_price_tm.*SCE1_Global_Ice_CO2eq_matrix_tm;
SCE1_Global_Ice_CO2eqtax_tf = Carbon_price_tf.*SCE1_Global_Ice_CO2eq_matrix_tf;

SCE1_Global_NonIce_CO2eqtax_t0 = Carbon_price_t0.*SCE1_Global_NonIce_CO2eq_matrix_t0;
SCE1_Global_NonIce_CO2eqtax_tm = Carbon_price_tm.*SCE1_Global_NonIce_CO2eq_matrix_tm;
SCE1_Global_NonIce_CO2eqtax_tf = Carbon_price_tf.*SCE1_Global_NonIce_CO2eq_matrix_tf;

SCE1_Global_Ice_CO2eqtax_ptv_t0 = Carbon_price_t0.*SCE1_Global_Ice_CO2eq_matrix_t0./(Cargo_dwt.*SCE1_Ice_n_t0);
SCE1_Global_Ice_CO2eqtax_ptv_tm = Carbon_price_tm.*SCE1_Global_Ice_CO2eq_matrix_tm./(Cargo_dwt.*SCE1_Ice_n_tm);
SCE1_Global_Ice_CO2eqtax_ptv_tf = Carbon_price_tf.*SCE1_Global_Ice_CO2eq_matrix_tf./(Cargo_dwt.*SCE1_Ice_n_tf);

SCE1_Global_NonIce_CO2eqtax_ptv_t0 = Carbon_price_t0.*SCE1_Global_NonIce_CO2eq_matrix_t0./(Cargo_dwt.*SCE1_NonIce_n_t0);
SCE1_Global_NonIce_CO2eqtax_ptv_tm = Carbon_price_tm.*SCE1_Global_NonIce_CO2eq_matrix_t0./(Cargo_dwt.*SCE1_NonIce_n_tm);
SCE1_Global_NonIce_CO2eqtax_ptv_tf = Carbon_price_tf.*SCE1_Global_NonIce_CO2eq_matrix_t0./(Cargo_dwt.*SCE1_NonIce_n_tf);

%Tonne voyage
SCE1_Ice_FC_ptv_t0 = ((SCE1_Ice_Total_Voyage_cost_t0 + SCE1_Ice_OpEx_t0 + SCE1_Ice_Total_CapEx_t0 )./(Cargo_dwt.*SCE1_Ice_n_t0)) + SCE1_Global_Ice_CO2eqtax_ptv_t0;
SCE1_Ice_FC_ptv_tm = ((SCE1_Ice_Total_Voyage_cost_tm + SCE1_Ice_OpEx_tm + SCE1_Ice_Total_CapEx_tm )./(Cargo_dwt.*SCE1_Ice_n_tm)) + SCE1_Global_Ice_CO2eqtax_ptv_tm;
SCE1_Ice_FC_ptv_tf = ((SCE1_Ice_Total_Voyage_cost_tf + SCE1_Ice_OpEx_tf + SCE1_Ice_Total_CapEx_tf )./(Cargo_dwt.*SCE1_Ice_n_tf)) + SCE1_Global_Ice_CO2eqtax_ptv_tf;

SCE1_NonIce_FC_ptv_t0 = ((SCE1_NonIce_Total_Voyage_cost_t0 + SCE1_NonIce_OpEx_t0 + SCE1_NonIce_Total_CapEx_t0)./(Cargo_dwt.*SCE1_NonIce_n_t0)) + SCE1_Global_NonIce_CO2eqtax_ptv_t0;
SCE1_NonIce_FC_ptv_tm = ((SCE1_NonIce_Total_Voyage_cost_tm + SCE1_NonIce_OpEx_tm + SCE1_NonIce_Total_CapEx_tm)./(Cargo_dwt.*SCE1_NonIce_n_tm)) + SCE1_Global_NonIce_CO2eqtax_ptv_tm;
SCE1_NonIce_FC_ptv_tf = ((SCE1_NonIce_Total_Voyage_cost_tf + SCE1_NonIce_OpEx_tf + SCE1_NonIce_Total_CapEx_tf)./(Cargo_dwt.*SCE1_NonIce_n_tf)) + SCE1_Global_NonIce_CO2eqtax_ptv_tf;

%Scenario 2
%%%%%%%%%%%%%%
SCE2_Global_Ice_CO2eqtax_t0 = Carbon_price_t0.*SCE2_Global_Ice_CO2eq_matrix_t0;
SCE2_Global_Ice_CO2eqtax_tm = Carbon_price_tm.*SCE2_Global_Ice_CO2eq_matrix_tm;
SCE2_Global_Ice_CO2eqtax_tf = Carbon_price_tf.*SCE2_Global_Ice_CO2eq_matrix_tf;

SCE2_Global_NonIce_CO2eqtax_t0 = Carbon_price_t0.*SCE2_Global_NonIce_CO2eq_matrix_t0;
SCE2_Global_NonIce_CO2eqtax_tm = Carbon_price_tm.*SCE2_Global_NonIce_CO2eq_matrix_tm;
SCE2_Global_NonIce_CO2eqtax_tf = Carbon_price_tf.*SCE2_Global_NonIce_CO2eq_matrix_tf;

SCE2_Global_Ice_CO2eqtax_ptv_t0 = Carbon_price_t0.*SCE2_Global_Ice_CO2eq_matrix_t0./((SCE2_Ice_n_t0) + (SCE2_Ice_Suez_n_t0).*Cargo_dwt);
SCE2_Global_Ice_CO2eqtax_ptv_tm = Carbon_price_tm.*SCE2_Global_Ice_CO2eq_matrix_tm./((SCE2_Ice_n_tm) + (SCE2_Ice_Suez_n_tm).*Cargo_dwt);
SCE2_Global_Ice_CO2eqtax_ptv_tf = Carbon_price_tf.*SCE2_Global_Ice_CO2eq_matrix_tf./((SCE2_Ice_n_tf) + (SCE2_Ice_Suez_n_tf).*Cargo_dwt);

SCE2_Global_NonIce_CO2eqtax_ptv_t0 = Carbon_price_t0.*SCE2_Global_NonIce_CO2eq_matrix_t0./(((SCE2_NonIce_n_t0) + (SCE2_NonIce_Suez_n_t0)).*Cargo_dwt);
SCE2_Global_NonIce_CO2eqtax_ptv_tm = Carbon_price_tm.*SCE2_Global_NonIce_CO2eq_matrix_tm./(((SCE2_NonIce_n_tm) + (SCE2_NonIce_Suez_n_tm)).*Cargo_dwt);
SCE2_Global_NonIce_CO2eqtax_ptv_tf = Carbon_price_tf.*SCE2_Global_NonIce_CO2eq_matrix_tf./(((SCE2_NonIce_n_tf) + (SCE2_NonIce_Suez_n_tf)).*Cargo_dwt);

%Tonne voyages
SCE2_Ice_FC_ptv_t0 = ((SCE2_Ice_Total_Voyage_cost_t0 + SCE2_Ice_OpEx_t0 + SCE2_Ice_Total_CapEx_t0 )./(((SCE2_Ice_n_t0) + (SCE2_Ice_Suez_n_t0)).*Cargo_dwt)) + SCE2_Global_Ice_CO2eqtax_ptv_t0;
SCE2_Ice_FC_ptv_tm = ((SCE2_Ice_Total_Voyage_cost_tm + SCE2_Ice_OpEx_tm + SCE2_Ice_Total_CapEx_tm )./(((SCE2_Ice_n_tm) + (SCE2_Ice_Suez_n_tm)).*Cargo_dwt)) + SCE2_Global_Ice_CO2eqtax_ptv_tm;
SCE2_Ice_FC_ptv_tf = ((SCE2_Ice_Total_Voyage_cost_tf + SCE2_Ice_OpEx_tf + SCE2_Ice_Total_CapEx_tf )./(((SCE2_Ice_n_tf) + (SCE2_Ice_Suez_n_tf)).*Cargo_dwt)) + SCE2_Global_Ice_CO2eqtax_ptv_tf;

SCE2_NonIce_FC_ptv_t0 = ((SCE2_NonIce_Total_Voyage_cost_t0 + SCE2_NonIce_OpEx_t0 + SCE2_NonIce_Total_CapEx_t0 )./(((SCE2_NonIce_n_t0) + (SCE2_NonIce_Suez_n_t0)).*Cargo_dwt)) + SCE2_Global_NonIce_CO2eqtax_ptv_t0;
SCE2_NonIce_FC_ptv_tm = ((SCE2_NonIce_Total_Voyage_cost_tm + SCE2_NonIce_OpEx_tm + SCE2_NonIce_Total_CapEx_tm )./(((SCE2_NonIce_n_tm) + (SCE2_NonIce_Suez_n_tm)).*Cargo_dwt)) + SCE2_Global_NonIce_CO2eqtax_ptv_tm;
SCE2_NonIce_FC_ptv_tf = ((SCE2_NonIce_Total_Voyage_cost_tf + SCE2_NonIce_OpEx_tf + SCE2_NonIce_Total_CapEx_tf )./(((SCE2_NonIce_n_tf) + (SCE2_NonIce_Suez_n_tf)).*Cargo_dwt)) + SCE2_Global_NonIce_CO2eqtax_ptv_tf;

%Scenario 3
%%%%%%%%%%%%%
SCE3_Global_Ice_CO2eqtax_t0 = Carbon_price_t0.*SCE3_Global_Ice_CO2eq_matrix_t0;
SCE3_Global_Ice_CO2eqtax_tm = Carbon_price_tm.*SCE3_Global_Ice_CO2eq_matrix_tm;
SCE3_Global_Ice_CO2eqtax_tf = Carbon_price_tf.*SCE3_Global_Ice_CO2eq_matrix_tf;

SCE3_Global_NonIce_CO2eqtax_t0 = Carbon_price_t0.*SCE3_Global_NonIce_CO2eq_matrix_t0;
SCE3_Global_NonIce_CO2eqtax_tm = Carbon_price_tm.*SCE3_Global_NonIce_CO2eq_matrix_tm;
SCE3_Global_NonIce_CO2eqtax_tf = Carbon_price_tf.*SCE3_Global_NonIce_CO2eq_matrix_tf;

SCE3_Global_Ice_CO2eqtax_ptv_t0 = Carbon_price_t0.*SCE3_Global_Ice_CO2eq_matrix_t0./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_Global_Ice_CO2eqtax_ptv_tm = Carbon_price_tm.*SCE3_Global_Ice_CO2eq_matrix_tm./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_Global_Ice_CO2eqtax_ptv_tf = Carbon_price_tf.*SCE3_Global_Ice_CO2eq_matrix_tf./(Cargo_dwt.*SCE3_Suez_n_S);

SCE3_Global_NonIce_CO2eqtax_ptv_t0 = Carbon_price_t0.*SCE3_Global_NonIce_CO2eq_matrix_t0./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_Global_NonIce_CO2eqtax_ptv_tm = Carbon_price_tm.*SCE3_Global_NonIce_CO2eq_matrix_tm./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_Global_NonIce_CO2eqtax_ptv_tf = Carbon_price_tf.*SCE3_Global_NonIce_CO2eq_matrix_tf./(Cargo_dwt.*SCE3_Suez_n_S);

%Tonne voyages
SCE3_Ice_FC_ptv_t0 = ((SCE3_Ice_Total_Voyage_cost_t0 + SCE3_Ice_OpEx_t0 + SCE3_Ice_Total_CapEx_t0)./(Cargo_dwt.*SCE3_Suez_n_S))  + SCE3_Global_Ice_CO2eqtax_ptv_t0;
SCE3_Ice_FC_ptv_tm = ((SCE3_Ice_Total_Voyage_cost_tm + SCE3_Ice_OpEx_tm + SCE3_Ice_Total_CapEx_tm )./(Cargo_dwt.*SCE3_Suez_n_S)) + SCE3_Global_Ice_CO2eqtax_ptv_tm;
SCE3_Ice_FC_ptv_tf = ((SCE3_Ice_Total_Voyage_cost_tf + SCE3_Ice_OpEx_tf + SCE3_Ice_Total_CapEx_tf )./(Cargo_dwt.*SCE3_Suez_n_S)) + SCE3_Global_Ice_CO2eqtax_ptv_tf;

SCE3_NonIce_FC_ptv_t0 = ((SCE3_NonIce_Total_Voyage_cost_t0 + SCE3_NonIce_OpEx_t0 + SCE3_NonIce_Total_CapEx_t0 )./(Cargo_dwt.*SCE3_Suez_n_S)) + SCE3_Global_NonIce_CO2eqtax_ptv_t0;
SCE3_NonIce_FC_ptv_tm = ((SCE3_NonIce_Total_Voyage_cost_tm + SCE3_NonIce_OpEx_tm + SCE3_NonIce_Total_CapEx_tm )./(Cargo_dwt.*SCE3_Suez_n_S)) + SCE3_Global_NonIce_CO2eqtax_ptv_tm;
SCE3_NonIce_FC_ptv_tf = ((SCE3_NonIce_Total_Voyage_cost_tf + SCE3_NonIce_OpEx_tf + SCE3_NonIce_Total_CapEx_tf )./(Cargo_dwt.*SCE3_Suez_n_S)) + SCE3_Global_NonIce_CO2eqtax_ptv_tf;

%% Damages
Arctic_damage_costs_t0 = Arctic_damage_costs(1,:)'; Suez_damage_costs_t0 = Suez_damage_costs(1,:)';
Arctic_damage_costs_tm = Arctic_damage_costs(2,:)'; Suez_damage_costs_tm = Suez_damage_costs(2,:)';
Arctic_damage_costs_tf = Arctic_damage_costs(3,:)'; Suez_damage_costs_tf = Suez_damage_costs(3,:)';

%Calculating damages 

%Route 1 - Ice
SCE1_Global_Ice_Damage_matrix_Route1_t0 = zeros(length(SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(:,1)),length(SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route1_t0(:,1))
    
    SCE1_Global_Ice_Damage_matrix_Route1_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE1_Global_Ice_Damage_matrix_Route1_tm = zeros(length(SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(:,1)),length(SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route1_tm(:,1))
    
    SCE1_Global_Ice_Damage_matrix_Route1_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE1_Global_Ice_Damage_matrix_Route1_tf = zeros(length(SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(:,1)),length(SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route1_tf(:,1))
    
    SCE1_Global_Ice_Damage_matrix_Route1_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE1_Global_Ice_Emission_Inventory_matrix_Route1_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Route 2 - Ice
SCE1_Global_Ice_Damage_matrix_Route2_t0 = zeros(length(SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(:,1)),length(SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route2_t0(:,1))
    
    SCE1_Global_Ice_Damage_matrix_Route2_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE1_Global_Ice_Damage_matrix_Route2_tm = zeros(length(SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(:,1)),length(SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route2_tm(:,1))
    
    SCE1_Global_Ice_Damage_matrix_Route2_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE1_Global_Ice_Damage_matrix_Route2_tf = zeros(length(SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(:,1)),length(SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route2_tf(:,1))
    
    SCE1_Global_Ice_Damage_matrix_Route2_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE1_Global_Ice_Emission_Inventory_matrix_Route2_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Route 3
SCE1_Global_Ice_Damage_matrix_Route3_t0 = zeros(length(SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(:,1)),length(SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route3_t0(:,1))
    
    SCE1_Global_Ice_Damage_matrix_Route3_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE1_Global_Ice_Damage_matrix_Route3_tm = zeros(length(SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(:,1)),length(SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route3_tm(:,1))
    
    SCE1_Global_Ice_Damage_matrix_Route3_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE1_Global_Ice_Damage_matrix_Route3_tf = zeros(length(SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(:,1)),length(SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(1,:)));
for i = 1:1:length(Scenario1_Ice_Fuel_consumption_Route3_tf(:,1))
    
    SCE1_Global_Ice_Damage_matrix_Route3_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE1_Global_Ice_Emission_Inventory_matrix_Route3_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Route 1 - NonIce
SCE1_Global_NonIce_Damage_matrix_Route1_t0 = zeros(length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(:,1)),length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route1_t0(:,1))
    
    SCE1_Global_NonIce_Damage_matrix_Route1_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE1_Global_NonIce_Damage_matrix_Route1_tm = zeros(length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(:,1)),length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route1_tm(:,1))
    
    SCE1_Global_NonIce_Damage_matrix_Route1_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE1_Global_NonIce_Damage_matrix_Route1_tf = zeros(length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(:,1)),length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route1_tf(:,1))
    
    SCE1_Global_NonIce_Damage_matrix_Route1_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route1_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Route 2 - NonIce
SCE1_Global_NonIce_Damage_matrix_Route2_t0 = zeros(length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(:,1)),length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route2_t0(:,1))
    
    SCE1_Global_NonIce_Damage_matrix_Route2_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE1_Global_NonIce_Damage_matrix_Route2_tm = zeros(length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(:,1)),length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route2_tm(:,1))
    
    SCE1_Global_NonIce_Damage_matrix_Route2_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE1_Global_NonIce_Damage_matrix_Route2_tf = zeros(length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(:,1)),length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route2_tf(:,1))
    
    SCE1_Global_NonIce_Damage_matrix_Route2_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route2_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Route 3 - Nonice 
SCE1_Global_NonIce_Damage_matrix_Route3_t0 = zeros(length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(:,1)),length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route3_t0(:,1))
    
    SCE1_Global_NonIce_Damage_matrix_Route3_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE1_Global_NonIce_Damage_matrix_Route3_tm = zeros(length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(:,1)),length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route3_tm(:,1))
    
    SCE1_Global_NonIce_Damage_matrix_Route3_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE1_Global_NonIce_Damage_matrix_Route3_tf = zeros(length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(:,1)),length(SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(1,:)));
for i = 1:1:length(Scenario1_NonIce_Fuel_consumption_Route3_tf(:,1))
    
    SCE1_Global_NonIce_Damage_matrix_Route3_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE1_Global_NonIce_Emission_Inventory_matrix_Route3_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%SCE2 - Suez
SCE2_Global_Ice_Damage_Suez_matrix_Route1_t0 = zeros(length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_t0(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route1_t0(:,1))
    
    SCE2_Global_Ice_Damage_Suez_matrix_Route1_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:) = Suez_damage_costs_t0.*SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Suez_matrix_Route1_tm = zeros(length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tm(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route1_tm(:,1))
    
    SCE2_Global_Ice_Damage_Suez_matrix_Route1_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:) = Suez_damage_costs_tm.*SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Suez_matrix_Route1_tf = zeros(length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tf(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route1_tf(:,1))
    
    SCE2_Global_Ice_Damage_Suez_matrix_Route1_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:) = Suez_damage_costs_tf.*SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route1_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:);
    
end

%Route 2
SCE2_Global_Ice_Damage_Suez_matrix_Route2_t0 = zeros(length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_t0(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route2_t0(:,1))
    
    SCE2_Global_Ice_Damage_Suez_matrix_Route2_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:) = Suez_damage_costs_t0.*SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Suez_matrix_Route2_tm = zeros(length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tm(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route2_tm(:,1))
    
    SCE2_Global_Ice_Damage_Suez_matrix_Route2_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:) = Suez_damage_costs_tm.*SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Suez_matrix_Route2_tf = zeros(length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tf(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route2_tf(:,1))
    
    SCE2_Global_Ice_Damage_Suez_matrix_Route2_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:) = Suez_damage_costs_tf.*SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route2_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:);
    
end

%Route 3
SCE2_Global_Ice_Damage_Suez_matrix_Route3_t0 = zeros(length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_t0(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route3_t0(:,1))
    
    SCE2_Global_Ice_Damage_Suez_matrix_Route3_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:) = Suez_damage_costs_t0.*SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Suez_matrix_Route3_tm = zeros(length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tm(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route3_tm(:,1))
    
    SCE2_Global_Ice_Damage_Suez_matrix_Route3_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:) = Suez_damage_costs_tm.*SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Suez_matrix_Route3_tf = zeros(length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tf(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route3_tf(:,1))
    
    SCE2_Global_Ice_Damage_Suez_matrix_Route3_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:) = Suez_damage_costs_tf.*SCE2_Global_Ice_Emission_Inventory_Suez_matrix_Route3_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:);
    
end

%Non Ice
SCE2_Global_NonIce_Damage_Suez_matrix_Route1_t0 = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_t0(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route1_t0(:,1))
    
    SCE2_Global_NonIce_Damage_Suez_matrix_Route1_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:) = Suez_damage_costs_t0.*SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Suez_matrix_Route1_tm = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tm(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route1_tm(:,1))
    
    SCE2_Global_NonIce_Damage_Suez_matrix_Route1_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:) = Suez_damage_costs_tm.*SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Suez_matrix_Route1_tf = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tf(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route1_tf(:,1))
    
    SCE2_Global_NonIce_Damage_Suez_matrix_Route1_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:) = Suez_damage_costs_tf.*SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route1_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:);
    
end

%Route 2
SCE2_Global_NonIce_Damage_Suez_matrix_Route2_t0 = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_t0(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route2_t0(:,1))
    
    SCE2_Global_NonIce_Damage_Suez_matrix_Route2_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:) = Suez_damage_costs_t0.*SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Suez_matrix_Route2_tm = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tm(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route2_tm(:,1))
    
    SCE2_Global_NonIce_Damage_Suez_matrix_Route2_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:) = Suez_damage_costs_tm.*SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Suez_matrix_Route2_tf = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tf(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route2_tf(:,1))
    
    SCE2_Global_NonIce_Damage_Suez_matrix_Route2_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:) = Suez_damage_costs_tf.*SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route2_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:);
    
end

%Route 3
SCE2_Global_NonIce_Damage_Suez_matrix_Route3_t0 = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_t0(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route3_t0(:,1))
    
    SCE2_Global_NonIce_Damage_Suez_matrix_Route3_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:) = Suez_damage_costs_t0.*SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Suez_matrix_Route3_tm = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tm(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route3_tm(:,1))
    
    SCE2_Global_NonIce_Damage_Suez_matrix_Route3_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:) = Suez_damage_costs_tm.*SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Suez_matrix_Route3_tf = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tf(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route3_tf(:,1))
    
    SCE2_Global_NonIce_Damage_Suez_matrix_Route3_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:) = Suez_damage_costs_tf.*SCE2_Global_NonIce_Emission_Inventory_Suez_matrix_Route3_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:);
    
end

%Arctic
SCE2_Global_Ice_Damage_Arctic_matrix_Route1_t0 = zeros(length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_t0(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route1_t0(:,1))
    
    SCE2_Global_Ice_Damage_Arctic_matrix_Route1_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Arctic_matrix_Route1_tm = zeros(length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tm(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route1_tm(:,1))
    
    SCE2_Global_Ice_Damage_Arctic_matrix_Route1_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Arctic_matrix_Route1_tf = zeros(length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tf(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route1_tf(:,1))
    
    SCE2_Global_Ice_Damage_Arctic_matrix_Route1_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route1_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Route 2
SCE2_Global_Ice_Damage_Arctic_matrix_Route2_t0 = zeros(length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_t0(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route2_t0(:,1))
    
    SCE2_Global_Ice_Damage_Arctic_matrix_Route2_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Arctic_matrix_Route2_tm = zeros(length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tm(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route2_tm(:,1))
    
    SCE2_Global_Ice_Damage_Arctic_matrix_Route2_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Arctic_matrix_Route2_tf = zeros(length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tf(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route2_tf(:,1))
    
    SCE2_Global_Ice_Damage_Arctic_matrix_Route2_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route2_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Route 3
SCE2_Global_Ice_Damage_Arctic_matrix_Route3_t0 = zeros(length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_t0(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_t0(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route3_t0(:,1))
    
    SCE2_Global_Ice_Damage_Arctic_matrix_Route3_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Arctic_matrix_Route3_tm = zeros(length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tm(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tm(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route3_tm(:,1))
    
    SCE2_Global_Ice_Damage_Arctic_matrix_Route3_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_Ice_Damage_Arctic_matrix_Route3_tf = zeros(length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tf(:,1)),length(SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tf(1,:)));
for i = 1:1:length(Scenario2_Ice_Fuel_consumption_Route3_tf(:,1))
    
    SCE2_Global_Ice_Damage_Arctic_matrix_Route3_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE2_Global_Ice_Emission_Inventory_Arctic_matrix_Route3_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Non Ice
SCE2_Global_NonIce_Damage_Arctic_matrix_Route1_t0 = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_t0(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route1_t0(:,1))
    
    SCE2_Global_NonIce_Damage_Arctic_matrix_Route1_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Arctic_matrix_Route1_tm = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tm(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route1_tm(:,1))
    
    SCE2_Global_NonIce_Damage_Arctic_matrix_Route1_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Arctic_matrix_Route1_tf = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tf(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route1_tf(:,1))
    
    SCE2_Global_NonIce_Damage_Arctic_matrix_Route1_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route1_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Route 2
SCE2_Global_NonIce_Damage_Arctic_matrix_Route2_t0 = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_t0(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route2_t0(:,1))
    
    SCE2_Global_NonIce_Damage_Arctic_matrix_Route2_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Arctic_matrix_Route2_tm = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tm(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route2_tm(:,1))
    
    SCE2_Global_NonIce_Damage_Arctic_matrix_Route2_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Arctic_matrix_Route2_tf = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tf(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route2_tf(:,1))
    
    SCE2_Global_NonIce_Damage_Arctic_matrix_Route2_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route2_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Route 3
SCE2_Global_NonIce_Damage_Arctic_matrix_Route3_t0 = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_t0(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_t0(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route3_t0(:,1))
    
    SCE2_Global_NonIce_Damage_Arctic_matrix_Route3_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:) = Arctic_damage_costs_t0.*SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_t0(1 + length(Arctic_damage_costs_t0(:,1)).*(i-1) : length(Arctic_damage_costs_t0(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Arctic_matrix_Route3_tm = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tm(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tm(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route3_tm(:,1))
    
    SCE2_Global_NonIce_Damage_Arctic_matrix_Route3_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:) = Arctic_damage_costs_tm.*SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tm(1 + length(Arctic_damage_costs_tm(:,1)).*(i-1) : length(Arctic_damage_costs_tm(:,1)).*i,:);
    
end

SCE2_Global_NonIce_Damage_Arctic_matrix_Route3_tf = zeros(length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tf(:,1)),length(SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tf(1,:)));
for i = 1:1:length(Scenario2_NonIce_Fuel_consumption_Route3_tf(:,1))
    
    SCE2_Global_NonIce_Damage_Arctic_matrix_Route3_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:) = Arctic_damage_costs_tf.*SCE2_Global_NonIce_Emission_Inventory_Arctic_matrix_Route3_tf(1 + length(Arctic_damage_costs_tf(:,1)).*(i-1) : length(Arctic_damage_costs_tf(:,1)).*i,:);
    
end

%Summing the damages for SCE2 together
SCE2_Global_Ice_Damage_matrix_Route1_t0 = SCE2_Global_Ice_Damage_Suez_matrix_Route1_t0 + SCE2_Global_Ice_Damage_Arctic_matrix_Route1_t0;
SCE2_Global_Ice_Damage_matrix_Route1_tm = SCE2_Global_Ice_Damage_Suez_matrix_Route1_tm + SCE2_Global_Ice_Damage_Arctic_matrix_Route1_tm;
SCE2_Global_Ice_Damage_matrix_Route1_tf = SCE2_Global_Ice_Damage_Suez_matrix_Route1_tf + SCE2_Global_Ice_Damage_Arctic_matrix_Route1_tf;

SCE2_Global_Ice_Damage_matrix_Route2_t0 = SCE2_Global_Ice_Damage_Suez_matrix_Route2_t0 + SCE2_Global_Ice_Damage_Arctic_matrix_Route2_t0;
SCE2_Global_Ice_Damage_matrix_Route2_tm = SCE2_Global_Ice_Damage_Suez_matrix_Route2_tm + SCE2_Global_Ice_Damage_Arctic_matrix_Route2_tm;
SCE2_Global_Ice_Damage_matrix_Route2_tf = SCE2_Global_Ice_Damage_Suez_matrix_Route2_tf + SCE2_Global_Ice_Damage_Arctic_matrix_Route2_tf;

SCE2_Global_Ice_Damage_matrix_Route3_t0 = SCE2_Global_Ice_Damage_Suez_matrix_Route3_t0 + SCE2_Global_Ice_Damage_Arctic_matrix_Route3_t0;
SCE2_Global_Ice_Damage_matrix_Route3_tm = SCE2_Global_Ice_Damage_Suez_matrix_Route3_tm + SCE2_Global_Ice_Damage_Arctic_matrix_Route3_tm;
SCE2_Global_Ice_Damage_matrix_Route3_tf = SCE2_Global_Ice_Damage_Suez_matrix_Route3_tf + SCE2_Global_Ice_Damage_Arctic_matrix_Route3_tf;

SCE2_Global_NonIce_Damage_matrix_Route1_t0 = SCE2_Global_NonIce_Damage_Suez_matrix_Route1_t0 + SCE2_Global_NonIce_Damage_Arctic_matrix_Route1_t0;
SCE2_Global_NonIce_Damage_matrix_Route1_tm = SCE2_Global_NonIce_Damage_Suez_matrix_Route1_tm + SCE2_Global_NonIce_Damage_Arctic_matrix_Route1_tm;
SCE2_Global_NonIce_Damage_matrix_Route1_tf = SCE2_Global_NonIce_Damage_Suez_matrix_Route1_tf + SCE2_Global_NonIce_Damage_Arctic_matrix_Route1_tf;

SCE2_Global_NonIce_Damage_matrix_Route2_t0 = SCE2_Global_NonIce_Damage_Suez_matrix_Route2_t0 + SCE2_Global_NonIce_Damage_Arctic_matrix_Route2_t0;
SCE2_Global_NonIce_Damage_matrix_Route2_tm = SCE2_Global_NonIce_Damage_Suez_matrix_Route2_tm + SCE2_Global_NonIce_Damage_Arctic_matrix_Route2_tm;
SCE2_Global_NonIce_Damage_matrix_Route2_tf = SCE2_Global_NonIce_Damage_Suez_matrix_Route2_tf + SCE2_Global_NonIce_Damage_Arctic_matrix_Route2_tf;

SCE2_Global_NonIce_Damage_matrix_Route3_t0 = SCE2_Global_NonIce_Damage_Suez_matrix_Route3_t0 + SCE2_Global_NonIce_Damage_Arctic_matrix_Route3_t0;
SCE2_Global_NonIce_Damage_matrix_Route3_tm = SCE2_Global_NonIce_Damage_Suez_matrix_Route3_tm + SCE2_Global_NonIce_Damage_Arctic_matrix_Route3_tm;
SCE2_Global_NonIce_Damage_matrix_Route3_tf = SCE2_Global_NonIce_Damage_Suez_matrix_Route3_tf + SCE2_Global_NonIce_Damage_Arctic_matrix_Route3_tf;

%Scenario 3

SCE3_Global_Ice_Damage_matrix_t0 = zeros(length(SCE3_Global_Ice_Emission_Inventory_matrix_t0(:,1)),length(SCE3_Global_Ice_Emission_Inventory_matrix_t0(1,:)));
for i = 1:1:length(Scenario3_Ice_Fuel_consumption_t0(:,1))
    
    SCE3_Global_Ice_Damage_matrix_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:) = Suez_damage_costs_t0.*SCE3_Global_Ice_Emission_Inventory_matrix_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:);
    
end

SCE3_Global_Ice_Damage_matrix_tm = zeros(length(SCE3_Global_Ice_Emission_Inventory_matrix_tm(:,1)),length(SCE3_Global_Ice_Emission_Inventory_matrix_tm(1,:)));
for i = 1:1:length(Scenario3_Ice_Fuel_consumption_tm(:,1))
    
    SCE3_Global_Ice_Damage_matrix_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:) = Suez_damage_costs_tm.*SCE3_Global_Ice_Emission_Inventory_matrix_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:);
    
end

SCE3_Global_Ice_Damage_matrix_tf = zeros(length(SCE3_Global_Ice_Emission_Inventory_matrix_tf(:,1)),length(SCE3_Global_Ice_Emission_Inventory_matrix_tf(1,:)));
for i = 1:1:length(Scenario3_Ice_Fuel_consumption_tf(:,1))
    
    SCE3_Global_Ice_Damage_matrix_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:) = Suez_damage_costs_tf.*SCE3_Global_Ice_Emission_Inventory_matrix_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:);
    
end

SCE3_Global_NonIce_Damage_matrix_t0 = zeros(length(SCE3_Global_NonIce_Emission_Inventory_matrix_t0(:,1)),length(SCE3_Global_NonIce_Emission_Inventory_matrix_t0(1,:)));
for i = 1:1:length(Scenario3_NonIce_Fuel_consumption_t0(:,1))
    
    SCE3_Global_NonIce_Damage_matrix_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:) = Suez_damage_costs_t0.*SCE3_Global_NonIce_Emission_Inventory_matrix_t0(1 + length(Suez_damage_costs_t0(:,1)).*(i-1) : length(Suez_damage_costs_t0(:,1)).*i,:);
    
end

SCE3_Global_NonIce_Damage_matrix_tm = zeros(length(SCE3_Global_NonIce_Emission_Inventory_matrix_tm(:,1)),length(SCE3_Global_NonIce_Emission_Inventory_matrix_tm(1,:)));
for i = 1:1:length(Scenario3_NonIce_Fuel_consumption_tm(:,1))
    
    SCE3_Global_NonIce_Damage_matrix_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:) = Suez_damage_costs_tm.*SCE3_Global_NonIce_Emission_Inventory_matrix_tm(1 + length(Suez_damage_costs_tm(:,1)).*(i-1) : length(Suez_damage_costs_tm(:,1)).*i,:);
    
end

SCE3_Global_NonIce_Damage_matrix_tf = zeros(length(SCE3_Global_NonIce_Emission_Inventory_matrix_tf(:,1)),length(SCE3_Global_NonIce_Emission_Inventory_matrix_tf(1,:)));
for i = 1:1:length(Scenario3_NonIce_Fuel_consumption_tf(:,1))
    
    SCE3_Global_NonIce_Damage_matrix_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:) = Suez_damage_costs_tf.*SCE3_Global_NonIce_Emission_Inventory_matrix_tf(1 + length(Suez_damage_costs_tf(:,1)).*(i-1) : length(Suez_damage_costs_tf(:,1)).*i,:);
    
end

%Separating air pollution and climate costs - Scenario 1

SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0 = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE1_Global_Ice_AP_Damage_matrix_Route1_t0 = zeros(6.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
    SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 7,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 9,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 11,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 12,:);
    
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 7,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 8,:) = SCE1_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(i,:) = sum(SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(i,:) = sum(SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_AP_Damage_matrix_Route1_t0 = SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),:); SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0 = SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),:);


SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE1_Global_Ice_AP_Damage_matrix_Route1_tm = zeros(6.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 7,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 9,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 11,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 12,:);
    
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 7,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 8,:) = SCE1_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(i,:) = sum(SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(i,:) = sum(SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 1:8.*i,:));
end
SCE1_Global_Ice_AP_Damage_matrix_Route1_tm = SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),:); SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm = SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);
SCE1_Global_Ice_AP_Damage_matrix_Route1_tf = zeros(6.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 7,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 9,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 11,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 12,:);
    
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 7,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 8,:) = SCE1_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(i,:) = sum(SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(i,:) = sum(SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_AP_Damage_matrix_Route1_tf = SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),:); SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf = SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),:);

%Route 2

SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0 = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE1_Global_Ice_AP_Damage_matrix_Route2_t0 = zeros(6.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
    SCE1_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 7,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 9,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 11,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 12,:);
    
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 7,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 8,:) = SCE1_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_Ice_AP_Damage_matrix_Route2_t0(i,:) = sum(SCE1_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(i,:) = sum(SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_AP_Damage_matrix_Route2_t0 = SCE1_Global_Ice_AP_Damage_matrix_Route2_t0(1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),:); SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0 = SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),:);


SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE1_Global_Ice_AP_Damage_matrix_Route2_tm = zeros(6.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 7,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 9,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 11,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 12,:);
    
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 7,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 8,:) = SCE1_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tm(i,:) = sum(SCE1_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(i,:) = sum(SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 1:8.*i,:));
end
SCE1_Global_Ice_AP_Damage_matrix_Route2_tm = SCE1_Global_Ice_AP_Damage_matrix_Route2_tm(1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),:); SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm = SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);
SCE1_Global_Ice_AP_Damage_matrix_Route2_tf = zeros(6.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 7,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 9,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 11,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 12,:);
    
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 7,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 8,:) = SCE1_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_Ice_AP_Damage_matrix_Route2_tf(i,:) = sum(SCE1_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(i,:) = sum(SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_AP_Damage_matrix_Route2_tf = SCE1_Global_Ice_AP_Damage_matrix_Route2_tf(1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),:); SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf = SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),:);

%Route 3
SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0 = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE1_Global_Ice_AP_Damage_matrix_Route3_t0 = zeros(6.*length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),length(SCE1_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
    SCE1_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 7,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 9,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 11,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 12,:);
    
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 7,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 8,:) = SCE1_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_Ice_AP_Damage_matrix_Route3_t0(i,:) = sum(SCE1_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(i,:) = sum(SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_AP_Damage_matrix_Route3_t0 = SCE1_Global_Ice_AP_Damage_matrix_Route3_t0(1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),:); SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0 = SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(1:length(SCE1_Ice_Total_Fuel_costs_t0(:,1)),:);


SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE1_Global_Ice_AP_Damage_matrix_Route3_tm = zeros(6.*length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),length(SCE1_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 7,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 9,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 11,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 12,:);
    
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 7,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 8,:) = SCE1_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tm(i,:) = sum(SCE1_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(i,:) = sum(SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 1:8.*i,:));
end
SCE1_Global_Ice_AP_Damage_matrix_Route3_tm = SCE1_Global_Ice_AP_Damage_matrix_Route3_tm(1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),:); SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm = SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(1:length(SCE1_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf = zeros(8.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);
SCE1_Global_Ice_AP_Damage_matrix_Route3_tf = zeros(6.*length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),length(SCE1_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 7,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 8,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 9,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 10,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 11,:);
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 12,:);
    
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 1,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 1,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 2,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 2,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 3,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 3,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 4,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 4,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 5,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 5,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 6,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 6,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 7,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 13,:);
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 8,:) = SCE1_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_Ice_AP_Damage_matrix_Route3_tf(i,:) = sum(SCE1_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(i,:) = sum(SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_Ice_AP_Damage_matrix_Route3_tf = SCE1_Global_Ice_AP_Damage_matrix_Route3_tf(1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),:); SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf = SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(1:length(SCE1_Ice_Total_Fuel_costs_tf(:,1)),:);

%Non ice

SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0 = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0 = zeros(6.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 7,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 9,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 11,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 12,:);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 7,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 8,:) = SCE1_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(i,:) = sum(SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(i,:) = sum(SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0 = SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),:); SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0 = SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),:);


SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm = zeros(6.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 7,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 9,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 11,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 12,:);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 7,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 8,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(i,:) = sum(SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(i,:) = sum(SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 1:8.*i,:));
end
SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm = SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),:); SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm = SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);
SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf = zeros(6.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 7,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 9,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 11,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 12,:);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 7,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 8,:) = SCE1_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(i,:) = sum(SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(i,:) = sum(SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf = SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),:); SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf = SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Route 2

SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0 = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0 = zeros(6.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 7,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 9,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 11,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 12,:);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 7,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 8,:) = SCE1_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0(i,:) = sum(SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(i,:) = sum(SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0 = SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0(1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),:); SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0 = SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),:);


SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm = zeros(6.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 7,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 9,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 11,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 12,:);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 7,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 8,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm(i,:) = sum(SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(i,:) = sum(SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 1:8.*i,:));
end
SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm = SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm(1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),:); SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm = SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);
SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf = zeros(6.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 7,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 9,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 11,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 12,:);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 7,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 8,:) = SCE1_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf(i,:) = sum(SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(i,:) = sum(SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf = SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf(1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),:); SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf = SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Route 3
SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0 = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0 = zeros(6.*length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE1_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 7,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 9,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 11,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 12,:);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 7,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 8,:) = SCE1_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0(i,:) = sum(SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(i,:) = sum(SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0 = SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0(1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),:); SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0 = SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(1:length(SCE1_NonIce_Total_Fuel_costs_t0(:,1)),:);


SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm = zeros(6.*length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 7,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 9,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 11,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 12,:);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 7,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 8,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm(i,:) = sum(SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(i,:) = sum(SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 1:8.*i,:));
end
SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm = SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm(1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),:); SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm = SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(1:length(SCE1_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf = zeros(8.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);
SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf = zeros(6.*length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE1_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 7,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 8,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 9,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 10,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 11,:);
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 12,:);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 1,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 1,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 2,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 2,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 3,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 3,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 4,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 4,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 5,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 5,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 6,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 6,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 7,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 13,:);
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 8,:) = SCE1_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf(i,:) = sum(SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 1:6.*i,:));
    SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(i,:) = sum(SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf = SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf(1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),:); SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf = SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(1:length(SCE1_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Scenario 2

SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0 = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE2_Global_Ice_AP_Damage_matrix_Route1_t0 = zeros(6.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
    SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 7,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 9,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 11,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 12,:);
    
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 7,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 8,:) = SCE2_Global_Ice_Damage_matrix_Route1_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(i,:) = sum(SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(i,:) = sum(SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_AP_Damage_matrix_Route1_t0 = SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),:); SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0 = SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),:);


SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE2_Global_Ice_AP_Damage_matrix_Route1_tm = zeros(6.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 7,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 9,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 11,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 12,:);
    
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 7,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 8,:) = SCE2_Global_Ice_Damage_matrix_Route1_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(i,:) = sum(SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(i,:) = sum(SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 1:8.*i,:));
end
SCE2_Global_Ice_AP_Damage_matrix_Route1_tm = SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),:); SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm = SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);
SCE2_Global_Ice_AP_Damage_matrix_Route1_tf = zeros(6.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 7,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 9,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 11,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 12,:);
    
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 7,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 8,:) = SCE2_Global_Ice_Damage_matrix_Route1_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(i,:) = sum(SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(i,:) = sum(SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_AP_Damage_matrix_Route1_tf = SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),:); SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf = SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),:);

%Route 2

SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0 = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE2_Global_Ice_AP_Damage_matrix_Route2_t0 = zeros(6.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
    SCE2_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 7,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 9,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 11,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 12,:);
    
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 7,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 8,:) = SCE2_Global_Ice_Damage_matrix_Route2_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_Ice_AP_Damage_matrix_Route2_t0(i,:) = sum(SCE2_Global_Ice_AP_Damage_matrix_Route2_t0(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(i,:) = sum(SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_AP_Damage_matrix_Route2_t0 = SCE2_Global_Ice_AP_Damage_matrix_Route2_t0(1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),:); SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0 = SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),:);


SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE2_Global_Ice_AP_Damage_matrix_Route2_tm = zeros(6.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 7,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 9,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 11,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 12,:);
    
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 7,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 8,:) = SCE2_Global_Ice_Damage_matrix_Route2_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tm(i,:) = sum(SCE2_Global_Ice_AP_Damage_matrix_Route2_tm(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(i,:) = sum(SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 1:8.*i,:));
end
SCE2_Global_Ice_AP_Damage_matrix_Route2_tm = SCE2_Global_Ice_AP_Damage_matrix_Route2_tm(1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),:); SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm = SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);
SCE2_Global_Ice_AP_Damage_matrix_Route2_tf = zeros(6.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 7,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 9,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 11,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 12,:);
    
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 7,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 8,:) = SCE2_Global_Ice_Damage_matrix_Route2_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_Ice_AP_Damage_matrix_Route2_tf(i,:) = sum(SCE2_Global_Ice_AP_Damage_matrix_Route2_tf(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(i,:) = sum(SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_AP_Damage_matrix_Route2_tf = SCE2_Global_Ice_AP_Damage_matrix_Route2_tf(1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),:); SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf = SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),:);

%Route 3
SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0 = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
SCE2_Global_Ice_AP_Damage_matrix_Route3_t0 = zeros(6.*length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),length(SCE2_Ice_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
    SCE2_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 7,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 9,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 11,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 12,:);
    
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 7,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 8,:) = SCE2_Global_Ice_Damage_matrix_Route3_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_Ice_AP_Damage_matrix_Route3_t0(i,:) = sum(SCE2_Global_Ice_AP_Damage_matrix_Route3_t0(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(i,:) = sum(SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_AP_Damage_matrix_Route3_t0 = SCE2_Global_Ice_AP_Damage_matrix_Route3_t0(1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),:); SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0 = SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(1:length(SCE2_Ice_Total_Fuel_costs_t0(:,1)),:);


SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
SCE2_Global_Ice_AP_Damage_matrix_Route3_tm = zeros(6.*length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),length(SCE2_Ice_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 7,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 9,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 11,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 12,:);
    
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 7,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 8,:) = SCE2_Global_Ice_Damage_matrix_Route3_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tm(i,:) = sum(SCE2_Global_Ice_AP_Damage_matrix_Route3_tm(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(i,:) = sum(SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 1:8.*i,:));
end
SCE2_Global_Ice_AP_Damage_matrix_Route3_tm = SCE2_Global_Ice_AP_Damage_matrix_Route3_tm(1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),:); SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm = SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(1:length(SCE2_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf = zeros(8.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);
SCE2_Global_Ice_AP_Damage_matrix_Route3_tf = zeros(6.*length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),length(SCE2_Ice_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 7,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 8,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 9,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 10,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 11,:);
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 12,:);
    
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 1,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 1,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 2,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 2,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 3,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 3,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 4,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 4,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 5,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 5,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 6,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 6,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 7,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 13,:);
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 8,:) = SCE2_Global_Ice_Damage_matrix_Route3_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_Ice_AP_Damage_matrix_Route3_tf(i,:) = sum(SCE2_Global_Ice_AP_Damage_matrix_Route3_tf(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(i,:) = sum(SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_Ice_AP_Damage_matrix_Route3_tf = SCE2_Global_Ice_AP_Damage_matrix_Route3_tf(1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),:); SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf = SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(1:length(SCE2_Ice_Total_Fuel_costs_tf(:,1)),:);

%Non ice

SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0 = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0 = zeros(6.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 7,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 9,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 11,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 12,:);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 7,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 8,:) = SCE2_Global_NonIce_Damage_matrix_Route1_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(i,:) = sum(SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(i,:) = sum(SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0 = SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),:); SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0 = SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),:);


SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm = zeros(6.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 7,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 9,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 11,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 12,:);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 7,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 8,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(i,:) = sum(SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(i,:) = sum(SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(8.*(i-1) + 1:8.*i,:));
end
SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm = SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),:); SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm = SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);
SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf = zeros(6.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 7,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 9,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 11,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 12,:);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 7,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 8,:) = SCE2_Global_NonIce_Damage_matrix_Route1_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(i,:) = sum(SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(i,:) = sum(SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf = SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),:); SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf = SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Route 2

SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0 = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0 = zeros(6.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 7,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 9,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 11,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 12,:);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 7,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 8,:) = SCE2_Global_NonIce_Damage_matrix_Route2_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0(i,:) = sum(SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(i,:) = sum(SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0 = SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0(1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),:); SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0 = SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),:);


SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm = zeros(6.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 7,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 9,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 11,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 12,:);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 7,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 8,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm(i,:) = sum(SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(i,:) = sum(SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(8.*(i-1) + 1:8.*i,:));
end
SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm = SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm(1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),:); SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm = SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);
SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf = zeros(6.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 7,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 9,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 11,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 12,:);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 7,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 8,:) = SCE2_Global_NonIce_Damage_matrix_Route2_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf(i,:) = sum(SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(i,:) = sum(SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf = SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf(1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),:); SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf = SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Route 3
SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0 = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0 = zeros(6.*length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE2_NonIce_Total_Fuel_costs_t0(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 7,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 9,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 11,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 12,:);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 7,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 8,:) = SCE2_Global_NonIce_Damage_matrix_Route3_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0(i,:) = sum(SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(i,:) = sum(SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0 = SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0(1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),:); SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0 = SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(1:length(SCE2_NonIce_Total_Fuel_costs_t0(:,1)),:);


SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm = zeros(6.*length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tm(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 7,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 9,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 11,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 12,:);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 7,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 8,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm(i,:) = sum(SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(i,:) = sum(SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(8.*(i-1) + 1:8.*i,:));
end
SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm = SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm(1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),:); SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm = SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(1:length(SCE2_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf = zeros(8.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);
SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf = zeros(6.*length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE2_NonIce_Total_Fuel_costs_tf(1,:))./3);
for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 7,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 8,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 9,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 10,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 11,:);
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 12,:);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 1,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 1,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 2,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 2,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 3,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 3,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 4,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 4,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 5,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 5,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 6,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 6,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 7,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 13,:);
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 8,:) = SCE2_Global_NonIce_Damage_matrix_Route3_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf(i,:) = sum(SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf(6.*(i-1) + 1:6.*i,:));
    SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(i,:) = sum(SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf = SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf(1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),:); SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf = SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(1:length(SCE2_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Scenario 3

SCE3_Global_Ice_Clim_Damage_matrix_t0 = zeros(8.*length(SCE3_Ice_Total_Fuel_costs_t0(:,1)),length(SCE3_Ice_Total_Fuel_costs_t0(1,:)));
SCE3_Global_Ice_AP_Damage_matrix_t0 = zeros(6.*length(SCE3_Ice_Total_Fuel_costs_t0(:,1)),length(SCE3_Ice_Total_Fuel_costs_t0(1,:)));
for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_t0(:,1))
    SCE3_Global_Ice_AP_Damage_matrix_t0(6.*(i-1) + 1,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 7,:);
    SCE3_Global_Ice_AP_Damage_matrix_t0(6.*(i-1) + 2,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 8,:);
    SCE3_Global_Ice_AP_Damage_matrix_t0(6.*(i-1) + 3,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 9,:);
    SCE3_Global_Ice_AP_Damage_matrix_t0(6.*(i-1) + 4,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 10,:);
    SCE3_Global_Ice_AP_Damage_matrix_t0(6.*(i-1) + 5,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 11,:);
    SCE3_Global_Ice_AP_Damage_matrix_t0(6.*(i-1) + 6,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 12,:);
    
    SCE3_Global_Ice_Clim_Damage_matrix_t0(8.*(i-1) + 1,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 1,:);
    SCE3_Global_Ice_Clim_Damage_matrix_t0(8.*(i-1) + 2,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 2,:);
    SCE3_Global_Ice_Clim_Damage_matrix_t0(8.*(i-1) + 3,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 3,:);
    SCE3_Global_Ice_Clim_Damage_matrix_t0(8.*(i-1) + 4,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 4,:);
    SCE3_Global_Ice_Clim_Damage_matrix_t0(8.*(i-1) + 5,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 5,:);
    SCE3_Global_Ice_Clim_Damage_matrix_t0(8.*(i-1) + 6,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 6,:);
    SCE3_Global_Ice_Clim_Damage_matrix_t0(8.*(i-1) + 7,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 13,:);
    SCE3_Global_Ice_Clim_Damage_matrix_t0(8.*(i-1) + 8,:) = SCE3_Global_Ice_Damage_matrix_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_t0(:,1))
    
    SCE3_Global_Ice_AP_Damage_matrix_t0(i,:) = sum(SCE3_Global_Ice_AP_Damage_matrix_t0(6.*(i-1) + 1:6.*i,:));
    SCE3_Global_Ice_Clim_Damage_matrix_t0(i,:) = sum(SCE3_Global_Ice_Clim_Damage_matrix_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE3_Global_Ice_AP_Damage_matrix_t0 = SCE3_Global_Ice_AP_Damage_matrix_t0(1:length(SCE3_Ice_Total_Fuel_costs_t0(:,1)),:); SCE3_Global_Ice_Clim_Damage_matrix_t0 = SCE3_Global_Ice_Clim_Damage_matrix_t0(1:length(SCE3_Ice_Total_Fuel_costs_t0(:,1)),:);


SCE3_Global_Ice_Clim_Damage_matrix_tm = zeros(8.*length(SCE3_Ice_Total_Fuel_costs_tm(:,1)),length(SCE3_Ice_Total_Fuel_costs_tm(1,:)));
SCE3_Global_Ice_AP_Damage_matrix_tm = zeros(6.*length(SCE3_Ice_Total_Fuel_costs_tm(:,1)),length(SCE3_Ice_Total_Fuel_costs_tm(1,:)));
for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_tm(:,1))
    SCE3_Global_Ice_AP_Damage_matrix_tm(6.*(i-1) + 1,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 7,:);
    SCE3_Global_Ice_AP_Damage_matrix_tm(6.*(i-1) + 2,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 8,:);
    SCE3_Global_Ice_AP_Damage_matrix_tm(6.*(i-1) + 3,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 9,:);
    SCE3_Global_Ice_AP_Damage_matrix_tm(6.*(i-1) + 4,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 10,:);
    SCE3_Global_Ice_AP_Damage_matrix_tm(6.*(i-1) + 5,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 11,:);
    SCE3_Global_Ice_AP_Damage_matrix_tm(6.*(i-1) + 6,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 12,:);
    
    SCE3_Global_Ice_Clim_Damage_matrix_tm(8.*(i-1) + 1,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 1,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tm(8.*(i-1) + 2,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 2,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tm(8.*(i-1) + 3,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 3,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tm(8.*(i-1) + 4,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 4,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tm(8.*(i-1) + 5,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 5,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tm(8.*(i-1) + 6,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 6,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tm(8.*(i-1) + 7,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 13,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tm(8.*(i-1) + 8,:) = SCE3_Global_Ice_Damage_matrix_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_tm(:,1))
    
    SCE3_Global_Ice_AP_Damage_matrix_tm(i,:) = sum(SCE3_Global_Ice_AP_Damage_matrix_tm(6.*(i-1) + 1:6.*i,:));
    SCE3_Global_Ice_Clim_Damage_matrix_tm(i,:) = sum(SCE3_Global_Ice_Clim_Damage_matrix_tm(8.*(i-1) + 1:8.*i,:));
end
SCE3_Global_Ice_AP_Damage_matrix_tm = SCE3_Global_Ice_AP_Damage_matrix_tm(1:length(SCE3_Ice_Total_Fuel_costs_tm(:,1)),:); SCE3_Global_Ice_Clim_Damage_matrix_tm = SCE3_Global_Ice_Clim_Damage_matrix_tm(1:length(SCE3_Ice_Total_Fuel_costs_tm(:,1)),:);

SCE3_Global_Ice_Clim_Damage_matrix_tf = zeros(8.*length(SCE3_Ice_Total_Fuel_costs_tf(:,1)),length(SCE3_Ice_Total_Fuel_costs_tf(1,:)));
SCE3_Global_Ice_AP_Damage_matrix_tf = zeros(6.*length(SCE3_Ice_Total_Fuel_costs_tf(:,1)),length(SCE3_Ice_Total_Fuel_costs_tf(1,:)));
for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_tf(:,1))
    SCE3_Global_Ice_AP_Damage_matrix_tf(6.*(i-1) + 1,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 7,:);
    SCE3_Global_Ice_AP_Damage_matrix_tf(6.*(i-1) + 2,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 8,:);
    SCE3_Global_Ice_AP_Damage_matrix_tf(6.*(i-1) + 3,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 9,:);
    SCE3_Global_Ice_AP_Damage_matrix_tf(6.*(i-1) + 4,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 10,:);
    SCE3_Global_Ice_AP_Damage_matrix_tf(6.*(i-1) + 5,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 11,:);
    SCE3_Global_Ice_AP_Damage_matrix_tf(6.*(i-1) + 6,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 12,:);
    
    SCE3_Global_Ice_Clim_Damage_matrix_tf(8.*(i-1) + 1,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 1,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tf(8.*(i-1) + 2,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 2,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tf(8.*(i-1) + 3,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 3,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tf(8.*(i-1) + 4,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 4,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tf(8.*(i-1) + 5,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 5,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tf(8.*(i-1) + 6,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 6,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tf(8.*(i-1) + 7,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 13,:);
    SCE3_Global_Ice_Clim_Damage_matrix_tf(8.*(i-1) + 8,:) = SCE3_Global_Ice_Damage_matrix_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE3_Ice_Total_Fuel_costs_tf(:,1))
    
    SCE3_Global_Ice_AP_Damage_matrix_tf(i,:) = sum(SCE3_Global_Ice_AP_Damage_matrix_tf(6.*(i-1) + 1:6.*i,:));
    SCE3_Global_Ice_Clim_Damage_matrix_tf(i,:) = sum(SCE3_Global_Ice_Clim_Damage_matrix_tf(8.*(i-1) + 1:8.*i,:));
    
end
SCE3_Global_Ice_AP_Damage_matrix_tf = SCE3_Global_Ice_AP_Damage_matrix_tf(1:length(SCE3_Ice_Total_Fuel_costs_tf(:,1)),:); SCE3_Global_Ice_Clim_Damage_matrix_tf = SCE3_Global_Ice_Clim_Damage_matrix_tf(1:length(SCE3_Ice_Total_Fuel_costs_tf(:,1)),:);

%Non ice

SCE3_Global_NonIce_Clim_Damage_matrix_t0 = zeros(8.*length(SCE3_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE3_NonIce_Total_Fuel_costs_t0(1,:)));
SCE3_Global_NonIce_AP_Damage_matrix_t0 = zeros(6.*length(SCE3_NonIce_Total_Fuel_costs_t0(:,1)),length(SCE3_NonIce_Total_Fuel_costs_t0(1,:)));
for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_t0(:,1))
    SCE3_Global_NonIce_AP_Damage_matrix_t0(6.*(i-1) + 1,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 7,:);
    SCE3_Global_NonIce_AP_Damage_matrix_t0(6.*(i-1) + 2,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 8,:);
    SCE3_Global_NonIce_AP_Damage_matrix_t0(6.*(i-1) + 3,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 9,:);
    SCE3_Global_NonIce_AP_Damage_matrix_t0(6.*(i-1) + 4,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 10,:);
    SCE3_Global_NonIce_AP_Damage_matrix_t0(6.*(i-1) + 5,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 11,:);
    SCE3_Global_NonIce_AP_Damage_matrix_t0(6.*(i-1) + 6,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 12,:);
    
    SCE3_Global_NonIce_Clim_Damage_matrix_t0(8.*(i-1) + 1,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 1,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_t0(8.*(i-1) + 2,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 2,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_t0(8.*(i-1) + 3,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 3,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_t0(8.*(i-1) + 4,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 4,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_t0(8.*(i-1) + 5,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 5,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_t0(8.*(i-1) + 6,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 6,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_t0(8.*(i-1) + 7,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 13,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_t0(8.*(i-1) + 8,:) = SCE3_Global_NonIce_Damage_matrix_t0(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_t0(:,1))
    
    SCE3_Global_NonIce_AP_Damage_matrix_t0(i,:) = sum(SCE3_Global_NonIce_AP_Damage_matrix_t0(6.*(i-1) + 1:6.*i,:));
    SCE3_Global_NonIce_Clim_Damage_matrix_t0(i,:) = sum(SCE3_Global_NonIce_Clim_Damage_matrix_t0(8.*(i-1) + 1:8.*i,:));
    
end
SCE3_Global_NonIce_AP_Damage_matrix_t0 = SCE3_Global_NonIce_AP_Damage_matrix_t0(1:length(SCE3_NonIce_Total_Fuel_costs_t0(:,1)),:); SCE3_Global_NonIce_Clim_Damage_matrix_t0 = SCE3_Global_NonIce_Clim_Damage_matrix_t0(1:length(SCE3_NonIce_Total_Fuel_costs_t0(:,1)),:);


SCE3_Global_NonIce_Clim_Damage_matrix_tm = zeros(8.*length(SCE3_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE3_NonIce_Total_Fuel_costs_tm(1,:)));
SCE3_Global_NonIce_AP_Damage_matrix_tm = zeros(6.*length(SCE3_NonIce_Total_Fuel_costs_tm(:,1)),length(SCE3_NonIce_Total_Fuel_costs_tm(1,:)));
for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_tm(:,1))
    SCE3_Global_NonIce_AP_Damage_matrix_tm(6.*(i-1) + 1,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 7,:);
    SCE3_Global_NonIce_AP_Damage_matrix_tm(6.*(i-1) + 2,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 8,:);
    SCE3_Global_NonIce_AP_Damage_matrix_tm(6.*(i-1) + 3,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 9,:);
    SCE3_Global_NonIce_AP_Damage_matrix_tm(6.*(i-1) + 4,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 10,:);
    SCE3_Global_NonIce_AP_Damage_matrix_tm(6.*(i-1) + 5,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 11,:);
    SCE3_Global_NonIce_AP_Damage_matrix_tm(6.*(i-1) + 6,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 12,:);
    
    SCE3_Global_NonIce_Clim_Damage_matrix_tm(8.*(i-1) + 1,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 1,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tm(8.*(i-1) + 2,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 2,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tm(8.*(i-1) + 3,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 3,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tm(8.*(i-1) + 4,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 4,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tm(8.*(i-1) + 5,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 5,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tm(8.*(i-1) + 6,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 6,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tm(8.*(i-1) + 7,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 13,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tm(8.*(i-1) + 8,:) = SCE3_Global_NonIce_Damage_matrix_tm(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_tm(:,1))
    
    SCE3_Global_NonIce_AP_Damage_matrix_tm(i,:) = sum(SCE3_Global_NonIce_AP_Damage_matrix_tm(6.*(i-1) + 1:6.*i,:));
    SCE3_Global_NonIce_Clim_Damage_matrix_tm(i,:) = sum(SCE3_Global_NonIce_Clim_Damage_matrix_tm(8.*(i-1) + 1:8.*i,:));
end
SCE3_Global_NonIce_AP_Damage_matrix_tm = SCE3_Global_NonIce_AP_Damage_matrix_tm(1:length(SCE3_NonIce_Total_Fuel_costs_tm(:,1)),:); SCE3_Global_NonIce_Clim_Damage_matrix_tm = SCE3_Global_NonIce_Clim_Damage_matrix_tm(1:length(SCE3_NonIce_Total_Fuel_costs_tm(:,1)),:);

SCE3_Global_NonIce_Clim_Damage_matrix_tf = zeros(8.*length(SCE3_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE3_NonIce_Total_Fuel_costs_tf(1,:)));
SCE3_Global_NonIce_AP_Damage_matrix_tf = zeros(6.*length(SCE3_NonIce_Total_Fuel_costs_tf(:,1)),length(SCE3_NonIce_Total_Fuel_costs_tf(1,:)));
for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_tf(:,1))
    SCE3_Global_NonIce_AP_Damage_matrix_tf(6.*(i-1) + 1,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 7,:);
    SCE3_Global_NonIce_AP_Damage_matrix_tf(6.*(i-1) + 2,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 8,:);
    SCE3_Global_NonIce_AP_Damage_matrix_tf(6.*(i-1) + 3,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 9,:);
    SCE3_Global_NonIce_AP_Damage_matrix_tf(6.*(i-1) + 4,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 10,:);
    SCE3_Global_NonIce_AP_Damage_matrix_tf(6.*(i-1) + 5,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 11,:);
    SCE3_Global_NonIce_AP_Damage_matrix_tf(6.*(i-1) + 6,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 12,:);
    
    SCE3_Global_NonIce_Clim_Damage_matrix_tf(8.*(i-1) + 1,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 1,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tf(8.*(i-1) + 2,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 2,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tf(8.*(i-1) + 3,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 3,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tf(8.*(i-1) + 4,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 4,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tf(8.*(i-1) + 5,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 5,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tf(8.*(i-1) + 6,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 6,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tf(8.*(i-1) + 7,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 13,:);
    SCE3_Global_NonIce_Clim_Damage_matrix_tf(8.*(i-1) + 8,:) = SCE3_Global_NonIce_Damage_matrix_tf(14.*(i - 1) + 14,:);
end

for i = 1:1:length(SCE3_NonIce_Total_Fuel_costs_tf(:,1))
    
    SCE3_Global_NonIce_AP_Damage_matrix_tf(i,:) = sum(SCE3_Global_NonIce_AP_Damage_matrix_tf(6.*(i-1) + 1:6.*i,:));
    SCE3_Global_NonIce_Clim_Damage_matrix_tf(i,:) = sum(SCE3_Global_NonIce_Clim_Damage_matrix_tf(8.*(i-1) + 1:8.*i,:));
    
end

SCE3_Global_NonIce_AP_Damage_matrix_tf = SCE3_Global_NonIce_AP_Damage_matrix_tf(1:length(SCE3_NonIce_Total_Fuel_costs_tf(:,1)),:); SCE3_Global_NonIce_Clim_Damage_matrix_tf = SCE3_Global_NonIce_Clim_Damage_matrix_tf(1:length(SCE3_NonIce_Total_Fuel_costs_tf(:,1)),:);

%Align the matrices together 

SCE1_Global_Ice_AP_Damage_matrix_t0 = zeros(length(SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(:,1)),3.*length(SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(1,:)));
SCE1_Global_Ice_Clim_Damage_matrix_t0 = zeros(length(SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(:,1)),3.*length(SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(1,:))
    
    SCE1_Global_Ice_AP_Damage_matrix_t0(:,(3.*(i-1))+1) = SCE1_Global_Ice_AP_Damage_matrix_Route1_t0(:,i);
    SCE1_Global_Ice_AP_Damage_matrix_t0(:,(3.*(i-1))+2) = SCE1_Global_Ice_AP_Damage_matrix_Route2_t0(:,i);
    SCE1_Global_Ice_AP_Damage_matrix_t0(:,(3.*(i-1))+3) = SCE1_Global_Ice_AP_Damage_matrix_Route3_t0(:,i);
    
    SCE1_Global_Ice_Clim_Damage_matrix_t0(:,(3.*(i-1))+1) = SCE1_Global_Ice_Clim_Damage_matrix_Route1_t0(:,i);
    SCE1_Global_Ice_Clim_Damage_matrix_t0(:,(3.*(i-1))+2) = SCE1_Global_Ice_Clim_Damage_matrix_Route2_t0(:,i);
    SCE1_Global_Ice_Clim_Damage_matrix_t0(:,(3.*(i-1))+3) = SCE1_Global_Ice_Clim_Damage_matrix_Route3_t0(:,i);
    
end

SCE1_Global_Ice_AP_Damage_matrix_tm = zeros(length(SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(:,1)),3.*length(SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(1,:)));
SCE1_Global_Ice_Clim_Damage_matrix_tm = zeros(length(SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(:,1)),3.*length(SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(1,:))
    
    SCE1_Global_Ice_AP_Damage_matrix_tm(:,(3.*(i-1))+1) = SCE1_Global_Ice_AP_Damage_matrix_Route1_tm(:,i);
    SCE1_Global_Ice_AP_Damage_matrix_tm(:,(3.*(i-1))+2) = SCE1_Global_Ice_AP_Damage_matrix_Route2_tm(:,i);
    SCE1_Global_Ice_AP_Damage_matrix_tm(:,(3.*(i-1))+3) = SCE1_Global_Ice_AP_Damage_matrix_Route3_tm(:,i);
    
    SCE1_Global_Ice_Clim_Damage_matrix_tm(:,(3.*(i-1))+1) = SCE1_Global_Ice_Clim_Damage_matrix_Route1_tm(:,i);
    SCE1_Global_Ice_Clim_Damage_matrix_tm(:,(3.*(i-1))+2) = SCE1_Global_Ice_Clim_Damage_matrix_Route2_tm(:,i);
    SCE1_Global_Ice_Clim_Damage_matrix_tm(:,(3.*(i-1))+3) = SCE1_Global_Ice_Clim_Damage_matrix_Route3_tm(:,i);
    
end

SCE1_Global_Ice_AP_Damage_matrix_tf = zeros(length(SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(:,1)),3.*length(SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(1,:)));
SCE1_Global_Ice_Clim_Damage_matrix_tf = zeros(length(SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(:,1)),3.*length(SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(1,:))
    
    SCE1_Global_Ice_AP_Damage_matrix_tf(:,(3.*(i-1))+1) = SCE1_Global_Ice_AP_Damage_matrix_Route1_tf(:,i);
    SCE1_Global_Ice_AP_Damage_matrix_tf(:,(3.*(i-1))+2) = SCE1_Global_Ice_AP_Damage_matrix_Route2_tf(:,i);
    SCE1_Global_Ice_AP_Damage_matrix_tf(:,(3.*(i-1))+3) = SCE1_Global_Ice_AP_Damage_matrix_Route3_tf(:,i);
    
    SCE1_Global_Ice_Clim_Damage_matrix_tf(:,(3.*(i-1))+1) = SCE1_Global_Ice_Clim_Damage_matrix_Route1_tf(:,i);
    SCE1_Global_Ice_Clim_Damage_matrix_tf(:,(3.*(i-1))+2) = SCE1_Global_Ice_Clim_Damage_matrix_Route2_tf(:,i);
    SCE1_Global_Ice_Clim_Damage_matrix_tf(:,(3.*(i-1))+3) = SCE1_Global_Ice_Clim_Damage_matrix_Route3_tf(:,i);
    
end

%Non Ice
SCE1_Global_NonIce_AP_Damage_matrix_t0 = zeros(length(SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(:,1)),3.*length(SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(1,:)));
SCE1_Global_NonIce_Clim_Damage_matrix_t0 = zeros(length(SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(:,1)),3.*length(SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(1,:))
    
    SCE1_Global_NonIce_AP_Damage_matrix_t0(:,(3.*(i-1))+1) = SCE1_Global_NonIce_AP_Damage_matrix_Route1_t0(:,i);
    SCE1_Global_NonIce_AP_Damage_matrix_t0(:,(3.*(i-1))+2) = SCE1_Global_NonIce_AP_Damage_matrix_Route2_t0(:,i);
    SCE1_Global_NonIce_AP_Damage_matrix_t0(:,(3.*(i-1))+3) = SCE1_Global_NonIce_AP_Damage_matrix_Route3_t0(:,i);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_t0(:,(3.*(i-1))+1) = SCE1_Global_NonIce_Clim_Damage_matrix_Route1_t0(:,i);
    SCE1_Global_NonIce_Clim_Damage_matrix_t0(:,(3.*(i-1))+2) = SCE1_Global_NonIce_Clim_Damage_matrix_Route2_t0(:,i);
    SCE1_Global_NonIce_Clim_Damage_matrix_t0(:,(3.*(i-1))+3) = SCE1_Global_NonIce_Clim_Damage_matrix_Route3_t0(:,i);
    
end

SCE1_Global_NonIce_AP_Damage_matrix_tm = zeros(length(SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(:,1)),3.*length(SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(1,:)));
SCE1_Global_NonIce_Clim_Damage_matrix_tm = zeros(length(SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(:,1)),3.*length(SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(1,:))
    
    SCE1_Global_NonIce_AP_Damage_matrix_tm(:,(3.*(i-1))+1) = SCE1_Global_NonIce_AP_Damage_matrix_Route1_tm(:,i);
    SCE1_Global_NonIce_AP_Damage_matrix_tm(:,(3.*(i-1))+2) = SCE1_Global_NonIce_AP_Damage_matrix_Route2_tm(:,i);
    SCE1_Global_NonIce_AP_Damage_matrix_tm(:,(3.*(i-1))+3) = SCE1_Global_NonIce_AP_Damage_matrix_Route3_tm(:,i);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_tm(:,(3.*(i-1))+1) = SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tm(:,i);
    SCE1_Global_NonIce_Clim_Damage_matrix_tm(:,(3.*(i-1))+2) = SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tm(:,i);
    SCE1_Global_NonIce_Clim_Damage_matrix_tm(:,(3.*(i-1))+3) = SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tm(:,i);
    
end

SCE1_Global_NonIce_AP_Damage_matrix_tf = zeros(length(SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(:,1)),3.*length(SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(1,:)));
SCE1_Global_NonIce_Clim_Damage_matrix_tf = zeros(length(SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(:,1)),3.*length(SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(1,:))
    
    SCE1_Global_NonIce_AP_Damage_matrix_tf(:,(3.*(i-1))+1) = SCE1_Global_NonIce_AP_Damage_matrix_Route1_tf(:,i);
    SCE1_Global_NonIce_AP_Damage_matrix_tf(:,(3.*(i-1))+2) = SCE1_Global_NonIce_AP_Damage_matrix_Route2_tf(:,i);
    SCE1_Global_NonIce_AP_Damage_matrix_tf(:,(3.*(i-1))+3) = SCE1_Global_NonIce_AP_Damage_matrix_Route3_tf(:,i);
    
    SCE1_Global_NonIce_Clim_Damage_matrix_tf(:,(3.*(i-1))+1) = SCE1_Global_NonIce_Clim_Damage_matrix_Route1_tf(:,i);
    SCE1_Global_NonIce_Clim_Damage_matrix_tf(:,(3.*(i-1))+2) = SCE1_Global_NonIce_Clim_Damage_matrix_Route2_tf(:,i);
    SCE1_Global_NonIce_Clim_Damage_matrix_tf(:,(3.*(i-1))+3) = SCE1_Global_NonIce_Clim_Damage_matrix_Route3_tf(:,i);
    
end

%Scenario 2

SCE2_Global_Ice_AP_Damage_matrix_t0 = zeros(length(SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(:,1)),3.*length(SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(1,:)));
SCE2_Global_Ice_Clim_Damage_matrix_t0 = zeros(length(SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(:,1)),3.*length(SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(1,:))
    
    SCE2_Global_Ice_AP_Damage_matrix_t0(:,(3.*(i-1))+1) = SCE2_Global_Ice_AP_Damage_matrix_Route1_t0(:,i);
    SCE2_Global_Ice_AP_Damage_matrix_t0(:,(3.*(i-1))+2) = SCE2_Global_Ice_AP_Damage_matrix_Route2_t0(:,i);
    SCE2_Global_Ice_AP_Damage_matrix_t0(:,(3.*(i-1))+3) = SCE2_Global_Ice_AP_Damage_matrix_Route3_t0(:,i);
    
    SCE2_Global_Ice_Clim_Damage_matrix_t0(:,(3.*(i-1))+1) = SCE2_Global_Ice_Clim_Damage_matrix_Route1_t0(:,i);
    SCE2_Global_Ice_Clim_Damage_matrix_t0(:,(3.*(i-1))+2) = SCE2_Global_Ice_Clim_Damage_matrix_Route2_t0(:,i);
    SCE2_Global_Ice_Clim_Damage_matrix_t0(:,(3.*(i-1))+3) = SCE2_Global_Ice_Clim_Damage_matrix_Route3_t0(:,i);
    
end

SCE2_Global_Ice_AP_Damage_matrix_tm = zeros(length(SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(:,1)),3.*length(SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(1,:)));
SCE2_Global_Ice_Clim_Damage_matrix_tm = zeros(length(SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(:,1)),3.*length(SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(1,:))
    
    SCE2_Global_Ice_AP_Damage_matrix_tm(:,(3.*(i-1))+1) = SCE2_Global_Ice_AP_Damage_matrix_Route1_tm(:,i);
    SCE2_Global_Ice_AP_Damage_matrix_tm(:,(3.*(i-1))+2) = SCE2_Global_Ice_AP_Damage_matrix_Route2_tm(:,i);
    SCE2_Global_Ice_AP_Damage_matrix_tm(:,(3.*(i-1))+3) = SCE2_Global_Ice_AP_Damage_matrix_Route3_tm(:,i);
    
    SCE2_Global_Ice_Clim_Damage_matrix_tm(:,(3.*(i-1))+1) = SCE2_Global_Ice_Clim_Damage_matrix_Route1_tm(:,i);
    SCE2_Global_Ice_Clim_Damage_matrix_tm(:,(3.*(i-1))+2) = SCE2_Global_Ice_Clim_Damage_matrix_Route2_tm(:,i);
    SCE2_Global_Ice_Clim_Damage_matrix_tm(:,(3.*(i-1))+3) = SCE2_Global_Ice_Clim_Damage_matrix_Route3_tm(:,i);
    
end

SCE2_Global_Ice_AP_Damage_matrix_tf = zeros(length(SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(:,1)),3.*length(SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(1,:)));
SCE2_Global_Ice_Clim_Damage_matrix_tf = zeros(length(SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(:,1)),3.*length(SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(1,:))
    
    SCE2_Global_Ice_AP_Damage_matrix_tf(:,(3.*(i-1))+1) = SCE2_Global_Ice_AP_Damage_matrix_Route1_tf(:,i);
    SCE2_Global_Ice_AP_Damage_matrix_tf(:,(3.*(i-1))+2) = SCE2_Global_Ice_AP_Damage_matrix_Route2_tf(:,i);
    SCE2_Global_Ice_AP_Damage_matrix_tf(:,(3.*(i-1))+3) = SCE2_Global_Ice_AP_Damage_matrix_Route3_tf(:,i);
    
    SCE2_Global_Ice_Clim_Damage_matrix_tf(:,(3.*(i-1))+1) = SCE2_Global_Ice_Clim_Damage_matrix_Route1_tf(:,i);
    SCE2_Global_Ice_Clim_Damage_matrix_tf(:,(3.*(i-1))+2) = SCE2_Global_Ice_Clim_Damage_matrix_Route2_tf(:,i);
    SCE2_Global_Ice_Clim_Damage_matrix_tf(:,(3.*(i-1))+3) = SCE2_Global_Ice_Clim_Damage_matrix_Route3_tf(:,i);
    
end

%Non Ice
SCE2_Global_NonIce_AP_Damage_matrix_t0 = zeros(length(SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(:,1)),3.*length(SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(1,:)));
SCE2_Global_NonIce_Clim_Damage_matrix_t0 = zeros(length(SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(:,1)),3.*length(SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(1,:)));

for i = 1:1:length(SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(1,:))
    
    SCE2_Global_NonIce_AP_Damage_matrix_t0(:,(3.*(i-1))+1) = SCE2_Global_NonIce_AP_Damage_matrix_Route1_t0(:,i);
    SCE2_Global_NonIce_AP_Damage_matrix_t0(:,(3.*(i-1))+2) = SCE2_Global_NonIce_AP_Damage_matrix_Route2_t0(:,i);
    SCE2_Global_NonIce_AP_Damage_matrix_t0(:,(3.*(i-1))+3) = SCE2_Global_NonIce_AP_Damage_matrix_Route3_t0(:,i);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_t0(:,(3.*(i-1))+1) = SCE2_Global_NonIce_Clim_Damage_matrix_Route1_t0(:,i);
    SCE2_Global_NonIce_Clim_Damage_matrix_t0(:,(3.*(i-1))+2) = SCE2_Global_NonIce_Clim_Damage_matrix_Route2_t0(:,i);
    SCE2_Global_NonIce_Clim_Damage_matrix_t0(:,(3.*(i-1))+3) = SCE2_Global_NonIce_Clim_Damage_matrix_Route3_t0(:,i);
    
end

SCE2_Global_NonIce_AP_Damage_matrix_tm = zeros(length(SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(:,1)),3.*length(SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(1,:)));
SCE2_Global_NonIce_Clim_Damage_matrix_tm = zeros(length(SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(:,1)),3.*length(SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(1,:)));

for i = 1:1:length(SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(1,:))
    
    SCE2_Global_NonIce_AP_Damage_matrix_tm(:,(3.*(i-1))+1) = SCE2_Global_NonIce_AP_Damage_matrix_Route1_tm(:,i);
    SCE2_Global_NonIce_AP_Damage_matrix_tm(:,(3.*(i-1))+2) = SCE2_Global_NonIce_AP_Damage_matrix_Route2_tm(:,i);
    SCE2_Global_NonIce_AP_Damage_matrix_tm(:,(3.*(i-1))+3) = SCE2_Global_NonIce_AP_Damage_matrix_Route3_tm(:,i);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_tm(:,(3.*(i-1))+1) = SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tm(:,i);
    SCE2_Global_NonIce_Clim_Damage_matrix_tm(:,(3.*(i-1))+2) = SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tm(:,i);
    SCE2_Global_NonIce_Clim_Damage_matrix_tm(:,(3.*(i-1))+3) = SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tm(:,i);
    
end

SCE2_Global_NonIce_AP_Damage_matrix_tf = zeros(length(SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(:,1)),3.*length(SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(1,:)));
SCE2_Global_NonIce_Clim_Damage_matrix_tf = zeros(length(SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(:,1)),3.*length(SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(1,:)));

for i = 1:1:length(SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(1,:))
    
    SCE2_Global_NonIce_AP_Damage_matrix_tf(:,(3.*(i-1))+1) = SCE2_Global_NonIce_AP_Damage_matrix_Route1_tf(:,i);
    SCE2_Global_NonIce_AP_Damage_matrix_tf(:,(3.*(i-1))+2) = SCE2_Global_NonIce_AP_Damage_matrix_Route2_tf(:,i);
    SCE2_Global_NonIce_AP_Damage_matrix_tf(:,(3.*(i-1))+3) = SCE2_Global_NonIce_AP_Damage_matrix_Route3_tf(:,i);
    
    SCE2_Global_NonIce_Clim_Damage_matrix_tf(:,(3.*(i-1))+1) = SCE2_Global_NonIce_Clim_Damage_matrix_Route1_tf(:,i);
    SCE2_Global_NonIce_Clim_Damage_matrix_tf(:,(3.*(i-1))+2) = SCE2_Global_NonIce_Clim_Damage_matrix_Route2_tf(:,i);
    SCE2_Global_NonIce_Clim_Damage_matrix_tf(:,(3.*(i-1))+3) = SCE2_Global_NonIce_Clim_Damage_matrix_Route3_tf(:,i);
    
end

%Air pollution and climate change cost per ton 

%Charterer freight rate - Only non ice so far - plus get rid of infinite
%and NANs - Normal deadweight is chosen because the loss in deadweight to
%revenue is already accounted for
%Ton voyage 
SCE1_Ice_AP_ptv_t0 = SCE1_Global_Ice_AP_Damage_matrix_t0./(Cargo_dwt.*SCE1_Ice_n_t0);
SCE1_Ice_AP_ptv_tm = SCE1_Global_Ice_AP_Damage_matrix_tm./(Cargo_dwt.*SCE1_Ice_n_tm);
SCE1_Ice_AP_ptv_tf = SCE1_Global_Ice_AP_Damage_matrix_tf./(Cargo_dwt.*SCE1_Ice_n_tf);

SCE1_NonIce_AP_ptv_t0 = SCE1_Global_NonIce_AP_Damage_matrix_t0./(Cargo_dwt.*SCE1_NonIce_n_t0);
SCE1_NonIce_AP_ptv_tm = SCE1_Global_NonIce_AP_Damage_matrix_tm./(Cargo_dwt.*SCE1_NonIce_n_tm);
SCE1_NonIce_AP_ptv_tf = SCE1_Global_NonIce_AP_Damage_matrix_tf./(Cargo_dwt.*SCE1_NonIce_n_tf);

SCE1_Ice_Clim_ptv_t0 = SCE1_Global_Ice_Clim_Damage_matrix_t0./(Cargo_dwt.*SCE1_Ice_n_t0);
SCE1_Ice_Clim_ptv_tm = SCE1_Global_Ice_Clim_Damage_matrix_tm./(Cargo_dwt.*SCE1_Ice_n_tm);
SCE1_Ice_Clim_ptv_tf = SCE1_Global_Ice_Clim_Damage_matrix_tf./(Cargo_dwt.*SCE1_Ice_n_tf);

SCE1_NonIce_Clim_ptv_t0 = SCE1_Global_NonIce_Clim_Damage_matrix_t0./(Cargo_dwt.*SCE1_NonIce_n_t0);
SCE1_NonIce_Clim_ptv_tm = SCE1_Global_NonIce_Clim_Damage_matrix_tm./(Cargo_dwt.*SCE1_NonIce_n_tm);
SCE1_NonIce_Clim_ptv_tf = SCE1_Global_NonIce_Clim_Damage_matrix_tf./(Cargo_dwt.*SCE1_NonIce_n_tf);

%Scenario 2
%%%%%%%%%%%%%%
%Tonne voyage
SCE2_Ice_AP_ptv_t0 = SCE2_Global_Ice_AP_Damage_matrix_t0./(((SCE2_Ice_n_t0) + (SCE2_Ice_Suez_n_t0)).*Cargo_dwt);
SCE2_Ice_AP_ptv_tm = SCE2_Global_Ice_AP_Damage_matrix_tm./(((SCE2_Ice_n_tm) + (SCE2_Ice_Suez_n_tm)).*Cargo_dwt);
SCE2_Ice_AP_ptv_tf = SCE2_Global_Ice_AP_Damage_matrix_tf./(((SCE2_Ice_n_tf) + (SCE2_Ice_Suez_n_tf)).*Cargo_dwt);

SCE2_NonIce_AP_ptv_t0 = SCE2_Global_NonIce_AP_Damage_matrix_t0./(((SCE2_NonIce_n_t0) + (SCE2_NonIce_Suez_n_t0)).*Cargo_dwt);
SCE2_NonIce_AP_ptv_tm = SCE2_Global_NonIce_AP_Damage_matrix_tm./(((SCE2_NonIce_n_tm) + (SCE2_NonIce_Suez_n_tm)).*Cargo_dwt);
SCE2_NonIce_AP_ptv_tf = SCE2_Global_NonIce_AP_Damage_matrix_tf./(((SCE2_NonIce_n_tf) + (SCE2_NonIce_Suez_n_tf)).*Cargo_dwt);

SCE2_Ice_Clim_ptv_t0 = SCE2_Global_Ice_Clim_Damage_matrix_t0./(((SCE2_Ice_n_t0) + (SCE2_Ice_Suez_n_t0)).*Cargo_dwt);
SCE2_Ice_Clim_ptv_tm = SCE2_Global_Ice_Clim_Damage_matrix_tm./(((SCE2_Ice_n_tm) + (SCE2_Ice_Suez_n_tm)).*Cargo_dwt);
SCE2_Ice_Clim_ptv_tf = SCE2_Global_Ice_Clim_Damage_matrix_tf./(((SCE2_Ice_n_tf) + (SCE2_Ice_Suez_n_tf)).*Cargo_dwt);

SCE2_NonIce_Clim_ptv_t0 = SCE2_Global_NonIce_Clim_Damage_matrix_t0./(((SCE2_NonIce_n_t0) + (SCE2_NonIce_Suez_n_t0)).*Cargo_dwt);
SCE2_NonIce_Clim_ptv_tm = SCE2_Global_NonIce_Clim_Damage_matrix_tm./(((SCE2_NonIce_n_tm) + (SCE2_NonIce_Suez_n_tm)).*Cargo_dwt);
SCE2_NonIce_Clim_ptv_tf = SCE2_Global_NonIce_Clim_Damage_matrix_tf./(((SCE2_NonIce_n_tf) + (SCE2_NonIce_Suez_n_tf)).*Cargo_dwt);

%Scenario 3
%%%%%%%%%%%%%

%Tonne voyage
SCE3_Ice_AP_ptv_t0 = SCE3_Global_Ice_AP_Damage_matrix_t0./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_Ice_AP_ptv_tm = SCE3_Global_Ice_AP_Damage_matrix_tm./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_Ice_AP_ptv_tf = SCE3_Global_Ice_AP_Damage_matrix_tf./(Cargo_dwt.*SCE3_Suez_n_S);

SCE3_NonIce_AP_ptv_t0 = SCE3_Global_NonIce_AP_Damage_matrix_t0./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_NonIce_AP_ptv_tm = SCE3_Global_NonIce_AP_Damage_matrix_tm./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_NonIce_AP_ptv_tf = SCE3_Global_NonIce_AP_Damage_matrix_tf./(Cargo_dwt.*SCE3_Suez_n_S);

SCE3_Ice_Clim_ptv_t0 = SCE3_Global_Ice_Clim_Damage_matrix_t0./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_Ice_Clim_ptv_tm = SCE3_Global_Ice_Clim_Damage_matrix_tm./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_Ice_Clim_ptv_tf = SCE3_Global_Ice_Clim_Damage_matrix_tf./(Cargo_dwt.*SCE3_Suez_n_S);

SCE3_NonIce_Clim_ptv_t0 = SCE3_Global_NonIce_Clim_Damage_matrix_t0./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_NonIce_Clim_ptv_tm = SCE3_Global_NonIce_Clim_Damage_matrix_tm./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_NonIce_Clim_ptv_tf = SCE3_Global_NonIce_Clim_Damage_matrix_tf./(Cargo_dwt.*SCE3_Suez_n_S);

%All placeholder values are assigned a NaN
SCE1_Ice_FC_ptv_t0( SCE1_Ice_FC_ptv_t0 > 1000) = NaN; SCE1_Ice_FC_ptv_tm( SCE1_Ice_FC_ptv_tm > 1000) = NaN; SCE1_Ice_FC_ptv_tf( SCE1_Ice_FC_ptv_tf > 1000) = NaN;
SCE1_NonIce_FC_ptv_t0( SCE1_NonIce_FC_ptv_t0 > 1000) = NaN; SCE1_NonIce_FC_ptv_tm( SCE1_NonIce_FC_ptv_tm > 1000) = NaN; SCE1_NonIce_FC_ptv_tf( SCE1_NonIce_FC_ptv_tf > 1000) = NaN;

SCE2_Ice_FC_ptv_t0( SCE2_Ice_FC_ptv_t0 > 1000) = NaN; SCE2_Ice_FC_ptv_tm( SCE2_Ice_FC_ptv_tm > 1000) = NaN; SCE2_Ice_FC_ptv_tf( SCE2_Ice_FC_ptv_tf > 1000) = NaN;
SCE2_NonIce_FC_ptv_t0( SCE2_NonIce_FC_ptv_t0 > 1000) = NaN; SCE2_NonIce_FC_ptv_tm( SCE2_NonIce_FC_ptv_tm > 1000) = NaN; SCE2_NonIce_FC_ptv_tf( SCE2_NonIce_FC_ptv_tf > 1000) = NaN;

SCE3_Ice_FC_ptv_t0( SCE3_Ice_FC_ptv_t0 > 1000) = NaN; SCE3_Ice_FC_ptv_tm( SCE3_Ice_FC_ptv_tm > 1000) = NaN; SCE3_Ice_FC_ptv_tf( SCE3_Ice_FC_ptv_tf > 1000) = NaN;
SCE3_NonIce_FC_ptv_t0( SCE3_NonIce_FC_ptv_t0 > 1000) = NaN; SCE3_NonIce_FC_ptv_tm( SCE3_NonIce_FC_ptv_tm > 1000) = NaN; SCE3_Ice_FC_ptv_tf( SCE3_NonIce_FC_ptv_tf > 1000) = NaN;

%Total cost
%Tonne voyage
SCE1_Ice_TC_ptv_t0 = SCE1_Ice_FC_ptv_t0 + SCE1_Ice_AP_ptv_t0 + SCE1_Ice_Clim_ptv_t0;
SCE1_Ice_TC_ptv_tm = SCE1_Ice_FC_ptv_tm + SCE1_Ice_AP_ptv_tm + SCE1_Ice_Clim_ptv_tm;
SCE1_Ice_TC_ptv_tf = SCE1_Ice_FC_ptv_tf + SCE1_Ice_AP_ptv_tf + SCE1_Ice_Clim_ptv_tf;

SCE1_NonIce_TC_ptv_t0 = SCE1_NonIce_FC_ptv_t0 + SCE1_NonIce_AP_ptv_t0 + SCE1_NonIce_Clim_ptv_t0;
SCE1_NonIce_TC_ptv_tm = SCE1_NonIce_FC_ptv_tm + SCE1_NonIce_AP_ptv_tm + SCE1_NonIce_Clim_ptv_tm;
SCE1_NonIce_TC_ptv_tf = SCE1_NonIce_FC_ptv_tf + SCE1_NonIce_AP_ptv_tf + SCE1_NonIce_Clim_ptv_tf;

SCE2_Ice_TC_ptv_t0 = SCE2_Ice_FC_ptv_t0 + SCE2_Ice_AP_ptv_t0 + SCE2_Ice_Clim_ptv_t0;
SCE2_Ice_TC_ptv_tm = SCE2_Ice_FC_ptv_tm + SCE2_Ice_AP_ptv_tm + SCE2_Ice_Clim_ptv_tm;
SCE2_Ice_TC_ptv_tf = SCE2_Ice_FC_ptv_tf + SCE2_Ice_AP_ptv_tf + SCE2_Ice_Clim_ptv_tf;

SCE2_NonIce_TC_ptv_t0 = SCE2_NonIce_FC_ptv_t0 + SCE2_NonIce_AP_ptv_t0 + SCE2_NonIce_Clim_ptv_t0;
SCE2_NonIce_TC_ptv_tm = SCE2_NonIce_FC_ptv_tm + SCE2_NonIce_AP_ptv_tm + SCE2_NonIce_Clim_ptv_tm;
SCE2_NonIce_TC_ptv_tf = SCE2_NonIce_FC_ptv_tf + SCE2_NonIce_AP_ptv_tf + SCE2_NonIce_Clim_ptv_tf;

SCE3_Ice_TC_ptv_t0 = SCE3_Ice_FC_ptv_t0 + SCE3_Ice_AP_ptv_t0 + SCE3_Ice_Clim_ptv_t0;
SCE3_Ice_TC_ptv_tm = SCE3_Ice_FC_ptv_tm + SCE3_Ice_AP_ptv_tm + SCE3_Ice_Clim_ptv_tm;
SCE3_Ice_TC_ptv_tf = SCE3_Ice_FC_ptv_tf + SCE3_Ice_AP_ptv_tf + SCE3_Ice_Clim_ptv_tf;

SCE3_NonIce_TC_ptv_t0 = SCE3_NonIce_FC_ptv_t0 + SCE3_NonIce_AP_ptv_t0 + SCE3_NonIce_Clim_ptv_t0;
SCE3_NonIce_TC_ptv_tm = SCE3_NonIce_FC_ptv_tm + SCE3_NonIce_AP_ptv_tm + SCE3_NonIce_Clim_ptv_tm;
SCE3_NonIce_TC_ptv_tf = SCE3_NonIce_FC_ptv_tf + SCE3_NonIce_AP_ptv_tf + SCE3_NonIce_Clim_ptv_tf;


%%Explanatory variables 
%Transport work
%Transport work ton voyaes

%Finanical costs

%All placeholder values are assigned a NaN
SCE1_Ice_Total_Voyage_cost_t0( SCE1_Ice_Total_Voyage_cost_t0 > 10.^8) = NaN; SCE1_Ice_Total_Voyage_cost_tm( SCE1_Ice_Total_Voyage_cost_tm > 10.^8) = NaN; SCE1_Ice_Total_Voyage_cost_tf( SCE1_Ice_Total_Voyage_cost_tf > 10.^8) = NaN;
SCE1_NonIce_Total_Voyage_cost_t0( SCE1_NonIce_Total_Voyage_cost_t0 > 10.^8) = NaN; SCE1_NonIce_Total_Voyage_cost_tm( SCE1_NonIce_Total_Voyage_cost_tm > 10.^8) = NaN; SCE1_NonIce_Total_Voyage_cost_tf( SCE1_NonIce_Total_Voyage_cost_tf > 10.^8) = NaN;

SCE1_Ice_OpEx_t0( SCE1_Ice_OpEx_t0 > 10.^8) = NaN; SCE1_Ice_OpEx_tm( SCE1_Ice_OpEx_tm > 10.^8) = NaN; SCE1_Ice_OpEx_tf( SCE1_Ice_OpEx_tf > 10.^8) = NaN;
SCE1_NonIce_OpEx_t0( SCE1_NonIce_OpEx_t0 > 10.^8) = NaN; SCE1_NonIce_OpEx_tm( SCE1_NonIce_OpEx_tm > 10.^8) = NaN; SCE1_NonIce_OpEx_tf( SCE1_NonIce_OpEx_tf > 10.^8) = NaN;

SCE1_Ice_Total_CapEx_t0( SCE1_Ice_Total_CapEx_t0 > 10.^8) = NaN; SCE1_Ice_Total_CapEx_tm( SCE1_Ice_Total_CapEx_tm > 10.^8) = NaN; SCE1_Ice_Total_CapEx_tf( SCE1_Ice_Total_CapEx_tf > 10.^8) = NaN;
SCE1_NonIce_Total_CapEx_t0( SCE1_NonIce_Total_CapEx_t0 > 10.^8) = NaN; SCE1_NonIce_Total_CapEx_tm( SCE1_NonIce_Total_CapEx_tm > 10.^8) = NaN; SCE1_NonIce_Total_CapEx_tf( SCE1_NonIce_Total_CapEx_tf > 10.^8) = NaN;

SCE2_Ice_Total_Voyage_cost_t0( SCE2_Ice_Total_Voyage_cost_t0 > 10.^8) = NaN; SCE2_Ice_Total_Voyage_cost_tm( SCE2_Ice_Total_Voyage_cost_tm > 10.^8) = NaN; SCE2_Ice_Total_Voyage_cost_tf( SCE2_Ice_Total_Voyage_cost_tf > 10.^8) = NaN;
SCE2_NonIce_Total_Voyage_cost_t0( SCE2_NonIce_Total_Voyage_cost_t0 > 10.^8) = NaN; SCE2_NonIce_Total_Voyage_cost_tm( SCE2_NonIce_Total_Voyage_cost_tm > 10.^8) = NaN; SCE2_NonIce_Total_Voyage_cost_tf( SCE2_NonIce_Total_Voyage_cost_tf > 10.^8) = NaN;

SCE2_Ice_OpEx_t0( SCE2_Ice_OpEx_t0 > 10.^8) = NaN; SCE2_Ice_OpEx_tm( SCE2_Ice_OpEx_tm > 10.^8) = NaN; SCE2_Ice_OpEx_tf( SCE2_Ice_OpEx_tf > 10.^8) = NaN;
SCE2_NonIce_OpEx_t0( SCE2_NonIce_OpEx_t0 > 10.^8) = NaN; SCE2_NonIce_OpEx_tm( SCE2_NonIce_OpEx_tm > 10.^8) = NaN; SCE2_NonIce_OpEx_tf( SCE2_NonIce_OpEx_tf > 10.^8) = NaN;

SCE2_Ice_Total_CapEx_t0( SCE2_Ice_Total_CapEx_t0 > 10.^8) = NaN; SCE2_Ice_Total_CapEx_tm( SCE2_Ice_Total_CapEx_tm > 10.^8) = NaN; SCE2_Ice_Total_CapEx_tf( SCE2_Ice_Total_CapEx_tf > 10.^8) = NaN;
SCE2_NonIce_Total_CapEx_t0( SCE2_NonIce_Total_CapEx_t0 > 10.^8) = NaN; SCE2_NonIce_Total_CapEx_tm( SCE2_NonIce_Total_CapEx_tm > 10.^8) = NaN; SCE2_NonIce_Total_CapEx_tf( SCE2_NonIce_Total_CapEx_tf > 10.^8) = NaN;

SCE3_Ice_Total_Voyage_cost_t0( SCE3_Ice_Total_Voyage_cost_t0 > 10.^8) = NaN; SCE3_Ice_Total_Voyage_cost_tm( SCE3_Ice_Total_Voyage_cost_tm > 10.^8) = NaN; SCE3_Ice_Total_Voyage_cost_tf( SCE3_Ice_Total_Voyage_cost_tf > 10.^8) = NaN;
SCE3_NonIce_Total_Voyage_cost_t0( SCE3_NonIce_Total_Voyage_cost_t0 > 10.^8) = NaN; SCE3_NonIce_Total_Voyage_cost_tm( SCE3_NonIce_Total_Voyage_cost_tm > 10.^8) = NaN; SCE3_NonIce_Total_Voyage_cost_tf( SCE3_NonIce_Total_Voyage_cost_tf > 10.^8) = NaN;

SCE3_Ice_OpEx_t0( SCE3_Ice_OpEx_t0 > 10.^8) = NaN; SCE3_Ice_OpEx_tm( SCE3_Ice_OpEx_tm > 10.^8) = NaN; SCE3_Ice_OpEx_tf( SCE3_Ice_OpEx_tf > 10.^8) = NaN;
SCE3_NonIce_OpEx_t0( SCE3_NonIce_OpEx_t0 > 10.^8) = NaN; SCE3_NonIce_OpEx_tm( SCE3_NonIce_OpEx_tm > 10.^8) = NaN; SCE3_NonIce_OpEx_tf( SCE3_NonIce_OpEx_tf > 10.^8) = NaN;

SCE3_Ice_Total_CapEx_t0( SCE3_Ice_Total_CapEx_t0 > 10.^8) = NaN; SCE3_Ice_Total_CapEx_tm( SCE3_Ice_Total_CapEx_tm > 10.^8) = NaN; SCE3_Ice_Total_CapEx_tf( SCE3_Ice_Total_CapEx_tf > 10.^8) = NaN;
SCE3_NonIce_Total_CapEx_t0( SCE3_NonIce_Total_CapEx_t0 > 10.^8) = NaN; SCE3_NonIce_Total_CapEx_tm( SCE3_NonIce_Total_CapEx_tm > 10.^8) = NaN; SCE3_NonIce_Total_CapEx_tf( SCE3_NonIce_Total_CapEx_tf > 10.^8) = NaN;

%Per Voyage
SCE1_Ice_Total_Voyage_cost_t0 = SCE1_Ice_Total_Voyage_cost_t0./(Cargo_dwt.*SCE1_Ice_n_t0); SCE1_Ice_Total_Voyage_cost_tm = SCE1_Ice_Total_Voyage_cost_tm./(Cargo_dwt.*SCE1_Ice_n_tm); SCE1_Ice_Total_Voyage_cost_tf = SCE1_Ice_Total_Voyage_cost_tf./(Cargo_dwt.*SCE1_Ice_n_tf);
SCE1_NonIce_Total_Voyage_cost_t0 = SCE1_NonIce_Total_Voyage_cost_t0./(Cargo_dwt.*SCE1_NonIce_n_t0); SCE1_NonIce_Total_Voyage_cost_tm = SCE1_NonIce_Total_Voyage_cost_tm./(Cargo_dwt.*SCE1_NonIce_n_tm); SCE1_NonIce_Total_Voyage_cost_tf = SCE1_NonIce_Total_Voyage_cost_tf./(Cargo_dwt.*SCE1_NonIce_n_tf);

SCE1_Ice_OpEx_t0 = SCE1_Ice_OpEx_t0./(Cargo_dwt.*SCE1_Ice_n_t0); SCE1_Ice_OpEx_tm = SCE1_Ice_OpEx_tm./(Cargo_dwt.*SCE1_Ice_n_tm); SCE1_Ice_OpEx_tf = SCE1_Ice_OpEx_tf./(Cargo_dwt.*SCE1_Ice_n_tf);
SCE1_NonIce_OpEx_t0 = SCE1_NonIce_OpEx_t0./(Cargo_dwt.*SCE1_NonIce_n_t0); SCE1_NonIce_OpEx_tm = SCE1_NonIce_OpEx_tm./(Cargo_dwt.*SCE1_NonIce_n_tm); SCE1_NonIce_OpEx_tf = SCE1_NonIce_OpEx_tf./(Cargo_dwt.*SCE1_NonIce_n_tf);

SCE1_Ice_Total_CapEx_t0 = SCE1_Ice_Total_CapEx_t0./(Cargo_dwt.*SCE1_Ice_n_t0); SCE1_Ice_Total_CapEx_tm = SCE1_Ice_Total_CapEx_tm./(Cargo_dwt.*SCE1_Ice_n_tm); SCE1_Ice_Total_CapEx_tf = SCE1_Ice_Total_CapEx_tf./(Cargo_dwt.*SCE1_Ice_n_tf);
SCE1_NonIce_Total_CapEx_t0 = SCE1_NonIce_Total_CapEx_t0./(Cargo_dwt.*SCE1_NonIce_n_t0); SCE1_NonIce_Total_CapEx_tm = SCE1_NonIce_Total_CapEx_tm./(Cargo_dwt.*SCE1_NonIce_n_tm); SCE1_NonIce_Total_CapEx_tf = SCE1_NonIce_Total_CapEx_tf./(Cargo_dwt.*SCE1_NonIce_n_tf);

SCE1_Global_Ice_CO2eqtax_t0 = SCE1_Global_Ice_CO2eqtax_t0./(Cargo_dwt.*SCE1_Ice_n_t0); SCE1_Global_Ice_CO2eqtax_tm = SCE1_Global_Ice_CO2eqtax_tm./(Cargo_dwt.*SCE1_Ice_n_tm); SCE1_Global_Ice_CO2eqtax_tf = SCE1_Global_Ice_CO2eqtax_tf./(Cargo_dwt.*SCE1_Ice_n_tf);
SCE1_Global_NonIce_CO2eqtax_t0 = SCE1_Global_NonIce_CO2eqtax_t0./(Cargo_dwt.*SCE1_NonIce_n_t0); SCE1_Global_NonIce_CO2eqtax_tm = SCE1_Global_NonIce_CO2eqtax_tm./(Cargo_dwt.*SCE1_NonIce_n_tm); SCE1_Global_NonIce_CO2eqtax_tf = SCE1_Global_NonIce_CO2eqtax_tf./(Cargo_dwt.*SCE1_NonIce_n_tf);

SCE1_Global_Ice_AP_Damage_matrix_t0 = SCE1_Global_Ice_AP_Damage_matrix_t0./(Cargo_dwt.*SCE1_Ice_n_t0); SCE1_Global_Ice_AP_Damage_matrix_tm = SCE1_Global_Ice_AP_Damage_matrix_tm./(Cargo_dwt.*SCE1_Ice_n_tm); SCE1_Global_Ice_AP_Damage_matrix_tf = SCE1_Global_Ice_AP_Damage_matrix_tf./(Cargo_dwt.*SCE1_Ice_n_tf); 
SCE1_Global_NonIce_AP_Damage_matrix_t0 = SCE1_Global_NonIce_AP_Damage_matrix_t0./(Cargo_dwt.*SCE1_NonIce_n_t0); SCE1_Global_NonIce_AP_Damage_matrix_tm = SCE1_Global_NonIce_AP_Damage_matrix_tm./(Cargo_dwt.*SCE1_NonIce_n_tm); SCE1_Global_NonIce_AP_Damage_matrix_tf = SCE1_Global_NonIce_AP_Damage_matrix_tf./(Cargo_dwt.*SCE1_NonIce_n_tf); 

SCE1_Global_Ice_Clim_Damage_matrix_t0 = SCE1_Global_Ice_Clim_Damage_matrix_t0./(Cargo_dwt.*SCE1_Ice_n_t0); SCE1_Global_Ice_Clim_Damage_matrix_tm = SCE1_Global_Ice_Clim_Damage_matrix_tm./(Cargo_dwt.*SCE1_Ice_n_tm); SCE1_Global_Ice_Clim_Damage_matrix_tf = SCE1_Global_Ice_Clim_Damage_matrix_tf./(Cargo_dwt.*SCE1_Ice_n_tf); 
SCE1_Global_NonIce_Clim_Damage_matrix_t0 = SCE1_Global_NonIce_Clim_Damage_matrix_t0./(Cargo_dwt.*SCE1_NonIce_n_t0); SCE1_Global_NonIce_Clim_Damage_matrix_tm = SCE1_Global_NonIce_Clim_Damage_matrix_tm./(Cargo_dwt.*SCE1_NonIce_n_tm); SCE1_Global_NonIce_Clim_Damage_matrix_tf = SCE1_Global_NonIce_Clim_Damage_matrix_tf./(Cargo_dwt.*SCE1_NonIce_n_tf); 

%SCE2
SCE2_Ice_Total_Voyage_cost_t0 = SCE2_Ice_Total_Voyage_cost_t0./(Cargo_dwt.*(SCE2_Ice_n_t0 + SCE2_Ice_Suez_n_t0)); SCE2_Ice_Total_Voyage_cost_tm = SCE2_Ice_Total_Voyage_cost_tm./(Cargo_dwt.*(SCE2_Ice_n_tm + SCE2_Ice_Suez_n_tm)); SCE2_Ice_Total_Voyage_cost_tf = SCE2_Ice_Total_Voyage_cost_tf./(Cargo_dwt.*(SCE2_Ice_n_tf + SCE2_Ice_Suez_n_tf));
SCE2_NonIce_Total_Voyage_cost_t0 = SCE2_NonIce_Total_Voyage_cost_t0./(Cargo_dwt.*(SCE2_NonIce_n_t0 + SCE2_NonIce_Suez_n_t0)); SCE2_NonIce_Total_Voyage_cost_tm = SCE2_NonIce_Total_Voyage_cost_tm./(Cargo_dwt.*(SCE2_NonIce_n_tm + SCE2_NonIce_Suez_n_tm)); SCE2_NonIce_Total_Voyage_cost_tf = SCE2_NonIce_Total_Voyage_cost_tf./(Cargo_dwt.*(SCE2_NonIce_n_tf + SCE2_NonIce_Suez_n_tf));

SCE2_Ice_OpEx_t0 = SCE2_Ice_OpEx_t0./(Cargo_dwt.*(SCE2_Ice_n_t0 + SCE2_Ice_Suez_n_t0)); SCE2_Ice_OpEx_tm = SCE2_Ice_OpEx_tm./(Cargo_dwt.*(SCE2_Ice_n_tm + SCE2_Ice_Suez_n_tm)); SCE2_Ice_OpEx_tf = SCE2_Ice_OpEx_tf./(Cargo_dwt.*(SCE2_Ice_n_tf + SCE2_Ice_Suez_n_tf));
SCE2_NonIce_OpEx_t0 = SCE2_NonIce_OpEx_t0./(Cargo_dwt.*(SCE2_NonIce_n_t0 + SCE2_NonIce_Suez_n_t0)); SCE2_NonIce_OpEx_tm = SCE2_NonIce_OpEx_tm./(Cargo_dwt.*(SCE2_NonIce_n_tm + SCE2_NonIce_Suez_n_tm)); SCE2_NonIce_OpEx_tf = SCE2_NonIce_OpEx_tf./(Cargo_dwt.*(SCE2_NonIce_n_tf + SCE2_NonIce_Suez_n_tf));

SCE2_Ice_Total_CapEx_t0 = SCE2_Ice_Total_CapEx_t0./(Cargo_dwt.*(SCE2_Ice_n_t0 + SCE2_Ice_Suez_n_t0)); SCE2_Ice_Total_CapEx_tm = SCE2_Ice_Total_CapEx_tm./(Cargo_dwt.*(SCE2_Ice_n_tm + SCE2_Ice_Suez_n_tm)); SCE2_Ice_Total_CapEx_tf = SCE2_Ice_Total_CapEx_tf./(Cargo_dwt.*(SCE2_Ice_n_tf + SCE2_Ice_Suez_n_tf));
SCE2_NonIce_Total_CapEx_t0 = SCE2_NonIce_Total_CapEx_t0./(Cargo_dwt.*(SCE2_NonIce_n_t0 + SCE2_NonIce_Suez_n_t0)); SCE2_NonIce_Total_CapEx_tm = SCE2_NonIce_Total_CapEx_tm./(Cargo_dwt.*(SCE2_NonIce_n_tm + SCE2_NonIce_Suez_n_tm)); SCE2_NonIce_Total_CapEx_tf = SCE2_NonIce_Total_CapEx_tf./(Cargo_dwt.*(SCE2_NonIce_n_tf + SCE2_NonIce_Suez_n_tf));

SCE2_Global_Ice_CO2eqtax_t0 = SCE2_Global_Ice_CO2eqtax_t0./(Cargo_dwt.*(SCE2_Ice_n_t0 + SCE2_Ice_Suez_n_t0)); SCE2_Global_Ice_CO2eqtax_tm = SCE2_Global_Ice_CO2eqtax_tm./(Cargo_dwt.*(SCE2_Ice_n_tm + SCE2_Ice_Suez_n_tm)); SCE2_Global_Ice_CO2eqtax_tf = SCE2_Global_Ice_CO2eqtax_tf./(Cargo_dwt.*(SCE2_Ice_n_tf + SCE2_Ice_Suez_n_tf));
SCE2_Global_NonIce_CO2eqtax_t0 = SCE2_Global_NonIce_CO2eqtax_t0./(Cargo_dwt.*(SCE2_NonIce_n_t0 + SCE2_NonIce_Suez_n_t0)); SCE2_Global_NonIce_CO2eqtax_tm = SCE2_Global_NonIce_CO2eqtax_tm./(Cargo_dwt.*(SCE2_NonIce_n_tm + SCE2_NonIce_Suez_n_tm)); SCE2_Global_NonIce_CO2eqtax_tf = SCE2_Global_NonIce_CO2eqtax_tf./(Cargo_dwt.*(SCE2_NonIce_n_tf + SCE2_NonIce_Suez_n_tf));

SCE2_Global_Ice_AP_Damage_matrix_t0 = SCE2_Global_Ice_AP_Damage_matrix_t0./(Cargo_dwt.*(SCE2_Ice_n_t0 + SCE2_Ice_Suez_n_t0)); SCE2_Global_Ice_AP_Damage_matrix_tm = SCE2_Global_Ice_AP_Damage_matrix_tm./(Cargo_dwt.*(SCE2_Ice_n_tm + SCE2_Ice_Suez_n_tm)); SCE2_Global_Ice_AP_Damage_matrix_tf = SCE2_Global_Ice_AP_Damage_matrix_tf./(Cargo_dwt.*(SCE2_Ice_n_tf + SCE2_Ice_Suez_n_tf)); 
SCE2_Global_NonIce_AP_Damage_matrix_t0 = SCE2_Global_NonIce_AP_Damage_matrix_t0./(Cargo_dwt.*(SCE2_NonIce_n_t0 + SCE2_NonIce_Suez_n_t0)); SCE2_Global_NonIce_AP_Damage_matrix_tm = SCE2_Global_NonIce_AP_Damage_matrix_tm./(Cargo_dwt.*(SCE2_NonIce_n_tm + SCE2_NonIce_Suez_n_tm)); SCE2_Global_NonIce_AP_Damage_matrix_tf = SCE2_Global_NonIce_AP_Damage_matrix_tf./(Cargo_dwt.*(SCE2_NonIce_n_tf + SCE2_NonIce_Suez_n_tf)); 

SCE2_Global_Ice_Clim_Damage_matrix_t0 = SCE2_Global_Ice_Clim_Damage_matrix_t0./(Cargo_dwt.*(SCE2_Ice_n_t0 + SCE2_Ice_Suez_n_t0)); SCE2_Global_Ice_Clim_Damage_matrix_tm = SCE2_Global_Ice_Clim_Damage_matrix_tm./(Cargo_dwt.*(SCE2_Ice_n_tm + SCE2_Ice_Suez_n_tm)); SCE2_Global_Ice_Clim_Damage_matrix_tf = SCE2_Global_Ice_Clim_Damage_matrix_tf./(Cargo_dwt.*(SCE2_Ice_n_tf + SCE2_Ice_Suez_n_tf)); 
SCE2_Global_NonIce_Clim_Damage_matrix_t0 = SCE2_Global_NonIce_Clim_Damage_matrix_t0./(Cargo_dwt.*(SCE2_NonIce_n_t0 + SCE2_NonIce_Suez_n_t0)); SCE2_Global_NonIce_Clim_Damage_matrix_tm = SCE2_Global_NonIce_Clim_Damage_matrix_tm./(Cargo_dwt.*(SCE2_NonIce_n_tm + SCE2_NonIce_Suez_n_tm)); SCE2_Global_NonIce_Clim_Damage_matrix_tf = SCE2_Global_NonIce_Clim_Damage_matrix_tf./(Cargo_dwt.*(SCE2_NonIce_n_tf + SCE2_NonIce_Suez_n_tf)); 

%SCE3
SCE3_Ice_Total_Voyage_cost_t0 = SCE3_Ice_Total_Voyage_cost_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Ice_Total_Voyage_cost_tm = SCE3_Ice_Total_Voyage_cost_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Ice_Total_Voyage_cost_tf = SCE3_Ice_Total_Voyage_cost_tf./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_NonIce_Total_Voyage_cost_t0 = SCE3_NonIce_Total_Voyage_cost_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_NonIce_Total_Voyage_cost_tm = SCE3_NonIce_Total_Voyage_cost_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_NonIce_Total_Voyage_cost_tf = SCE3_NonIce_Total_Voyage_cost_tf./(Cargo_dwt.*SCE3_Suez_n_S);

SCE3_Ice_OpEx_t0 = SCE3_Ice_OpEx_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Ice_OpEx_tm = SCE3_Ice_OpEx_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Ice_OpEx_tf = SCE3_Ice_OpEx_tf./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_NonIce_OpEx_t0 = SCE3_NonIce_OpEx_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_NonIce_OpEx_tm = SCE3_NonIce_OpEx_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_NonIce_OpEx_tf = SCE3_NonIce_OpEx_tf./(Cargo_dwt.*SCE3_Suez_n_S);

SCE3_Ice_Total_CapEx_t0 = SCE3_Ice_Total_CapEx_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Ice_Total_CapEx_tm = SCE3_Ice_Total_CapEx_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Ice_Total_CapEx_tf = SCE3_Ice_Total_CapEx_tf./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_NonIce_Total_CapEx_t0 = SCE3_NonIce_Total_CapEx_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_NonIce_Total_CapEx_tm = SCE3_NonIce_Total_CapEx_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_NonIce_Total_CapEx_tf = SCE3_NonIce_Total_CapEx_tf./(Cargo_dwt.*SCE3_Suez_n_S);

SCE3_Global_Ice_CO2eqtax_t0 = SCE3_Global_Ice_CO2eqtax_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_Ice_CO2eqtax_tm = SCE3_Global_Ice_CO2eqtax_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_Ice_CO2eqtax_tf = SCE3_Global_Ice_CO2eqtax_tf./(Cargo_dwt.*SCE3_Suez_n_S);
SCE3_Global_NonIce_CO2eqtax_t0 = SCE3_Global_NonIce_CO2eqtax_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_NonIce_CO2eqtax_tm = SCE3_Global_NonIce_CO2eqtax_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_NonIce_CO2eqtax_tf = SCE3_Global_NonIce_CO2eqtax_tf./(Cargo_dwt.*SCE3_Suez_n_S);

SCE3_Global_Ice_AP_Damage_matrix_t0 = SCE3_Global_Ice_AP_Damage_matrix_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_Ice_AP_Damage_matrix_tm = SCE3_Global_Ice_AP_Damage_matrix_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_Ice_AP_Damage_matrix_tf = SCE3_Global_Ice_AP_Damage_matrix_tf./(Cargo_dwt.*SCE3_Suez_n_S); 
SCE3_Global_NonIce_AP_Damage_matrix_t0 = SCE3_Global_NonIce_AP_Damage_matrix_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_NonIce_AP_Damage_matrix_tm = SCE3_Global_NonIce_AP_Damage_matrix_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_NonIce_AP_Damage_matrix_tf = SCE3_Global_NonIce_AP_Damage_matrix_tf./(Cargo_dwt.*SCE3_Suez_n_S); 

SCE3_Global_Ice_Clim_Damage_matrix_t0 = SCE3_Global_Ice_Clim_Damage_matrix_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_Ice_Clim_Damage_matrix_tm = SCE3_Global_Ice_Clim_Damage_matrix_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_Ice_Clim_Damage_matrix_tf = SCE3_Global_Ice_Clim_Damage_matrix_tf./(Cargo_dwt.*SCE3_Suez_n_S); 
SCE3_Global_NonIce_Clim_Damage_matrix_t0 = SCE3_Global_NonIce_Clim_Damage_matrix_t0./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_NonIce_Clim_Damage_matrix_tm = SCE3_Global_NonIce_Clim_Damage_matrix_tm./(Cargo_dwt.*SCE3_Suez_n_S); SCE3_Global_NonIce_Clim_Damage_matrix_tf = SCE3_Global_NonIce_Clim_Damage_matrix_tf./(Cargo_dwt.*SCE3_Suez_n_S); 

