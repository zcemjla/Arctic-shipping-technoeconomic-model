function [Ice_Bulker_FC_Normalised_value_NSR_ptv,  Ice_Container_FC_Normalised_value_NSR_ptv, Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv,...
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

% This function compiles the graphical  outputs of the model so that they
% can be extracted and interpreted
%   Detailed explanation goes here

%First extract the LSHFO values
%Base LSHFO Cost
Base_LSHFO_NonIce_FC_ptv_t0 = SCE3_NonIce_FC_ptv_t0(:,2); Base_LSHFO_NonIce_FC_ptv_t0 = repmat(Base_LSHFO_NonIce_FC_ptv_t0, 1, length(SCE1_Ice_FC_ptv_t0(1,:)));
Base_LSHFO_NonIce_FC_ptv_tm = SCE3_NonIce_FC_ptv_tm(:,2); Base_LSHFO_NonIce_FC_ptv_tm = repmat(Base_LSHFO_NonIce_FC_ptv_tm, 1, length(SCE1_Ice_FC_ptv_tm(1,:)));
Base_LSHFO_NonIce_FC_ptv_tf = SCE3_NonIce_FC_ptv_tf(:,2); Base_LSHFO_NonIce_FC_ptv_tf = repmat(Base_LSHFO_NonIce_FC_ptv_tf, 1, length(SCE1_Ice_FC_ptv_tf(1,:)));

Base_LSHFO_NonIce_TC_ptv_t0 = SCE3_NonIce_TC_ptv_t0(:,2); Base_LSHFO_NonIce_TC_ptv_t0 = repmat(Base_LSHFO_NonIce_TC_ptv_t0, 1, length(SCE1_Ice_TC_ptv_t0(1,:)));
Base_LSHFO_NonIce_TC_ptv_tm = SCE3_NonIce_TC_ptv_tm(:,2); Base_LSHFO_NonIce_TC_ptv_tm = repmat(Base_LSHFO_NonIce_TC_ptv_tm, 1, length(SCE1_Ice_TC_ptv_tm(1,:)));
Base_LSHFO_NonIce_TC_ptv_tf = SCE3_NonIce_TC_ptv_tf(:,2); Base_LSHFO_NonIce_TC_ptv_tf = repmat(Base_LSHFO_NonIce_TC_ptv_tf, 1, length(SCE1_Ice_TC_ptv_tf(1,:)));

Base_LSHFO_NonIce_VC_t0 = SCE3_NonIce_Total_Voyage_cost_t0(:,2); Base_LSHFO_NonIce_VC_t0 = repmat(Base_LSHFO_NonIce_VC_t0, 1, length(SCE1_Ice_Total_Voyage_cost_t0(1,:)));
Base_LSHFO_NonIce_VC_tm = SCE3_NonIce_Total_Voyage_cost_tm(:,2); Base_LSHFO_NonIce_VC_tm = repmat(Base_LSHFO_NonIce_VC_tm, 1, length(SCE1_Ice_Total_Voyage_cost_tm(1,:)));
Base_LSHFO_NonIce_VC_tf = SCE3_NonIce_Total_Voyage_cost_tf(:,2); Base_LSHFO_NonIce_VC_tf = repmat(Base_LSHFO_NonIce_VC_tf, 1, length(SCE1_Ice_Total_Voyage_cost_tf(1,:)));

Base_LSHFO_NonIce_OC_t0 = SCE3_NonIce_OpEx_t0(:,2); Base_LSHFO_NonIce_OC_t0 = repmat(Base_LSHFO_NonIce_OC_t0, 1, length(SCE1_Ice_Total_Voyage_cost_t0(1,:)));
Base_LSHFO_NonIce_OC_tm = SCE3_NonIce_OpEx_tm(:,2); Base_LSHFO_NonIce_OC_tm = repmat(Base_LSHFO_NonIce_OC_tm, 1, length(SCE1_Ice_Total_Voyage_cost_tm(1,:)));
Base_LSHFO_NonIce_OC_tf = SCE3_NonIce_OpEx_tf(:,2); Base_LSHFO_NonIce_OC_tf = repmat(Base_LSHFO_NonIce_OC_tf, 1, length(SCE1_Ice_Total_Voyage_cost_tf(1,:)));

Base_LSHFO_NonIce_CC_t0 = SCE3_NonIce_Total_CapEx_t0(:,2); Base_LSHFO_NonIce_CC_t0 = repmat(Base_LSHFO_NonIce_CC_t0, 1, length(SCE1_Ice_Total_Voyage_cost_t0(1,:)));
Base_LSHFO_NonIce_CC_tm = SCE3_NonIce_Total_CapEx_tm(:,2); Base_LSHFO_NonIce_CC_tm = repmat(Base_LSHFO_NonIce_CC_tm, 1, length(SCE1_Ice_Total_Voyage_cost_tm(1,:)));
Base_LSHFO_NonIce_CC_tf = SCE3_NonIce_Total_CapEx_tf(:,2); Base_LSHFO_NonIce_CC_tf = repmat(Base_LSHFO_NonIce_CC_tf, 1, length(SCE1_Ice_Total_Voyage_cost_tf(1,:)));

Base_LSHFO_NonIce_CT_t0 = SCE3_Global_NonIce_CO2eqtax_t0(:,2); Base_LSHFO_NonIce_CT_t0 = repmat(Base_LSHFO_NonIce_CT_t0, 1, length(SCE1_Ice_Total_Voyage_cost_t0(1,:)));
Base_LSHFO_NonIce_CT_tm = SCE3_Global_NonIce_CO2eqtax_tm(:,2); Base_LSHFO_NonIce_CT_tm = repmat(Base_LSHFO_NonIce_CT_tm, 1, length(SCE1_Ice_Total_Voyage_cost_tm(1,:)));
Base_LSHFO_NonIce_CT_tf = SCE3_Global_NonIce_CO2eqtax_tf(:,2); Base_LSHFO_NonIce_CT_tf = repmat(Base_LSHFO_NonIce_CT_tf, 1, length(SCE1_Ice_Total_Voyage_cost_tf(1,:)));

Base_LSHFO_NonIce_APC_t0 = SCE3_Global_NonIce_AP_Damage_matrix_t0(:,2); Base_LSHFO_NonIce_APC_t0 = repmat(Base_LSHFO_NonIce_APC_t0, 1, length(SCE1_Ice_Total_Voyage_cost_t0(1,:)));
Base_LSHFO_NonIce_APC_tm = SCE3_Global_NonIce_AP_Damage_matrix_tm(:,2); Base_LSHFO_NonIce_APC_tm = repmat(Base_LSHFO_NonIce_APC_tm, 1, length(SCE1_Ice_Total_Voyage_cost_tm(1,:)));
Base_LSHFO_NonIce_APC_tf = SCE3_Global_NonIce_AP_Damage_matrix_tf(:,2); Base_LSHFO_NonIce_APC_tf = repmat(Base_LSHFO_NonIce_APC_tf, 1, length(SCE1_Ice_Total_Voyage_cost_tf(1,:)));

Base_LSHFO_NonIce_ClC_t0 = SCE3_Global_NonIce_Clim_Damage_matrix_t0(:,2); Base_LSHFO_NonIce_ClC_t0 = repmat(Base_LSHFO_NonIce_ClC_t0, 1, length(SCE1_Ice_Total_Voyage_cost_t0(1,:)));
Base_LSHFO_NonIce_ClC_tm = SCE3_Global_NonIce_Clim_Damage_matrix_tm(:,2); Base_LSHFO_NonIce_ClC_tm = repmat(Base_LSHFO_NonIce_ClC_tm, 1, length(SCE1_Ice_Total_Voyage_cost_tm(1,:)));
Base_LSHFO_NonIce_ClC_tf = SCE3_Global_NonIce_Clim_Damage_matrix_tf(:,2); Base_LSHFO_NonIce_ClC_tf = repmat(Base_LSHFO_NonIce_ClC_tf, 1, length(SCE1_Ice_Total_Voyage_cost_tf(1,:)));

Base_LSHFO_NonIce_CO2eq_t0 = SCE3_Global_NonIce_CO2eq_matrix_t0(:,2); Base_LSHFO_NonIce_CO2eq_t0 = repmat(Base_LSHFO_NonIce_CO2eq_t0, 1, length(SCE1_Ice_Total_Voyage_cost_t0(1,:)));
Base_LSHFO_NonIce_CO2eq_tm = SCE3_Global_NonIce_CO2eq_matrix_tm(:,2); Base_LSHFO_NonIce_CO2eq_tm = repmat(Base_LSHFO_NonIce_CO2eq_tm, 1, length(SCE1_Ice_Total_Voyage_cost_tm(1,:)));
Base_LSHFO_NonIce_CO2eq_tf = SCE3_Global_NonIce_CO2eq_matrix_tf(:,2); Base_LSHFO_NonIce_CO2eq_tf = repmat(Base_LSHFO_NonIce_CO2eq_tf, 1, length(SCE1_Ice_Total_Voyage_cost_tf(1,:)));

Base_LSHFO_NonIce_SOx_t0 = SCE3_NonIce_SOx_matrix_t0(:,2); Base_LSHFO_NonIce_SOx_t0 = repmat(Base_LSHFO_NonIce_SOx_t0, 1, length(SCE1_Ice_Total_Voyage_cost_t0(1,:)));
Base_LSHFO_NonIce_SOx_tm = SCE3_NonIce_SOx_matrix_tm(:,2); Base_LSHFO_NonIce_SOx_tm = repmat(Base_LSHFO_NonIce_SOx_tm, 1, length(SCE1_Ice_Total_Voyage_cost_tm(1,:)));
Base_LSHFO_NonIce_SOx_tf = SCE3_NonIce_SOx_matrix_tf(:,2); Base_LSHFO_NonIce_SOx_tf = repmat(Base_LSHFO_NonIce_SOx_tf, 1, length(SCE1_Ice_Total_Voyage_cost_tf(1,:)));

Base_LSHFO_NonIce_NOx_t0 = SCE3_NonIce_NOx_matrix_t0(:,2); Base_LSHFO_NonIce_NOx_t0 = repmat(Base_LSHFO_NonIce_NOx_t0, 1, length(SCE1_Ice_Total_Voyage_cost_t0(1,:)));
Base_LSHFO_NonIce_NOx_tm = SCE3_NonIce_NOx_matrix_tm(:,2); Base_LSHFO_NonIce_NOx_tm = repmat(Base_LSHFO_NonIce_NOx_tm, 1, length(SCE1_Ice_Total_Voyage_cost_tm(1,:)));
Base_LSHFO_NonIce_NOx_tf = SCE3_NonIce_NOx_matrix_tf(:,2); Base_LSHFO_NonIce_NOx_tf = repmat(Base_LSHFO_NonIce_NOx_tf, 1, length(SCE1_Ice_Total_Voyage_cost_tf(1,:)));

Base_LSHFO_NonIce_PM_t0 = SCE3_NonIce_PM_matrix_t0(:,2); Base_LSHFO_NonIce_PM_t0 = repmat(Base_LSHFO_NonIce_PM_t0, 1, length(SCE1_Ice_Total_Voyage_cost_t0(1,:)));
Base_LSHFO_NonIce_PM_tm = SCE3_NonIce_PM_matrix_tm(:,2); Base_LSHFO_NonIce_PM_tm = repmat(Base_LSHFO_NonIce_PM_tm, 1, length(SCE1_Ice_Total_Voyage_cost_tm(1,:)));
Base_LSHFO_NonIce_PM_tf = SCE3_NonIce_PM_matrix_tf(:,2); Base_LSHFO_NonIce_PM_tf = repmat(Base_LSHFO_NonIce_PM_tf, 1, length(SCE1_Ice_Total_Voyage_cost_tf(1,:)));

%Replace zeros with NaNs
SCE1_Ice_Total_Voyage_cost_t0(SCE1_Ice_Total_Voyage_cost_t0 == 0) = NaN; SCE1_Ice_Total_Voyage_cost_tm(SCE1_Ice_Total_Voyage_cost_tm == 0) = NaN; SCE1_Ice_Total_Voyage_cost_tf(SCE1_Ice_Total_Voyage_cost_tf == 0) = NaN;
SCE1_NonIce_Total_Voyage_cost_t0(SCE1_NonIce_Total_Voyage_cost_t0 == 0) = NaN; SCE1_NonIce_Total_Voyage_cost_tm(SCE1_NonIce_Total_Voyage_cost_tm == 0) = NaN; SCE1_NonIce_Total_Voyage_cost_tf(SCE1_NonIce_Total_Voyage_cost_tf == 0) = NaN;

SCE2_Ice_Total_Voyage_cost_t0(SCE2_Ice_Total_Voyage_cost_t0 == 0) = NaN; SCE2_Ice_Total_Voyage_cost_tm(SCE2_Ice_Total_Voyage_cost_tm == 0) = NaN; SCE2_Ice_Total_Voyage_cost_tf(SCE2_Ice_Total_Voyage_cost_tf == 0) = NaN;
SCE2_NonIce_Total_Voyage_cost_t0(SCE2_NonIce_Total_Voyage_cost_t0 == 0) = NaN; SCE2_NonIce_Total_Voyage_cost_tm(SCE2_NonIce_Total_Voyage_cost_tm == 0) = NaN; SCE2_NonIce_Total_Voyage_cost_tf(SCE2_NonIce_Total_Voyage_cost_tf == 0) = NaN;

SCE1_Ice_OpEx_t0(isinf(SCE1_Ice_OpEx_t0)) = NaN; SCE1_Ice_OpEx_tm(isinf(SCE1_Ice_OpEx_tm)) = NaN; SCE1_Ice_OpEx_tf(isinf(SCE1_Ice_OpEx_tf)) = NaN;
SCE1_NonIce_OpEx_t0(isinf(SCE1_NonIce_OpEx_t0)) = NaN; SCE1_NonIce_OpEx_tm(isinf(SCE1_NonIce_OpEx_tm)) = NaN; SCE1_NonIce_OpEx_tf(isinf(SCE1_NonIce_OpEx_tf)) = NaN;

SCE2_Ice_OpEx_t0(isinf(SCE2_Ice_OpEx_t0)) = NaN; SCE2_Ice_OpEx_tm(isinf(SCE2_Ice_OpEx_tm)) = NaN; SCE2_Ice_OpEx_tf(isinf(SCE2_Ice_OpEx_tf)) = NaN;
SCE2_NonIce_OpEx_t0(isinf(SCE2_NonIce_OpEx_t0)) = NaN; SCE2_NonIce_OpEx_tm(isinf(SCE2_NonIce_OpEx_tm)) = NaN; SCE2_NonIce_OpEx_tf(isinf(SCE2_NonIce_OpEx_tf)) = NaN;

%Tonne voyages
SCE1_Ice_FC_ptv_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Ice_FC_ptv_t0;
SCE1_Ice_FC_ptv_tm = SCE1_Ice_Compatibility_tm.*SCE1_Ice_FC_ptv_tm;
SCE1_Ice_FC_ptv_tf = SCE1_Ice_Compatibility_tf.*SCE1_Ice_FC_ptv_tf;

SCE1_NonIce_FC_ptv_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_NonIce_FC_ptv_t0;
SCE1_NonIce_FC_ptv_tm = SCE1_NonIce_Compatibility_tm.*SCE1_NonIce_FC_ptv_tm;
SCE1_NonIce_FC_ptv_tf = SCE1_NonIce_Compatibility_tf.*SCE1_NonIce_FC_ptv_tf;

SCE2_Ice_FC_ptv_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Ice_FC_ptv_t0;
SCE2_Ice_FC_ptv_tm = SCE2_Ice_Compatibility_tm.*SCE2_Ice_FC_ptv_tm;
SCE2_Ice_FC_ptv_tf = SCE2_Ice_Compatibility_tf.*SCE2_Ice_FC_ptv_tf;

SCE2_NonIce_FC_ptv_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_NonIce_FC_ptv_t0;
SCE2_NonIce_FC_ptv_tm = SCE2_NonIce_Compatibility_tm.*SCE2_NonIce_FC_ptv_tm;
SCE2_NonIce_FC_ptv_tf = SCE2_NonIce_Compatibility_tf.*SCE2_NonIce_FC_ptv_tf;

SCE3_NonIce_FC_ptv_t0 = SCE3_Compatibility_t0.*SCE3_NonIce_FC_ptv_t0;
SCE3_NonIce_FC_ptv_tm = SCE3_Compatibility_tm.*SCE3_NonIce_FC_ptv_tm;
SCE3_NonIce_FC_ptv_tf = SCE3_Compatibility_tf.*SCE3_NonIce_FC_ptv_tf;

SCE1_Ice_TC_ptv_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Ice_TC_ptv_t0;
SCE1_Ice_TC_ptv_tm = SCE1_Ice_Compatibility_tm.*SCE1_Ice_TC_ptv_tm;
SCE1_Ice_TC_ptv_tf = SCE1_Ice_Compatibility_tf.*SCE1_Ice_TC_ptv_tf;

SCE1_NonIce_TC_ptv_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_NonIce_TC_ptv_t0;
SCE1_NonIce_TC_ptv_tm = SCE1_NonIce_Compatibility_tm.*SCE1_NonIce_TC_ptv_tm;
SCE1_NonIce_TC_ptv_tf = SCE1_NonIce_Compatibility_tf.*SCE1_NonIce_TC_ptv_tf;

SCE2_Ice_TC_ptv_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Ice_TC_ptv_t0;
SCE2_Ice_TC_ptv_tm = SCE2_Ice_Compatibility_tm.*SCE2_Ice_TC_ptv_tm;
SCE2_Ice_TC_ptv_tf = SCE2_Ice_Compatibility_tf.*SCE2_Ice_TC_ptv_tf;

SCE2_NonIce_TC_ptv_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_NonIce_TC_ptv_t0;
SCE2_NonIce_TC_ptv_tm = SCE2_NonIce_Compatibility_tm.*SCE2_NonIce_TC_ptv_tm;
SCE2_NonIce_TC_ptv_tf = SCE2_NonIce_Compatibility_tf.*SCE2_NonIce_TC_ptv_tf;

SCE3_NonIce_TC_ptv_t0 = SCE3_Compatibility_t0.*SCE3_NonIce_TC_ptv_t0;
SCE3_NonIce_TC_ptv_tm = SCE3_Compatibility_tm.*SCE3_NonIce_TC_ptv_tm;
SCE3_NonIce_TC_ptv_tf = SCE3_Compatibility_tf.*SCE3_NonIce_TC_ptv_tf;

%Aggregate financial cost
SCE1_Ice_Total_Voyage_cost_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Ice_Total_Voyage_cost_t0;
SCE1_Ice_Total_Voyage_cost_tm = SCE1_Ice_Compatibility_tm.*SCE1_Ice_Total_Voyage_cost_tm;
SCE1_Ice_Total_Voyage_cost_tf = SCE1_Ice_Compatibility_tf.*SCE1_Ice_Total_Voyage_cost_tf;

SCE1_Ice_OpEx_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Ice_OpEx_t0;
SCE1_Ice_OpEx_tm = SCE1_Ice_Compatibility_tm.*SCE1_Ice_OpEx_tm;
SCE1_Ice_OpEx_tf = SCE1_Ice_Compatibility_tf.*SCE1_Ice_OpEx_tf;

SCE1_Ice_Total_CapEx_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Ice_Total_CapEx_t0;
SCE1_Ice_Total_CapEx_tm = SCE1_Ice_Compatibility_tm.*SCE1_Ice_Total_CapEx_tm;
SCE1_Ice_Total_CapEx_tf = SCE1_Ice_Compatibility_tf.*SCE1_Ice_Total_CapEx_tf;

SCE1_Global_Ice_CO2eqtax_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Global_Ice_CO2eqtax_t0;
SCE1_Global_Ice_CO2eqtax_tm = SCE1_Ice_Compatibility_tm.*SCE1_Global_Ice_CO2eqtax_tm;
SCE1_Global_Ice_CO2eqtax_tf = SCE1_Ice_Compatibility_tf.*SCE1_Global_Ice_CO2eqtax_tf;

SCE1_Global_Ice_AP_Damage_matrix_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Global_Ice_AP_Damage_matrix_t0;
SCE1_Global_Ice_AP_Damage_matrix_tm = SCE1_Ice_Compatibility_tm.*SCE1_Global_Ice_AP_Damage_matrix_tm;
SCE1_Global_Ice_AP_Damage_matrix_tf = SCE1_Ice_Compatibility_tf.*SCE1_Global_Ice_AP_Damage_matrix_tf;

SCE1_Global_Ice_Clim_Damage_matrix_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Global_Ice_Clim_Damage_matrix_t0;
SCE1_Global_Ice_Clim_Damage_matrix_tm = SCE1_Ice_Compatibility_tm.*SCE1_Global_Ice_Clim_Damage_matrix_tm;
SCE1_Global_Ice_Clim_Damage_matrix_tf = SCE1_Ice_Compatibility_tf.*SCE1_Global_Ice_Clim_Damage_matrix_tf;

%Emissions 
SCE1_Global_Ice_CO2eq_matrix_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Global_Ice_CO2eq_matrix_t0;
SCE1_Global_Ice_CO2eq_matrix_tm = SCE1_Ice_Compatibility_tm.*SCE1_Global_Ice_CO2eq_matrix_tm;
SCE1_Global_Ice_CO2eq_matrix_tf = SCE1_Ice_Compatibility_tf.*SCE1_Global_Ice_CO2eq_matrix_tf;

SCE1_Ice_SOx_matrix_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Ice_SOx_matrix_t0;
SCE1_Ice_SOx_matrix_tm = SCE1_Ice_Compatibility_tm.*SCE1_Ice_SOx_matrix_tm;
SCE1_Ice_SOx_matrix_tf = SCE1_Ice_Compatibility_tf.*SCE1_Ice_SOx_matrix_tf;

SCE1_Ice_NOx_matrix_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Ice_NOx_matrix_t0;
SCE1_Ice_NOx_matrix_tm = SCE1_Ice_Compatibility_tm.*SCE1_Ice_NOx_matrix_tm;
SCE1_Ice_NOx_matrix_tf = SCE1_Ice_Compatibility_tf.*SCE1_Ice_NOx_matrix_tf;

SCE1_Ice_PM_matrix_t0 = SCE1_Ice_Compatibility_t0.*SCE1_Ice_PM_matrix_t0;
SCE1_Ice_PM_matrix_tm = SCE1_Ice_Compatibility_tm.*SCE1_Ice_PM_matrix_tm;
SCE1_Ice_PM_matrix_tf = SCE1_Ice_Compatibility_tf.*SCE1_Ice_PM_matrix_tf;

%Non ice
SCE1_NonIce_Total_Voyage_cost_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_NonIce_Total_Voyage_cost_t0;
SCE1_NonIce_Total_Voyage_cost_tm = SCE1_NonIce_Compatibility_tm.*SCE1_NonIce_Total_Voyage_cost_tm;
SCE1_NonIce_Total_Voyage_cost_tf = SCE1_NonIce_Compatibility_tf.*SCE1_NonIce_Total_Voyage_cost_tf;

SCE1_NonIce_OpEx_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_NonIce_OpEx_t0;
SCE1_NonIce_OpEx_tm = SCE1_NonIce_Compatibility_tm.*SCE1_NonIce_OpEx_tm;
SCE1_NonIce_OpEx_tf = SCE1_NonIce_Compatibility_tf.*SCE1_NonIce_OpEx_tf;

SCE1_NonIce_Total_CapEx_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_NonIce_Total_CapEx_t0;
SCE1_NonIce_Total_CapEx_tm = SCE1_NonIce_Compatibility_tm.*SCE1_NonIce_Total_CapEx_tm;
SCE1_NonIce_Total_CapEx_tf = SCE1_NonIce_Compatibility_tf.*SCE1_NonIce_Total_CapEx_tf;

SCE1_Global_NonIce_CO2eqtax_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_Global_NonIce_CO2eqtax_t0;
SCE1_Global_NonIce_CO2eqtax_tm = SCE1_NonIce_Compatibility_tm.*SCE1_Global_NonIce_CO2eqtax_tm;
SCE1_Global_NonIce_CO2eqtax_tf = SCE1_NonIce_Compatibility_tf.*SCE1_Global_NonIce_CO2eqtax_tf;

SCE1_Global_NonIce_AP_Damage_matrix_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_Global_NonIce_AP_Damage_matrix_t0;
SCE1_Global_NonIce_AP_Damage_matrix_tm = SCE1_NonIce_Compatibility_tm.*SCE1_Global_NonIce_AP_Damage_matrix_tm;
SCE1_Global_NonIce_AP_Damage_matrix_tf = SCE1_NonIce_Compatibility_tf.*SCE1_Global_NonIce_AP_Damage_matrix_tf;

SCE1_Global_NonIce_Clim_Damage_matrix_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_Global_NonIce_Clim_Damage_matrix_t0;
SCE1_Global_NonIce_Clim_Damage_matrix_tm = SCE1_NonIce_Compatibility_tm.*SCE1_Global_NonIce_Clim_Damage_matrix_tm;
SCE1_Global_NonIce_Clim_Damage_matrix_tf = SCE1_NonIce_Compatibility_tf.*SCE1_Global_NonIce_Clim_Damage_matrix_tf;

%Emissions 
SCE1_Global_NonIce_CO2eq_matrix_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_Global_NonIce_CO2eq_matrix_t0;
SCE1_Global_NonIce_CO2eq_matrix_tm = SCE1_NonIce_Compatibility_tm.*SCE1_Global_NonIce_CO2eq_matrix_tm;
SCE1_Global_NonIce_CO2eq_matrix_tf = SCE1_NonIce_Compatibility_tf.*SCE1_Global_NonIce_CO2eq_matrix_tf;

SCE1_NonIce_SOx_matrix_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_NonIce_SOx_matrix_t0;
SCE1_NonIce_SOx_matrix_tm = SCE1_NonIce_Compatibility_tm.*SCE1_NonIce_SOx_matrix_tm;
SCE1_NonIce_SOx_matrix_tf = SCE1_NonIce_Compatibility_tf.*SCE1_NonIce_SOx_matrix_tf;

SCE1_NonIce_NOx_matrix_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_NonIce_NOx_matrix_t0;
SCE1_NonIce_NOx_matrix_tm = SCE1_NonIce_Compatibility_tm.*SCE1_NonIce_NOx_matrix_tm;
SCE1_NonIce_NOx_matrix_tf = SCE1_NonIce_Compatibility_tf.*SCE1_NonIce_NOx_matrix_tf;

SCE1_NonIce_PM_matrix_t0 = SCE1_NonIce_Compatibility_t0.*SCE1_NonIce_PM_matrix_t0;
SCE1_NonIce_PM_matrix_tm = SCE1_NonIce_Compatibility_tm.*SCE1_NonIce_PM_matrix_tm;
SCE1_NonIce_PM_matrix_tf = SCE1_NonIce_Compatibility_tf.*SCE1_NonIce_PM_matrix_tf;

%Scenario 2
SCE2_Ice_Total_Voyage_cost_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Ice_Total_Voyage_cost_t0;
SCE2_Ice_Total_Voyage_cost_tm = SCE2_Ice_Compatibility_tm.*SCE2_Ice_Total_Voyage_cost_tm;
SCE2_Ice_Total_Voyage_cost_tf = SCE2_Ice_Compatibility_tf.*SCE2_Ice_Total_Voyage_cost_tf;

SCE2_Ice_OpEx_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Ice_OpEx_t0;
SCE2_Ice_OpEx_tm = SCE2_Ice_Compatibility_tm.*SCE2_Ice_OpEx_tm;
SCE2_Ice_OpEx_tf = SCE2_Ice_Compatibility_tf.*SCE2_Ice_OpEx_tf;

SCE2_Ice_Total_CapEx_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Ice_Total_CapEx_t0;
SCE2_Ice_Total_CapEx_tm = SCE2_Ice_Compatibility_tm.*SCE2_Ice_Total_CapEx_tm;
SCE2_Ice_Total_CapEx_tf = SCE2_Ice_Compatibility_tf.*SCE2_Ice_Total_CapEx_tf;

SCE2_Global_Ice_CO2eqtax_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Global_Ice_CO2eqtax_t0;
SCE2_Global_Ice_CO2eqtax_tm = SCE2_Ice_Compatibility_tm.*SCE2_Global_Ice_CO2eqtax_tm;
SCE2_Global_Ice_CO2eqtax_tf = SCE2_Ice_Compatibility_tf.*SCE2_Global_Ice_CO2eqtax_tf;

SCE2_Global_Ice_AP_Damage_matrix_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Global_Ice_AP_Damage_matrix_t0;
SCE2_Global_Ice_AP_Damage_matrix_tm = SCE2_Ice_Compatibility_tm.*SCE2_Global_Ice_AP_Damage_matrix_tm;
SCE2_Global_Ice_AP_Damage_matrix_tf = SCE2_Ice_Compatibility_tf.*SCE2_Global_Ice_AP_Damage_matrix_tf;

SCE2_Global_Ice_Clim_Damage_matrix_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Global_Ice_Clim_Damage_matrix_t0;
SCE2_Global_Ice_Clim_Damage_matrix_tm = SCE2_Ice_Compatibility_tm.*SCE2_Global_Ice_Clim_Damage_matrix_tm;
SCE2_Global_Ice_Clim_Damage_matrix_tf = SCE2_Ice_Compatibility_tf.*SCE2_Global_Ice_Clim_Damage_matrix_tf;

%Emissions 
SCE2_Global_Ice_CO2eq_matrix_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Global_Ice_CO2eq_matrix_t0;
SCE2_Global_Ice_CO2eq_matrix_tm = SCE2_Ice_Compatibility_tm.*SCE2_Global_Ice_CO2eq_matrix_tm;
SCE2_Global_Ice_CO2eq_matrix_tf = SCE2_Ice_Compatibility_tf.*SCE2_Global_Ice_CO2eq_matrix_tf;

SCE2_Ice_SOx_matrix_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Ice_SOx_matrix_t0;
SCE2_Ice_SOx_matrix_tm = SCE2_Ice_Compatibility_tm.*SCE2_Ice_SOx_matrix_tm;
SCE2_Ice_SOx_matrix_tf = SCE2_Ice_Compatibility_tf.*SCE2_Ice_SOx_matrix_tf;

SCE2_Ice_NOx_matrix_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Ice_NOx_matrix_t0;
SCE2_Ice_NOx_matrix_tm = SCE2_Ice_Compatibility_tm.*SCE2_Ice_NOx_matrix_tm;
SCE2_Ice_NOx_matrix_tf = SCE2_Ice_Compatibility_tf.*SCE2_Ice_NOx_matrix_tf;

SCE2_Ice_PM_matrix_t0 = SCE2_Ice_Compatibility_t0.*SCE2_Ice_PM_matrix_t0;
SCE2_Ice_PM_matrix_tm = SCE2_Ice_Compatibility_tm.*SCE2_Ice_PM_matrix_tm;
SCE2_Ice_PM_matrix_tf = SCE2_Ice_Compatibility_tf.*SCE2_Ice_PM_matrix_tf;

%Non ice
SCE2_NonIce_Total_Voyage_cost_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_NonIce_Total_Voyage_cost_t0;
SCE2_NonIce_Total_Voyage_cost_tm = SCE2_NonIce_Compatibility_tm.*SCE2_NonIce_Total_Voyage_cost_tm;
SCE2_NonIce_Total_Voyage_cost_tf = SCE2_NonIce_Compatibility_tf.*SCE2_NonIce_Total_Voyage_cost_tf;

SCE2_NonIce_OpEx_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_NonIce_OpEx_t0;
SCE2_NonIce_OpEx_tm = SCE2_NonIce_Compatibility_tm.*SCE2_NonIce_OpEx_tm;
SCE2_NonIce_OpEx_tf = SCE2_NonIce_Compatibility_tf.*SCE2_NonIce_OpEx_tf;

SCE2_NonIce_Total_CapEx_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_NonIce_Total_CapEx_t0;
SCE2_NonIce_Total_CapEx_tm = SCE2_NonIce_Compatibility_tm.*SCE2_NonIce_Total_CapEx_tm;
SCE2_NonIce_Total_CapEx_tf = SCE2_NonIce_Compatibility_tf.*SCE2_NonIce_Total_CapEx_tf;

SCE2_Global_NonIce_CO2eqtax_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_Global_NonIce_CO2eqtax_t0;
SCE2_Global_NonIce_CO2eqtax_tm = SCE2_NonIce_Compatibility_tm.*SCE2_Global_NonIce_CO2eqtax_tm;
SCE2_Global_NonIce_CO2eqtax_tf = SCE2_NonIce_Compatibility_tf.*SCE2_Global_NonIce_CO2eqtax_tf;

SCE2_Global_NonIce_AP_Damage_matrix_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_Global_NonIce_AP_Damage_matrix_t0;
SCE2_Global_NonIce_AP_Damage_matrix_tm = SCE2_NonIce_Compatibility_tm.*SCE2_Global_NonIce_AP_Damage_matrix_tm;
SCE2_Global_NonIce_AP_Damage_matrix_tf = SCE2_NonIce_Compatibility_tf.*SCE2_Global_NonIce_AP_Damage_matrix_tf;

SCE2_Global_NonIce_Clim_Damage_matrix_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_Global_NonIce_Clim_Damage_matrix_t0;
SCE2_Global_NonIce_Clim_Damage_matrix_tm = SCE2_NonIce_Compatibility_tm.*SCE2_Global_NonIce_Clim_Damage_matrix_tm;
SCE2_Global_NonIce_Clim_Damage_matrix_tf = SCE2_NonIce_Compatibility_tf.*SCE2_Global_NonIce_Clim_Damage_matrix_tf;

%Emissions 
SCE2_Global_NonIce_CO2eq_matrix_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_Global_NonIce_CO2eq_matrix_t0;
SCE2_Global_NonIce_CO2eq_matrix_tm = SCE2_NonIce_Compatibility_tm.*SCE2_Global_NonIce_CO2eq_matrix_tm;
SCE2_Global_NonIce_CO2eq_matrix_tf = SCE2_NonIce_Compatibility_tf.*SCE2_Global_NonIce_CO2eq_matrix_tf;

SCE2_NonIce_SOx_matrix_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_NonIce_SOx_matrix_t0;
SCE2_NonIce_SOx_matrix_tm = SCE2_NonIce_Compatibility_tm.*SCE2_NonIce_SOx_matrix_tm;
SCE2_NonIce_SOx_matrix_tf = SCE2_NonIce_Compatibility_tf.*SCE2_NonIce_SOx_matrix_tf;

SCE2_NonIce_NOx_matrix_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_NonIce_NOx_matrix_t0;
SCE2_NonIce_NOx_matrix_tm = SCE2_NonIce_Compatibility_tm.*SCE2_NonIce_NOx_matrix_tm;
SCE2_NonIce_NOx_matrix_tf = SCE2_NonIce_Compatibility_tf.*SCE2_NonIce_NOx_matrix_tf;

SCE2_NonIce_PM_matrix_t0 = SCE2_NonIce_Compatibility_t0.*SCE2_NonIce_PM_matrix_t0;
SCE2_NonIce_PM_matrix_tm = SCE2_NonIce_Compatibility_tm.*SCE2_NonIce_PM_matrix_tm;
SCE2_NonIce_PM_matrix_tf = SCE2_NonIce_Compatibility_tf.*SCE2_NonIce_PM_matrix_tf;

%SCE3
SCE3_NonIce_Total_Voyage_cost_t0 = SCE3_Compatibility_t0.*SCE3_NonIce_Total_Voyage_cost_t0;
SCE3_NonIce_Total_Voyage_cost_tm = SCE3_Compatibility_tm.*SCE3_NonIce_Total_Voyage_cost_tm;
SCE3_NonIce_Total_Voyage_cost_tf = SCE3_Compatibility_tf.*SCE3_NonIce_Total_Voyage_cost_tf;

SCE3_NonIce_OpEx_t0 = SCE3_Compatibility_t0.*SCE3_NonIce_OpEx_t0;
SCE3_NonIce_OpEx_tm = SCE3_Compatibility_tm.*SCE3_NonIce_OpEx_tm;
SCE3_NonIce_OpEx_tf = SCE3_Compatibility_tf.*SCE3_NonIce_OpEx_tf;

SCE3_NonIce_Total_CapEx_t0 = SCE3_Compatibility_t0.*SCE3_NonIce_Total_CapEx_t0;
SCE3_NonIce_Total_CapEx_tm = SCE3_Compatibility_tm.*SCE3_NonIce_Total_CapEx_tm;
SCE3_NonIce_Total_CapEx_tf = SCE3_Compatibility_tf.*SCE3_NonIce_Total_CapEx_tf;

SCE3_Global_NonIce_CO2eqtax_t0 = SCE3_Compatibility_t0.*SCE3_Global_NonIce_CO2eqtax_t0;
SCE3_Global_NonIce_CO2eqtax_tm = SCE3_Compatibility_tm.*SCE3_Global_NonIce_CO2eqtax_tm;
SCE3_Global_NonIce_CO2eqtax_tf = SCE3_Compatibility_tf.*SCE3_Global_NonIce_CO2eqtax_tf;

SCE3_Global_NonIce_AP_Damage_matrix_t0 = SCE3_Compatibility_t0.*SCE3_Global_NonIce_AP_Damage_matrix_t0;
SCE3_Global_NonIce_AP_Damage_matrix_tm = SCE3_Compatibility_tm.*SCE3_Global_NonIce_AP_Damage_matrix_tm;
SCE3_Global_NonIce_AP_Damage_matrix_tf = SCE3_Compatibility_tf.*SCE3_Global_NonIce_AP_Damage_matrix_tf;

SCE3_Global_NonIce_Clim_Damage_matrix_t0 = SCE3_Compatibility_t0.*SCE3_Global_NonIce_Clim_Damage_matrix_t0;
SCE3_Global_NonIce_Clim_Damage_matrix_tm = SCE3_Compatibility_tm.*SCE3_Global_NonIce_Clim_Damage_matrix_tm;
SCE3_Global_NonIce_Clim_Damage_matrix_tf = SCE3_Compatibility_tf.*SCE3_Global_NonIce_Clim_Damage_matrix_tf;

%Emissions 
SCE3_Global_NonIce_CO2eq_matrix_t0 = SCE3_Compatibility_t0.*SCE3_Global_NonIce_CO2eq_matrix_t0;
SCE3_Global_NonIce_CO2eq_matrix_tm = SCE3_Compatibility_tm.*SCE3_Global_NonIce_CO2eq_matrix_tm;
SCE3_Global_NonIce_CO2eq_matrix_tf = SCE3_Compatibility_tf.*SCE3_Global_NonIce_CO2eq_matrix_tf;

SCE3_NonIce_SOx_matrix_t0 = SCE3_Compatibility_t0.*SCE3_NonIce_SOx_matrix_t0;
SCE3_NonIce_SOx_matrix_tm = SCE3_Compatibility_tm.*SCE3_NonIce_SOx_matrix_tm;
SCE3_NonIce_SOx_matrix_tf = SCE3_Compatibility_tf.*SCE3_NonIce_SOx_matrix_tf;

SCE3_NonIce_NOx_matrix_t0 = SCE3_Compatibility_t0.*SCE3_NonIce_NOx_matrix_t0;
SCE3_NonIce_NOx_matrix_tm = SCE3_Compatibility_tm.*SCE3_NonIce_NOx_matrix_tm;
SCE3_NonIce_NOx_matrix_tf = SCE3_Compatibility_tf.*SCE3_NonIce_NOx_matrix_tf;

SCE3_NonIce_PM_matrix_t0 = SCE3_Compatibility_t0.*SCE3_NonIce_PM_matrix_t0;
SCE3_NonIce_PM_matrix_tm = SCE3_Compatibility_tm.*SCE3_NonIce_PM_matrix_tm;
SCE3_NonIce_PM_matrix_tf = SCE3_Compatibility_tf.*SCE3_NonIce_PM_matrix_tf;

%Take modal bulker, container and wet bulker 
%Bulker - 14 knots, 75000dwt - Index 17
%Container - 24 knots, 110000dwt - Index 51
%Wet Bulker - 15 knots, 109485dwt - Index 93
%Tonne voyage
Base_NonIce_FC_ptv_t0 = zeros(length(SCE3_NonIce_FC_ptv_t0(:,1)),3.*length(SCE3_NonIce_FC_ptv_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_FC_ptv_t0(:,(3.*(i-1))+1) = SCE3_NonIce_FC_ptv_t0(:,i); 
    Base_NonIce_FC_ptv_t0(:,(3.*(i-1))+2) = SCE3_NonIce_FC_ptv_t0(:,i); 
    Base_NonIce_FC_ptv_t0(:,(3.*(i-1))+3) = SCE3_NonIce_FC_ptv_t0(:,i); 
end

Base_NonIce_FC_ptv_tm = zeros(length(SCE3_NonIce_FC_ptv_t0(:,1)),3.*length(SCE3_NonIce_FC_ptv_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_FC_ptv_tm(:,(3.*(i-1))+1) = SCE3_NonIce_FC_ptv_tm(:,i); 
    Base_NonIce_FC_ptv_tm(:,(3.*(i-1))+2) = SCE3_NonIce_FC_ptv_tm(:,i); 
    Base_NonIce_FC_ptv_tm(:,(3.*(i-1))+3) = SCE3_NonIce_FC_ptv_tm(:,i); 
end

Base_NonIce_FC_ptv_tf = zeros(length(SCE3_NonIce_FC_ptv_t0(:,1)),3.*length(SCE3_NonIce_FC_ptv_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_FC_ptv_tf(:,(3.*(i-1))+1) = SCE3_NonIce_FC_ptv_tf(:,i); 
    Base_NonIce_FC_ptv_tf(:,(3.*(i-1))+2) = SCE3_NonIce_FC_ptv_tf(:,i); 
    Base_NonIce_FC_ptv_tf(:,(3.*(i-1))+3) = SCE3_NonIce_FC_ptv_tf(:,i); 
end


%TV Normalised 
SCE1_Ice_Bulker_FC_Normalised_value_ptv = [SCE1_Ice_FC_ptv_t0(17,:)./Base_NonIce_FC_ptv_t0(17,:); SCE1_Ice_FC_ptv_tm(17,:)./Base_NonIce_FC_ptv_tm(17,:); SCE1_Ice_FC_ptv_tf(17,:)./Base_NonIce_FC_ptv_tf(17,:)];
SCE1_Ice_Container_FC_Normalised_value_ptv = [SCE1_Ice_FC_ptv_t0(51,:)./Base_NonIce_FC_ptv_t0(51,:); SCE1_Ice_FC_ptv_tm(51,:)./Base_NonIce_FC_ptv_tm(51,:); SCE1_Ice_FC_ptv_tf(51,:)./Base_NonIce_FC_ptv_tf(51,:)];
SCE1_Ice_Wet_Bulker_FC_Normalised_value_ptv = [SCE1_Ice_FC_ptv_t0(93,:)./Base_NonIce_FC_ptv_t0(93,:); SCE1_Ice_FC_ptv_tm(93,:)./Base_NonIce_FC_ptv_tm(93,:); SCE1_Ice_FC_ptv_tf(93,:)./Base_NonIce_FC_ptv_tf(93,:)];

SCE1_NonIce_Bulker_FC_Normalised_value_ptv = [SCE1_NonIce_FC_ptv_t0(17,:)./Base_NonIce_FC_ptv_t0(17,:); SCE1_NonIce_FC_ptv_tm(17,:)./Base_NonIce_FC_ptv_tm(17,:); SCE1_NonIce_FC_ptv_tf(17,:)./Base_NonIce_FC_ptv_tf(17,:)];
SCE1_NonIce_Container_FC_Normalised_value_ptv = [SCE1_NonIce_FC_ptv_t0(51,:)./Base_NonIce_FC_ptv_t0(51,:); SCE1_NonIce_FC_ptv_tm(51,:)./Base_NonIce_FC_ptv_tm(51,:); SCE1_NonIce_FC_ptv_tf(51,:)./Base_NonIce_FC_ptv_tf(51,:)];
SCE1_NonIce_Wet_Bulker_FC_Normalised_value_ptv = [SCE1_NonIce_FC_ptv_t0(93,:)./Base_NonIce_FC_ptv_t0(93,:); SCE1_NonIce_FC_ptv_tm(93,:)./Base_NonIce_FC_ptv_tm(93,:); SCE1_NonIce_FC_ptv_tf(93,:)./Base_NonIce_FC_ptv_tf(93,:)];

SCE2_Ice_Bulker_FC_Normalised_value_ptv = [SCE2_Ice_FC_ptv_t0(17,:)./Base_NonIce_FC_ptv_t0(17,:); SCE2_Ice_FC_ptv_tm(17,:)./Base_NonIce_FC_ptv_tm(17,:); SCE2_Ice_FC_ptv_tf(17,:)./Base_NonIce_FC_ptv_tf(17,:)];
SCE2_Ice_Container_FC_Normalised_value_ptv = [SCE2_Ice_FC_ptv_t0(51,:)./Base_NonIce_FC_ptv_t0(51,:); SCE2_Ice_FC_ptv_tm(51,:)./Base_NonIce_FC_ptv_tm(51,:); SCE2_Ice_FC_ptv_tf(51,:)./Base_NonIce_FC_ptv_tf(51,:)];
SCE2_Ice_Wet_Bulker_FC_Normalised_value_ptv = [SCE2_Ice_FC_ptv_t0(93,:)./Base_NonIce_FC_ptv_t0(93,:); SCE2_Ice_FC_ptv_tm(93,:)./Base_NonIce_FC_ptv_tm(93,:); SCE2_Ice_FC_ptv_tf(93,:)./Base_NonIce_FC_ptv_tf(93,:)];

SCE2_NonIce_Bulker_FC_Normalised_value_ptv = [SCE2_NonIce_FC_ptv_t0(17,:)./Base_NonIce_FC_ptv_t0(17,:); SCE2_NonIce_FC_ptv_tm(17,:)./Base_NonIce_FC_ptv_tm(17,:); SCE2_NonIce_FC_ptv_tf(17,:)./Base_NonIce_FC_ptv_tf(17,:)];
SCE2_NonIce_Container_FC_Normalised_value_ptv = [SCE2_NonIce_FC_ptv_t0(51,:)./Base_NonIce_FC_ptv_t0(51,:); SCE2_NonIce_FC_ptv_tm(51,:)./Base_NonIce_FC_ptv_tm(51,:); SCE2_NonIce_FC_ptv_tf(51,:)./Base_NonIce_FC_ptv_tf(51,:)];
SCE2_NonIce_Wet_Bulker_FC_Normalised_value_ptv = [SCE2_NonIce_FC_ptv_t0(93,:)./Base_NonIce_FC_ptv_t0(93,:); SCE2_NonIce_FC_ptv_tm(93,:)./Base_NonIce_FC_ptv_tm(93,:); SCE2_NonIce_FC_ptv_tf(93,:)./Base_NonIce_FC_ptv_tf(93,:)];

%TV LSHFO Normalised 
SCE1_LSHFO_Ice_Bulker_FC_Normalised_value_ptv = [SCE1_Ice_FC_ptv_t0(17,:)./Base_LSHFO_NonIce_FC_ptv_t0(17,:); SCE1_Ice_FC_ptv_tm(17,:)./Base_LSHFO_NonIce_FC_ptv_tm(17,:); SCE1_Ice_FC_ptv_tf(17,:)./Base_LSHFO_NonIce_FC_ptv_tf(17,:)];
SCE1_LSHFO_Ice_Container_FC_Normalised_value_ptv = [SCE1_Ice_FC_ptv_t0(51,:)./Base_LSHFO_NonIce_FC_ptv_t0(51,:); SCE1_Ice_FC_ptv_tm(51,:)./Base_LSHFO_NonIce_FC_ptv_tm(51,:); SCE1_Ice_FC_ptv_tf(51,:)./Base_LSHFO_NonIce_FC_ptv_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_ptv = [SCE1_Ice_FC_ptv_t0(93,:)./Base_LSHFO_NonIce_FC_ptv_t0(93,:); SCE1_Ice_FC_ptv_tm(93,:)./Base_LSHFO_NonIce_FC_ptv_tm(93,:); SCE1_Ice_FC_ptv_tf(93,:)./Base_LSHFO_NonIce_FC_ptv_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_FC_Normalised_value_ptv = [SCE1_NonIce_FC_ptv_t0(17,:)./Base_LSHFO_NonIce_FC_ptv_t0(17,:); SCE1_NonIce_FC_ptv_tm(17,:)./Base_LSHFO_NonIce_FC_ptv_tm(17,:); SCE1_NonIce_FC_ptv_tf(17,:)./Base_LSHFO_NonIce_FC_ptv_tf(17,:)];
SCE1_LSHFO_NonIce_Container_FC_Normalised_value_ptv = [SCE1_NonIce_FC_ptv_t0(51,:)./Base_LSHFO_NonIce_FC_ptv_t0(51,:); SCE1_NonIce_FC_ptv_tm(51,:)./Base_LSHFO_NonIce_FC_ptv_tm(51,:); SCE1_NonIce_FC_ptv_tf(51,:)./Base_LSHFO_NonIce_FC_ptv_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_ptv = [SCE1_NonIce_FC_ptv_t0(93,:)./Base_LSHFO_NonIce_FC_ptv_t0(93,:); SCE1_NonIce_FC_ptv_tm(93,:)./Base_LSHFO_NonIce_FC_ptv_tm(93,:); SCE1_NonIce_FC_ptv_tf(93,:)./Base_LSHFO_NonIce_FC_ptv_tf(93,:)];

SCE2_LSHFO_Ice_Bulker_FC_Normalised_value_ptv = [SCE2_Ice_FC_ptv_t0(17,:)./Base_LSHFO_NonIce_FC_ptv_t0(17,:); SCE2_Ice_FC_ptv_tm(17,:)./Base_LSHFO_NonIce_FC_ptv_tm(17,:); SCE2_Ice_FC_ptv_tf(17,:)./Base_LSHFO_NonIce_FC_ptv_tf(17,:)];
SCE2_LSHFO_Ice_Container_FC_Normalised_value_ptv = [SCE2_Ice_FC_ptv_t0(51,:)./Base_LSHFO_NonIce_FC_ptv_t0(51,:); SCE2_Ice_FC_ptv_tm(51,:)./Base_LSHFO_NonIce_FC_ptv_tm(51,:); SCE2_Ice_FC_ptv_tf(51,:)./Base_LSHFO_NonIce_FC_ptv_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_ptv = [SCE2_Ice_FC_ptv_t0(93,:)./Base_LSHFO_NonIce_FC_ptv_t0(93,:); SCE2_Ice_FC_ptv_tm(93,:)./Base_LSHFO_NonIce_FC_ptv_tm(93,:); SCE2_Ice_FC_ptv_tf(93,:)./Base_LSHFO_NonIce_FC_ptv_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_FC_Normalised_value_ptv = [SCE2_NonIce_FC_ptv_t0(17,:)./Base_LSHFO_NonIce_FC_ptv_t0(17,:); SCE2_NonIce_FC_ptv_tm(17,:)./Base_LSHFO_NonIce_FC_ptv_tm(17,:); SCE2_NonIce_FC_ptv_tf(17,:)./Base_LSHFO_NonIce_FC_ptv_tf(17,:)];
SCE2_LSHFO_NonIce_Container_FC_Normalised_value_ptv = [SCE2_NonIce_FC_ptv_t0(51,:)./Base_LSHFO_NonIce_FC_ptv_t0(51,:); SCE2_NonIce_FC_ptv_tm(51,:)./Base_LSHFO_NonIce_FC_ptv_tm(51,:); SCE2_NonIce_FC_ptv_tf(51,:)./Base_LSHFO_NonIce_FC_ptv_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_ptv = [SCE2_NonIce_FC_ptv_t0(93,:)./Base_LSHFO_NonIce_FC_ptv_t0(93,:); SCE2_NonIce_FC_ptv_tm(93,:)./Base_LSHFO_NonIce_FC_ptv_tm(93,:); SCE2_NonIce_FC_ptv_tf(93,:)./Base_LSHFO_NonIce_FC_ptv_tf(93,:)];

%TC
%Tonne voyage
Base_NonIce_TC_ptv_t0 = zeros(length(SCE3_NonIce_TC_ptv_t0(:,1)),3.*length(SCE3_NonIce_TC_ptv_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_TC_ptv_t0(:,(3.*(i-1))+1) = SCE3_NonIce_TC_ptv_t0(:,i); 
    Base_NonIce_TC_ptv_t0(:,(3.*(i-1))+2) = SCE3_NonIce_TC_ptv_t0(:,i); 
    Base_NonIce_TC_ptv_t0(:,(3.*(i-1))+3) = SCE3_NonIce_TC_ptv_t0(:,i); 
end

Base_NonIce_TC_ptv_tm = zeros(length(SCE3_NonIce_TC_ptv_t0(:,1)),3.*length(SCE3_NonIce_TC_ptv_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_TC_ptv_tm(:,(3.*(i-1))+1) = SCE3_NonIce_TC_ptv_tm(:,i); 
    Base_NonIce_TC_ptv_tm(:,(3.*(i-1))+2) = SCE3_NonIce_TC_ptv_tm(:,i); 
    Base_NonIce_TC_ptv_tm(:,(3.*(i-1))+3) = SCE3_NonIce_TC_ptv_tm(:,i); 
end

Base_NonIce_TC_ptv_tf = zeros(length(SCE3_NonIce_TC_ptv_t0(:,1)),3.*length(SCE3_NonIce_TC_ptv_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_TC_ptv_tf(:,(3.*(i-1))+1) = SCE3_NonIce_TC_ptv_tf(:,i); 
    Base_NonIce_TC_ptv_tf(:,(3.*(i-1))+2) = SCE3_NonIce_TC_ptv_tf(:,i); 
    Base_NonIce_TC_ptv_tf(:,(3.*(i-1))+3) = SCE3_NonIce_TC_ptv_tf(:,i); 
end

%Tonne voyages
SCE1_Ice_Bulker_TC_Normalised_value_ptv = [SCE1_Ice_TC_ptv_t0(17,:)./Base_NonIce_TC_ptv_t0(17,:); SCE1_Ice_TC_ptv_tm(17,:)./Base_NonIce_TC_ptv_tm(17,:); SCE1_Ice_TC_ptv_tf(17,:)./Base_NonIce_TC_ptv_tf(17,:)];
SCE1_Ice_Container_TC_Normalised_value_ptv = [SCE1_Ice_TC_ptv_t0(51,:)./Base_NonIce_TC_ptv_t0(51,:); SCE1_Ice_TC_ptv_tm(51,:)./Base_NonIce_TC_ptv_tm(51,:); SCE1_Ice_TC_ptv_tf(51,:)./Base_NonIce_TC_ptv_tf(51,:)];
SCE1_Ice_Wet_Bulker_TC_Normalised_value_ptv = [SCE1_Ice_TC_ptv_t0(93,:)./Base_NonIce_TC_ptv_t0(93,:); SCE1_Ice_TC_ptv_tm(93,:)./Base_NonIce_TC_ptv_tm(93,:); SCE1_Ice_TC_ptv_tf(93,:)./Base_NonIce_TC_ptv_tf(93,:)];

SCE1_NonIce_Bulker_TC_Normalised_value_ptv = [SCE1_NonIce_TC_ptv_t0(17,:)./Base_NonIce_TC_ptv_t0(17,:); SCE1_NonIce_TC_ptv_tm(17,:)./Base_NonIce_TC_ptv_tm(17,:); SCE1_NonIce_TC_ptv_tf(17,:)./Base_NonIce_TC_ptv_tf(17,:)];
SCE1_NonIce_Container_TC_Normalised_value_ptv = [SCE1_NonIce_TC_ptv_t0(51,:)./Base_NonIce_TC_ptv_t0(51,:); SCE1_NonIce_TC_ptv_tm(51,:)./Base_NonIce_TC_ptv_tm(51,:); SCE1_NonIce_TC_ptv_tf(51,:)./Base_NonIce_TC_ptv_tf(51,:)];
SCE1_NonIce_Wet_Bulker_TC_Normalised_value_ptv = [SCE1_NonIce_TC_ptv_t0(93,:)./Base_NonIce_TC_ptv_t0(93,:); SCE1_NonIce_TC_ptv_tm(93,:)./Base_NonIce_TC_ptv_tm(93,:); SCE1_NonIce_TC_ptv_tf(93,:)./Base_NonIce_TC_ptv_tf(93,:)];

SCE2_Ice_Bulker_TC_Normalised_value_ptv = [SCE2_Ice_TC_ptv_t0(17,:)./Base_NonIce_TC_ptv_t0(17,:); SCE2_Ice_TC_ptv_tm(17,:)./Base_NonIce_TC_ptv_tm(17,:); SCE2_Ice_TC_ptv_tf(17,:)./Base_NonIce_TC_ptv_tf(17,:)];
SCE2_Ice_Container_TC_Normalised_value_ptv = [SCE2_Ice_TC_ptv_t0(51,:)./Base_NonIce_TC_ptv_t0(51,:); SCE2_Ice_TC_ptv_tm(51,:)./Base_NonIce_TC_ptv_tm(51,:); SCE2_Ice_TC_ptv_tf(51,:)./Base_NonIce_TC_ptv_tf(51,:)];
SCE2_Ice_Wet_Bulker_TC_Normalised_value_ptv = [SCE2_Ice_TC_ptv_t0(93,:)./Base_NonIce_TC_ptv_t0(93,:); SCE2_Ice_TC_ptv_tm(93,:)./Base_NonIce_TC_ptv_tm(93,:); SCE2_Ice_TC_ptv_tf(93,:)./Base_NonIce_TC_ptv_tf(93,:)];

SCE2_NonIce_Bulker_TC_Normalised_value_ptv = [SCE2_NonIce_TC_ptv_t0(17,:)./Base_NonIce_TC_ptv_t0(17,:); SCE2_NonIce_TC_ptv_tm(17,:)./Base_NonIce_TC_ptv_tm(17,:); SCE2_NonIce_TC_ptv_tf(17,:)./Base_NonIce_TC_ptv_tf(17,:)];
SCE2_NonIce_Container_TC_Normalised_value_ptv = [SCE2_NonIce_TC_ptv_t0(51,:)./Base_NonIce_TC_ptv_t0(51,:); SCE2_NonIce_TC_ptv_tm(51,:)./Base_NonIce_TC_ptv_tm(51,:); SCE2_NonIce_TC_ptv_tf(51,:)./Base_NonIce_TC_ptv_tf(51,:)];
SCE2_NonIce_Wet_Bulker_TC_Normalised_value_ptv = [SCE2_NonIce_TC_ptv_t0(93,:)./Base_NonIce_TC_ptv_t0(93,:); SCE2_NonIce_TC_ptv_tm(93,:)./Base_NonIce_TC_ptv_tm(93,:); SCE2_NonIce_TC_ptv_tf(93,:)./Base_NonIce_TC_ptv_tf(93,:)];

%TV LSHFO Normalised 
SCE1_LSHFO_Ice_Bulker_TC_Normalised_value_ptv = [SCE1_Ice_TC_ptv_t0(17,:)./Base_LSHFO_NonIce_TC_ptv_t0(17,:); SCE1_Ice_TC_ptv_tm(17,:)./Base_LSHFO_NonIce_TC_ptv_tm(17,:); SCE1_Ice_TC_ptv_tf(17,:)./Base_LSHFO_NonIce_TC_ptv_tf(17,:)];
SCE1_LSHFO_Ice_Container_TC_Normalised_value_ptv = [SCE1_Ice_TC_ptv_t0(51,:)./Base_LSHFO_NonIce_TC_ptv_t0(51,:); SCE1_Ice_TC_ptv_tm(51,:)./Base_LSHFO_NonIce_TC_ptv_tm(51,:); SCE1_Ice_TC_ptv_tf(51,:)./Base_LSHFO_NonIce_TC_ptv_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_ptv = [SCE1_Ice_TC_ptv_t0(93,:)./Base_LSHFO_NonIce_TC_ptv_t0(93,:); SCE1_Ice_TC_ptv_tm(93,:)./Base_LSHFO_NonIce_TC_ptv_tm(93,:); SCE1_Ice_TC_ptv_tf(93,:)./Base_LSHFO_NonIce_TC_ptv_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_TC_Normalised_value_ptv = [SCE1_NonIce_TC_ptv_t0(17,:)./Base_LSHFO_NonIce_TC_ptv_t0(17,:); SCE1_NonIce_TC_ptv_tm(17,:)./Base_LSHFO_NonIce_TC_ptv_tm(17,:); SCE1_NonIce_TC_ptv_tf(17,:)./Base_LSHFO_NonIce_TC_ptv_tf(17,:)];
SCE1_LSHFO_NonIce_Container_TC_Normalised_value_ptv = [SCE1_NonIce_TC_ptv_t0(51,:)./Base_LSHFO_NonIce_TC_ptv_t0(51,:); SCE1_NonIce_TC_ptv_tm(51,:)./Base_LSHFO_NonIce_TC_ptv_tm(51,:); SCE1_NonIce_TC_ptv_tf(51,:)./Base_LSHFO_NonIce_TC_ptv_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_ptv = [SCE1_NonIce_TC_ptv_t0(93,:)./Base_LSHFO_NonIce_TC_ptv_t0(93,:); SCE1_NonIce_TC_ptv_tm(93,:)./Base_LSHFO_NonIce_TC_ptv_tm(93,:); SCE1_NonIce_TC_ptv_tf(93,:)./Base_LSHFO_NonIce_TC_ptv_tf(93,:)];

SCE2_LSHFO_Ice_Bulker_TC_Normalised_value_ptv = [SCE2_Ice_TC_ptv_t0(17,:)./Base_LSHFO_NonIce_TC_ptv_t0(17,:); SCE2_Ice_TC_ptv_tm(17,:)./Base_LSHFO_NonIce_TC_ptv_tm(17,:); SCE2_Ice_TC_ptv_tf(17,:)./Base_LSHFO_NonIce_TC_ptv_tf(17,:)];
SCE2_LSHFO_Ice_Container_TC_Normalised_value_ptv = [SCE2_Ice_TC_ptv_t0(51,:)./Base_LSHFO_NonIce_TC_ptv_t0(51,:); SCE2_Ice_TC_ptv_tm(51,:)./Base_LSHFO_NonIce_TC_ptv_tm(51,:); SCE2_Ice_TC_ptv_tf(51,:)./Base_LSHFO_NonIce_TC_ptv_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_ptv = [SCE2_Ice_TC_ptv_t0(93,:)./Base_LSHFO_NonIce_TC_ptv_t0(93,:); SCE2_Ice_TC_ptv_tm(93,:)./Base_LSHFO_NonIce_TC_ptv_tm(93,:); SCE2_Ice_TC_ptv_tf(93,:)./Base_LSHFO_NonIce_TC_ptv_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_TC_Normalised_value_ptv = [SCE2_NonIce_TC_ptv_t0(17,:)./Base_LSHFO_NonIce_TC_ptv_t0(17,:); SCE2_NonIce_TC_ptv_tm(17,:)./Base_LSHFO_NonIce_TC_ptv_tm(17,:); SCE2_NonIce_TC_ptv_tf(17,:)./Base_LSHFO_NonIce_TC_ptv_tf(17,:)];
SCE2_LSHFO_NonIce_Container_TC_Normalised_value_ptv = [SCE2_NonIce_TC_ptv_t0(51,:)./Base_LSHFO_NonIce_TC_ptv_t0(51,:); SCE2_NonIce_TC_ptv_tm(51,:)./Base_LSHFO_NonIce_TC_ptv_tm(51,:); SCE2_NonIce_TC_ptv_tf(51,:)./Base_LSHFO_NonIce_TC_ptv_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_ptv = [SCE2_NonIce_TC_ptv_t0(93,:)./Base_LSHFO_NonIce_TC_ptv_t0(93,:); SCE2_NonIce_TC_ptv_tm(93,:)./Base_LSHFO_NonIce_TC_ptv_tm(93,:); SCE2_NonIce_TC_ptv_tf(93,:)./Base_LSHFO_NonIce_TC_ptv_tf(93,:)];

%Tonne voyages
SCE1_Ice_Bulker_FC_Normalised_value_NSR_ptv = SCE1_Ice_Bulker_FC_Normalised_value_ptv(:,1:3:end);
SCE1_Ice_Container_FC_Normalised_value_NSR_ptv = SCE1_Ice_Container_FC_Normalised_value_ptv(:,1:3:end);
SCE1_Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv = SCE1_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,1:3:end);

SCE1_NonIce_Bulker_FC_Normalised_value_NSR_ptv = SCE1_NonIce_Bulker_FC_Normalised_value_ptv(:,1:3:end);
SCE1_NonIce_Container_FC_Normalised_value_NSR_ptv = SCE1_NonIce_Container_FC_Normalised_value_ptv(:,1:3:end);
SCE1_NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv = SCE1_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,1:3:end);

SCE1_Ice_Bulker_TC_Normalised_value_NSR_ptv = SCE1_Ice_Bulker_TC_Normalised_value_ptv(:,1:3:end);
SCE1_Ice_Container_TC_Normalised_value_NSR_ptv = SCE1_Ice_Container_TC_Normalised_value_ptv(:,1:3:end);
SCE1_Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv = SCE1_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,1:3:end);

SCE1_NonIce_Bulker_TC_Normalised_value_NSR_ptv = SCE1_NonIce_Bulker_TC_Normalised_value_ptv(:,1:3:end);
SCE1_NonIce_Container_TC_Normalised_value_NSR_ptv = SCE1_NonIce_Container_TC_Normalised_value_ptv(:,1:3:end);
SCE1_NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv = SCE1_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,1:3:end);

SCE2_Ice_Bulker_FC_Normalised_value_NSR_ptv = SCE2_Ice_Bulker_FC_Normalised_value_ptv(:,1:3:end);
SCE2_Ice_Container_FC_Normalised_value_NSR_ptv = SCE2_Ice_Container_FC_Normalised_value_ptv(:,1:3:end);
SCE2_Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv = SCE2_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,1:3:end);

SCE2_NonIce_Bulker_FC_Normalised_value_NSR_ptv = SCE2_NonIce_Bulker_FC_Normalised_value_ptv(:,1:3:end);
SCE2_NonIce_Container_FC_Normalised_value_NSR_ptv = SCE2_NonIce_Container_FC_Normalised_value_ptv(:,1:3:end);
SCE2_NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv = SCE2_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,1:3:end);

SCE2_Ice_Bulker_TC_Normalised_value_NSR_ptv = SCE2_Ice_Bulker_TC_Normalised_value_ptv(:,1:3:end);
SCE2_Ice_Container_TC_Normalised_value_NSR_ptv = SCE2_Ice_Container_TC_Normalised_value_ptv(:,1:3:end);
SCE2_Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv = SCE2_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,1:3:end);

SCE2_NonIce_Bulker_TC_Normalised_value_NSR_ptv = SCE2_NonIce_Bulker_TC_Normalised_value_ptv(:,1:3:end);
SCE2_NonIce_Container_TC_Normalised_value_NSR_ptv = SCE2_NonIce_Container_TC_Normalised_value_ptv(:,1:3:end);
SCE2_NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv = SCE2_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,1:3:end);

%LSHFO Extraction
SCE1_LSHFO_Ice_Bulker_FC_Normalised_value_NSR_ptv = SCE1_LSHFO_Ice_Bulker_FC_Normalised_value_ptv(:,1:3:end);
SCE1_LSHFO_Ice_Container_FC_Normalised_value_NSR_ptv = SCE1_LSHFO_Ice_Container_FC_Normalised_value_ptv(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv = SCE1_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_FC_Normalised_value_NSR_ptv = SCE1_LSHFO_NonIce_Bulker_FC_Normalised_value_ptv(:,1:3:end);
SCE1_LSHFO_NonIce_Container_FC_Normalised_value_NSR_ptv = SCE1_LSHFO_NonIce_Container_FC_Normalised_value_ptv(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv = SCE1_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,1:3:end);

SCE1_LSHFO_Ice_Bulker_TC_Normalised_value_NSR_ptv = SCE1_LSHFO_Ice_Bulker_TC_Normalised_value_ptv(:,1:3:end);
SCE1_LSHFO_Ice_Container_TC_Normalised_value_NSR_ptv = SCE1_LSHFO_Ice_Container_TC_Normalised_value_ptv(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv = SCE1_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_TC_Normalised_value_NSR_ptv = SCE1_LSHFO_NonIce_Bulker_TC_Normalised_value_ptv(:,1:3:end);
SCE1_LSHFO_NonIce_Container_TC_Normalised_value_NSR_ptv = SCE1_LSHFO_NonIce_Container_TC_Normalised_value_ptv(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv = SCE1_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_FC_Normalised_value_NSR_ptv = SCE2_LSHFO_Ice_Bulker_FC_Normalised_value_ptv(:,1:3:end);
SCE2_LSHFO_Ice_Container_FC_Normalised_value_NSR_ptv = SCE2_LSHFO_Ice_Container_FC_Normalised_value_ptv(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv = SCE2_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_FC_Normalised_value_NSR_ptv = SCE2_LSHFO_NonIce_Bulker_FC_Normalised_value_ptv(:,1:3:end);
SCE2_LSHFO_NonIce_Container_FC_Normalised_value_NSR_ptv = SCE2_LSHFO_NonIce_Container_FC_Normalised_value_ptv(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv = SCE2_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_TC_Normalised_value_NSR_ptv = SCE2_LSHFO_Ice_Bulker_TC_Normalised_value_ptv(:,1:3:end);
SCE2_LSHFO_Ice_Container_TC_Normalised_value_NSR_ptv = SCE2_LSHFO_Ice_Container_TC_Normalised_value_ptv(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv = SCE2_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_TC_Normalised_value_NSR_ptv = SCE2_LSHFO_NonIce_Bulker_TC_Normalised_value_ptv(:,1:3:end);
SCE2_LSHFO_NonIce_Container_TC_Normalised_value_NSR_ptv = SCE2_LSHFO_NonIce_Container_TC_Normalised_value_ptv(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv = SCE2_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,1:3:end);

%Financial cost 
Base_NonIce_VC_t0 = zeros(length(SCE3_NonIce_Total_Voyage_cost_t0(:,1)),3.*length(SCE3_NonIce_Total_Voyage_cost_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_VC_t0(:,(3.*(i-1))+1) = SCE3_NonIce_Total_Voyage_cost_t0(:,i); 
    Base_NonIce_VC_t0(:,(3.*(i-1))+2) = SCE3_NonIce_Total_Voyage_cost_t0(:,i); 
    Base_NonIce_VC_t0(:,(3.*(i-1))+3) = SCE3_NonIce_Total_Voyage_cost_t0(:,i); 
end

Base_NonIce_VC_tm = zeros(length(SCE3_NonIce_Total_Voyage_cost_tm(:,1)),3.*length(SCE3_NonIce_Total_Voyage_cost_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_VC_tm(:,(3.*(i-1))+1) = SCE3_NonIce_Total_Voyage_cost_tm(:,i); 
    Base_NonIce_VC_tm(:,(3.*(i-1))+2) = SCE3_NonIce_Total_Voyage_cost_tm(:,i); 
    Base_NonIce_VC_tm(:,(3.*(i-1))+3) = SCE3_NonIce_Total_Voyage_cost_tm(:,i); 
end

Base_NonIce_VC_tf = zeros(length(SCE3_NonIce_Total_Voyage_cost_tf(:,1)),3.*length(SCE3_NonIce_Total_Voyage_cost_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_VC_tf(:,(3.*(i-1))+1) = SCE3_NonIce_Total_Voyage_cost_tf(:,i); 
    Base_NonIce_VC_tf(:,(3.*(i-1))+2) = SCE3_NonIce_Total_Voyage_cost_tf(:,i); 
    Base_NonIce_VC_tf(:,(3.*(i-1))+3) = SCE3_NonIce_Total_Voyage_cost_tf(:,i); 
end

Base_NonIce_OC_t0 = zeros(length(SCE3_NonIce_OpEx_t0(:,1)),3.*length(SCE3_NonIce_OpEx_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_OC_t0(:,(3.*(i-1))+1) = SCE3_NonIce_OpEx_t0(:,i); 
    Base_NonIce_OC_t0(:,(3.*(i-1))+2) = SCE3_NonIce_OpEx_t0(:,i); 
    Base_NonIce_OC_t0(:,(3.*(i-1))+3) = SCE3_NonIce_OpEx_t0(:,i); 
end

Base_NonIce_OC_tm = zeros(length(SCE3_NonIce_OpEx_tm(:,1)),3.*length(SCE3_NonIce_OpEx_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_OC_tm(:,(3.*(i-1))+1) = SCE3_NonIce_OpEx_tm(:,i); 
    Base_NonIce_OC_tm(:,(3.*(i-1))+2) = SCE3_NonIce_OpEx_tm(:,i); 
    Base_NonIce_OC_tm(:,(3.*(i-1))+3) = SCE3_NonIce_OpEx_tm(:,i); 
end

Base_NonIce_OC_tf = zeros(length(SCE3_NonIce_OpEx_tf(:,1)),3.*length(SCE3_NonIce_OpEx_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_OC_tf(:,(3.*(i-1))+1) = SCE3_NonIce_OpEx_tf(:,i); 
    Base_NonIce_OC_tf(:,(3.*(i-1))+2) = SCE3_NonIce_OpEx_tf(:,i); 
    Base_NonIce_OC_tf(:,(3.*(i-1))+3) = SCE3_NonIce_OpEx_tf(:,i); 
end

Base_NonIce_CC_t0 = zeros(length(SCE3_NonIce_Total_CapEx_t0(:,1)),3.*length(SCE3_NonIce_Total_CapEx_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_CC_t0(:,(3.*(i-1))+1) = SCE3_NonIce_Total_CapEx_t0(:,i); 
    Base_NonIce_CC_t0(:,(3.*(i-1))+2) = SCE3_NonIce_Total_CapEx_t0(:,i); 
    Base_NonIce_CC_t0(:,(3.*(i-1))+3) = SCE3_NonIce_Total_CapEx_t0(:,i); 
end

Base_NonIce_CC_tm = zeros(length(SCE3_NonIce_Total_CapEx_tm(:,1)),3.*length(SCE3_NonIce_Total_CapEx_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_CC_tm(:,(3.*(i-1))+1) = SCE3_NonIce_Total_CapEx_tm(:,i); 
    Base_NonIce_CC_tm(:,(3.*(i-1))+2) = SCE3_NonIce_Total_CapEx_tm(:,i); 
    Base_NonIce_CC_tm(:,(3.*(i-1))+3) = SCE3_NonIce_Total_CapEx_tm(:,i); 
end

Base_NonIce_CC_tf = zeros(length(SCE3_NonIce_Total_CapEx_tf(:,1)),3.*length(SCE3_NonIce_Total_CapEx_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_CC_tf(:,(3.*(i-1))+1) = SCE3_NonIce_Total_CapEx_tf(:,i); 
    Base_NonIce_CC_tf(:,(3.*(i-1))+2) = SCE3_NonIce_Total_CapEx_tf(:,i); 
    Base_NonIce_CC_tf(:,(3.*(i-1))+3) = SCE3_NonIce_Total_CapEx_tf(:,i); 
end

Base_NonIce_CT_t0 = zeros(length(SCE3_Global_NonIce_CO2eqtax_t0(:,1)),3.*length(SCE3_Global_NonIce_CO2eqtax_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_CT_t0(:,(3.*(i-1))+1) = SCE3_Global_NonIce_CO2eqtax_t0(:,i); 
    Base_NonIce_CT_t0(:,(3.*(i-1))+2) = SCE3_Global_NonIce_CO2eqtax_t0(:,i); 
    Base_NonIce_CT_t0(:,(3.*(i-1))+3) = SCE3_Global_NonIce_CO2eqtax_t0(:,i); 
end

Base_NonIce_CT_tm = zeros(length(SCE3_Global_NonIce_CO2eqtax_tm(:,1)),3.*length(SCE3_Global_NonIce_CO2eqtax_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_CT_tm(:,(3.*(i-1))+1) = SCE3_Global_NonIce_CO2eqtax_tm(:,i); 
    Base_NonIce_CT_tm(:,(3.*(i-1))+2) = SCE3_Global_NonIce_CO2eqtax_tm(:,i); 
    Base_NonIce_CT_tm(:,(3.*(i-1))+3) = SCE3_Global_NonIce_CO2eqtax_tm(:,i); 
end


Base_NonIce_CT_tf = zeros(length(SCE3_Global_NonIce_CO2eqtax_tf(:,1)),3.*length(SCE3_Global_NonIce_CO2eqtax_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_CT_tf(:,(3.*(i-1))+1) = SCE3_Global_NonIce_CO2eqtax_tf(:,i); 
    Base_NonIce_CT_tf(:,(3.*(i-1))+2) = SCE3_Global_NonIce_CO2eqtax_tf(:,i); 
    Base_NonIce_CT_tf(:,(3.*(i-1))+3) = SCE3_Global_NonIce_CO2eqtax_tf(:,i); 
end

%Externalities
Base_NonIce_APC_t0 = zeros(length(SCE3_Global_NonIce_AP_Damage_matrix_t0(:,1)),3.*length(SCE3_Global_NonIce_AP_Damage_matrix_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_APC_t0(:,(3.*(i-1))+1) = SCE3_Global_NonIce_AP_Damage_matrix_t0(:,i); 
    Base_NonIce_APC_t0(:,(3.*(i-1))+2) = SCE3_Global_NonIce_AP_Damage_matrix_t0(:,i); 
    Base_NonIce_APC_t0(:,(3.*(i-1))+3) = SCE3_Global_NonIce_AP_Damage_matrix_t0(:,i); 
end

Base_NonIce_APC_tm = zeros(length(SCE3_Global_NonIce_AP_Damage_matrix_tm(:,1)),3.*length(SCE3_Global_NonIce_AP_Damage_matrix_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_APC_tm(:,(3.*(i-1))+1) = SCE3_Global_NonIce_AP_Damage_matrix_tm(:,i); 
    Base_NonIce_APC_tm(:,(3.*(i-1))+2) = SCE3_Global_NonIce_AP_Damage_matrix_tm(:,i); 
    Base_NonIce_APC_tm(:,(3.*(i-1))+3) = SCE3_Global_NonIce_AP_Damage_matrix_tm(:,i); 
end

Base_NonIce_APC_tf = zeros(length(SCE3_Global_NonIce_AP_Damage_matrix_tf(:,1)),3.*length(SCE3_Global_NonIce_AP_Damage_matrix_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_APC_tf(:,(3.*(i-1))+1) = SCE3_Global_NonIce_AP_Damage_matrix_tf(:,i); 
    Base_NonIce_APC_tf(:,(3.*(i-1))+2) = SCE3_Global_NonIce_AP_Damage_matrix_tf(:,i); 
    Base_NonIce_APC_tf(:,(3.*(i-1))+3) = SCE3_Global_NonIce_AP_Damage_matrix_tf(:,i); 
end

Base_NonIce_ClC_t0 = zeros(length(SCE3_Global_NonIce_Clim_Damage_matrix_t0(:,1)),3.*length(SCE3_Global_NonIce_Clim_Damage_matrix_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_ClC_t0(:,(3.*(i-1))+1) = SCE3_Global_NonIce_Clim_Damage_matrix_t0(:,i); 
    Base_NonIce_ClC_t0(:,(3.*(i-1))+2) = SCE3_Global_NonIce_Clim_Damage_matrix_t0(:,i); 
    Base_NonIce_ClC_t0(:,(3.*(i-1))+3) = SCE3_Global_NonIce_Clim_Damage_matrix_t0(:,i); 
end

Base_NonIce_ClC_tm = zeros(length(SCE3_Global_NonIce_Clim_Damage_matrix_tm(:,1)),3.*length(SCE3_Global_NonIce_Clim_Damage_matrix_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_ClC_tm(:,(3.*(i-1))+1) = SCE3_Global_NonIce_Clim_Damage_matrix_tm(:,i); 
    Base_NonIce_ClC_tm(:,(3.*(i-1))+2) = SCE3_Global_NonIce_Clim_Damage_matrix_tm(:,i); 
    Base_NonIce_ClC_tm(:,(3.*(i-1))+3) = SCE3_Global_NonIce_Clim_Damage_matrix_tm(:,i); 
end

Base_NonIce_ClC_tf = zeros(length(SCE3_Global_NonIce_Clim_Damage_matrix_tf(:,1)),3.*length(SCE3_Global_NonIce_Clim_Damage_matrix_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_ClC_tf(:,(3.*(i-1))+1) = SCE3_Global_NonIce_Clim_Damage_matrix_tf(:,i); 
    Base_NonIce_ClC_tf(:,(3.*(i-1))+2) = SCE3_Global_NonIce_Clim_Damage_matrix_tf(:,i); 
    Base_NonIce_ClC_tf(:,(3.*(i-1))+3) = SCE3_Global_NonIce_Clim_Damage_matrix_tf(:,i); 
end

%Carbon price effect on fuels

SCE1_Ice_Bulker_CT_Normalised_value_ptv = [(SCE1_Ice_FC_ptv_t0(17,:) + SCE1_Global_Ice_CO2eqtax_t0(17,:))./(Base_NonIce_FC_ptv_t0(17,:) + Base_NonIce_CT_t0(17,:)); (SCE1_Ice_FC_ptv_tm(17,:) + SCE1_Global_Ice_CO2eqtax_tm(17,:))./(Base_NonIce_FC_ptv_tm(17,:) + Base_NonIce_CT_tm(17,:));...
    (SCE1_Ice_FC_ptv_tf(17,:) + SCE1_Global_Ice_CO2eqtax_tf(17,:))./(Base_NonIce_FC_ptv_tf(17,:) + Base_NonIce_CT_tf(17,:))];

SCE1_Ice_Container_CT_Normalised_value_ptv = [(SCE1_Ice_FC_ptv_t0(51,:)+ SCE1_Global_Ice_CO2eqtax_t0(51,:))./(Base_NonIce_FC_ptv_t0(51,:) + Base_NonIce_CT_t0(51,:));  (SCE1_Ice_FC_ptv_tm(51,:)+ SCE1_Global_Ice_CO2eqtax_tm(51,:))./(Base_NonIce_FC_ptv_tm(51,:) + Base_NonIce_CT_tm(51,:)); 
    (SCE1_Ice_FC_ptv_tf(51,:)+ SCE1_Global_Ice_CO2eqtax_tf(51,:))./(Base_NonIce_FC_ptv_tf(51,:) + Base_NonIce_CT_tf(51,:))]; 

SCE1_Ice_Wet_Bulker_CT_Normalised_value_ptv = [(SCE1_Ice_FC_ptv_t0(93,:)+ SCE1_Global_Ice_CO2eqtax_t0(93,:))./(Base_NonIce_FC_ptv_t0(93,:) + Base_NonIce_CT_t0(93,:)); (SCE1_Ice_FC_ptv_tm(93,:)+ SCE1_Global_Ice_CO2eqtax_tm(93,:))./(Base_NonIce_FC_ptv_tm(93,:) + Base_NonIce_CT_tm(93,:));
(SCE1_Ice_FC_ptv_tf(93,:)+ SCE1_Global_Ice_CO2eqtax_tf(93,:))./(Base_NonIce_FC_ptv_tf(93,:) + Base_NonIce_CT_tf(93,:))];

SCE2_Ice_Bulker_CT_Normalised_value_ptv = [(SCE2_Ice_FC_ptv_t0(17,:) + SCE2_Global_Ice_CO2eqtax_t0(17,:))./(Base_NonIce_FC_ptv_t0(17,:) + Base_NonIce_CT_t0(17,:)); (SCE2_Ice_FC_ptv_tm(17,:) + SCE2_Global_Ice_CO2eqtax_tm(17,:))./(Base_NonIce_FC_ptv_tm(17,:) + Base_NonIce_CT_tm(17,:));...
    (SCE2_Ice_FC_ptv_tf(17,:) + SCE2_Global_Ice_CO2eqtax_tf(17,:))./(Base_NonIce_FC_ptv_tf(17,:) + Base_NonIce_CT_tf(17,:))];

SCE2_Ice_Container_CT_Normalised_value_ptv = [(SCE2_Ice_FC_ptv_t0(51,:)+ SCE2_Global_Ice_CO2eqtax_t0(51,:))./(Base_NonIce_FC_ptv_t0(51,:) + Base_NonIce_CT_t0(51,:));  (SCE2_Ice_FC_ptv_tm(51,:)+ SCE2_Global_Ice_CO2eqtax_tm(51,:))./(Base_NonIce_FC_ptv_tm(51,:) + Base_NonIce_CT_tm(51,:)); 
    (SCE2_Ice_FC_ptv_tf(51,:)+ SCE2_Global_Ice_CO2eqtax_tf(51,:))./(Base_NonIce_FC_ptv_tf(51,:) + Base_NonIce_CT_tf(51,:))]; 

SCE2_Ice_Wet_Bulker_CT_Normalised_value_ptv = [(SCE2_Ice_FC_ptv_t0(93,:)+ SCE2_Global_Ice_CO2eqtax_t0(93,:))./(Base_NonIce_FC_ptv_t0(93,:) + Base_NonIce_CT_t0(93,:)); (SCE2_Ice_FC_ptv_tm(93,:)+ SCE2_Global_Ice_CO2eqtax_tm(93,:))./(Base_NonIce_FC_ptv_tm(93,:) + Base_NonIce_CT_tm(93,:));
(SCE1_Ice_FC_ptv_tf(93,:)+ SCE1_Global_Ice_CO2eqtax_tf(93,:))./(Base_NonIce_FC_ptv_tf(93,:) + Base_NonIce_CT_tf(93,:))];

SCE1_Ice_Bulker_CT_Normalised_value_NSR_ptv = SCE1_Ice_Bulker_CT_Normalised_value_ptv(:,1:3:end);
SCE1_Ice_Container_CT_Normalised_value_NSR_ptv = SCE1_Ice_Container_CT_Normalised_value_ptv(:,1:3:end);
SCE1_Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv = SCE1_Ice_Wet_Bulker_CT_Normalised_value_ptv(:,1:3:end);

SCE2_Ice_Bulker_CT_Normalised_value_NSR_ptv = SCE2_Ice_Bulker_CT_Normalised_value_ptv(:,1:3:end);
SCE2_Ice_Container_CT_Normalised_value_NSR_ptv = SCE2_Ice_Container_CT_Normalised_value_ptv(:,1:3:end);
SCE2_Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv = SCE2_Ice_Wet_Bulker_CT_Normalised_value_ptv(:,1:3:end);

SCE1_LSHFO_Ice_Bulker_CT_Normalised_value_ptv = [(SCE1_Ice_FC_ptv_t0(17,:) + SCE1_Global_Ice_CO2eqtax_t0(17,:))./(Base_LSHFO_NonIce_FC_ptv_t0(17,:) + Base_LSHFO_NonIce_CT_t0(17,:)); (SCE1_Ice_FC_ptv_tm(17,:) + SCE1_Global_Ice_CO2eqtax_tm(17,:))./(Base_LSHFO_NonIce_FC_ptv_tm(17,:) + Base_LSHFO_NonIce_CT_tm(17,:));...
    (SCE1_Ice_FC_ptv_tf(17,:) + SCE1_Global_Ice_CO2eqtax_tf(17,:))./(Base_LSHFO_NonIce_FC_ptv_tf(17,:) + Base_LSHFO_NonIce_CT_tf(17,:))];

SCE1_LSHFO_Ice_Container_CT_Normalised_value_ptv = [(SCE1_Ice_FC_ptv_t0(51,:)+ SCE1_Global_Ice_CO2eqtax_t0(51,:))./(Base_LSHFO_NonIce_FC_ptv_t0(51,:) + Base_LSHFO_NonIce_CT_t0(51,:));  (SCE1_Ice_FC_ptv_tm(51,:)+ SCE1_Global_Ice_CO2eqtax_tm(51,:))./(Base_LSHFO_NonIce_FC_ptv_tm(51,:) + Base_LSHFO_NonIce_CT_tm(51,:)); 
    (SCE1_Ice_FC_ptv_tf(51,:)+ SCE1_Global_Ice_CO2eqtax_tf(51,:))./(Base_LSHFO_NonIce_FC_ptv_tf(51,:) + Base_LSHFO_NonIce_CT_tf(51,:))]; 

SCE1_LSHFO_Ice_Wet_Bulker_CT_Normalised_value_ptv = [(SCE1_Ice_FC_ptv_t0(93,:)+ SCE1_Global_Ice_CO2eqtax_t0(93,:))./(Base_LSHFO_NonIce_FC_ptv_t0(93,:) + Base_LSHFO_NonIce_CT_t0(93,:)); (SCE1_Ice_FC_ptv_tm(93,:)+ SCE1_Global_Ice_CO2eqtax_tm(93,:))./(Base_LSHFO_NonIce_FC_ptv_tm(93,:) + Base_LSHFO_NonIce_CT_tm(93,:));
(SCE1_Ice_FC_ptv_tf(93,:)+ SCE1_Global_Ice_CO2eqtax_tf(93,:))./(Base_LSHFO_NonIce_FC_ptv_tf(93,:) + Base_LSHFO_NonIce_CT_tf(93,:))];

SCE2_LSHFO_Ice_Bulker_CT_Normalised_value_ptv = [(SCE2_Ice_FC_ptv_t0(17,:) + SCE2_Global_Ice_CO2eqtax_t0(17,:))./(Base_LSHFO_NonIce_FC_ptv_t0(17,:) + Base_LSHFO_NonIce_CT_t0(17,:)); (SCE2_Ice_FC_ptv_tm(17,:) + SCE2_Global_Ice_CO2eqtax_tm(17,:))./(Base_LSHFO_NonIce_FC_ptv_tm(17,:) + Base_LSHFO_NonIce_CT_tm(17,:));...
    (SCE2_Ice_FC_ptv_tf(17,:) + SCE2_Global_Ice_CO2eqtax_tf(17,:))./(Base_LSHFO_NonIce_FC_ptv_tf(17,:) + Base_LSHFO_NonIce_CT_tf(17,:))];

SCE2_LSHFO_Ice_Container_CT_Normalised_value_ptv = [(SCE2_Ice_FC_ptv_t0(51,:)+ SCE2_Global_Ice_CO2eqtax_t0(51,:))./(Base_LSHFO_NonIce_FC_ptv_t0(51,:) + Base_LSHFO_NonIce_CT_t0(51,:));  (SCE2_Ice_FC_ptv_tm(51,:)+ SCE2_Global_Ice_CO2eqtax_tm(51,:))./(Base_LSHFO_NonIce_FC_ptv_tm(51,:) + Base_LSHFO_NonIce_CT_tm(51,:)); 
    (SCE2_Ice_FC_ptv_tf(51,:)+ SCE2_Global_Ice_CO2eqtax_tf(51,:))./(Base_LSHFO_NonIce_FC_ptv_tf(51,:) + Base_LSHFO_NonIce_CT_tf(51,:))]; 

SCE2_LSHFO_Ice_Wet_Bulker_CT_Normalised_value_ptv = [(SCE2_Ice_FC_ptv_t0(93,:)+ SCE2_Global_Ice_CO2eqtax_t0(93,:))./(Base_LSHFO_NonIce_FC_ptv_t0(93,:) + Base_LSHFO_NonIce_CT_t0(93,:)); (SCE2_Ice_FC_ptv_tm(93,:)+ SCE2_Global_Ice_CO2eqtax_tm(93,:))./(Base_LSHFO_NonIce_FC_ptv_tm(93,:) + Base_LSHFO_NonIce_CT_tm(93,:));
(SCE1_Ice_FC_ptv_tf(93,:)+ SCE1_Global_Ice_CO2eqtax_tf(93,:))./(Base_LSHFO_NonIce_FC_ptv_tf(93,:) + Base_LSHFO_NonIce_CT_tf(93,:))];

SCE1_LSHFO_Ice_Bulker_CT_Normalised_value_NSR_ptv = SCE1_LSHFO_Ice_Bulker_CT_Normalised_value_ptv(:,1:3:end);
SCE1_LSHFO_Ice_Container_CT_Normalised_value_NSR_ptv = SCE1_LSHFO_Ice_Container_CT_Normalised_value_ptv(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv = SCE1_LSHFO_Ice_Wet_Bulker_CT_Normalised_value_ptv(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_CT_Normalised_value_NSR_ptv = SCE2_LSHFO_Ice_Bulker_CT_Normalised_value_ptv(:,1:3:end);
SCE2_LSHFO_Ice_Container_CT_Normalised_value_NSR_ptv = SCE2_LSHFO_Ice_Container_CT_Normalised_value_ptv(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv = SCE2_LSHFO_Ice_Wet_Bulker_CT_Normalised_value_ptv(:,1:3:end);


%Extracting the differential
SCE1_Ice_Bulker_VC_Diff = [SCE1_Ice_Total_Voyage_cost_t0(17,:) - Base_NonIce_VC_t0(17,:); SCE1_Ice_Total_Voyage_cost_tm(17,:) - Base_NonIce_VC_tm(17,:); SCE1_Ice_Total_Voyage_cost_tf(17,:) - Base_NonIce_VC_tf(17,:)];
SCE1_Ice_Container_VC_Diff = [SCE1_Ice_Total_Voyage_cost_t0(51,:) - Base_NonIce_VC_t0(51,:); SCE1_Ice_Total_Voyage_cost_tm(51,:) - Base_NonIce_VC_tm(51,:); SCE1_Ice_Total_Voyage_cost_tf(51,:) - Base_NonIce_VC_tf(51,:)];
SCE1_Ice_Wet_Bulker_VC_Diff = [SCE1_Ice_Total_Voyage_cost_t0(93,:) - Base_NonIce_VC_t0(93,:); SCE1_Ice_Total_Voyage_cost_tm(93,:) - Base_NonIce_VC_tm(93,:); SCE1_Ice_Total_Voyage_cost_tf(93,:) - Base_NonIce_VC_tf(93,:)];

SCE1_Ice_Bulker_OC_Diff = [SCE1_Ice_OpEx_t0(17,:) - Base_NonIce_OC_t0(17,:); SCE1_Ice_OpEx_tm(17,:) - Base_NonIce_OC_tm(17,:); SCE1_Ice_OpEx_tf(17,:) - Base_NonIce_OC_tf(17,:)];
SCE1_Ice_Container_OC_Diff = [SCE1_Ice_OpEx_t0(51,:) - Base_NonIce_OC_t0(51,:); SCE1_Ice_OpEx_tm(51,:) - Base_NonIce_OC_tm(51,:); SCE1_Ice_OpEx_tf(51,:) - Base_NonIce_OC_tf(51,:)];
SCE1_Ice_Wet_Bulker_OC_Diff = [SCE1_Ice_OpEx_t0(93,:) - Base_NonIce_OC_t0(93,:); SCE1_Ice_OpEx_tm(93,:) - Base_NonIce_OC_tm(93,:); SCE1_Ice_OpEx_tf(93,:) - Base_NonIce_OC_tf(93,:)];

SCE1_Ice_Bulker_CC_Diff = [SCE1_Ice_Total_CapEx_t0(17,:) - Base_NonIce_CC_t0(17,:); SCE1_Ice_Total_CapEx_tm(17,:) - Base_NonIce_CC_tm(17,:); SCE1_Ice_Total_CapEx_tf(17,:) - Base_NonIce_CC_tf(17,:)];
SCE1_Ice_Container_CC_Diff = [SCE1_Ice_Total_CapEx_t0(51,:) - Base_NonIce_CC_t0(51,:); SCE1_Ice_Total_CapEx_tm(51,:) - Base_NonIce_CC_tm(51,:); SCE1_Ice_Total_CapEx_tf(51,:) - Base_NonIce_CC_tf(51,:)];
SCE1_Ice_Wet_Bulker_CC_Diff = [SCE1_Ice_Total_CapEx_t0(93,:) - Base_NonIce_CC_t0(93,:); SCE1_Ice_Total_CapEx_tm(93,:) - Base_NonIce_CC_tm(93,:); SCE1_Ice_Total_CapEx_tf(93,:) - Base_NonIce_CC_tf(93,:)];

SCE1_Ice_Bulker_CT_Diff = [SCE1_Global_Ice_CO2eqtax_t0(17,:) - Base_NonIce_CT_t0(17,:); SCE1_Global_Ice_CO2eqtax_tm(17,:) - Base_NonIce_CT_tm(17,:); SCE1_Global_Ice_CO2eqtax_tf(17,:) - Base_NonIce_CT_tf(17,:)];
SCE1_Ice_Container_CT_Diff = [SCE1_Global_Ice_CO2eqtax_t0(51,:) - Base_NonIce_CT_t0(51,:); SCE1_Global_Ice_CO2eqtax_tm(51,:) - Base_NonIce_CT_tm(51,:); SCE1_Global_Ice_CO2eqtax_tf(51,:) - Base_NonIce_CT_tf(51,:)];
SCE1_Ice_Wet_Bulker_CT_Diff = [SCE1_Global_Ice_CO2eqtax_t0(93,:) - Base_NonIce_CT_t0(93,:); SCE1_Global_Ice_CO2eqtax_tm(93,:) - Base_NonIce_CT_tm(93,:); SCE1_Global_Ice_CO2eqtax_tf(93,:) - Base_NonIce_CT_tf(93,:)];

SCE1_Ice_Bulker_APC_Diff = [SCE1_Global_Ice_AP_Damage_matrix_t0(17,:) - Base_NonIce_APC_t0(17,:); SCE1_Global_Ice_AP_Damage_matrix_tm(17,:) - Base_NonIce_APC_tm(17,:); SCE1_Global_Ice_AP_Damage_matrix_tf(17,:) - Base_NonIce_APC_tf(17,:)];
SCE1_Ice_Container_APC_Diff = [SCE1_Global_Ice_AP_Damage_matrix_t0(51,:) - Base_NonIce_APC_t0(51,:); SCE1_Global_Ice_AP_Damage_matrix_tm(51,:) - Base_NonIce_APC_tm(51,:); SCE1_Global_Ice_AP_Damage_matrix_tf(51,:) - Base_NonIce_APC_tf(51,:)];
SCE1_Ice_Wet_Bulker_APC_Diff = [SCE1_Global_Ice_AP_Damage_matrix_t0(93,:) - Base_NonIce_APC_t0(93,:); SCE1_Global_Ice_AP_Damage_matrix_tm(93,:) - Base_NonIce_APC_tm(93,:); SCE1_Global_Ice_AP_Damage_matrix_tf(93,:) - Base_NonIce_APC_tf(93,:)];

SCE1_Ice_Bulker_ClC_Diff = [SCE1_Global_Ice_Clim_Damage_matrix_t0(17,:) - Base_NonIce_ClC_t0(17,:); SCE1_Global_Ice_Clim_Damage_matrix_tm(17,:) - Base_NonIce_ClC_tm(17,:); SCE1_Global_Ice_Clim_Damage_matrix_tf(17,:) - Base_NonIce_ClC_tf(17,:)];
SCE1_Ice_Container_ClC_Diff = [SCE1_Global_Ice_Clim_Damage_matrix_t0(51,:) - Base_NonIce_ClC_t0(51,:); SCE1_Global_Ice_Clim_Damage_matrix_tm(51,:) - Base_NonIce_ClC_tm(51,:); SCE1_Global_Ice_Clim_Damage_matrix_tf(51,:) - Base_NonIce_ClC_tf(51,:)];
SCE1_Ice_Wet_Bulker_ClC_Diff = [SCE1_Global_Ice_Clim_Damage_matrix_t0(93,:) - Base_NonIce_ClC_t0(93,:); SCE1_Global_Ice_Clim_Damage_matrix_tm(93,:) - Base_NonIce_ClC_tm(93,:); SCE1_Global_Ice_Clim_Damage_matrix_tf(93,:) - Base_NonIce_ClC_tf(93,:)];

SCE1_NonIce_Bulker_VC_Diff = [SCE1_NonIce_Total_Voyage_cost_t0(17,:) - Base_NonIce_VC_t0(17,:); SCE1_NonIce_Total_Voyage_cost_tm(17,:) - Base_NonIce_VC_tm(17,:); SCE1_NonIce_Total_Voyage_cost_tf(17,:) - Base_NonIce_VC_tf(17,:)];
SCE1_NonIce_Container_VC_Diff = [SCE1_NonIce_Total_Voyage_cost_t0(51,:) - Base_NonIce_VC_t0(51,:); SCE1_NonIce_Total_Voyage_cost_tm(51,:) - Base_NonIce_VC_tm(51,:); SCE1_NonIce_Total_Voyage_cost_tf(51,:) - Base_NonIce_VC_tf(51,:)];
SCE1_NonIce_Wet_Bulker_VC_Diff = [SCE1_NonIce_Total_Voyage_cost_t0(93,:) - Base_NonIce_VC_t0(93,:); SCE1_NonIce_Total_Voyage_cost_tm(93,:) - Base_NonIce_VC_tm(93,:); SCE1_NonIce_Total_Voyage_cost_tf(93,:) - Base_NonIce_VC_tf(93,:)];

SCE1_NonIce_Bulker_OC_Diff = [SCE1_NonIce_OpEx_t0(17,:) - Base_NonIce_OC_t0(17,:); SCE1_NonIce_OpEx_tm(17,:) - Base_NonIce_OC_tm(17,:); SCE1_NonIce_OpEx_tf(17,:) - Base_NonIce_OC_tf(17,:)];
SCE1_NonIce_Container_OC_Diff = [SCE1_NonIce_OpEx_t0(51,:) - Base_NonIce_OC_t0(51,:); SCE1_NonIce_OpEx_tm(51,:) - Base_NonIce_OC_tm(51,:); SCE1_NonIce_OpEx_tf(51,:) - Base_NonIce_OC_tf(51,:)];
SCE1_NonIce_Wet_Bulker_OC_Diff = [SCE1_NonIce_OpEx_t0(93,:) - Base_NonIce_OC_t0(93,:); SCE1_NonIce_OpEx_tm(93,:) - Base_NonIce_OC_tm(93,:); SCE1_NonIce_OpEx_tf(93,:) - Base_NonIce_OC_tf(93,:)];

SCE1_NonIce_Bulker_CC_Diff = [SCE1_NonIce_Total_CapEx_t0(17,:) - Base_NonIce_CC_t0(17,:); SCE1_NonIce_Total_CapEx_tm(17,:) - Base_NonIce_CC_tm(17,:); SCE1_NonIce_Total_CapEx_tf(17,:) - Base_NonIce_CC_tf(17,:)];
SCE1_NonIce_Container_CC_Diff = [SCE1_NonIce_Total_CapEx_t0(51,:) - Base_NonIce_CC_t0(51,:); SCE1_NonIce_Total_CapEx_tm(51,:) - Base_NonIce_CC_tm(51,:); SCE1_NonIce_Total_CapEx_tf(51,:) - Base_NonIce_CC_tf(51,:)];
SCE1_NonIce_Wet_Bulker_CC_Diff = [SCE1_NonIce_Total_CapEx_t0(93,:) - Base_NonIce_CC_t0(93,:); SCE1_NonIce_Total_CapEx_tm(93,:) - Base_NonIce_CC_tm(93,:); SCE1_NonIce_Total_CapEx_tf(93,:) - Base_NonIce_CC_tf(93,:)];

SCE1_NonIce_Bulker_CT_Diff = [SCE1_Global_NonIce_CO2eqtax_t0(17,:) - Base_NonIce_CT_t0(17,:); SCE1_Global_NonIce_CO2eqtax_tm(17,:) - Base_NonIce_CT_tm(17,:); SCE1_Global_NonIce_CO2eqtax_tf(17,:) - Base_NonIce_CT_tf(17,:)];
SCE1_NonIce_Container_CT_Diff = [SCE1_Global_NonIce_CO2eqtax_t0(51,:) - Base_NonIce_CT_t0(51,:); SCE1_Global_NonIce_CO2eqtax_tm(51,:) - Base_NonIce_CT_tm(51,:); SCE1_Global_NonIce_CO2eqtax_tf(51,:) - Base_NonIce_CT_tf(51,:)];
SCE1_NonIce_Wet_Bulker_CT_Diff = [SCE1_Global_NonIce_CO2eqtax_t0(93,:) - Base_NonIce_CT_t0(93,:); SCE1_Global_NonIce_CO2eqtax_tm(93,:) - Base_NonIce_CT_tm(93,:); SCE1_Global_NonIce_CO2eqtax_tf(93,:) - Base_NonIce_CT_tf(93,:)];

SCE1_NonIce_Bulker_APC_Diff = [SCE1_Global_NonIce_AP_Damage_matrix_t0(17,:) - Base_NonIce_APC_t0(17,:); SCE1_Global_NonIce_AP_Damage_matrix_tm(17,:) - Base_NonIce_APC_tm(17,:); SCE1_Global_NonIce_AP_Damage_matrix_tf(17,:) - Base_NonIce_APC_tf(17,:)];
SCE1_NonIce_Container_APC_Diff = [SCE1_Global_NonIce_AP_Damage_matrix_t0(51,:) - Base_NonIce_APC_t0(51,:); SCE1_Global_NonIce_AP_Damage_matrix_tm(51,:) - Base_NonIce_APC_tm(51,:); SCE1_Global_NonIce_AP_Damage_matrix_tf(51,:) - Base_NonIce_APC_tf(51,:)];
SCE1_NonIce_Wet_Bulker_APC_Diff = [SCE1_Global_NonIce_AP_Damage_matrix_t0(93,:) - Base_NonIce_APC_t0(93,:); SCE1_Global_NonIce_AP_Damage_matrix_tm(93,:) - Base_NonIce_APC_tm(93,:); SCE1_Global_NonIce_AP_Damage_matrix_tf(93,:) - Base_NonIce_APC_tf(93,:)];

SCE1_NonIce_Bulker_ClC_Diff = [SCE1_Global_NonIce_Clim_Damage_matrix_t0(17,:) - Base_NonIce_ClC_t0(17,:); SCE1_Global_NonIce_Clim_Damage_matrix_tm(17,:) - Base_NonIce_ClC_tm(17,:); SCE1_Global_NonIce_Clim_Damage_matrix_tf(17,:) - Base_NonIce_ClC_tf(17,:)];
SCE1_NonIce_Container_ClC_Diff = [SCE1_Global_NonIce_Clim_Damage_matrix_t0(51,:) - Base_NonIce_ClC_t0(51,:); SCE1_Global_NonIce_Clim_Damage_matrix_tm(51,:) - Base_NonIce_ClC_tm(51,:); SCE1_Global_NonIce_Clim_Damage_matrix_tf(51,:) - Base_NonIce_ClC_tf(51,:)];
SCE1_NonIce_Wet_Bulker_ClC_Diff = [SCE1_Global_NonIce_Clim_Damage_matrix_t0(93,:) - Base_NonIce_ClC_t0(93,:); SCE1_Global_NonIce_Clim_Damage_matrix_tm(93,:) - Base_NonIce_ClC_tm(93,:); SCE1_Global_NonIce_Clim_Damage_matrix_tf(93,:) - Base_NonIce_ClC_tf(93,:)];

%SCE2
SCE2_Ice_Bulker_VC_Diff = [SCE2_Ice_Total_Voyage_cost_t0(17,:) - Base_NonIce_VC_t0(17,:); SCE2_Ice_Total_Voyage_cost_tm(17,:) - Base_NonIce_VC_tm(17,:); SCE2_Ice_Total_Voyage_cost_tf(17,:) - Base_NonIce_VC_tf(17,:)];
SCE2_Ice_Container_VC_Diff = [SCE2_Ice_Total_Voyage_cost_t0(51,:) - Base_NonIce_VC_t0(51,:); SCE2_Ice_Total_Voyage_cost_tm(51,:) - Base_NonIce_VC_tm(51,:); SCE2_Ice_Total_Voyage_cost_tf(51,:) - Base_NonIce_VC_tf(51,:)];
SCE2_Ice_Wet_Bulker_VC_Diff = [SCE2_Ice_Total_Voyage_cost_t0(93,:) - Base_NonIce_VC_t0(93,:); SCE2_Ice_Total_Voyage_cost_tm(93,:) - Base_NonIce_VC_tm(93,:); SCE2_Ice_Total_Voyage_cost_tf(93,:) - Base_NonIce_VC_tf(93,:)];

SCE2_Ice_Bulker_OC_Diff = [SCE2_Ice_OpEx_t0(17,:) - Base_NonIce_OC_t0(17,:); SCE2_Ice_OpEx_tm(17,:) - Base_NonIce_OC_tm(17,:); SCE2_Ice_OpEx_tf(17,:) - Base_NonIce_OC_tf(17,:)];
SCE2_Ice_Container_OC_Diff = [SCE2_Ice_OpEx_t0(51,:) - Base_NonIce_OC_t0(51,:); SCE2_Ice_OpEx_tm(51,:) - Base_NonIce_OC_tm(51,:); SCE2_Ice_OpEx_tf(51,:) - Base_NonIce_OC_tf(51,:)];
SCE2_Ice_Wet_Bulker_OC_Diff = [SCE2_Ice_OpEx_t0(93,:) - Base_NonIce_OC_t0(93,:); SCE2_Ice_OpEx_tm(93,:) - Base_NonIce_OC_tm(93,:); SCE2_Ice_OpEx_tf(93,:) - Base_NonIce_OC_tf(93,:)];

SCE2_Ice_Bulker_CC_Diff = [SCE2_Ice_Total_CapEx_t0(17,:) - Base_NonIce_CC_t0(17,:); SCE2_Ice_Total_CapEx_tm(17,:) - Base_NonIce_CC_tm(17,:); SCE2_Ice_Total_CapEx_tf(17,:) - Base_NonIce_CC_tf(17,:)];
SCE2_Ice_Container_CC_Diff = [SCE2_Ice_Total_CapEx_t0(51,:) - Base_NonIce_CC_t0(51,:); SCE2_Ice_Total_CapEx_tm(51,:) - Base_NonIce_CC_tm(51,:); SCE2_Ice_Total_CapEx_tf(51,:) - Base_NonIce_CC_tf(51,:)];
SCE2_Ice_Wet_Bulker_CC_Diff = [SCE2_Ice_Total_CapEx_t0(93,:) - Base_NonIce_CC_t0(93,:); SCE2_Ice_Total_CapEx_tm(93,:) - Base_NonIce_CC_tm(93,:); SCE2_Ice_Total_CapEx_tf(93,:) - Base_NonIce_CC_tf(93,:)];

SCE2_Ice_Bulker_CT_Diff = [SCE2_Global_Ice_CO2eqtax_t0(17,:) - Base_NonIce_CT_t0(17,:); SCE2_Global_Ice_CO2eqtax_tm(17,:) - Base_NonIce_CT_tm(17,:); SCE2_Global_Ice_CO2eqtax_tf(17,:) - Base_NonIce_CT_tf(17,:)];
SCE2_Ice_Container_CT_Diff = [SCE2_Global_Ice_CO2eqtax_t0(51,:) - Base_NonIce_CT_t0(51,:); SCE2_Global_Ice_CO2eqtax_tm(51,:) - Base_NonIce_CT_tm(51,:); SCE2_Global_Ice_CO2eqtax_tf(51,:) - Base_NonIce_CT_tf(51,:)];
SCE2_Ice_Wet_Bulker_CT_Diff = [SCE2_Global_Ice_CO2eqtax_t0(93,:) - Base_NonIce_CT_t0(93,:); SCE2_Global_Ice_CO2eqtax_tm(93,:) - Base_NonIce_CT_tm(93,:); SCE2_Global_Ice_CO2eqtax_tf(93,:) - Base_NonIce_CT_tf(93,:)];

SCE2_Ice_Bulker_APC_Diff = [SCE2_Global_Ice_AP_Damage_matrix_t0(17,:) - Base_NonIce_APC_t0(17,:); SCE2_Global_Ice_AP_Damage_matrix_tm(17,:) - Base_NonIce_APC_tm(17,:); SCE2_Global_Ice_AP_Damage_matrix_tf(17,:) - Base_NonIce_APC_tf(17,:)];
SCE2_Ice_Container_APC_Diff = [SCE2_Global_Ice_AP_Damage_matrix_t0(51,:) - Base_NonIce_APC_t0(51,:); SCE2_Global_Ice_AP_Damage_matrix_tm(51,:) - Base_NonIce_APC_tm(51,:); SCE2_Global_Ice_AP_Damage_matrix_tf(51,:) - Base_NonIce_APC_tf(51,:)];
SCE2_Ice_Wet_Bulker_APC_Diff = [SCE2_Global_Ice_AP_Damage_matrix_t0(93,:) - Base_NonIce_APC_t0(93,:); SCE2_Global_Ice_AP_Damage_matrix_tm(93,:) - Base_NonIce_APC_tm(93,:); SCE2_Global_Ice_AP_Damage_matrix_tf(93,:) - Base_NonIce_APC_tf(93,:)];

SCE2_Ice_Bulker_ClC_Diff = [SCE2_Global_Ice_Clim_Damage_matrix_t0(17,:) - Base_NonIce_ClC_t0(17,:); SCE2_Global_Ice_Clim_Damage_matrix_tm(17,:) - Base_NonIce_ClC_tm(17,:); SCE2_Global_Ice_Clim_Damage_matrix_tf(17,:) - Base_NonIce_ClC_tf(17,:)];
SCE2_Ice_Container_ClC_Diff = [SCE2_Global_Ice_Clim_Damage_matrix_t0(51,:) - Base_NonIce_ClC_t0(51,:); SCE2_Global_Ice_Clim_Damage_matrix_tm(51,:) - Base_NonIce_ClC_tm(51,:); SCE2_Global_Ice_Clim_Damage_matrix_tf(51,:) - Base_NonIce_ClC_tf(51,:)];
SCE2_Ice_Wet_Bulker_ClC_Diff = [SCE2_Global_Ice_Clim_Damage_matrix_t0(93,:) - Base_NonIce_ClC_t0(93,:); SCE2_Global_Ice_Clim_Damage_matrix_tm(93,:) - Base_NonIce_ClC_tm(93,:); SCE2_Global_Ice_Clim_Damage_matrix_tf(93,:) - Base_NonIce_ClC_tf(93,:)];

SCE2_NonIce_Bulker_VC_Diff = [SCE2_NonIce_Total_Voyage_cost_t0(17,:) - Base_NonIce_VC_t0(17,:); SCE2_NonIce_Total_Voyage_cost_tm(17,:) - Base_NonIce_VC_tm(17,:); SCE2_NonIce_Total_Voyage_cost_tf(17,:) - Base_NonIce_VC_tf(17,:)];
SCE2_NonIce_Container_VC_Diff = [SCE2_NonIce_Total_Voyage_cost_t0(51,:) - Base_NonIce_VC_t0(51,:); SCE2_NonIce_Total_Voyage_cost_tm(51,:) - Base_NonIce_VC_tm(51,:); SCE2_NonIce_Total_Voyage_cost_tf(51,:) - Base_NonIce_VC_tf(51,:)];
SCE2_NonIce_Wet_Bulker_VC_Diff = [SCE2_NonIce_Total_Voyage_cost_t0(93,:) - Base_NonIce_VC_t0(93,:); SCE2_NonIce_Total_Voyage_cost_tm(93,:) - Base_NonIce_VC_tm(93,:); SCE2_NonIce_Total_Voyage_cost_tf(93,:) - Base_NonIce_VC_tf(93,:)];

SCE2_NonIce_Bulker_OC_Diff = [SCE2_NonIce_OpEx_t0(17,:) - Base_NonIce_OC_t0(17,:); SCE2_NonIce_OpEx_tm(17,:) - Base_NonIce_OC_tm(17,:); SCE2_NonIce_OpEx_tf(17,:) - Base_NonIce_OC_tf(17,:)];
SCE2_NonIce_Container_OC_Diff = [SCE2_NonIce_OpEx_t0(51,:) - Base_NonIce_OC_t0(51,:); SCE2_NonIce_OpEx_tm(51,:) - Base_NonIce_OC_tm(51,:); SCE2_NonIce_OpEx_tf(51,:) - Base_NonIce_OC_tf(51,:)];
SCE2_NonIce_Wet_Bulker_OC_Diff = [SCE2_NonIce_OpEx_t0(93,:) - Base_NonIce_OC_t0(93,:); SCE2_NonIce_OpEx_tm(93,:) - Base_NonIce_OC_tm(93,:); SCE2_NonIce_OpEx_tf(93,:) - Base_NonIce_OC_tf(93,:)];

SCE2_NonIce_Bulker_CC_Diff = [SCE2_NonIce_Total_CapEx_t0(17,:) - Base_NonIce_CC_t0(17,:); SCE2_NonIce_Total_CapEx_tm(17,:) - Base_NonIce_CC_tm(17,:); SCE2_NonIce_Total_CapEx_tf(17,:) - Base_NonIce_CC_tf(17,:)];
SCE2_NonIce_Container_CC_Diff = [SCE2_NonIce_Total_CapEx_t0(51,:) - Base_NonIce_CC_t0(51,:); SCE2_NonIce_Total_CapEx_tm(51,:) - Base_NonIce_CC_tm(51,:); SCE2_NonIce_Total_CapEx_tf(51,:) - Base_NonIce_CC_tf(51,:)];
SCE2_NonIce_Wet_Bulker_CC_Diff = [SCE2_NonIce_Total_CapEx_t0(93,:) - Base_NonIce_CC_t0(93,:); SCE2_NonIce_Total_CapEx_tm(93,:) - Base_NonIce_CC_tm(93,:); SCE2_NonIce_Total_CapEx_tf(93,:) - Base_NonIce_CC_tf(93,:)];

SCE2_NonIce_Bulker_CT_Diff = [SCE2_Global_NonIce_CO2eqtax_t0(17,:) - Base_NonIce_CT_t0(17,:); SCE2_Global_NonIce_CO2eqtax_tm(17,:) - Base_NonIce_CT_tm(17,:); SCE2_Global_NonIce_CO2eqtax_tf(17,:) - Base_NonIce_CT_tf(17,:)];
SCE2_NonIce_Container_CT_Diff = [SCE2_Global_NonIce_CO2eqtax_t0(51,:) - Base_NonIce_CT_t0(51,:); SCE2_Global_NonIce_CO2eqtax_tm(51,:) - Base_NonIce_CT_tm(51,:); SCE2_Global_NonIce_CO2eqtax_tf(51,:) - Base_NonIce_CT_tf(51,:)];
SCE2_NonIce_Wet_Bulker_CT_Diff = [SCE2_Global_NonIce_CO2eqtax_t0(93,:) - Base_NonIce_CT_t0(93,:); SCE2_Global_NonIce_CO2eqtax_tm(93,:) - Base_NonIce_CT_tm(93,:); SCE2_Global_NonIce_CO2eqtax_tf(93,:) - Base_NonIce_CT_tf(93,:)];

SCE2_NonIce_Bulker_APC_Diff = [SCE2_Global_NonIce_AP_Damage_matrix_t0(17,:) - Base_NonIce_APC_t0(17,:); SCE2_Global_NonIce_AP_Damage_matrix_tm(17,:) - Base_NonIce_APC_tm(17,:); SCE2_Global_NonIce_AP_Damage_matrix_tf(17,:) - Base_NonIce_APC_tf(17,:)];
SCE2_NonIce_Container_APC_Diff = [SCE2_Global_NonIce_AP_Damage_matrix_t0(51,:) - Base_NonIce_APC_t0(51,:); SCE2_Global_NonIce_AP_Damage_matrix_tm(51,:) - Base_NonIce_APC_tm(51,:); SCE2_Global_NonIce_AP_Damage_matrix_tf(51,:) - Base_NonIce_APC_tf(51,:)];
SCE2_NonIce_Wet_Bulker_APC_Diff = [SCE2_Global_NonIce_AP_Damage_matrix_t0(93,:) - Base_NonIce_APC_t0(93,:); SCE2_Global_NonIce_AP_Damage_matrix_tm(93,:) - Base_NonIce_APC_tm(93,:); SCE2_Global_NonIce_AP_Damage_matrix_tf(93,:) - Base_NonIce_APC_tf(93,:)];

SCE2_NonIce_Bulker_ClC_Diff = [SCE2_Global_NonIce_Clim_Damage_matrix_t0(17,:) - Base_NonIce_ClC_t0(17,:); SCE2_Global_NonIce_Clim_Damage_matrix_tm(17,:) - Base_NonIce_ClC_tm(17,:); SCE2_Global_NonIce_Clim_Damage_matrix_tf(17,:) - Base_NonIce_ClC_tf(17,:)];
SCE2_NonIce_Container_ClC_Diff = [SCE2_Global_NonIce_Clim_Damage_matrix_t0(51,:) - Base_NonIce_ClC_t0(51,:); SCE2_Global_NonIce_Clim_Damage_matrix_tm(51,:) - Base_NonIce_ClC_tm(51,:); SCE2_Global_NonIce_Clim_Damage_matrix_tf(51,:) - Base_NonIce_ClC_tf(51,:)];
SCE2_NonIce_Wet_Bulker_ClC_Diff = [SCE2_Global_NonIce_Clim_Damage_matrix_t0(93,:) - Base_NonIce_ClC_t0(93,:); SCE2_Global_NonIce_Clim_Damage_matrix_tm(93,:) - Base_NonIce_ClC_tm(93,:); SCE2_Global_NonIce_Clim_Damage_matrix_tf(93,:) - Base_NonIce_ClC_tf(93,:)];

%LSHFO
SCE1_LSHFO_Ice_Bulker_VC_Diff = [SCE1_Ice_Total_Voyage_cost_t0(17,:) - Base_LSHFO_NonIce_VC_t0(17,:); SCE1_Ice_Total_Voyage_cost_tm(17,:) - Base_LSHFO_NonIce_VC_tm(17,:); SCE1_Ice_Total_Voyage_cost_tf(17,:) - Base_LSHFO_NonIce_VC_tf(17,:)];
SCE1_LSHFO_Ice_Container_VC_Diff = [SCE1_Ice_Total_Voyage_cost_t0(51,:) - Base_LSHFO_NonIce_VC_t0(51,:); SCE1_Ice_Total_Voyage_cost_tm(51,:) - Base_LSHFO_NonIce_VC_tm(51,:); SCE1_Ice_Total_Voyage_cost_tf(51,:) - Base_LSHFO_NonIce_VC_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_VC_Diff = [SCE1_Ice_Total_Voyage_cost_t0(93,:) - Base_LSHFO_NonIce_VC_t0(93,:); SCE1_Ice_Total_Voyage_cost_tm(93,:) - Base_LSHFO_NonIce_VC_tm(93,:); SCE1_Ice_Total_Voyage_cost_tf(93,:) - Base_LSHFO_NonIce_VC_tf(93,:)];

SCE1_LSHFO_Ice_Bulker_OC_Diff = [SCE1_Ice_OpEx_t0(17,:) - Base_LSHFO_NonIce_OC_t0(17,:); SCE1_Ice_OpEx_tm(17,:) - Base_LSHFO_NonIce_OC_tm(17,:); SCE1_Ice_OpEx_tf(17,:) - Base_LSHFO_NonIce_OC_tf(17,:)];
SCE1_LSHFO_Ice_Container_OC_Diff = [SCE1_Ice_OpEx_t0(51,:) - Base_LSHFO_NonIce_OC_t0(51,:); SCE1_Ice_OpEx_tm(51,:) - Base_LSHFO_NonIce_OC_tm(51,:); SCE1_Ice_OpEx_tf(51,:) - Base_LSHFO_NonIce_OC_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_OC_Diff = [SCE1_Ice_OpEx_t0(93,:) - Base_LSHFO_NonIce_OC_t0(93,:); SCE1_Ice_OpEx_tm(93,:) - Base_LSHFO_NonIce_OC_tm(93,:); SCE1_Ice_OpEx_tf(93,:) - Base_LSHFO_NonIce_OC_tf(93,:)];

SCE1_LSHFO_Ice_Bulker_CC_Diff = [SCE1_Ice_Total_CapEx_t0(17,:) - Base_LSHFO_NonIce_CC_t0(17,:); SCE1_Ice_Total_CapEx_tm(17,:) - Base_LSHFO_NonIce_CC_tm(17,:); SCE1_Ice_Total_CapEx_tf(17,:) - Base_LSHFO_NonIce_CC_tf(17,:)];
SCE1_LSHFO_Ice_Container_CC_Diff = [SCE1_Ice_Total_CapEx_t0(51,:) - Base_LSHFO_NonIce_CC_t0(51,:); SCE1_Ice_Total_CapEx_tm(51,:) - Base_LSHFO_NonIce_CC_tm(51,:); SCE1_Ice_Total_CapEx_tf(51,:) - Base_LSHFO_NonIce_CC_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_CC_Diff = [SCE1_Ice_Total_CapEx_t0(93,:) - Base_LSHFO_NonIce_CC_t0(93,:); SCE1_Ice_Total_CapEx_tm(93,:) - Base_LSHFO_NonIce_CC_tm(93,:); SCE1_Ice_Total_CapEx_tf(93,:) - Base_LSHFO_NonIce_CC_tf(93,:)];

SCE1_LSHFO_Ice_Bulker_CT_Diff = [SCE1_Global_Ice_CO2eqtax_t0(17,:) - Base_LSHFO_NonIce_CT_t0(17,:); SCE1_Global_Ice_CO2eqtax_tm(17,:) - Base_LSHFO_NonIce_CT_tm(17,:); SCE1_Global_Ice_CO2eqtax_tf(17,:) - Base_LSHFO_NonIce_CT_tf(17,:)];
SCE1_LSHFO_Ice_Container_CT_Diff = [SCE1_Global_Ice_CO2eqtax_t0(51,:) - Base_LSHFO_NonIce_CT_t0(51,:); SCE1_Global_Ice_CO2eqtax_tm(51,:) - Base_LSHFO_NonIce_CT_tm(51,:); SCE1_Global_Ice_CO2eqtax_tf(51,:) - Base_LSHFO_NonIce_CT_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_CT_Diff = [SCE1_Global_Ice_CO2eqtax_t0(93,:) - Base_LSHFO_NonIce_CT_t0(93,:); SCE1_Global_Ice_CO2eqtax_tm(93,:) - Base_LSHFO_NonIce_CT_tm(93,:); SCE1_Global_Ice_CO2eqtax_tf(93,:) - Base_LSHFO_NonIce_CT_tf(93,:)];

SCE1_LSHFO_Ice_Bulker_APC_Diff = [SCE1_Global_Ice_AP_Damage_matrix_t0(17,:) - Base_LSHFO_NonIce_APC_t0(17,:); SCE1_Global_Ice_AP_Damage_matrix_tm(17,:) - Base_LSHFO_NonIce_APC_tm(17,:); SCE1_Global_Ice_AP_Damage_matrix_tf(17,:) - Base_LSHFO_NonIce_APC_tf(17,:)];
SCE1_LSHFO_Ice_Container_APC_Diff = [SCE1_Global_Ice_AP_Damage_matrix_t0(51,:) - Base_LSHFO_NonIce_APC_t0(51,:); SCE1_Global_Ice_AP_Damage_matrix_tm(51,:) - Base_LSHFO_NonIce_APC_tm(51,:); SCE1_Global_Ice_AP_Damage_matrix_tf(51,:) - Base_LSHFO_NonIce_APC_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_APC_Diff = [SCE1_Global_Ice_AP_Damage_matrix_t0(93,:) - Base_LSHFO_NonIce_APC_t0(93,:); SCE1_Global_Ice_AP_Damage_matrix_tm(93,:) - Base_LSHFO_NonIce_APC_tm(93,:); SCE1_Global_Ice_AP_Damage_matrix_tf(93,:) - Base_LSHFO_NonIce_APC_tf(93,:)];

SCE1_LSHFO_Ice_Bulker_ClC_Diff = [SCE1_Global_Ice_Clim_Damage_matrix_t0(17,:) - Base_LSHFO_NonIce_ClC_t0(17,:); SCE1_Global_Ice_Clim_Damage_matrix_tm(17,:) - Base_LSHFO_NonIce_ClC_tm(17,:); SCE1_Global_Ice_Clim_Damage_matrix_tf(17,:) - Base_LSHFO_NonIce_ClC_tf(17,:)];
SCE1_LSHFO_Ice_Container_ClC_Diff = [SCE1_Global_Ice_Clim_Damage_matrix_t0(51,:) - Base_LSHFO_NonIce_ClC_t0(51,:); SCE1_Global_Ice_Clim_Damage_matrix_tm(51,:) - Base_LSHFO_NonIce_ClC_tm(51,:); SCE1_Global_Ice_Clim_Damage_matrix_tf(51,:) - Base_LSHFO_NonIce_ClC_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_ClC_Diff = [SCE1_Global_Ice_Clim_Damage_matrix_t0(93,:) - Base_LSHFO_NonIce_ClC_t0(93,:); SCE1_Global_Ice_Clim_Damage_matrix_tm(93,:) - Base_LSHFO_NonIce_ClC_tm(93,:); SCE1_Global_Ice_Clim_Damage_matrix_tf(93,:) - Base_LSHFO_NonIce_ClC_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_VC_Diff = [SCE1_NonIce_Total_Voyage_cost_t0(17,:) - Base_LSHFO_NonIce_VC_t0(17,:); SCE1_NonIce_Total_Voyage_cost_tm(17,:) - Base_LSHFO_NonIce_VC_tm(17,:); SCE1_NonIce_Total_Voyage_cost_tf(17,:) - Base_LSHFO_NonIce_VC_tf(17,:)];
SCE1_LSHFO_NonIce_Container_VC_Diff = [SCE1_NonIce_Total_Voyage_cost_t0(51,:) - Base_LSHFO_NonIce_VC_t0(51,:); SCE1_NonIce_Total_Voyage_cost_tm(51,:) - Base_LSHFO_NonIce_VC_tm(51,:); SCE1_NonIce_Total_Voyage_cost_tf(51,:) - Base_LSHFO_NonIce_VC_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_VC_Diff = [SCE1_NonIce_Total_Voyage_cost_t0(93,:) - Base_LSHFO_NonIce_VC_t0(93,:); SCE1_NonIce_Total_Voyage_cost_tm(93,:) - Base_LSHFO_NonIce_VC_tm(93,:); SCE1_NonIce_Total_Voyage_cost_tf(93,:) - Base_LSHFO_NonIce_VC_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_OC_Diff = [SCE1_NonIce_OpEx_t0(17,:) - Base_LSHFO_NonIce_OC_t0(17,:); SCE1_NonIce_OpEx_tm(17,:) - Base_LSHFO_NonIce_OC_tm(17,:); SCE1_NonIce_OpEx_tf(17,:) - Base_LSHFO_NonIce_OC_tf(17,:)];
SCE1_LSHFO_NonIce_Container_OC_Diff = [SCE1_NonIce_OpEx_t0(51,:) - Base_LSHFO_NonIce_OC_t0(51,:); SCE1_NonIce_OpEx_tm(51,:) - Base_LSHFO_NonIce_OC_tm(51,:); SCE1_NonIce_OpEx_tf(51,:) - Base_LSHFO_NonIce_OC_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_OC_Diff = [SCE1_NonIce_OpEx_t0(93,:) - Base_LSHFO_NonIce_OC_t0(93,:); SCE1_NonIce_OpEx_tm(93,:) - Base_LSHFO_NonIce_OC_tm(93,:); SCE1_NonIce_OpEx_tf(93,:) - Base_LSHFO_NonIce_OC_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_CC_Diff = [SCE1_NonIce_Total_CapEx_t0(17,:) - Base_LSHFO_NonIce_CC_t0(17,:); SCE1_NonIce_Total_CapEx_tm(17,:) - Base_LSHFO_NonIce_CC_tm(17,:); SCE1_NonIce_Total_CapEx_tf(17,:) - Base_LSHFO_NonIce_CC_tf(17,:)];
SCE1_LSHFO_NonIce_Container_CC_Diff = [SCE1_NonIce_Total_CapEx_t0(51,:) - Base_LSHFO_NonIce_CC_t0(51,:); SCE1_NonIce_Total_CapEx_tm(51,:) - Base_LSHFO_NonIce_CC_tm(51,:); SCE1_NonIce_Total_CapEx_tf(51,:) - Base_LSHFO_NonIce_CC_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_CC_Diff = [SCE1_NonIce_Total_CapEx_t0(93,:) - Base_LSHFO_NonIce_CC_t0(93,:); SCE1_NonIce_Total_CapEx_tm(93,:) - Base_LSHFO_NonIce_CC_tm(93,:); SCE1_NonIce_Total_CapEx_tf(93,:) - Base_LSHFO_NonIce_CC_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_CT_Diff = [SCE1_Global_NonIce_CO2eqtax_t0(17,:) - Base_LSHFO_NonIce_CT_t0(17,:); SCE1_Global_NonIce_CO2eqtax_tm(17,:) - Base_LSHFO_NonIce_CT_tm(17,:); SCE1_Global_NonIce_CO2eqtax_tf(17,:) - Base_LSHFO_NonIce_CT_tf(17,:)];
SCE1_LSHFO_NonIce_Container_CT_Diff = [SCE1_Global_NonIce_CO2eqtax_t0(51,:) - Base_LSHFO_NonIce_CT_t0(51,:); SCE1_Global_NonIce_CO2eqtax_tm(51,:) - Base_LSHFO_NonIce_CT_tm(51,:); SCE1_Global_NonIce_CO2eqtax_tf(51,:) - Base_LSHFO_NonIce_CT_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_CT_Diff = [SCE1_Global_NonIce_CO2eqtax_t0(93,:) - Base_LSHFO_NonIce_CT_t0(93,:); SCE1_Global_NonIce_CO2eqtax_tm(93,:) - Base_LSHFO_NonIce_CT_tm(93,:); SCE1_Global_NonIce_CO2eqtax_tf(93,:) - Base_LSHFO_NonIce_CT_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_APC_Diff = [SCE1_Global_NonIce_AP_Damage_matrix_t0(17,:) - Base_LSHFO_NonIce_APC_t0(17,:); SCE1_Global_NonIce_AP_Damage_matrix_tm(17,:) - Base_LSHFO_NonIce_APC_tm(17,:); SCE1_Global_NonIce_AP_Damage_matrix_tf(17,:) - Base_LSHFO_NonIce_APC_tf(17,:)];
SCE1_LSHFO_NonIce_Container_APC_Diff = [SCE1_Global_NonIce_AP_Damage_matrix_t0(51,:) - Base_LSHFO_NonIce_APC_t0(51,:); SCE1_Global_NonIce_AP_Damage_matrix_tm(51,:) - Base_LSHFO_NonIce_APC_tm(51,:); SCE1_Global_NonIce_AP_Damage_matrix_tf(51,:) - Base_LSHFO_NonIce_APC_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_APC_Diff = [SCE1_Global_NonIce_AP_Damage_matrix_t0(93,:) - Base_LSHFO_NonIce_APC_t0(93,:); SCE1_Global_NonIce_AP_Damage_matrix_tm(93,:) - Base_LSHFO_NonIce_APC_tm(93,:); SCE1_Global_NonIce_AP_Damage_matrix_tf(93,:) - Base_LSHFO_NonIce_APC_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_ClC_Diff = [SCE1_Global_NonIce_Clim_Damage_matrix_t0(17,:) - Base_LSHFO_NonIce_ClC_t0(17,:); SCE1_Global_NonIce_Clim_Damage_matrix_tm(17,:) - Base_LSHFO_NonIce_ClC_tm(17,:); SCE1_Global_NonIce_Clim_Damage_matrix_tf(17,:) - Base_LSHFO_NonIce_ClC_tf(17,:)];
SCE1_LSHFO_NonIce_Container_ClC_Diff = [SCE1_Global_NonIce_Clim_Damage_matrix_t0(51,:) - Base_LSHFO_NonIce_ClC_t0(51,:); SCE1_Global_NonIce_Clim_Damage_matrix_tm(51,:) - Base_LSHFO_NonIce_ClC_tm(51,:); SCE1_Global_NonIce_Clim_Damage_matrix_tf(51,:) - Base_LSHFO_NonIce_ClC_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_ClC_Diff = [SCE1_Global_NonIce_Clim_Damage_matrix_t0(93,:) - Base_LSHFO_NonIce_ClC_t0(93,:); SCE1_Global_NonIce_Clim_Damage_matrix_tm(93,:) - Base_LSHFO_NonIce_ClC_tm(93,:); SCE1_Global_NonIce_Clim_Damage_matrix_tf(93,:) - Base_LSHFO_NonIce_ClC_tf(93,:)];

%SCE2
SCE2_LSHFO_Ice_Bulker_VC_Diff = [SCE2_Ice_Total_Voyage_cost_t0(17,:) - Base_LSHFO_NonIce_VC_t0(17,:); SCE2_Ice_Total_Voyage_cost_tm(17,:) - Base_LSHFO_NonIce_VC_tm(17,:); SCE2_Ice_Total_Voyage_cost_tf(17,:) - Base_LSHFO_NonIce_VC_tf(17,:)];
SCE2_LSHFO_Ice_Container_VC_Diff = [SCE2_Ice_Total_Voyage_cost_t0(51,:) - Base_LSHFO_NonIce_VC_t0(51,:); SCE2_Ice_Total_Voyage_cost_tm(51,:) - Base_LSHFO_NonIce_VC_tm(51,:); SCE2_Ice_Total_Voyage_cost_tf(51,:) - Base_LSHFO_NonIce_VC_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_VC_Diff = [SCE2_Ice_Total_Voyage_cost_t0(93,:) - Base_LSHFO_NonIce_VC_t0(93,:); SCE2_Ice_Total_Voyage_cost_tm(93,:) - Base_LSHFO_NonIce_VC_tm(93,:); SCE2_Ice_Total_Voyage_cost_tf(93,:) - Base_LSHFO_NonIce_VC_tf(93,:)];

SCE2_LSHFO_Ice_Bulker_OC_Diff = [SCE2_Ice_OpEx_t0(17,:) - Base_LSHFO_NonIce_OC_t0(17,:); SCE2_Ice_OpEx_tm(17,:) - Base_LSHFO_NonIce_OC_tm(17,:); SCE2_Ice_OpEx_tf(17,:) - Base_LSHFO_NonIce_OC_tf(17,:)];
SCE2_LSHFO_Ice_Container_OC_Diff = [SCE2_Ice_OpEx_t0(51,:) - Base_LSHFO_NonIce_OC_t0(51,:); SCE2_Ice_OpEx_tm(51,:) - Base_LSHFO_NonIce_OC_tm(51,:); SCE2_Ice_OpEx_tf(51,:) - Base_LSHFO_NonIce_OC_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_OC_Diff = [SCE2_Ice_OpEx_t0(93,:) - Base_LSHFO_NonIce_OC_t0(93,:); SCE2_Ice_OpEx_tm(93,:) - Base_LSHFO_NonIce_OC_tm(93,:); SCE2_Ice_OpEx_tf(93,:) - Base_LSHFO_NonIce_OC_tf(93,:)];

SCE2_LSHFO_Ice_Bulker_CC_Diff = [SCE2_Ice_Total_CapEx_t0(17,:) - Base_LSHFO_NonIce_CC_t0(17,:); SCE2_Ice_Total_CapEx_tm(17,:) - Base_LSHFO_NonIce_CC_tm(17,:); SCE2_Ice_Total_CapEx_tf(17,:) - Base_LSHFO_NonIce_CC_tf(17,:)];
SCE2_LSHFO_Ice_Container_CC_Diff = [SCE2_Ice_Total_CapEx_t0(51,:) - Base_LSHFO_NonIce_CC_t0(51,:); SCE2_Ice_Total_CapEx_tm(51,:) - Base_LSHFO_NonIce_CC_tm(51,:); SCE2_Ice_Total_CapEx_tf(51,:) - Base_LSHFO_NonIce_CC_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_CC_Diff = [SCE2_Ice_Total_CapEx_t0(93,:) - Base_LSHFO_NonIce_CC_t0(93,:); SCE2_Ice_Total_CapEx_tm(93,:) - Base_LSHFO_NonIce_CC_tm(93,:); SCE2_Ice_Total_CapEx_tf(93,:) - Base_LSHFO_NonIce_CC_tf(93,:)];

SCE2_LSHFO_Ice_Bulker_CT_Diff = [SCE2_Global_Ice_CO2eqtax_t0(17,:) - Base_LSHFO_NonIce_CT_t0(17,:); SCE2_Global_Ice_CO2eqtax_tm(17,:) - Base_LSHFO_NonIce_CT_tm(17,:); SCE2_Global_Ice_CO2eqtax_tf(17,:) - Base_LSHFO_NonIce_CT_tf(17,:)];
SCE2_LSHFO_Ice_Container_CT_Diff = [SCE2_Global_Ice_CO2eqtax_t0(51,:) - Base_LSHFO_NonIce_CT_t0(51,:); SCE2_Global_Ice_CO2eqtax_tm(51,:) - Base_LSHFO_NonIce_CT_tm(51,:); SCE2_Global_Ice_CO2eqtax_tf(51,:) - Base_LSHFO_NonIce_CT_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_CT_Diff = [SCE2_Global_Ice_CO2eqtax_t0(93,:) - Base_LSHFO_NonIce_CT_t0(93,:); SCE2_Global_Ice_CO2eqtax_tm(93,:) - Base_LSHFO_NonIce_CT_tm(93,:); SCE2_Global_Ice_CO2eqtax_tf(93,:) - Base_LSHFO_NonIce_CT_tf(93,:)];

SCE2_LSHFO_Ice_Bulker_APC_Diff = [SCE2_Global_Ice_AP_Damage_matrix_t0(17,:) - Base_LSHFO_NonIce_APC_t0(17,:); SCE2_Global_Ice_AP_Damage_matrix_tm(17,:) - Base_LSHFO_NonIce_APC_tm(17,:); SCE2_Global_Ice_AP_Damage_matrix_tf(17,:) - Base_LSHFO_NonIce_APC_tf(17,:)];
SCE2_LSHFO_Ice_Container_APC_Diff = [SCE2_Global_Ice_AP_Damage_matrix_t0(51,:) - Base_LSHFO_NonIce_APC_t0(51,:); SCE2_Global_Ice_AP_Damage_matrix_tm(51,:) - Base_LSHFO_NonIce_APC_tm(51,:); SCE2_Global_Ice_AP_Damage_matrix_tf(51,:) - Base_LSHFO_NonIce_APC_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_APC_Diff = [SCE2_Global_Ice_AP_Damage_matrix_t0(93,:) - Base_LSHFO_NonIce_APC_t0(93,:); SCE2_Global_Ice_AP_Damage_matrix_tm(93,:) - Base_LSHFO_NonIce_APC_tm(93,:); SCE2_Global_Ice_AP_Damage_matrix_tf(93,:) - Base_LSHFO_NonIce_APC_tf(93,:)];

SCE2_LSHFO_Ice_Bulker_ClC_Diff = [SCE2_Global_Ice_Clim_Damage_matrix_t0(17,:) - Base_LSHFO_NonIce_ClC_t0(17,:); SCE2_Global_Ice_Clim_Damage_matrix_tm(17,:) - Base_LSHFO_NonIce_ClC_tm(17,:); SCE2_Global_Ice_Clim_Damage_matrix_tf(17,:) - Base_LSHFO_NonIce_ClC_tf(17,:)];
SCE2_LSHFO_Ice_Container_ClC_Diff = [SCE2_Global_Ice_Clim_Damage_matrix_t0(51,:) - Base_LSHFO_NonIce_ClC_t0(51,:); SCE2_Global_Ice_Clim_Damage_matrix_tm(51,:) - Base_LSHFO_NonIce_ClC_tm(51,:); SCE2_Global_Ice_Clim_Damage_matrix_tf(51,:) - Base_LSHFO_NonIce_ClC_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_ClC_Diff = [SCE2_Global_Ice_Clim_Damage_matrix_t0(93,:) - Base_LSHFO_NonIce_ClC_t0(93,:); SCE2_Global_Ice_Clim_Damage_matrix_tm(93,:) - Base_LSHFO_NonIce_ClC_tm(93,:); SCE2_Global_Ice_Clim_Damage_matrix_tf(93,:) - Base_LSHFO_NonIce_ClC_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_VC_Diff = [SCE2_NonIce_Total_Voyage_cost_t0(17,:) - Base_LSHFO_NonIce_VC_t0(17,:); SCE2_NonIce_Total_Voyage_cost_tm(17,:) - Base_LSHFO_NonIce_VC_tm(17,:); SCE2_NonIce_Total_Voyage_cost_tf(17,:) - Base_LSHFO_NonIce_VC_tf(17,:)];
SCE2_LSHFO_NonIce_Container_VC_Diff = [SCE2_NonIce_Total_Voyage_cost_t0(51,:) - Base_LSHFO_NonIce_VC_t0(51,:); SCE2_NonIce_Total_Voyage_cost_tm(51,:) - Base_LSHFO_NonIce_VC_tm(51,:); SCE2_NonIce_Total_Voyage_cost_tf(51,:) - Base_LSHFO_NonIce_VC_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_VC_Diff = [SCE2_NonIce_Total_Voyage_cost_t0(93,:) - Base_LSHFO_NonIce_VC_t0(93,:); SCE2_NonIce_Total_Voyage_cost_tm(93,:) - Base_LSHFO_NonIce_VC_tm(93,:); SCE2_NonIce_Total_Voyage_cost_tf(93,:) - Base_LSHFO_NonIce_VC_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_OC_Diff = [SCE2_NonIce_OpEx_t0(17,:) - Base_LSHFO_NonIce_OC_t0(17,:); SCE2_NonIce_OpEx_tm(17,:) - Base_LSHFO_NonIce_OC_tm(17,:); SCE2_NonIce_OpEx_tf(17,:) - Base_LSHFO_NonIce_OC_tf(17,:)];
SCE2_LSHFO_NonIce_Container_OC_Diff = [SCE2_NonIce_OpEx_t0(51,:) - Base_LSHFO_NonIce_OC_t0(51,:); SCE2_NonIce_OpEx_tm(51,:) - Base_LSHFO_NonIce_OC_tm(51,:); SCE2_NonIce_OpEx_tf(51,:) - Base_LSHFO_NonIce_OC_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_OC_Diff = [SCE2_NonIce_OpEx_t0(93,:) - Base_LSHFO_NonIce_OC_t0(93,:); SCE2_NonIce_OpEx_tm(93,:) - Base_LSHFO_NonIce_OC_tm(93,:); SCE2_NonIce_OpEx_tf(93,:) - Base_LSHFO_NonIce_OC_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_CC_Diff = [SCE2_NonIce_Total_CapEx_t0(17,:) - Base_LSHFO_NonIce_CC_t0(17,:); SCE2_NonIce_Total_CapEx_tm(17,:) - Base_LSHFO_NonIce_CC_tm(17,:); SCE2_NonIce_Total_CapEx_tf(17,:) - Base_LSHFO_NonIce_CC_tf(17,:)];
SCE2_LSHFO_NonIce_Container_CC_Diff = [SCE2_NonIce_Total_CapEx_t0(51,:) - Base_LSHFO_NonIce_CC_t0(51,:); SCE2_NonIce_Total_CapEx_tm(51,:) - Base_LSHFO_NonIce_CC_tm(51,:); SCE2_NonIce_Total_CapEx_tf(51,:) - Base_LSHFO_NonIce_CC_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_CC_Diff = [SCE2_NonIce_Total_CapEx_t0(93,:) - Base_LSHFO_NonIce_CC_t0(93,:); SCE2_NonIce_Total_CapEx_tm(93,:) - Base_LSHFO_NonIce_CC_tm(93,:); SCE2_NonIce_Total_CapEx_tf(93,:) - Base_LSHFO_NonIce_CC_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_CT_Diff = [SCE2_Global_NonIce_CO2eqtax_t0(17,:) - Base_LSHFO_NonIce_CT_t0(17,:); SCE2_Global_NonIce_CO2eqtax_tm(17,:) - Base_LSHFO_NonIce_CT_tm(17,:); SCE2_Global_NonIce_CO2eqtax_tf(17,:) - Base_LSHFO_NonIce_CT_tf(17,:)];
SCE2_LSHFO_NonIce_Container_CT_Diff = [SCE2_Global_NonIce_CO2eqtax_t0(51,:) - Base_LSHFO_NonIce_CT_t0(51,:); SCE2_Global_NonIce_CO2eqtax_tm(51,:) - Base_LSHFO_NonIce_CT_tm(51,:); SCE2_Global_NonIce_CO2eqtax_tf(51,:) - Base_LSHFO_NonIce_CT_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_CT_Diff = [SCE2_Global_NonIce_CO2eqtax_t0(93,:) - Base_LSHFO_NonIce_CT_t0(93,:); SCE2_Global_NonIce_CO2eqtax_tm(93,:) - Base_LSHFO_NonIce_CT_tm(93,:); SCE2_Global_NonIce_CO2eqtax_tf(93,:) - Base_LSHFO_NonIce_CT_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_APC_Diff = [SCE2_Global_NonIce_AP_Damage_matrix_t0(17,:) - Base_LSHFO_NonIce_APC_t0(17,:); SCE2_Global_NonIce_AP_Damage_matrix_tm(17,:) - Base_LSHFO_NonIce_APC_tm(17,:); SCE2_Global_NonIce_AP_Damage_matrix_tf(17,:) - Base_LSHFO_NonIce_APC_tf(17,:)];
SCE2_LSHFO_NonIce_Container_APC_Diff = [SCE2_Global_NonIce_AP_Damage_matrix_t0(51,:) - Base_LSHFO_NonIce_APC_t0(51,:); SCE2_Global_NonIce_AP_Damage_matrix_tm(51,:) - Base_LSHFO_NonIce_APC_tm(51,:); SCE2_Global_NonIce_AP_Damage_matrix_tf(51,:) - Base_LSHFO_NonIce_APC_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_APC_Diff = [SCE2_Global_NonIce_AP_Damage_matrix_t0(93,:) - Base_LSHFO_NonIce_APC_t0(93,:); SCE2_Global_NonIce_AP_Damage_matrix_tm(93,:) - Base_LSHFO_NonIce_APC_tm(93,:); SCE2_Global_NonIce_AP_Damage_matrix_tf(93,:) - Base_LSHFO_NonIce_APC_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_ClC_Diff = [SCE2_Global_NonIce_Clim_Damage_matrix_t0(17,:) - Base_LSHFO_NonIce_ClC_t0(17,:); SCE2_Global_NonIce_Clim_Damage_matrix_tm(17,:) - Base_LSHFO_NonIce_ClC_tm(17,:); SCE2_Global_NonIce_Clim_Damage_matrix_tf(17,:) - Base_LSHFO_NonIce_ClC_tf(17,:)];
SCE2_LSHFO_NonIce_Container_ClC_Diff = [SCE2_Global_NonIce_Clim_Damage_matrix_t0(51,:) - Base_LSHFO_NonIce_ClC_t0(51,:); SCE2_Global_NonIce_Clim_Damage_matrix_tm(51,:) - Base_LSHFO_NonIce_ClC_tm(51,:); SCE2_Global_NonIce_Clim_Damage_matrix_tf(51,:) - Base_LSHFO_NonIce_ClC_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_ClC_Diff = [SCE2_Global_NonIce_Clim_Damage_matrix_t0(93,:) - Base_LSHFO_NonIce_ClC_t0(93,:); SCE2_Global_NonIce_Clim_Damage_matrix_tm(93,:) - Base_LSHFO_NonIce_ClC_tm(93,:); SCE2_Global_NonIce_Clim_Damage_matrix_tf(93,:) - Base_LSHFO_NonIce_ClC_tf(93,:)];


%Emissions
Base_NonIce_CO2eq_t0 = zeros(length(SCE3_Global_NonIce_CO2eq_matrix_t0(:,1)),3.*length(SCE3_Global_NonIce_CO2eq_matrix_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_CO2eq_t0(:,(3.*(i-1))+1) = SCE3_Global_NonIce_CO2eq_matrix_t0(:,i); 
    Base_NonIce_CO2eq_t0(:,(3.*(i-1))+2) = SCE3_Global_NonIce_CO2eq_matrix_t0(:,i); 
    Base_NonIce_CO2eq_t0(:,(3.*(i-1))+3) = SCE3_Global_NonIce_CO2eq_matrix_t0(:,i); 
end

Base_NonIce_CO2eq_tm = zeros(length(SCE3_Global_NonIce_CO2eq_matrix_tm(:,1)),3.*length(SCE3_Global_NonIce_CO2eq_matrix_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_CO2eq_tm(:,(3.*(i-1))+1) = SCE3_Global_NonIce_CO2eq_matrix_tm(:,i); 
    Base_NonIce_CO2eq_tm(:,(3.*(i-1))+2) = SCE3_Global_NonIce_CO2eq_matrix_tm(:,i); 
    Base_NonIce_CO2eq_tm(:,(3.*(i-1))+3) = SCE3_Global_NonIce_CO2eq_matrix_tm(:,i); 
end

Base_NonIce_CO2eq_tf = zeros(length(SCE3_Global_NonIce_CO2eq_matrix_tf(:,1)),3.*length(SCE3_Global_NonIce_CO2eq_matrix_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_CO2eq_tf(:,(3.*(i-1))+1) = SCE3_Global_NonIce_CO2eq_matrix_tf(:,i); 
    Base_NonIce_CO2eq_tf(:,(3.*(i-1))+2) = SCE3_Global_NonIce_CO2eq_matrix_tf(:,i); 
    Base_NonIce_CO2eq_tf(:,(3.*(i-1))+3) = SCE3_Global_NonIce_CO2eq_matrix_tf(:,i); 
end

Base_NonIce_SOx_t0 = zeros(length(SCE3_NonIce_SOx_matrix_t0(:,1)),3.*length(SCE3_NonIce_SOx_matrix_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_SOx_t0(:,(3.*(i-1))+1) = SCE3_NonIce_SOx_matrix_t0(:,i); 
    Base_NonIce_SOx_t0(:,(3.*(i-1))+2) = SCE3_NonIce_SOx_matrix_t0(:,i); 
    Base_NonIce_SOx_t0(:,(3.*(i-1))+3) = SCE3_NonIce_SOx_matrix_t0(:,i); 
end

Base_NonIce_SOx_tm = zeros(length(SCE3_NonIce_SOx_matrix_tm(:,1)),3.*length(SCE3_NonIce_SOx_matrix_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_SOx_tm(:,(3.*(i-1))+1) = SCE3_NonIce_SOx_matrix_tm(:,i); 
    Base_NonIce_SOx_tm(:,(3.*(i-1))+2) = SCE3_NonIce_SOx_matrix_tm(:,i); 
    Base_NonIce_SOx_tm(:,(3.*(i-1))+3) = SCE3_NonIce_SOx_matrix_tm(:,i); 
end

Base_NonIce_SOx_tf = zeros(length(SCE3_NonIce_SOx_matrix_tf(:,1)),3.*length(SCE3_NonIce_SOx_matrix_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_SOx_tf(:,(3.*(i-1))+1) = SCE3_NonIce_SOx_matrix_tf(:,i); 
    Base_NonIce_SOx_tf(:,(3.*(i-1))+2) = SCE3_NonIce_SOx_matrix_tf(:,i); 
    Base_NonIce_SOx_tf(:,(3.*(i-1))+3) = SCE3_NonIce_SOx_matrix_tf(:,i); 
end

Base_NonIce_NOx_t0 = zeros(length(SCE3_NonIce_NOx_matrix_t0(:,1)),3.*length(SCE3_NonIce_NOx_matrix_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_NOx_t0(:,(3.*(i-1))+1) = SCE3_NonIce_NOx_matrix_t0(:,i); 
    Base_NonIce_NOx_t0(:,(3.*(i-1))+2) = SCE3_NonIce_NOx_matrix_t0(:,i); 
    Base_NonIce_NOx_t0(:,(3.*(i-1))+3) = SCE3_NonIce_NOx_matrix_t0(:,i); 
end

Base_NonIce_NOx_tm = zeros(length(SCE3_NonIce_NOx_matrix_tm(:,1)),3.*length(SCE3_NonIce_NOx_matrix_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_NOx_tm(:,(3.*(i-1))+1) = SCE3_NonIce_NOx_matrix_tm(:,i); 
    Base_NonIce_NOx_tm(:,(3.*(i-1))+2) = SCE3_NonIce_NOx_matrix_tm(:,i); 
    Base_NonIce_NOx_tm(:,(3.*(i-1))+3) = SCE3_NonIce_NOx_matrix_tm(:,i); 
end

Base_NonIce_NOx_tf = zeros(length(SCE3_NonIce_NOx_matrix_tf(:,1)),3.*length(SCE3_NonIce_NOx_matrix_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_NOx_tf(:,(3.*(i-1))+1) = SCE3_NonIce_NOx_matrix_tf(:,i); 
    Base_NonIce_NOx_tf(:,(3.*(i-1))+2) = SCE3_NonIce_NOx_matrix_tf(:,i); 
    Base_NonIce_NOx_tf(:,(3.*(i-1))+3) = SCE3_NonIce_NOx_matrix_tf(:,i); 
end

Base_NonIce_PM_t0 = zeros(length(SCE3_NonIce_PM_matrix_t0(:,1)),3.*length(SCE3_NonIce_PM_matrix_t0(1,:)));
for i = 1:1:length(SCE3_Compatibility_t0(1,:))
    Base_NonIce_PM_t0(:,(3.*(i-1))+1) = SCE3_NonIce_PM_matrix_t0(:,i); 
    Base_NonIce_PM_t0(:,(3.*(i-1))+2) = SCE3_NonIce_PM_matrix_t0(:,i); 
    Base_NonIce_PM_t0(:,(3.*(i-1))+3) = SCE3_NonIce_PM_matrix_t0(:,i); 
end

Base_NonIce_PM_tm = zeros(length(SCE3_NonIce_PM_matrix_tm(:,1)),3.*length(SCE3_NonIce_PM_matrix_tm(1,:)));
for i = 1:1:length(SCE3_Compatibility_tm(1,:))
    Base_NonIce_PM_tm(:,(3.*(i-1))+1) = SCE3_NonIce_PM_matrix_tm(:,i); 
    Base_NonIce_PM_tm(:,(3.*(i-1))+2) = SCE3_NonIce_PM_matrix_tm(:,i); 
    Base_NonIce_PM_tm(:,(3.*(i-1))+3) = SCE3_NonIce_PM_matrix_tm(:,i); 
end

Base_NonIce_PM_tf = zeros(length(SCE3_NonIce_PM_matrix_tf(:,1)),3.*length(SCE3_NonIce_PM_matrix_tf(1,:)));
for i = 1:1:length(SCE3_Compatibility_tf(1,:))
    Base_NonIce_PM_tf(:,(3.*(i-1))+1) = SCE3_NonIce_PM_matrix_tf(:,i); 
    Base_NonIce_PM_tf(:,(3.*(i-1))+2) = SCE3_NonIce_PM_matrix_tf(:,i); 
    Base_NonIce_PM_tf(:,(3.*(i-1))+3) = SCE3_NonIce_PM_matrix_tf(:,i); 
end

%Emission difference
SCE1_Ice_Bulker_CO2eq_Diff = [SCE1_Global_Ice_CO2eq_matrix_t0(17,:) - Base_NonIce_CO2eq_t0(17,:); SCE1_Global_Ice_CO2eq_matrix_tm(17,:) - Base_NonIce_CO2eq_tm(17,:); SCE1_Global_Ice_CO2eq_matrix_tf(17,:) - Base_NonIce_CO2eq_tf(17,:)];
SCE1_Ice_Container_CO2eq_Diff = [SCE1_Global_Ice_CO2eq_matrix_t0(51,:) - Base_NonIce_CO2eq_t0(51,:); SCE1_Global_Ice_CO2eq_matrix_tm(51,:) - Base_NonIce_CO2eq_tm(51,:); SCE1_Global_Ice_CO2eq_matrix_tf(51,:) - Base_NonIce_CO2eq_tf(51,:)];
SCE1_Ice_Wet_Bulker_CO2eq_Diff = [SCE1_Global_Ice_CO2eq_matrix_t0(93,:) - Base_NonIce_CO2eq_t0(93,:); SCE1_Global_Ice_CO2eq_matrix_tm(93,:) - Base_NonIce_CO2eq_tm(93,:); SCE1_Global_Ice_CO2eq_matrix_tf(93,:) - Base_NonIce_CO2eq_tf(93,:)];

SCE1_Ice_Bulker_SOx_Diff = [SCE1_Ice_SOx_matrix_t0(17,:) - Base_NonIce_SOx_t0(17,:); SCE1_Ice_SOx_matrix_tm(17,:) - Base_NonIce_SOx_tm(17,:); SCE1_Ice_SOx_matrix_tf(17,:) - Base_NonIce_SOx_tf(17,:)];
SCE1_Ice_Container_SOx_Diff = [SCE1_Ice_SOx_matrix_t0(51,:) - Base_NonIce_SOx_t0(51,:); SCE1_Ice_SOx_matrix_tm(51,:) - Base_NonIce_SOx_tm(51,:); SCE1_Ice_SOx_matrix_tf(51,:) - Base_NonIce_SOx_tf(51,:)];
SCE1_Ice_Wet_Bulker_SOx_Diff = [SCE1_Ice_SOx_matrix_t0(93,:) - Base_NonIce_SOx_t0(93,:); SCE1_Ice_SOx_matrix_tm(93,:) - Base_NonIce_SOx_tm(93,:); SCE1_Ice_SOx_matrix_tf(93,:) - Base_NonIce_SOx_tf(93,:)];

SCE1_Ice_Bulker_NOx_Diff = [SCE1_Ice_NOx_matrix_t0(17,:) - Base_NonIce_NOx_t0(17,:); SCE1_Ice_NOx_matrix_tm(17,:) - Base_NonIce_NOx_tm(17,:); SCE1_Ice_NOx_matrix_tf(17,:) - Base_NonIce_NOx_tf(17,:)];
SCE1_Ice_Container_NOx_Diff = [SCE1_Ice_NOx_matrix_t0(51,:) - Base_NonIce_NOx_t0(51,:); SCE1_Ice_NOx_matrix_tm(51,:) - Base_NonIce_NOx_tm(51,:); SCE1_Ice_NOx_matrix_tf(51,:) - Base_NonIce_NOx_tf(51,:)];
SCE1_Ice_Wet_Bulker_NOx_Diff = [SCE1_Ice_NOx_matrix_t0(93,:) - Base_NonIce_NOx_t0(93,:); SCE1_Ice_NOx_matrix_tm(93,:) - Base_NonIce_NOx_tm(93,:); SCE1_Ice_NOx_matrix_tf(93,:) - Base_NonIce_NOx_tf(93,:)];

SCE1_Ice_Bulker_PM_Diff = [SCE1_Ice_PM_matrix_t0(17,:) - Base_NonIce_PM_t0(17,:); SCE1_Ice_PM_matrix_tm(17,:) - Base_NonIce_PM_tm(17,:); SCE1_Ice_PM_matrix_tf(17,:) - Base_NonIce_PM_tf(17,:)];
SCE1_Ice_Container_PM_Diff = [SCE1_Ice_PM_matrix_t0(51,:) - Base_NonIce_PM_t0(51,:); SCE1_Ice_PM_matrix_tm(51,:) - Base_NonIce_PM_tm(51,:); SCE1_Ice_PM_matrix_tf(51,:) - Base_NonIce_PM_tf(51,:)];
SCE1_Ice_Wet_Bulker_PM_Diff = [SCE1_Ice_PM_matrix_t0(93,:) - Base_NonIce_PM_t0(93,:); SCE1_Ice_PM_matrix_tm(93,:) - Base_NonIce_PM_tm(93,:); SCE1_Ice_PM_matrix_tf(93,:) - Base_NonIce_PM_tf(93,:)];

SCE1_NonIce_Bulker_CO2eq_Diff = [SCE1_Global_NonIce_CO2eq_matrix_t0(17,:) - Base_NonIce_CO2eq_t0(17,:); SCE1_Global_NonIce_CO2eq_matrix_tm(17,:) - Base_NonIce_CO2eq_tm(17,:); SCE1_Global_NonIce_CO2eq_matrix_tf(17,:) - Base_NonIce_CO2eq_tf(17,:)];
SCE1_NonIce_Container_CO2eq_Diff = [SCE1_Global_NonIce_CO2eq_matrix_t0(51,:) - Base_NonIce_CO2eq_t0(51,:); SCE1_Global_NonIce_CO2eq_matrix_tm(51,:) - Base_NonIce_CO2eq_tm(51,:); SCE1_Global_NonIce_CO2eq_matrix_tf(51,:) - Base_NonIce_CO2eq_tf(51,:)];
SCE1_NonIce_Wet_Bulker_CO2eq_Diff = [SCE1_Global_NonIce_CO2eq_matrix_t0(93,:) - Base_NonIce_CO2eq_t0(93,:); SCE1_Global_NonIce_CO2eq_matrix_tm(93,:) - Base_NonIce_CO2eq_tm(93,:); SCE1_Global_NonIce_CO2eq_matrix_tf(93,:) - Base_NonIce_CO2eq_tf(93,:)];

SCE1_NonIce_Bulker_SOx_Diff = [SCE1_NonIce_SOx_matrix_t0(17,:) - Base_NonIce_SOx_t0(17,:); SCE1_NonIce_SOx_matrix_tm(17,:) - Base_NonIce_SOx_tm(17,:); SCE1_NonIce_SOx_matrix_tf(17,:) - Base_NonIce_SOx_tf(17,:)];
SCE1_NonIce_Container_SOx_Diff = [SCE1_NonIce_SOx_matrix_t0(51,:) - Base_NonIce_SOx_t0(51,:); SCE1_NonIce_SOx_matrix_tm(51,:) - Base_NonIce_SOx_tm(51,:); SCE1_NonIce_SOx_matrix_tf(51,:) - Base_NonIce_SOx_tf(51,:)];
SCE1_NonIce_Wet_Bulker_SOx_Diff = [SCE1_NonIce_SOx_matrix_t0(93,:) - Base_NonIce_SOx_t0(93,:); SCE1_NonIce_SOx_matrix_tm(93,:) - Base_NonIce_SOx_tm(93,:); SCE1_NonIce_SOx_matrix_tf(93,:) - Base_NonIce_SOx_tf(93,:)];

SCE1_NonIce_Bulker_NOx_Diff = [SCE1_NonIce_NOx_matrix_t0(17,:) - Base_NonIce_NOx_t0(17,:); SCE1_NonIce_NOx_matrix_tm(17,:) - Base_NonIce_NOx_tm(17,:); SCE1_NonIce_NOx_matrix_tf(17,:) - Base_NonIce_NOx_tf(17,:)];
SCE1_NonIce_Container_NOx_Diff = [SCE1_NonIce_NOx_matrix_t0(51,:) - Base_NonIce_NOx_t0(51,:); SCE1_NonIce_NOx_matrix_tm(51,:) - Base_NonIce_NOx_tm(51,:); SCE1_NonIce_NOx_matrix_tf(51,:) - Base_NonIce_NOx_tf(51,:)];
SCE1_NonIce_Wet_Bulker_NOx_Diff = [SCE1_NonIce_NOx_matrix_t0(93,:) - Base_NonIce_NOx_t0(93,:); SCE1_NonIce_NOx_matrix_tm(93,:) - Base_NonIce_NOx_tm(93,:); SCE1_NonIce_NOx_matrix_tf(93,:) - Base_NonIce_NOx_tf(93,:)];

SCE1_NonIce_Bulker_PM_Diff = [SCE1_NonIce_PM_matrix_t0(17,:) - Base_NonIce_PM_t0(17,:); SCE1_NonIce_PM_matrix_tm(17,:) - Base_NonIce_PM_tm(17,:); SCE1_NonIce_PM_matrix_tf(17,:) - Base_NonIce_PM_tf(17,:)];
SCE1_NonIce_Container_PM_Diff = [SCE1_NonIce_PM_matrix_t0(51,:) - Base_NonIce_PM_t0(51,:); SCE1_NonIce_PM_matrix_tm(51,:) - Base_NonIce_PM_tm(51,:); SCE1_NonIce_PM_matrix_tf(51,:) - Base_NonIce_PM_tf(51,:)];
SCE1_NonIce_Wet_Bulker_PM_Diff = [SCE1_NonIce_PM_matrix_t0(93,:) - Base_NonIce_PM_t0(93,:); SCE1_NonIce_PM_matrix_tm(93,:) - Base_NonIce_PM_tm(93,:); SCE1_NonIce_PM_matrix_tf(93,:) - Base_NonIce_PM_tf(93,:)];

%SCE2
SCE2_Ice_Bulker_CO2eq_Diff = [SCE2_Global_Ice_CO2eq_matrix_t0(17,:) - Base_NonIce_CO2eq_t0(17,:); SCE2_Global_Ice_CO2eq_matrix_tm(17,:) - Base_NonIce_CO2eq_tm(17,:); SCE2_Global_Ice_CO2eq_matrix_tf(17,:) - Base_NonIce_CO2eq_tf(17,:)];
SCE2_Ice_Container_CO2eq_Diff = [SCE2_Global_Ice_CO2eq_matrix_t0(51,:) - Base_NonIce_CO2eq_t0(51,:); SCE2_Global_Ice_CO2eq_matrix_tm(51,:) - Base_NonIce_CO2eq_tm(51,:); SCE2_Global_Ice_CO2eq_matrix_tf(51,:) - Base_NonIce_CO2eq_tf(51,:)];
SCE2_Ice_Wet_Bulker_CO2eq_Diff = [SCE2_Global_Ice_CO2eq_matrix_t0(93,:) - Base_NonIce_CO2eq_t0(93,:); SCE2_Global_Ice_CO2eq_matrix_tm(93,:) - Base_NonIce_CO2eq_tm(93,:); SCE2_Global_Ice_CO2eq_matrix_tf(93,:) - Base_NonIce_CO2eq_tf(93,:)];

SCE2_Ice_Bulker_SOx_Diff = [SCE2_Ice_SOx_matrix_t0(17,:) - Base_NonIce_SOx_t0(17,:); SCE2_Ice_SOx_matrix_tm(17,:) - Base_NonIce_SOx_tm(17,:); SCE2_Ice_SOx_matrix_tf(17,:) - Base_NonIce_SOx_tf(17,:)];
SCE2_Ice_Container_SOx_Diff = [SCE2_Ice_SOx_matrix_t0(51,:) - Base_NonIce_SOx_t0(51,:); SCE2_Ice_SOx_matrix_tm(51,:) - Base_NonIce_SOx_tm(51,:); SCE2_Ice_SOx_matrix_tf(51,:) - Base_NonIce_SOx_tf(51,:)];
SCE2_Ice_Wet_Bulker_SOx_Diff = [SCE2_Ice_SOx_matrix_t0(93,:) - Base_NonIce_SOx_t0(93,:); SCE2_Ice_SOx_matrix_tm(93,:) - Base_NonIce_SOx_tm(93,:); SCE2_Ice_SOx_matrix_tf(93,:) - Base_NonIce_SOx_tf(93,:)];

SCE2_Ice_Bulker_NOx_Diff = [SCE2_Ice_NOx_matrix_t0(17,:) - Base_NonIce_NOx_t0(17,:); SCE2_Ice_NOx_matrix_tm(17,:) - Base_NonIce_NOx_tm(17,:); SCE2_Ice_NOx_matrix_tf(17,:) - Base_NonIce_NOx_tf(17,:)];
SCE2_Ice_Container_NOx_Diff = [SCE2_Ice_NOx_matrix_t0(51,:) - Base_NonIce_NOx_t0(51,:); SCE2_Ice_NOx_matrix_tm(51,:) - Base_NonIce_NOx_tm(51,:); SCE2_Ice_NOx_matrix_tf(51,:) - Base_NonIce_NOx_tf(51,:)];
SCE2_Ice_Wet_Bulker_NOx_Diff = [SCE2_Ice_NOx_matrix_t0(93,:) - Base_NonIce_NOx_t0(93,:); SCE2_Ice_NOx_matrix_tm(93,:) - Base_NonIce_NOx_tm(93,:); SCE2_Ice_NOx_matrix_tf(93,:) - Base_NonIce_NOx_tf(93,:)];

SCE2_Ice_Bulker_PM_Diff = [SCE2_Ice_PM_matrix_t0(17,:) - Base_NonIce_PM_t0(17,:); SCE2_Ice_PM_matrix_tm(17,:) - Base_NonIce_PM_tm(17,:); SCE2_Ice_PM_matrix_tf(17,:) - Base_NonIce_PM_tf(17,:)];
SCE2_Ice_Container_PM_Diff = [SCE2_Ice_PM_matrix_t0(51,:) - Base_NonIce_PM_t0(51,:); SCE2_Ice_PM_matrix_tm(51,:) - Base_NonIce_PM_tm(51,:); SCE2_Ice_PM_matrix_tf(51,:) - Base_NonIce_PM_tf(51,:)];
SCE2_Ice_Wet_Bulker_PM_Diff = [SCE2_Ice_PM_matrix_t0(93,:) - Base_NonIce_PM_t0(93,:); SCE2_Ice_PM_matrix_tm(93,:) - Base_NonIce_PM_tm(93,:); SCE2_Ice_PM_matrix_tf(93,:) - Base_NonIce_PM_tf(93,:)];

SCE2_NonIce_Bulker_CO2eq_Diff = [SCE2_Global_NonIce_CO2eq_matrix_t0(17,:) - Base_NonIce_CO2eq_t0(17,:); SCE2_Global_NonIce_CO2eq_matrix_tm(17,:) - Base_NonIce_CO2eq_tm(17,:); SCE2_Global_NonIce_CO2eq_matrix_tf(17,:) - Base_NonIce_CO2eq_tf(17,:)];
SCE2_NonIce_Container_CO2eq_Diff = [SCE2_Global_NonIce_CO2eq_matrix_t0(51,:) - Base_NonIce_CO2eq_t0(51,:); SCE2_Global_NonIce_CO2eq_matrix_tm(51,:) - Base_NonIce_CO2eq_tm(51,:); SCE2_Global_NonIce_CO2eq_matrix_tf(51,:) - Base_NonIce_CO2eq_tf(51,:)];
SCE2_NonIce_Wet_Bulker_CO2eq_Diff = [SCE2_Global_NonIce_CO2eq_matrix_t0(93,:) - Base_NonIce_CO2eq_t0(93,:); SCE2_Global_NonIce_CO2eq_matrix_tm(93,:) - Base_NonIce_CO2eq_tm(93,:); SCE2_Global_NonIce_CO2eq_matrix_tf(93,:) - Base_NonIce_CO2eq_tf(93,:)];

SCE2_NonIce_Bulker_SOx_Diff = [SCE2_NonIce_SOx_matrix_t0(17,:) - Base_NonIce_SOx_t0(17,:); SCE2_NonIce_SOx_matrix_tm(17,:) - Base_NonIce_SOx_tm(17,:); SCE2_NonIce_SOx_matrix_tf(17,:) - Base_NonIce_SOx_tf(17,:)];
SCE2_NonIce_Container_SOx_Diff = [SCE2_NonIce_SOx_matrix_t0(51,:) - Base_NonIce_SOx_t0(51,:); SCE2_NonIce_SOx_matrix_tm(51,:) - Base_NonIce_SOx_tm(51,:); SCE2_NonIce_SOx_matrix_tf(51,:) - Base_NonIce_SOx_tf(51,:)];
SCE2_NonIce_Wet_Bulker_SOx_Diff = [SCE2_NonIce_SOx_matrix_t0(93,:) - Base_NonIce_SOx_t0(93,:); SCE2_NonIce_SOx_matrix_tm(93,:) - Base_NonIce_SOx_tm(93,:); SCE2_NonIce_SOx_matrix_tf(93,:) - Base_NonIce_SOx_tf(93,:)];

SCE2_NonIce_Bulker_NOx_Diff = [SCE2_NonIce_NOx_matrix_t0(17,:) - Base_NonIce_NOx_t0(17,:); SCE2_NonIce_NOx_matrix_tm(17,:) - Base_NonIce_NOx_tm(17,:); SCE2_NonIce_NOx_matrix_tf(17,:) - Base_NonIce_NOx_tf(17,:)];
SCE2_NonIce_Container_NOx_Diff = [SCE2_NonIce_NOx_matrix_t0(51,:) - Base_NonIce_NOx_t0(51,:); SCE2_NonIce_NOx_matrix_tm(51,:) - Base_NonIce_NOx_tm(51,:); SCE2_NonIce_NOx_matrix_tf(51,:) - Base_NonIce_NOx_tf(51,:)];
SCE2_NonIce_Wet_Bulker_NOx_Diff = [SCE2_NonIce_NOx_matrix_t0(93,:) - Base_NonIce_NOx_t0(93,:); SCE2_NonIce_NOx_matrix_tm(93,:) - Base_NonIce_NOx_tm(93,:); SCE2_NonIce_NOx_matrix_tf(93,:) - Base_NonIce_NOx_tf(93,:)];

SCE2_NonIce_Bulker_PM_Diff = [SCE2_NonIce_PM_matrix_t0(17,:) - Base_NonIce_PM_t0(17,:); SCE2_NonIce_PM_matrix_tm(17,:) - Base_NonIce_PM_tm(17,:); SCE2_NonIce_PM_matrix_tf(17,:) - Base_NonIce_PM_tf(17,:)];
SCE2_NonIce_Container_PM_Diff = [SCE2_NonIce_PM_matrix_t0(51,:) - Base_NonIce_PM_t0(51,:); SCE2_NonIce_PM_matrix_tm(51,:) - Base_NonIce_PM_tm(51,:); SCE2_NonIce_PM_matrix_tf(51,:) - Base_NonIce_PM_tf(51,:)];
SCE2_NonIce_Wet_Bulker_PM_Diff = [SCE2_NonIce_PM_matrix_t0(93,:) - Base_NonIce_PM_t0(93,:); SCE2_NonIce_PM_matrix_tm(93,:) - Base_NonIce_PM_tm(93,:); SCE2_NonIce_PM_matrix_tf(93,:) - Base_NonIce_PM_tf(93,:)];

%LSHFO emissions
SCE1_LSHFO_Ice_Bulker_CO2eq_Diff = [SCE1_Global_Ice_CO2eq_matrix_t0(17,:) - Base_LSHFO_NonIce_CO2eq_t0(17,:); SCE1_Global_Ice_CO2eq_matrix_tm(17,:) - Base_LSHFO_NonIce_CO2eq_tm(17,:); SCE1_Global_Ice_CO2eq_matrix_tf(17,:) - Base_LSHFO_NonIce_CO2eq_tf(17,:)];
SCE1_LSHFO_Ice_Container_CO2eq_Diff = [SCE1_Global_Ice_CO2eq_matrix_t0(51,:) - Base_LSHFO_NonIce_CO2eq_t0(51,:); SCE1_Global_Ice_CO2eq_matrix_tm(51,:) - Base_LSHFO_NonIce_CO2eq_tm(51,:); SCE1_Global_Ice_CO2eq_matrix_tf(51,:) - Base_LSHFO_NonIce_CO2eq_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_CO2eq_Diff = [SCE1_Global_Ice_CO2eq_matrix_t0(93,:) - Base_LSHFO_NonIce_CO2eq_t0(93,:); SCE1_Global_Ice_CO2eq_matrix_tm(93,:) - Base_LSHFO_NonIce_CO2eq_tm(93,:); SCE1_Global_Ice_CO2eq_matrix_tf(93,:) - Base_LSHFO_NonIce_CO2eq_tf(93,:)];

SCE1_LSHFO_Ice_Bulker_SOx_Diff = [SCE1_Ice_SOx_matrix_t0(17,:) - Base_LSHFO_NonIce_SOx_t0(17,:); SCE1_Ice_SOx_matrix_tm(17,:) - Base_LSHFO_NonIce_SOx_tm(17,:); SCE1_Ice_SOx_matrix_tf(17,:) - Base_LSHFO_NonIce_SOx_tf(17,:)];
SCE1_LSHFO_Ice_Container_SOx_Diff = [SCE1_Ice_SOx_matrix_t0(51,:) - Base_LSHFO_NonIce_SOx_t0(51,:); SCE1_Ice_SOx_matrix_tm(51,:) - Base_LSHFO_NonIce_SOx_tm(51,:); SCE1_Ice_SOx_matrix_tf(51,:) - Base_LSHFO_NonIce_SOx_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_SOx_Diff = [SCE1_Ice_SOx_matrix_t0(93,:) - Base_LSHFO_NonIce_SOx_t0(93,:); SCE1_Ice_SOx_matrix_tm(93,:) - Base_LSHFO_NonIce_SOx_tm(93,:); SCE1_Ice_SOx_matrix_tf(93,:) - Base_LSHFO_NonIce_SOx_tf(93,:)];

SCE1_LSHFO_Ice_Bulker_NOx_Diff = [SCE1_Ice_NOx_matrix_t0(17,:) - Base_LSHFO_NonIce_NOx_t0(17,:); SCE1_Ice_NOx_matrix_tm(17,:) - Base_LSHFO_NonIce_NOx_tm(17,:); SCE1_Ice_NOx_matrix_tf(17,:) - Base_LSHFO_NonIce_NOx_tf(17,:)];
SCE1_LSHFO_Ice_Container_NOx_Diff = [SCE1_Ice_NOx_matrix_t0(51,:) - Base_LSHFO_NonIce_NOx_t0(51,:); SCE1_Ice_NOx_matrix_tm(51,:) - Base_LSHFO_NonIce_NOx_tm(51,:); SCE1_Ice_NOx_matrix_tf(51,:) - Base_LSHFO_NonIce_NOx_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_NOx_Diff = [SCE1_Ice_NOx_matrix_t0(93,:) - Base_LSHFO_NonIce_NOx_t0(93,:); SCE1_Ice_NOx_matrix_tm(93,:) - Base_LSHFO_NonIce_NOx_tm(93,:); SCE1_Ice_NOx_matrix_tf(93,:) - Base_LSHFO_NonIce_NOx_tf(93,:)];

SCE1_LSHFO_Ice_Bulker_PM_Diff = [SCE1_Ice_PM_matrix_t0(17,:) - Base_LSHFO_NonIce_PM_t0(17,:); SCE1_Ice_PM_matrix_tm(17,:) - Base_LSHFO_NonIce_PM_tm(17,:); SCE1_Ice_PM_matrix_tf(17,:) - Base_LSHFO_NonIce_PM_tf(17,:)];
SCE1_LSHFO_Ice_Container_PM_Diff = [SCE1_Ice_PM_matrix_t0(51,:) - Base_LSHFO_NonIce_PM_t0(51,:); SCE1_Ice_PM_matrix_tm(51,:) - Base_LSHFO_NonIce_PM_tm(51,:); SCE1_Ice_PM_matrix_tf(51,:) - Base_LSHFO_NonIce_PM_tf(51,:)];
SCE1_LSHFO_Ice_Wet_Bulker_PM_Diff = [SCE1_Ice_PM_matrix_t0(93,:) - Base_LSHFO_NonIce_PM_t0(93,:); SCE1_Ice_PM_matrix_tm(93,:) - Base_LSHFO_NonIce_PM_tm(93,:); SCE1_Ice_PM_matrix_tf(93,:) - Base_LSHFO_NonIce_PM_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_CO2eq_Diff = [SCE1_Global_NonIce_CO2eq_matrix_t0(17,:) - Base_LSHFO_NonIce_CO2eq_t0(17,:); SCE1_Global_NonIce_CO2eq_matrix_tm(17,:) - Base_LSHFO_NonIce_CO2eq_tm(17,:); SCE1_Global_NonIce_CO2eq_matrix_tf(17,:) - Base_LSHFO_NonIce_CO2eq_tf(17,:)];
SCE1_LSHFO_NonIce_Container_CO2eq_Diff = [SCE1_Global_NonIce_CO2eq_matrix_t0(51,:) - Base_LSHFO_NonIce_CO2eq_t0(51,:); SCE1_Global_NonIce_CO2eq_matrix_tm(51,:) - Base_LSHFO_NonIce_CO2eq_tm(51,:); SCE1_Global_NonIce_CO2eq_matrix_tf(51,:) - Base_LSHFO_NonIce_CO2eq_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_CO2eq_Diff = [SCE1_Global_NonIce_CO2eq_matrix_t0(93,:) - Base_LSHFO_NonIce_CO2eq_t0(93,:); SCE1_Global_NonIce_CO2eq_matrix_tm(93,:) - Base_LSHFO_NonIce_CO2eq_tm(93,:); SCE1_Global_NonIce_CO2eq_matrix_tf(93,:) - Base_LSHFO_NonIce_CO2eq_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_SOx_Diff = [SCE1_NonIce_SOx_matrix_t0(17,:) - Base_LSHFO_NonIce_SOx_t0(17,:); SCE1_NonIce_SOx_matrix_tm(17,:) - Base_LSHFO_NonIce_SOx_tm(17,:); SCE1_NonIce_SOx_matrix_tf(17,:) - Base_LSHFO_NonIce_SOx_tf(17,:)];
SCE1_LSHFO_NonIce_Container_SOx_Diff = [SCE1_NonIce_SOx_matrix_t0(51,:) - Base_LSHFO_NonIce_SOx_t0(51,:); SCE1_NonIce_SOx_matrix_tm(51,:) - Base_LSHFO_NonIce_SOx_tm(51,:); SCE1_NonIce_SOx_matrix_tf(51,:) - Base_LSHFO_NonIce_SOx_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_SOx_Diff = [SCE1_NonIce_SOx_matrix_t0(93,:) - Base_LSHFO_NonIce_SOx_t0(93,:); SCE1_NonIce_SOx_matrix_tm(93,:) - Base_LSHFO_NonIce_SOx_tm(93,:); SCE1_NonIce_SOx_matrix_tf(93,:) - Base_LSHFO_NonIce_SOx_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_NOx_Diff = [SCE1_NonIce_NOx_matrix_t0(17,:) - Base_LSHFO_NonIce_NOx_t0(17,:); SCE1_NonIce_NOx_matrix_tm(17,:) - Base_LSHFO_NonIce_NOx_tm(17,:); SCE1_NonIce_NOx_matrix_tf(17,:) - Base_LSHFO_NonIce_NOx_tf(17,:)];
SCE1_LSHFO_NonIce_Container_NOx_Diff = [SCE1_NonIce_NOx_matrix_t0(51,:) - Base_LSHFO_NonIce_NOx_t0(51,:); SCE1_NonIce_NOx_matrix_tm(51,:) - Base_LSHFO_NonIce_NOx_tm(51,:); SCE1_NonIce_NOx_matrix_tf(51,:) - Base_LSHFO_NonIce_NOx_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_NOx_Diff = [SCE1_NonIce_NOx_matrix_t0(93,:) - Base_LSHFO_NonIce_NOx_t0(93,:); SCE1_NonIce_NOx_matrix_tm(93,:) - Base_LSHFO_NonIce_NOx_tm(93,:); SCE1_NonIce_NOx_matrix_tf(93,:) - Base_LSHFO_NonIce_NOx_tf(93,:)];

SCE1_LSHFO_NonIce_Bulker_PM_Diff = [SCE1_NonIce_PM_matrix_t0(17,:) - Base_LSHFO_NonIce_PM_t0(17,:); SCE1_NonIce_PM_matrix_tm(17,:) - Base_LSHFO_NonIce_PM_tm(17,:); SCE1_NonIce_PM_matrix_tf(17,:) - Base_LSHFO_NonIce_PM_tf(17,:)];
SCE1_LSHFO_NonIce_Container_PM_Diff = [SCE1_NonIce_PM_matrix_t0(51,:) - Base_LSHFO_NonIce_PM_t0(51,:); SCE1_NonIce_PM_matrix_tm(51,:) - Base_LSHFO_NonIce_PM_tm(51,:); SCE1_NonIce_PM_matrix_tf(51,:) - Base_LSHFO_NonIce_PM_tf(51,:)];
SCE1_LSHFO_NonIce_Wet_Bulker_PM_Diff = [SCE1_NonIce_PM_matrix_t0(93,:) - Base_LSHFO_NonIce_PM_t0(93,:); SCE1_NonIce_PM_matrix_tm(93,:) - Base_LSHFO_NonIce_PM_tm(93,:); SCE1_NonIce_PM_matrix_tf(93,:) - Base_LSHFO_NonIce_PM_tf(93,:)];

%SCE2
SCE2_LSHFO_Ice_Bulker_CO2eq_Diff = [SCE2_Global_Ice_CO2eq_matrix_t0(17,:) - Base_LSHFO_NonIce_CO2eq_t0(17,:); SCE2_Global_Ice_CO2eq_matrix_tm(17,:) - Base_LSHFO_NonIce_CO2eq_tm(17,:); SCE2_Global_Ice_CO2eq_matrix_tf(17,:) - Base_LSHFO_NonIce_CO2eq_tf(17,:)];
SCE2_LSHFO_Ice_Container_CO2eq_Diff = [SCE2_Global_Ice_CO2eq_matrix_t0(51,:) - Base_LSHFO_NonIce_CO2eq_t0(51,:); SCE2_Global_Ice_CO2eq_matrix_tm(51,:) - Base_LSHFO_NonIce_CO2eq_tm(51,:); SCE2_Global_Ice_CO2eq_matrix_tf(51,:) - Base_LSHFO_NonIce_CO2eq_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_CO2eq_Diff = [SCE2_Global_Ice_CO2eq_matrix_t0(93,:) - Base_LSHFO_NonIce_CO2eq_t0(93,:); SCE2_Global_Ice_CO2eq_matrix_tm(93,:) - Base_LSHFO_NonIce_CO2eq_tm(93,:); SCE2_Global_Ice_CO2eq_matrix_tf(93,:) - Base_LSHFO_NonIce_CO2eq_tf(93,:)];

SCE2_LSHFO_Ice_Bulker_SOx_Diff = [SCE2_Ice_SOx_matrix_t0(17,:) - Base_LSHFO_NonIce_SOx_t0(17,:); SCE2_Ice_SOx_matrix_tm(17,:) - Base_LSHFO_NonIce_SOx_tm(17,:); SCE2_Ice_SOx_matrix_tf(17,:) - Base_LSHFO_NonIce_SOx_tf(17,:)];
SCE2_LSHFO_Ice_Container_SOx_Diff = [SCE2_Ice_SOx_matrix_t0(51,:) - Base_LSHFO_NonIce_SOx_t0(51,:); SCE2_Ice_SOx_matrix_tm(51,:) - Base_LSHFO_NonIce_SOx_tm(51,:); SCE2_Ice_SOx_matrix_tf(51,:) - Base_LSHFO_NonIce_SOx_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_SOx_Diff = [SCE2_Ice_SOx_matrix_t0(93,:) - Base_LSHFO_NonIce_SOx_t0(93,:); SCE2_Ice_SOx_matrix_tm(93,:) - Base_LSHFO_NonIce_SOx_tm(93,:); SCE2_Ice_SOx_matrix_tf(93,:) - Base_LSHFO_NonIce_SOx_tf(93,:)];

SCE2_LSHFO_Ice_Bulker_NOx_Diff = [SCE2_Ice_NOx_matrix_t0(17,:) - Base_LSHFO_NonIce_NOx_t0(17,:); SCE2_Ice_NOx_matrix_tm(17,:) - Base_LSHFO_NonIce_NOx_tm(17,:); SCE2_Ice_NOx_matrix_tf(17,:) - Base_LSHFO_NonIce_NOx_tf(17,:)];
SCE2_LSHFO_Ice_Container_NOx_Diff = [SCE2_Ice_NOx_matrix_t0(51,:) - Base_LSHFO_NonIce_NOx_t0(51,:); SCE2_Ice_NOx_matrix_tm(51,:) - Base_LSHFO_NonIce_NOx_tm(51,:); SCE2_Ice_NOx_matrix_tf(51,:) - Base_LSHFO_NonIce_NOx_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_NOx_Diff = [SCE2_Ice_NOx_matrix_t0(93,:) - Base_LSHFO_NonIce_NOx_t0(93,:); SCE2_Ice_NOx_matrix_tm(93,:) - Base_LSHFO_NonIce_NOx_tm(93,:); SCE2_Ice_NOx_matrix_tf(93,:) - Base_LSHFO_NonIce_NOx_tf(93,:)];

SCE2_LSHFO_Ice_Bulker_PM_Diff = [SCE2_Ice_PM_matrix_t0(17,:) - Base_LSHFO_NonIce_PM_t0(17,:); SCE2_Ice_PM_matrix_tm(17,:) - Base_LSHFO_NonIce_PM_tm(17,:); SCE2_Ice_PM_matrix_tf(17,:) - Base_LSHFO_NonIce_PM_tf(17,:)];
SCE2_LSHFO_Ice_Container_PM_Diff = [SCE2_Ice_PM_matrix_t0(51,:) - Base_LSHFO_NonIce_PM_t0(51,:); SCE2_Ice_PM_matrix_tm(51,:) - Base_LSHFO_NonIce_PM_tm(51,:); SCE2_Ice_PM_matrix_tf(51,:) - Base_LSHFO_NonIce_PM_tf(51,:)];
SCE2_LSHFO_Ice_Wet_Bulker_PM_Diff = [SCE2_Ice_PM_matrix_t0(93,:) - Base_LSHFO_NonIce_PM_t0(93,:); SCE2_Ice_PM_matrix_tm(93,:) - Base_LSHFO_NonIce_PM_tm(93,:); SCE2_Ice_PM_matrix_tf(93,:) - Base_LSHFO_NonIce_PM_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_CO2eq_Diff = [SCE2_Global_NonIce_CO2eq_matrix_t0(17,:) - Base_LSHFO_NonIce_CO2eq_t0(17,:); SCE2_Global_NonIce_CO2eq_matrix_tm(17,:) - Base_LSHFO_NonIce_CO2eq_tm(17,:); SCE2_Global_NonIce_CO2eq_matrix_tf(17,:) - Base_LSHFO_NonIce_CO2eq_tf(17,:)];
SCE2_LSHFO_NonIce_Container_CO2eq_Diff = [SCE2_Global_NonIce_CO2eq_matrix_t0(51,:) - Base_LSHFO_NonIce_CO2eq_t0(51,:); SCE2_Global_NonIce_CO2eq_matrix_tm(51,:) - Base_LSHFO_NonIce_CO2eq_tm(51,:); SCE2_Global_NonIce_CO2eq_matrix_tf(51,:) - Base_LSHFO_NonIce_CO2eq_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_CO2eq_Diff = [SCE2_Global_NonIce_CO2eq_matrix_t0(93,:) - Base_LSHFO_NonIce_CO2eq_t0(93,:); SCE2_Global_NonIce_CO2eq_matrix_tm(93,:) - Base_LSHFO_NonIce_CO2eq_tm(93,:); SCE2_Global_NonIce_CO2eq_matrix_tf(93,:) - Base_LSHFO_NonIce_CO2eq_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_SOx_Diff = [SCE2_NonIce_SOx_matrix_t0(17,:) - Base_LSHFO_NonIce_SOx_t0(17,:); SCE2_NonIce_SOx_matrix_tm(17,:) - Base_LSHFO_NonIce_SOx_tm(17,:); SCE2_NonIce_SOx_matrix_tf(17,:) - Base_LSHFO_NonIce_SOx_tf(17,:)];
SCE2_LSHFO_NonIce_Container_SOx_Diff = [SCE2_NonIce_SOx_matrix_t0(51,:) - Base_LSHFO_NonIce_SOx_t0(51,:); SCE2_NonIce_SOx_matrix_tm(51,:) - Base_LSHFO_NonIce_SOx_tm(51,:); SCE2_NonIce_SOx_matrix_tf(51,:) - Base_LSHFO_NonIce_SOx_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_SOx_Diff = [SCE2_NonIce_SOx_matrix_t0(93,:) - Base_LSHFO_NonIce_SOx_t0(93,:); SCE2_NonIce_SOx_matrix_tm(93,:) - Base_LSHFO_NonIce_SOx_tm(93,:); SCE2_NonIce_SOx_matrix_tf(93,:) - Base_LSHFO_NonIce_SOx_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_NOx_Diff = [SCE2_NonIce_NOx_matrix_t0(17,:) - Base_LSHFO_NonIce_NOx_t0(17,:); SCE2_NonIce_NOx_matrix_tm(17,:) - Base_LSHFO_NonIce_NOx_tm(17,:); SCE2_NonIce_NOx_matrix_tf(17,:) - Base_LSHFO_NonIce_NOx_tf(17,:)];
SCE2_LSHFO_NonIce_Container_NOx_Diff = [SCE2_NonIce_NOx_matrix_t0(51,:) - Base_LSHFO_NonIce_NOx_t0(51,:); SCE2_NonIce_NOx_matrix_tm(51,:) - Base_LSHFO_NonIce_NOx_tm(51,:); SCE2_NonIce_NOx_matrix_tf(51,:) - Base_LSHFO_NonIce_NOx_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_NOx_Diff = [SCE2_NonIce_NOx_matrix_t0(93,:) - Base_LSHFO_NonIce_NOx_t0(93,:); SCE2_NonIce_NOx_matrix_tm(93,:) - Base_LSHFO_NonIce_NOx_tm(93,:); SCE2_NonIce_NOx_matrix_tf(93,:) - Base_LSHFO_NonIce_NOx_tf(93,:)];

SCE2_LSHFO_NonIce_Bulker_PM_Diff = [SCE2_NonIce_PM_matrix_t0(17,:) - Base_LSHFO_NonIce_PM_t0(17,:); SCE2_NonIce_PM_matrix_tm(17,:) - Base_LSHFO_NonIce_PM_tm(17,:); SCE2_NonIce_PM_matrix_tf(17,:) - Base_LSHFO_NonIce_PM_tf(17,:)];
SCE2_LSHFO_NonIce_Container_PM_Diff = [SCE2_NonIce_PM_matrix_t0(51,:) - Base_LSHFO_NonIce_PM_t0(51,:); SCE2_NonIce_PM_matrix_tm(51,:) - Base_LSHFO_NonIce_PM_tm(51,:); SCE2_NonIce_PM_matrix_tf(51,:) - Base_LSHFO_NonIce_PM_tf(51,:)];
SCE2_LSHFO_NonIce_Wet_Bulker_PM_Diff = [SCE2_NonIce_PM_matrix_t0(93,:) - Base_LSHFO_NonIce_PM_t0(93,:); SCE2_NonIce_PM_matrix_tm(93,:) - Base_LSHFO_NonIce_PM_tm(93,:); SCE2_NonIce_PM_matrix_tf(93,:) - Base_LSHFO_NonIce_PM_tf(93,:)];

%NSR extraction
SCE1_Ice_Bulker_VC_Diff_NSR = SCE1_Ice_Bulker_VC_Diff(:,1:3:end);
SCE1_Ice_Container_VC_Diff_NSR = SCE1_Ice_Container_VC_Diff(:,1:3:end);
SCE1_Ice_Wet_Bulker_VC_Diff_NSR = SCE1_Ice_Wet_Bulker_VC_Diff(:,1:3:end);

SCE1_Ice_Bulker_OC_Diff_NSR = SCE1_Ice_Bulker_OC_Diff(:,1:3:end);
SCE1_Ice_Container_OC_Diff_NSR = SCE1_Ice_Container_OC_Diff(:,1:3:end);
SCE1_Ice_Wet_Bulker_OC_Diff_NSR = SCE1_Ice_Wet_Bulker_OC_Diff(:,1:3:end);

SCE1_Ice_Bulker_CC_Diff_NSR = SCE1_Ice_Bulker_CC_Diff(:,1:3:end);
SCE1_Ice_Container_CC_Diff_NSR = SCE1_Ice_Container_CC_Diff(:,1:3:end);
SCE1_Ice_Wet_Bulker_CC_Diff_NSR = SCE1_Ice_Wet_Bulker_CC_Diff(:,1:3:end);

SCE1_Ice_Bulker_CT_Diff_NSR = SCE1_Ice_Bulker_CT_Diff(:,1:3:end);
SCE1_Ice_Container_CT_Diff_NSR = SCE1_Ice_Container_CT_Diff(:,1:3:end);
SCE1_Ice_Wet_Bulker_CT_Diff_NSR = SCE1_Ice_Wet_Bulker_CT_Diff(:,1:3:end);

SCE1_Ice_Bulker_APC_Diff_NSR = SCE1_Ice_Bulker_APC_Diff(:,1:3:end);
SCE1_Ice_Container_APC_Diff_NSR = SCE1_Ice_Container_APC_Diff(:,1:3:end);
SCE1_Ice_Wet_Bulker_APC_Diff_NSR = SCE1_Ice_Wet_Bulker_APC_Diff(:,1:3:end);

SCE1_Ice_Bulker_ClC_Diff_NSR = SCE1_Ice_Bulker_ClC_Diff(:,1:3:end);
SCE1_Ice_Container_ClC_Diff_NSR = SCE1_Ice_Container_ClC_Diff(:,1:3:end);
SCE1_Ice_Wet_Bulker_ClC_Diff_NSR = SCE1_Ice_Wet_Bulker_ClC_Diff(:,1:3:end);

SCE1_NonIce_Bulker_VC_Diff_NSR = SCE1_NonIce_Bulker_VC_Diff(:,1:3:end);
SCE1_NonIce_Container_VC_Diff_NSR = SCE1_NonIce_Container_VC_Diff(:,1:3:end);
SCE1_NonIce_Wet_Bulker_VC_Diff_NSR = SCE1_NonIce_Wet_Bulker_VC_Diff(:,1:3:end);

SCE1_NonIce_Bulker_OC_Diff_NSR = SCE1_NonIce_Bulker_OC_Diff(:,1:3:end);
SCE1_NonIce_Container_OC_Diff_NSR = SCE1_NonIce_Container_OC_Diff(:,1:3:end);
SCE1_NonIce_Wet_Bulker_OC_Diff_NSR = SCE1_NonIce_Wet_Bulker_OC_Diff(:,1:3:end);

SCE1_NonIce_Bulker_CC_Diff_NSR = SCE1_NonIce_Bulker_CC_Diff(:,1:3:end);
SCE1_NonIce_Container_CC_Diff_NSR = SCE1_NonIce_Container_CC_Diff(:,1:3:end);
SCE1_NonIce_Wet_Bulker_CC_Diff_NSR = SCE1_NonIce_Wet_Bulker_CC_Diff(:,1:3:end);

SCE1_NonIce_Bulker_CT_Diff_NSR = SCE1_NonIce_Bulker_CT_Diff(:,1:3:end);
SCE1_NonIce_Container_CT_Diff_NSR = SCE1_NonIce_Container_CT_Diff(:,1:3:end);
SCE1_NonIce_Wet_Bulker_CT_Diff_NSR = SCE1_NonIce_Wet_Bulker_CT_Diff(:,1:3:end);

SCE1_NonIce_Bulker_APC_Diff_NSR = SCE1_NonIce_Bulker_APC_Diff(:,1:3:end);
SCE1_NonIce_Container_APC_Diff_NSR = SCE1_NonIce_Container_APC_Diff(:,1:3:end);
SCE1_NonIce_Wet_Bulker_APC_Diff_NSR = SCE1_NonIce_Wet_Bulker_APC_Diff(:,1:3:end);

SCE1_NonIce_Bulker_ClC_Diff_NSR = SCE1_NonIce_Bulker_ClC_Diff(:,1:3:end);
SCE1_NonIce_Container_ClC_Diff_NSR = SCE1_NonIce_Container_ClC_Diff(:,1:3:end);
SCE1_NonIce_Wet_Bulker_ClC_Diff_NSR = SCE1_NonIce_Wet_Bulker_ClC_Diff(:,1:3:end);

%Emissions
SCE1_Ice_Bulker_CO2eq_Diff_NSR = SCE1_Ice_Bulker_CO2eq_Diff(:,1:3:end);
SCE1_Ice_Container_CO2eq_Diff_NSR = SCE1_Ice_Container_CO2eq_Diff(:,1:3:end);
SCE1_Ice_Wet_Bulker_CO2eq_Diff_NSR = SCE1_Ice_Wet_Bulker_CO2eq_Diff(:,1:3:end);

SCE1_Ice_Bulker_SOx_Diff_NSR = SCE1_Ice_Bulker_SOx_Diff(:,1:3:end);
SCE1_Ice_Container_SOx_Diff_NSR = SCE1_Ice_Container_SOx_Diff(:,1:3:end);
SCE1_Ice_Wet_Bulker_SOx_Diff_NSR = SCE1_Ice_Wet_Bulker_SOx_Diff(:,1:3:end);

SCE1_Ice_Bulker_NOx_Diff_NSR = SCE1_Ice_Bulker_NOx_Diff(:,1:3:end);
SCE1_Ice_Container_NOx_Diff_NSR = SCE1_Ice_Container_NOx_Diff(:,1:3:end);
SCE1_Ice_Wet_Bulker_NOx_Diff_NSR = SCE1_Ice_Wet_Bulker_NOx_Diff(:,1:3:end);

SCE1_Ice_Bulker_PM_Diff_NSR = SCE1_Ice_Bulker_PM_Diff(:,1:3:end);
SCE1_Ice_Container_PM_Diff_NSR = SCE1_Ice_Container_PM_Diff(:,1:3:end);
SCE1_Ice_Wet_Bulker_PM_Diff_NSR = SCE1_Ice_Wet_Bulker_PM_Diff(:,1:3:end);

SCE1_NonIce_Bulker_CO2eq_Diff_NSR = SCE1_NonIce_Bulker_CO2eq_Diff(:,1:3:end);
SCE1_NonIce_Container_CO2eq_Diff_NSR = SCE1_NonIce_Container_CO2eq_Diff(:,1:3:end);
SCE1_NonIce_Wet_Bulker_CO2eq_Diff_NSR = SCE1_NonIce_Wet_Bulker_CO2eq_Diff(:,1:3:end);

SCE1_NonIce_Bulker_SOx_Diff_NSR = SCE1_NonIce_Bulker_SOx_Diff(:,1:3:end);
SCE1_NonIce_Container_SOx_Diff_NSR = SCE1_NonIce_Container_SOx_Diff(:,1:3:end);
SCE1_NonIce_Wet_Bulker_SOx_Diff_NSR = SCE1_NonIce_Wet_Bulker_SOx_Diff(:,1:3:end);

SCE1_NonIce_Bulker_NOx_Diff_NSR = SCE1_NonIce_Bulker_NOx_Diff(:,1:3:end);
SCE1_NonIce_Container_NOx_Diff_NSR = SCE1_NonIce_Container_NOx_Diff(:,1:3:end);
SCE1_NonIce_Wet_Bulker_NOx_Diff_NSR = SCE1_NonIce_Wet_Bulker_NOx_Diff(:,1:3:end);

SCE1_NonIce_Bulker_PM_Diff_NSR = SCE1_NonIce_Bulker_PM_Diff(:,1:3:end);
SCE1_NonIce_Container_PM_Diff_NSR = SCE1_NonIce_Container_PM_Diff(:,1:3:end);
SCE1_NonIce_Wet_Bulker_PM_Diff_NSR = SCE1_NonIce_Wet_Bulker_PM_Diff(:,1:3:end);

%SCE2
SCE2_Ice_Bulker_VC_Diff_NSR = SCE2_Ice_Bulker_VC_Diff(:,1:3:end);
SCE2_Ice_Container_VC_Diff_NSR = SCE2_Ice_Container_VC_Diff(:,1:3:end);
SCE2_Ice_Wet_Bulker_VC_Diff_NSR = SCE2_Ice_Wet_Bulker_VC_Diff(:,1:3:end);

SCE2_Ice_Bulker_OC_Diff_NSR = SCE2_Ice_Bulker_OC_Diff(:,1:3:end);
SCE2_Ice_Container_OC_Diff_NSR = SCE2_Ice_Container_OC_Diff(:,1:3:end);
SCE2_Ice_Wet_Bulker_OC_Diff_NSR = SCE2_Ice_Wet_Bulker_OC_Diff(:,1:3:end);

SCE2_Ice_Bulker_CC_Diff_NSR = SCE2_Ice_Bulker_CC_Diff(:,1:3:end);
SCE2_Ice_Container_CC_Diff_NSR = SCE2_Ice_Container_CC_Diff(:,1:3:end);
SCE2_Ice_Wet_Bulker_CC_Diff_NSR = SCE2_Ice_Wet_Bulker_CC_Diff(:,1:3:end);

SCE2_Ice_Bulker_CT_Diff_NSR = SCE2_Ice_Bulker_CT_Diff(:,1:3:end);
SCE2_Ice_Container_CT_Diff_NSR = SCE2_Ice_Container_CT_Diff(:,1:3:end);
SCE2_Ice_Wet_Bulker_CT_Diff_NSR = SCE2_Ice_Wet_Bulker_CT_Diff(:,1:3:end);

SCE2_Ice_Bulker_APC_Diff_NSR = SCE2_Ice_Bulker_APC_Diff(:,1:3:end);
SCE2_Ice_Container_APC_Diff_NSR = SCE2_Ice_Container_APC_Diff(:,1:3:end);
SCE2_Ice_Wet_Bulker_APC_Diff_NSR = SCE2_Ice_Wet_Bulker_APC_Diff(:,1:3:end);

SCE2_Ice_Bulker_ClC_Diff_NSR = SCE2_Ice_Bulker_ClC_Diff(:,1:3:end);
SCE2_Ice_Container_ClC_Diff_NSR = SCE2_Ice_Container_ClC_Diff(:,1:3:end);
SCE2_Ice_Wet_Bulker_ClC_Diff_NSR = SCE2_Ice_Wet_Bulker_ClC_Diff(:,1:3:end);

SCE2_NonIce_Bulker_VC_Diff_NSR = SCE2_NonIce_Bulker_VC_Diff(:,1:3:end);
SCE2_NonIce_Container_VC_Diff_NSR = SCE2_NonIce_Container_VC_Diff(:,1:3:end);
SCE2_NonIce_Wet_Bulker_VC_Diff_NSR = SCE2_NonIce_Wet_Bulker_VC_Diff(:,1:3:end);

SCE2_NonIce_Bulker_OC_Diff_NSR = SCE2_NonIce_Bulker_OC_Diff(:,1:3:end);
SCE2_NonIce_Container_OC_Diff_NSR = SCE2_NonIce_Container_OC_Diff(:,1:3:end);
SCE2_NonIce_Wet_Bulker_OC_Diff_NSR = SCE2_NonIce_Wet_Bulker_OC_Diff(:,1:3:end);

SCE2_NonIce_Bulker_CC_Diff_NSR = SCE2_NonIce_Bulker_CC_Diff(:,1:3:end);
SCE2_NonIce_Container_CC_Diff_NSR = SCE2_NonIce_Container_CC_Diff(:,1:3:end);
SCE2_NonIce_Wet_Bulker_CC_Diff_NSR = SCE2_NonIce_Wet_Bulker_CC_Diff(:,1:3:end);

SCE2_NonIce_Bulker_CT_Diff_NSR = SCE2_NonIce_Bulker_CT_Diff(:,1:3:end);
SCE2_NonIce_Container_CT_Diff_NSR = SCE2_NonIce_Container_CT_Diff(:,1:3:end);
SCE2_NonIce_Wet_Bulker_CT_Diff_NSR = SCE2_NonIce_Wet_Bulker_CT_Diff(:,1:3:end);

SCE2_NonIce_Bulker_APC_Diff_NSR = SCE2_NonIce_Bulker_APC_Diff(:,1:3:end);
SCE2_NonIce_Container_APC_Diff_NSR = SCE2_NonIce_Container_APC_Diff(:,1:3:end);
SCE2_NonIce_Wet_Bulker_APC_Diff_NSR = SCE2_NonIce_Wet_Bulker_APC_Diff(:,1:3:end);

SCE2_NonIce_Bulker_ClC_Diff_NSR = SCE2_NonIce_Bulker_ClC_Diff(:,1:3:end);
SCE2_NonIce_Container_ClC_Diff_NSR = SCE2_NonIce_Container_ClC_Diff(:,1:3:end);
SCE2_NonIce_Wet_Bulker_ClC_Diff_NSR = SCE2_NonIce_Wet_Bulker_ClC_Diff(:,1:3:end);

%Emissions
SCE2_Ice_Bulker_CO2eq_Diff_NSR = SCE2_Ice_Bulker_CO2eq_Diff(:,1:3:end);
SCE2_Ice_Container_CO2eq_Diff_NSR = SCE2_Ice_Container_CO2eq_Diff(:,1:3:end);
SCE2_Ice_Wet_Bulker_CO2eq_Diff_NSR = SCE2_Ice_Wet_Bulker_CO2eq_Diff(:,1:3:end);

SCE2_Ice_Bulker_SOx_Diff_NSR = SCE2_Ice_Bulker_SOx_Diff(:,1:3:end);
SCE2_Ice_Container_SOx_Diff_NSR = SCE2_Ice_Container_SOx_Diff(:,1:3:end);
SCE2_Ice_Wet_Bulker_SOx_Diff_NSR = SCE2_Ice_Wet_Bulker_SOx_Diff(:,1:3:end);

SCE2_Ice_Bulker_NOx_Diff_NSR = SCE2_Ice_Bulker_NOx_Diff(:,1:3:end);
SCE2_Ice_Container_NOx_Diff_NSR = SCE2_Ice_Container_NOx_Diff(:,1:3:end);
SCE2_Ice_Wet_Bulker_NOx_Diff_NSR = SCE2_Ice_Wet_Bulker_NOx_Diff(:,1:3:end);

SCE2_Ice_Bulker_PM_Diff_NSR = SCE2_Ice_Bulker_PM_Diff(:,1:3:end);
SCE2_Ice_Container_PM_Diff_NSR = SCE2_Ice_Container_PM_Diff(:,1:3:end);
SCE2_Ice_Wet_Bulker_PM_Diff_NSR = SCE2_Ice_Wet_Bulker_PM_Diff(:,1:3:end);

SCE2_NonIce_Bulker_CO2eq_Diff_NSR = SCE2_NonIce_Bulker_CO2eq_Diff(:,1:3:end);
SCE2_NonIce_Container_CO2eq_Diff_NSR = SCE2_NonIce_Container_CO2eq_Diff(:,1:3:end);
SCE2_NonIce_Wet_Bulker_CO2eq_Diff_NSR = SCE2_NonIce_Wet_Bulker_CO2eq_Diff(:,1:3:end);

SCE2_NonIce_Bulker_SOx_Diff_NSR = SCE2_NonIce_Bulker_SOx_Diff(:,1:3:end);
SCE2_NonIce_Container_SOx_Diff_NSR = SCE2_NonIce_Container_SOx_Diff(:,1:3:end);
SCE2_NonIce_Wet_Bulker_SOx_Diff_NSR = SCE2_NonIce_Wet_Bulker_SOx_Diff(:,1:3:end);

SCE2_NonIce_Bulker_NOx_Diff_NSR = SCE2_NonIce_Bulker_NOx_Diff(:,1:3:end);
SCE2_NonIce_Container_NOx_Diff_NSR = SCE2_NonIce_Container_NOx_Diff(:,1:3:end);
SCE2_NonIce_Wet_Bulker_NOx_Diff_NSR = SCE2_NonIce_Wet_Bulker_NOx_Diff(:,1:3:end);

SCE2_NonIce_Bulker_PM_Diff_NSR = SCE2_NonIce_Bulker_PM_Diff(:,1:3:end);
SCE2_NonIce_Container_PM_Diff_NSR = SCE2_NonIce_Container_PM_Diff(:,1:3:end);
SCE2_NonIce_Wet_Bulker_PM_Diff_NSR = SCE2_NonIce_Wet_Bulker_PM_Diff(:,1:3:end);

%LSHFO 
SCE1_LSHFO_Ice_Bulker_VC_Diff_NSR = SCE1_LSHFO_Ice_Bulker_VC_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Container_VC_Diff_NSR = SCE1_LSHFO_Ice_Container_VC_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_VC_Diff_NSR = SCE1_LSHFO_Ice_Wet_Bulker_VC_Diff(:,1:3:end);

SCE1_LSHFO_Ice_Bulker_OC_Diff_NSR = SCE1_LSHFO_Ice_Bulker_OC_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Container_OC_Diff_NSR = SCE1_LSHFO_Ice_Container_OC_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_OC_Diff_NSR = SCE1_LSHFO_Ice_Wet_Bulker_OC_Diff(:,1:3:end);

SCE1_LSHFO_Ice_Bulker_CC_Diff_NSR = SCE1_LSHFO_Ice_Bulker_CC_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Container_CC_Diff_NSR = SCE1_LSHFO_Ice_Container_CC_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_CC_Diff_NSR = SCE1_LSHFO_Ice_Wet_Bulker_CC_Diff(:,1:3:end);

SCE1_LSHFO_Ice_Bulker_CT_Diff_NSR = SCE1_LSHFO_Ice_Bulker_CT_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Container_CT_Diff_NSR = SCE1_LSHFO_Ice_Container_CT_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_CT_Diff_NSR = SCE1_LSHFO_Ice_Wet_Bulker_CT_Diff(:,1:3:end);

SCE1_LSHFO_Ice_Bulker_APC_Diff_NSR = SCE1_LSHFO_Ice_Bulker_APC_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Container_APC_Diff_NSR = SCE1_LSHFO_Ice_Container_APC_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_APC_Diff_NSR = SCE1_LSHFO_Ice_Wet_Bulker_APC_Diff(:,1:3:end);

SCE1_LSHFO_Ice_Bulker_ClC_Diff_NSR = SCE1_LSHFO_Ice_Bulker_ClC_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Container_ClC_Diff_NSR = SCE1_LSHFO_Ice_Container_ClC_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_ClC_Diff_NSR = SCE1_LSHFO_Ice_Wet_Bulker_ClC_Diff(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_VC_Diff_NSR = SCE1_LSHFO_NonIce_Bulker_VC_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Container_VC_Diff_NSR = SCE1_LSHFO_NonIce_Container_VC_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_VC_Diff_NSR = SCE1_LSHFO_NonIce_Wet_Bulker_VC_Diff(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_OC_Diff_NSR = SCE1_LSHFO_NonIce_Bulker_OC_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Container_OC_Diff_NSR = SCE1_LSHFO_NonIce_Container_OC_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_OC_Diff_NSR = SCE1_LSHFO_NonIce_Wet_Bulker_OC_Diff(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_CC_Diff_NSR = SCE1_LSHFO_NonIce_Bulker_CC_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Container_CC_Diff_NSR = SCE1_LSHFO_NonIce_Container_CC_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_CC_Diff_NSR = SCE1_LSHFO_NonIce_Wet_Bulker_CC_Diff(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_CT_Diff_NSR = SCE1_LSHFO_NonIce_Bulker_CT_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Container_CT_Diff_NSR = SCE1_LSHFO_NonIce_Container_CT_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_CT_Diff_NSR = SCE1_LSHFO_NonIce_Wet_Bulker_CT_Diff(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_APC_Diff_NSR = SCE1_LSHFO_NonIce_Bulker_APC_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Container_APC_Diff_NSR = SCE1_LSHFO_NonIce_Container_APC_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_APC_Diff_NSR = SCE1_LSHFO_NonIce_Wet_Bulker_APC_Diff(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_ClC_Diff_NSR = SCE1_LSHFO_NonIce_Bulker_ClC_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Container_ClC_Diff_NSR = SCE1_LSHFO_NonIce_Container_ClC_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_ClC_Diff_NSR = SCE1_LSHFO_NonIce_Wet_Bulker_ClC_Diff(:,1:3:end);

%Emissions
SCE1_LSHFO_Ice_Bulker_CO2eq_Diff_NSR = SCE1_LSHFO_Ice_Bulker_CO2eq_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Container_CO2eq_Diff_NSR = SCE1_LSHFO_Ice_Container_CO2eq_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_CO2eq_Diff_NSR = SCE1_LSHFO_Ice_Wet_Bulker_CO2eq_Diff(:,1:3:end);

SCE1_LSHFO_Ice_Bulker_SOx_Diff_NSR = SCE1_LSHFO_Ice_Bulker_SOx_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Container_SOx_Diff_NSR = SCE1_LSHFO_Ice_Container_SOx_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_SOx_Diff_NSR = SCE1_LSHFO_Ice_Wet_Bulker_SOx_Diff(:,1:3:end);

SCE1_LSHFO_Ice_Bulker_NOx_Diff_NSR = SCE1_LSHFO_Ice_Bulker_NOx_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Container_NOx_Diff_NSR = SCE1_LSHFO_Ice_Container_NOx_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_NOx_Diff_NSR = SCE1_LSHFO_Ice_Wet_Bulker_NOx_Diff(:,1:3:end);

SCE1_LSHFO_Ice_Bulker_PM_Diff_NSR = SCE1_LSHFO_Ice_Bulker_PM_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Container_PM_Diff_NSR = SCE1_LSHFO_Ice_Container_PM_Diff(:,1:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_PM_Diff_NSR = SCE1_LSHFO_Ice_Wet_Bulker_PM_Diff(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_CO2eq_Diff_NSR = SCE1_LSHFO_NonIce_Bulker_CO2eq_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Container_CO2eq_Diff_NSR = SCE1_LSHFO_NonIce_Container_CO2eq_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_CO2eq_Diff_NSR = SCE1_LSHFO_NonIce_Wet_Bulker_CO2eq_Diff(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_SOx_Diff_NSR = SCE1_LSHFO_NonIce_Bulker_SOx_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Container_SOx_Diff_NSR = SCE1_LSHFO_NonIce_Container_SOx_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_SOx_Diff_NSR = SCE1_LSHFO_NonIce_Wet_Bulker_SOx_Diff(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_NOx_Diff_NSR = SCE1_LSHFO_NonIce_Bulker_NOx_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Container_NOx_Diff_NSR = SCE1_LSHFO_NonIce_Container_NOx_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_NOx_Diff_NSR = SCE1_LSHFO_NonIce_Wet_Bulker_NOx_Diff(:,1:3:end);

SCE1_LSHFO_NonIce_Bulker_PM_Diff_NSR = SCE1_LSHFO_NonIce_Bulker_PM_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Container_PM_Diff_NSR = SCE1_LSHFO_NonIce_Container_PM_Diff(:,1:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_PM_Diff_NSR = SCE1_LSHFO_NonIce_Wet_Bulker_PM_Diff(:,1:3:end);

%SCE2
SCE2_LSHFO_Ice_Bulker_VC_Diff_NSR = SCE2_LSHFO_Ice_Bulker_VC_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Container_VC_Diff_NSR = SCE2_LSHFO_Ice_Container_VC_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_VC_Diff_NSR = SCE2_LSHFO_Ice_Wet_Bulker_VC_Diff(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_OC_Diff_NSR = SCE2_LSHFO_Ice_Bulker_OC_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Container_OC_Diff_NSR = SCE2_LSHFO_Ice_Container_OC_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_OC_Diff_NSR = SCE2_LSHFO_Ice_Wet_Bulker_OC_Diff(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_CC_Diff_NSR = SCE2_LSHFO_Ice_Bulker_CC_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Container_CC_Diff_NSR = SCE2_LSHFO_Ice_Container_CC_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_CC_Diff_NSR = SCE2_LSHFO_Ice_Wet_Bulker_CC_Diff(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_CT_Diff_NSR = SCE2_LSHFO_Ice_Bulker_CT_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Container_CT_Diff_NSR = SCE2_LSHFO_Ice_Container_CT_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_CT_Diff_NSR = SCE2_LSHFO_Ice_Wet_Bulker_CT_Diff(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_APC_Diff_NSR = SCE2_LSHFO_Ice_Bulker_APC_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Container_APC_Diff_NSR = SCE2_LSHFO_Ice_Container_APC_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_APC_Diff_NSR = SCE2_LSHFO_Ice_Wet_Bulker_APC_Diff(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_ClC_Diff_NSR = SCE2_LSHFO_Ice_Bulker_ClC_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Container_ClC_Diff_NSR = SCE2_LSHFO_Ice_Container_ClC_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_ClC_Diff_NSR = SCE2_LSHFO_Ice_Wet_Bulker_ClC_Diff(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_VC_Diff_NSR = SCE2_LSHFO_NonIce_Bulker_VC_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Container_VC_Diff_NSR = SCE2_LSHFO_NonIce_Container_VC_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_VC_Diff_NSR = SCE2_LSHFO_NonIce_Wet_Bulker_VC_Diff(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_OC_Diff_NSR = SCE2_LSHFO_NonIce_Bulker_OC_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Container_OC_Diff_NSR = SCE2_LSHFO_NonIce_Container_OC_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_OC_Diff_NSR = SCE2_LSHFO_NonIce_Wet_Bulker_OC_Diff(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_CC_Diff_NSR = SCE2_LSHFO_NonIce_Bulker_CC_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Container_CC_Diff_NSR = SCE2_LSHFO_NonIce_Container_CC_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_CC_Diff_NSR = SCE2_LSHFO_NonIce_Wet_Bulker_CC_Diff(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_CT_Diff_NSR = SCE2_LSHFO_NonIce_Bulker_CT_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Container_CT_Diff_NSR = SCE2_LSHFO_NonIce_Container_CT_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_CT_Diff_NSR = SCE2_LSHFO_NonIce_Wet_Bulker_CT_Diff(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_APC_Diff_NSR = SCE2_LSHFO_NonIce_Bulker_APC_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Container_APC_Diff_NSR = SCE2_LSHFO_NonIce_Container_APC_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_APC_Diff_NSR = SCE2_LSHFO_NonIce_Wet_Bulker_APC_Diff(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_ClC_Diff_NSR = SCE2_LSHFO_NonIce_Bulker_ClC_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Container_ClC_Diff_NSR = SCE2_LSHFO_NonIce_Container_ClC_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_ClC_Diff_NSR = SCE2_LSHFO_NonIce_Wet_Bulker_ClC_Diff(:,1:3:end);

%Emissions
SCE2_LSHFO_Ice_Bulker_CO2eq_Diff_NSR = SCE2_LSHFO_Ice_Bulker_CO2eq_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Container_CO2eq_Diff_NSR = SCE2_LSHFO_Ice_Container_CO2eq_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_CO2eq_Diff_NSR = SCE2_LSHFO_Ice_Wet_Bulker_CO2eq_Diff(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_SOx_Diff_NSR = SCE2_LSHFO_Ice_Bulker_SOx_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Container_SOx_Diff_NSR = SCE2_LSHFO_Ice_Container_SOx_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_SOx_Diff_NSR = SCE2_LSHFO_Ice_Wet_Bulker_SOx_Diff(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_NOx_Diff_NSR = SCE2_LSHFO_Ice_Bulker_NOx_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Container_NOx_Diff_NSR = SCE2_LSHFO_Ice_Container_NOx_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_NOx_Diff_NSR = SCE2_LSHFO_Ice_Wet_Bulker_NOx_Diff(:,1:3:end);

SCE2_LSHFO_Ice_Bulker_PM_Diff_NSR = SCE2_LSHFO_Ice_Bulker_PM_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Container_PM_Diff_NSR = SCE2_LSHFO_Ice_Container_PM_Diff(:,1:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_PM_Diff_NSR = SCE2_LSHFO_Ice_Wet_Bulker_PM_Diff(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_CO2eq_Diff_NSR = SCE2_LSHFO_NonIce_Bulker_CO2eq_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Container_CO2eq_Diff_NSR = SCE2_LSHFO_NonIce_Container_CO2eq_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_CO2eq_Diff_NSR = SCE2_LSHFO_NonIce_Wet_Bulker_CO2eq_Diff(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_SOx_Diff_NSR = SCE2_LSHFO_NonIce_Bulker_SOx_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Container_SOx_Diff_NSR = SCE2_LSHFO_NonIce_Container_SOx_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_SOx_Diff_NSR = SCE2_LSHFO_NonIce_Wet_Bulker_SOx_Diff(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_NOx_Diff_NSR = SCE2_LSHFO_NonIce_Bulker_NOx_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Container_NOx_Diff_NSR = SCE2_LSHFO_NonIce_Container_NOx_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_NOx_Diff_NSR = SCE2_LSHFO_NonIce_Wet_Bulker_NOx_Diff(:,1:3:end);

SCE2_LSHFO_NonIce_Bulker_PM_Diff_NSR = SCE2_LSHFO_NonIce_Bulker_PM_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Container_PM_Diff_NSR = SCE2_LSHFO_NonIce_Container_PM_Diff(:,1:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_PM_Diff_NSR = SCE2_LSHFO_NonIce_Wet_Bulker_PM_Diff(:,1:3:end);

%Int
SCE1_Ice_Bulker_FC_Normalised_value_INT_ptv = SCE1_Ice_Bulker_FC_Normalised_value_ptv(:,2:3:end);
SCE1_Ice_Container_FC_Normalised_value_INT_ptv = SCE1_Ice_Container_FC_Normalised_value_ptv(:,2:3:end);
SCE1_Ice_Wet_Bulker_FC_Normalised_value_INT_ptv = SCE1_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,2:3:end);

SCE1_NonIce_Bulker_FC_Normalised_value_INT_ptv = SCE1_NonIce_Bulker_FC_Normalised_value_ptv(:,2:3:end);
SCE1_NonIce_Container_FC_Normalised_value_INT_ptv = SCE1_NonIce_Container_FC_Normalised_value_ptv(:,2:3:end);
SCE1_NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv = SCE1_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,2:3:end);

SCE1_Ice_Bulker_TC_Normalised_value_INT_ptv = SCE1_Ice_Bulker_TC_Normalised_value_ptv(:,2:3:end);
SCE1_Ice_Container_TC_Normalised_value_INT_ptv = SCE1_Ice_Container_TC_Normalised_value_ptv(:,2:3:end);
SCE1_Ice_Wet_Bulker_TC_Normalised_value_INT_ptv = SCE1_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,2:3:end);

SCE1_NonIce_Bulker_TC_Normalised_value_INT_ptv = SCE1_NonIce_Bulker_TC_Normalised_value_ptv(:,2:3:end);
SCE1_NonIce_Container_TC_Normalised_value_INT_ptv = SCE1_NonIce_Container_TC_Normalised_value_ptv(:,2:3:end);
SCE1_NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv = SCE1_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,2:3:end);

SCE2_Ice_Bulker_FC_Normalised_value_INT_ptv = SCE2_Ice_Bulker_FC_Normalised_value_ptv(:,2:3:end);
SCE2_Ice_Container_FC_Normalised_value_INT_ptv = SCE2_Ice_Container_FC_Normalised_value_ptv(:,2:3:end);
SCE2_Ice_Wet_Bulker_FC_Normalised_value_INT_ptv = SCE2_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,2:3:end);

SCE2_NonIce_Bulker_FC_Normalised_value_INT_ptv = SCE2_NonIce_Bulker_FC_Normalised_value_ptv(:,2:3:end);
SCE2_NonIce_Container_FC_Normalised_value_INT_ptv = SCE2_NonIce_Container_FC_Normalised_value_ptv(:,2:3:end);
SCE2_NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv = SCE2_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,2:3:end);

SCE2_Ice_Bulker_TC_Normalised_value_INT_ptv = SCE2_Ice_Bulker_TC_Normalised_value_ptv(:,2:3:end);
SCE2_Ice_Container_TC_Normalised_value_INT_ptv = SCE2_Ice_Container_TC_Normalised_value_ptv(:,2:3:end);
SCE2_Ice_Wet_Bulker_TC_Normalised_value_INT_ptv = SCE2_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,2:3:end);

SCE2_NonIce_Bulker_TC_Normalised_value_INT_ptv = SCE2_NonIce_Bulker_TC_Normalised_value_ptv(:,2:3:end);
SCE2_NonIce_Container_TC_Normalised_value_INT_ptv = SCE2_NonIce_Container_TC_Normalised_value_ptv(:,2:3:end);
SCE2_NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv = SCE2_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,2:3:end);

%LSHFO Extraction
SCE1_LSHFO_Ice_Bulker_FC_Normalised_value_INT_ptv = SCE1_LSHFO_Ice_Bulker_FC_Normalised_value_ptv(:,2:3:end);
SCE1_LSHFO_Ice_Container_FC_Normalised_value_INT_ptv = SCE1_LSHFO_Ice_Container_FC_Normalised_value_ptv(:,2:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_INT_ptv = SCE1_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,2:3:end);

SCE1_LSHFO_NonIce_Bulker_FC_Normalised_value_INT_ptv = SCE1_LSHFO_NonIce_Bulker_FC_Normalised_value_ptv(:,2:3:end);
SCE1_LSHFO_NonIce_Container_FC_Normalised_value_INT_ptv = SCE1_LSHFO_NonIce_Container_FC_Normalised_value_ptv(:,2:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv = SCE1_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,2:3:end);

SCE1_LSHFO_Ice_Bulker_TC_Normalised_value_INT_ptv = SCE1_LSHFO_Ice_Bulker_TC_Normalised_value_ptv(:,2:3:end);
SCE1_LSHFO_Ice_Container_TC_Normalised_value_INT_ptv = SCE1_LSHFO_Ice_Container_TC_Normalised_value_ptv(:,2:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_INT_ptv = SCE1_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,2:3:end);

SCE1_LSHFO_NonIce_Bulker_TC_Normalised_value_INT_ptv = SCE1_LSHFO_NonIce_Bulker_TC_Normalised_value_ptv(:,2:3:end);
SCE1_LSHFO_NonIce_Container_TC_Normalised_value_INT_ptv = SCE1_LSHFO_NonIce_Container_TC_Normalised_value_ptv(:,2:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv = SCE1_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,2:3:end);

SCE2_LSHFO_Ice_Bulker_FC_Normalised_value_INT_ptv = SCE2_LSHFO_Ice_Bulker_FC_Normalised_value_ptv(:,2:3:end);
SCE2_LSHFO_Ice_Container_FC_Normalised_value_INT_ptv = SCE2_LSHFO_Ice_Container_FC_Normalised_value_ptv(:,2:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_INT_ptv = SCE2_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,2:3:end);

SCE2_LSHFO_NonIce_Bulker_FC_Normalised_value_INT_ptv = SCE2_LSHFO_NonIce_Bulker_FC_Normalised_value_ptv(:,2:3:end);
SCE2_LSHFO_NonIce_Container_FC_Normalised_value_INT_ptv = SCE2_LSHFO_NonIce_Container_FC_Normalised_value_ptv(:,2:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv = SCE2_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,2:3:end);

SCE2_LSHFO_Ice_Bulker_TC_Normalised_value_INT_ptv = SCE2_LSHFO_Ice_Bulker_TC_Normalised_value_ptv(:,2:3:end);
SCE2_LSHFO_Ice_Container_TC_Normalised_value_INT_ptv = SCE2_LSHFO_Ice_Container_TC_Normalised_value_ptv(:,2:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_INT_ptv = SCE2_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,2:3:end);

SCE2_LSHFO_NonIce_Bulker_TC_Normalised_value_INT_ptv = SCE2_LSHFO_NonIce_Bulker_TC_Normalised_value_ptv(:,2:3:end);
SCE2_LSHFO_NonIce_Container_TC_Normalised_value_INT_ptv = SCE2_LSHFO_NonIce_Container_TC_Normalised_value_ptv(:,2:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv = SCE2_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,2:3:end);

SCE1_Ice_Bulker_VC_Diff_INT = SCE1_Ice_Bulker_VC_Diff(:,2:3:end);
SCE1_Ice_Container_VC_Diff_INT = SCE1_Ice_Container_VC_Diff(:,2:3:end);
SCE1_Ice_Wet_Bulker_VC_Diff_INT = SCE1_Ice_Wet_Bulker_VC_Diff(:,2:3:end);

SCE1_Ice_Bulker_OC_Diff_INT = SCE1_Ice_Bulker_OC_Diff(:,2:3:end);
SCE1_Ice_Container_OC_Diff_INT = SCE1_Ice_Container_OC_Diff(:,2:3:end);
SCE1_Ice_Wet_Bulker_OC_Diff_INT = SCE1_Ice_Wet_Bulker_OC_Diff(:,2:3:end);

SCE1_Ice_Bulker_CC_Diff_INT = SCE1_Ice_Bulker_CC_Diff(:,2:3:end);
SCE1_Ice_Container_CC_Diff_INT = SCE1_Ice_Container_CC_Diff(:,2:3:end);
SCE1_Ice_Wet_Bulker_CC_Diff_INT = SCE1_Ice_Wet_Bulker_CC_Diff(:,2:3:end);

SCE1_Ice_Bulker_CT_Diff_INT = SCE1_Ice_Bulker_CT_Diff(:,2:3:end);
SCE1_Ice_Container_CT_Diff_INT = SCE1_Ice_Container_CT_Diff(:,2:3:end);
SCE1_Ice_Wet_Bulker_CT_Diff_INT = SCE1_Ice_Wet_Bulker_CT_Diff(:,2:3:end);

SCE1_Ice_Bulker_APC_Diff_INT = SCE1_Ice_Bulker_APC_Diff(:,2:3:end);
SCE1_Ice_Container_APC_Diff_INT = SCE1_Ice_Container_APC_Diff(:,2:3:end);
SCE1_Ice_Wet_Bulker_APC_Diff_INT = SCE1_Ice_Wet_Bulker_APC_Diff(:,2:3:end);

SCE1_Ice_Bulker_ClC_Diff_INT = SCE1_Ice_Bulker_ClC_Diff(:,2:3:end);
SCE1_Ice_Container_ClC_Diff_INT = SCE1_Ice_Container_ClC_Diff(:,2:3:end);
SCE1_Ice_Wet_Bulker_ClC_Diff_INT = SCE1_Ice_Wet_Bulker_ClC_Diff(:,2:3:end);

SCE1_NonIce_Bulker_VC_Diff_INT = SCE1_NonIce_Bulker_VC_Diff(:,2:3:end);
SCE1_NonIce_Container_VC_Diff_INT = SCE1_NonIce_Container_VC_Diff(:,2:3:end);
SCE1_NonIce_Wet_Bulker_VC_Diff_INT = SCE1_NonIce_Wet_Bulker_VC_Diff(:,2:3:end);

SCE1_NonIce_Bulker_OC_Diff_INT = SCE1_NonIce_Bulker_OC_Diff(:,2:3:end);
SCE1_NonIce_Container_OC_Diff_INT = SCE1_NonIce_Container_OC_Diff(:,2:3:end);
SCE1_NonIce_Wet_Bulker_OC_Diff_INT = SCE1_NonIce_Wet_Bulker_OC_Diff(:,2:3:end);

SCE1_NonIce_Bulker_CC_Diff_INT = SCE1_NonIce_Bulker_CC_Diff(:,2:3:end);
SCE1_NonIce_Container_CC_Diff_INT = SCE1_NonIce_Container_CC_Diff(:,2:3:end);
SCE1_NonIce_Wet_Bulker_CC_Diff_INT = SCE1_NonIce_Wet_Bulker_CC_Diff(:,2:3:end);

SCE1_NonIce_Bulker_CT_Diff_INT = SCE1_NonIce_Bulker_CT_Diff(:,2:3:end);
SCE1_NonIce_Container_CT_Diff_INT = SCE1_NonIce_Container_CT_Diff(:,2:3:end);
SCE1_NonIce_Wet_Bulker_CT_Diff_INT = SCE1_NonIce_Wet_Bulker_CT_Diff(:,2:3:end);

SCE1_NonIce_Bulker_APC_Diff_INT = SCE1_NonIce_Bulker_APC_Diff(:,2:3:end);
SCE1_NonIce_Container_APC_Diff_INT = SCE1_NonIce_Container_APC_Diff(:,2:3:end);
SCE1_NonIce_Wet_Bulker_APC_Diff_INT = SCE1_NonIce_Wet_Bulker_APC_Diff(:,2:3:end);

SCE1_NonIce_Bulker_ClC_Diff_INT = SCE1_NonIce_Bulker_ClC_Diff(:,2:3:end);
SCE1_NonIce_Container_ClC_Diff_INT = SCE1_NonIce_Container_ClC_Diff(:,2:3:end);
SCE1_NonIce_Wet_Bulker_ClC_Diff_INT = SCE1_NonIce_Wet_Bulker_ClC_Diff(:,2:3:end);

%SCE2
SCE2_Ice_Bulker_VC_Diff_INT = SCE2_Ice_Bulker_VC_Diff(:,2:3:end);
SCE2_Ice_Container_VC_Diff_INT = SCE2_Ice_Container_VC_Diff(:,2:3:end);
SCE2_Ice_Wet_Bulker_VC_Diff_INT = SCE2_Ice_Wet_Bulker_VC_Diff(:,2:3:end);

SCE2_Ice_Bulker_OC_Diff_INT = SCE2_Ice_Bulker_OC_Diff(:,2:3:end);
SCE2_Ice_Container_OC_Diff_INT = SCE2_Ice_Container_OC_Diff(:,2:3:end);
SCE2_Ice_Wet_Bulker_OC_Diff_INT = SCE2_Ice_Wet_Bulker_OC_Diff(:,2:3:end);

SCE2_Ice_Bulker_CC_Diff_INT = SCE2_Ice_Bulker_CC_Diff(:,2:3:end);
SCE2_Ice_Container_CC_Diff_INT = SCE2_Ice_Container_CC_Diff(:,2:3:end);
SCE2_Ice_Wet_Bulker_CC_Diff_INT = SCE2_Ice_Wet_Bulker_CC_Diff(:,2:3:end);

SCE2_Ice_Bulker_CT_Diff_INT = SCE2_Ice_Bulker_CT_Diff(:,2:3:end);
SCE2_Ice_Container_CT_Diff_INT = SCE2_Ice_Container_CT_Diff(:,2:3:end);
SCE2_Ice_Wet_Bulker_CT_Diff_INT = SCE2_Ice_Wet_Bulker_CT_Diff(:,2:3:end);

SCE2_Ice_Bulker_APC_Diff_INT = SCE2_Ice_Bulker_APC_Diff(:,2:3:end);
SCE2_Ice_Container_APC_Diff_INT = SCE2_Ice_Container_APC_Diff(:,2:3:end);
SCE2_Ice_Wet_Bulker_APC_Diff_INT = SCE2_Ice_Wet_Bulker_APC_Diff(:,2:3:end);

SCE2_Ice_Bulker_ClC_Diff_INT = SCE2_Ice_Bulker_ClC_Diff(:,2:3:end);
SCE2_Ice_Container_ClC_Diff_INT = SCE2_Ice_Container_ClC_Diff(:,2:3:end);
SCE2_Ice_Wet_Bulker_ClC_Diff_INT = SCE2_Ice_Wet_Bulker_ClC_Diff(:,2:3:end);

SCE2_NonIce_Bulker_VC_Diff_INT = SCE2_NonIce_Bulker_VC_Diff(:,2:3:end);
SCE2_NonIce_Container_VC_Diff_INT = SCE2_NonIce_Container_VC_Diff(:,2:3:end);
SCE2_NonIce_Wet_Bulker_VC_Diff_INT = SCE2_NonIce_Wet_Bulker_VC_Diff(:,2:3:end);

SCE2_NonIce_Bulker_OC_Diff_INT = SCE2_NonIce_Bulker_OC_Diff(:,2:3:end);
SCE2_NonIce_Container_OC_Diff_INT = SCE2_NonIce_Container_OC_Diff(:,2:3:end);
SCE2_NonIce_Wet_Bulker_OC_Diff_INT = SCE2_NonIce_Wet_Bulker_OC_Diff(:,2:3:end);

SCE2_NonIce_Bulker_CC_Diff_INT = SCE2_NonIce_Bulker_CC_Diff(:,2:3:end);
SCE2_NonIce_Container_CC_Diff_INT = SCE2_NonIce_Container_CC_Diff(:,2:3:end);
SCE2_NonIce_Wet_Bulker_CC_Diff_INT = SCE2_NonIce_Wet_Bulker_CC_Diff(:,2:3:end);

SCE2_NonIce_Bulker_CT_Diff_INT = SCE2_NonIce_Bulker_CT_Diff(:,2:3:end);
SCE2_NonIce_Container_CT_Diff_INT = SCE2_NonIce_Container_CT_Diff(:,2:3:end);
SCE2_NonIce_Wet_Bulker_CT_Diff_INT = SCE2_NonIce_Wet_Bulker_CT_Diff(:,2:3:end);

SCE2_NonIce_Bulker_APC_Diff_INT = SCE2_NonIce_Bulker_APC_Diff(:,2:3:end);
SCE2_NonIce_Container_APC_Diff_INT = SCE2_NonIce_Container_APC_Diff(:,2:3:end);
SCE2_NonIce_Wet_Bulker_APC_Diff_INT = SCE2_NonIce_Wet_Bulker_APC_Diff(:,2:3:end);

SCE2_NonIce_Bulker_ClC_Diff_INT = SCE2_NonIce_Bulker_ClC_Diff(:,2:3:end);
SCE2_NonIce_Container_ClC_Diff_INT = SCE2_NonIce_Container_ClC_Diff(:,2:3:end);
SCE2_NonIce_Wet_Bulker_ClC_Diff_INT = SCE2_NonIce_Wet_Bulker_ClC_Diff(:,2:3:end);

%LSHFO 
SCE1_LSHFO_Ice_Bulker_VC_Diff_INT = SCE1_LSHFO_Ice_Bulker_VC_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Container_VC_Diff_INT = SCE1_LSHFO_Ice_Container_VC_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_VC_Diff_INT = SCE1_LSHFO_Ice_Wet_Bulker_VC_Diff(:,2:3:end);

SCE1_LSHFO_Ice_Bulker_OC_Diff_INT = SCE1_LSHFO_Ice_Bulker_OC_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Container_OC_Diff_INT = SCE1_LSHFO_Ice_Container_OC_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_OC_Diff_INT = SCE1_LSHFO_Ice_Wet_Bulker_OC_Diff(:,2:3:end);

SCE1_LSHFO_Ice_Bulker_CC_Diff_INT = SCE1_LSHFO_Ice_Bulker_CC_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Container_CC_Diff_INT = SCE1_LSHFO_Ice_Container_CC_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_CC_Diff_INT = SCE1_LSHFO_Ice_Wet_Bulker_CC_Diff(:,2:3:end);

SCE1_LSHFO_Ice_Bulker_CT_Diff_INT = SCE1_LSHFO_Ice_Bulker_CT_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Container_CT_Diff_INT = SCE1_LSHFO_Ice_Container_CT_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_CT_Diff_INT = SCE1_LSHFO_Ice_Wet_Bulker_CT_Diff(:,2:3:end);

SCE1_LSHFO_Ice_Bulker_APC_Diff_INT = SCE1_Ice_Bulker_APC_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Container_APC_Diff_INT = SCE1_LSHFO_Ice_Container_APC_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_APC_Diff_INT = SCE1_LSHFO_Ice_Wet_Bulker_APC_Diff(:,2:3:end);

SCE1_LSHFO_Ice_Bulker_ClC_Diff_INT = SCE1_LSHFO_Ice_Bulker_ClC_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Container_ClC_Diff_INT = SCE1_LSHFO_Ice_Container_ClC_Diff(:,2:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_ClC_Diff_INT = SCE1_LSHFO_Ice_Wet_Bulker_ClC_Diff(:,2:3:end);

SCE1_LSHFO_NonIce_Bulker_VC_Diff_INT = SCE1_LSHFO_NonIce_Bulker_VC_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Container_VC_Diff_INT = SCE1_LSHFO_NonIce_Container_VC_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_VC_Diff_INT = SCE1_LSHFO_NonIce_Wet_Bulker_VC_Diff(:,2:3:end);

SCE1_LSHFO_NonIce_Bulker_OC_Diff_INT = SCE1_LSHFO_NonIce_Bulker_OC_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Container_OC_Diff_INT = SCE1_LSHFO_NonIce_Container_OC_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_OC_Diff_INT = SCE1_LSHFO_NonIce_Wet_Bulker_OC_Diff(:,2:3:end);

SCE1_LSHFO_NonIce_Bulker_CC_Diff_INT = SCE1_LSHFO_NonIce_Bulker_CC_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Container_CC_Diff_INT = SCE1_LSHFO_NonIce_Container_CC_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_CC_Diff_INT = SCE1_LSHFO_NonIce_Wet_Bulker_CC_Diff(:,2:3:end);

SCE1_LSHFO_NonIce_Bulker_CT_Diff_INT = SCE1_LSHFO_NonIce_Bulker_CT_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Container_CT_Diff_INT = SCE1_LSHFO_NonIce_Container_CT_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_CT_Diff_INT = SCE1_LSHFO_NonIce_Wet_Bulker_CT_Diff(:,2:3:end);

SCE1_LSHFO_NonIce_Bulker_APC_Diff_INT = SCE1_LSHFO_NonIce_Bulker_APC_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Container_APC_Diff_INT = SCE1_LSHFO_NonIce_Container_APC_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_APC_Diff_INT = SCE1_LSHFO_NonIce_Wet_Bulker_APC_Diff(:,2:3:end);

SCE1_LSHFO_NonIce_Bulker_ClC_Diff_INT = SCE1_LSHFO_NonIce_Bulker_ClC_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Container_ClC_Diff_INT = SCE1_LSHFO_NonIce_Container_ClC_Diff(:,2:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_ClC_Diff_INT = SCE1_LSHFO_NonIce_Wet_Bulker_ClC_Diff(:,2:3:end);

%SCE2
SCE2_LSHFO_Ice_Bulker_VC_Diff_INT = SCE2_LSHFO_Ice_Bulker_VC_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Container_VC_Diff_INT = SCE2_LSHFO_Ice_Container_VC_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_VC_Diff_INT = SCE2_LSHFO_Ice_Wet_Bulker_VC_Diff(:,2:3:end);

SCE2_LSHFO_Ice_Bulker_OC_Diff_INT = SCE2_LSHFO_Ice_Bulker_OC_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Container_OC_Diff_INT = SCE2_LSHFO_Ice_Container_OC_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_OC_Diff_INT = SCE2_LSHFO_Ice_Wet_Bulker_OC_Diff(:,2:3:end);

SCE2_LSHFO_Ice_Bulker_CC_Diff_INT = SCE2_LSHFO_Ice_Bulker_CC_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Container_CC_Diff_INT = SCE2_LSHFO_Ice_Container_CC_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_CC_Diff_INT = SCE2_LSHFO_Ice_Wet_Bulker_CC_Diff(:,2:3:end);

SCE2_LSHFO_Ice_Bulker_CT_Diff_INT = SCE2_LSHFO_Ice_Bulker_CT_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Container_CT_Diff_INT = SCE2_LSHFO_Ice_Container_CT_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_CT_Diff_INT = SCE2_LSHFO_Ice_Wet_Bulker_CT_Diff(:,2:3:end);

SCE2_LSHFO_Ice_Bulker_APC_Diff_INT = SCE2_LSHFO_Ice_Bulker_APC_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Container_APC_Diff_INT = SCE2_LSHFO_Ice_Container_APC_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_APC_Diff_INT = SCE2_LSHFO_Ice_Wet_Bulker_APC_Diff(:,2:3:end);

SCE2_LSHFO_Ice_Bulker_ClC_Diff_INT = SCE2_LSHFO_Ice_Bulker_ClC_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Container_ClC_Diff_INT = SCE2_LSHFO_Ice_Container_ClC_Diff(:,2:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_ClC_Diff_INT = SCE2_LSHFO_Ice_Wet_Bulker_ClC_Diff(:,2:3:end);

SCE2_LSHFO_NonIce_Bulker_VC_Diff_INT = SCE2_LSHFO_NonIce_Bulker_VC_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Container_VC_Diff_INT = SCE2_LSHFO_NonIce_Container_VC_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_VC_Diff_INT = SCE2_LSHFO_NonIce_Wet_Bulker_VC_Diff(:,2:3:end);

SCE2_LSHFO_NonIce_Bulker_OC_Diff_INT = SCE2_LSHFO_NonIce_Bulker_OC_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Container_OC_Diff_INT = SCE2_LSHFO_NonIce_Container_OC_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_OC_Diff_INT = SCE2_LSHFO_NonIce_Wet_Bulker_OC_Diff(:,2:3:end);

SCE2_LSHFO_NonIce_Bulker_CC_Diff_INT = SCE2_LSHFO_NonIce_Bulker_CC_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Container_CC_Diff_INT = SCE2_LSHFO_NonIce_Container_CC_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_CC_Diff_INT = SCE2_LSHFO_NonIce_Wet_Bulker_CC_Diff(:,2:3:end);

SCE2_LSHFO_NonIce_Bulker_CT_Diff_INT = SCE2_LSHFO_NonIce_Bulker_CT_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Container_CT_Diff_INT = SCE2_LSHFO_NonIce_Container_CT_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_CT_Diff_INT = SCE2_LSHFO_NonIce_Wet_Bulker_CT_Diff(:,2:3:end);

SCE2_LSHFO_NonIce_Bulker_APC_Diff_INT = SCE2_LSHFO_NonIce_Bulker_APC_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Container_APC_Diff_INT = SCE2_LSHFO_NonIce_Container_APC_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_APC_Diff_INT = SCE2_LSHFO_NonIce_Wet_Bulker_APC_Diff(:,2:3:end);

SCE2_LSHFO_NonIce_Bulker_ClC_Diff_INT = SCE2_LSHFO_NonIce_Bulker_ClC_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Container_ClC_Diff_INT = SCE2_LSHFO_NonIce_Container_ClC_Diff(:,2:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_ClC_Diff_INT = SCE2_LSHFO_NonIce_Wet_Bulker_ClC_Diff(:,2:3:end);

%TPP
%Tonne voyages
SCE1_Ice_Bulker_FC_Normalised_value_TPP_ptv = SCE1_Ice_Bulker_FC_Normalised_value_ptv(:,3:3:end);
SCE1_Ice_Container_FC_Normalised_value_TPP_ptv = SCE1_Ice_Container_FC_Normalised_value_ptv(:,3:3:end);
SCE1_Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv = SCE1_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,3:3:end);

SCE1_NonIce_Bulker_FC_Normalised_value_TPP_ptv = SCE1_NonIce_Bulker_FC_Normalised_value_ptv(:,3:3:end);
SCE1_NonIce_Container_FC_Normalised_value_TPP_ptv = SCE1_NonIce_Container_FC_Normalised_value_ptv(:,3:3:end);
SCE1_NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv = SCE1_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,3:3:end);

SCE1_Ice_Bulker_TC_Normalised_value_TPP_ptv = SCE1_Ice_Bulker_TC_Normalised_value_ptv(:,3:3:end);
SCE1_Ice_Container_TC_Normalised_value_TPP_ptv = SCE1_Ice_Container_TC_Normalised_value_ptv(:,3:3:end);
SCE1_Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv = SCE1_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,3:3:end);

SCE1_NonIce_Bulker_TC_Normalised_value_TPP_ptv = SCE1_NonIce_Bulker_TC_Normalised_value_ptv(:,3:3:end);
SCE1_NonIce_Container_TC_Normalised_value_TPP_ptv = SCE1_NonIce_Container_TC_Normalised_value_ptv(:,3:3:end);
SCE1_NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv = SCE1_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,3:3:end);

SCE2_Ice_Bulker_FC_Normalised_value_TPP_ptv = SCE2_Ice_Bulker_FC_Normalised_value_ptv(:,3:3:end);
SCE2_Ice_Container_FC_Normalised_value_TPP_ptv = SCE2_Ice_Container_FC_Normalised_value_ptv(:,3:3:end);
SCE2_Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv = SCE2_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,3:3:end);

SCE2_NonIce_Bulker_FC_Normalised_value_TPP_ptv = SCE2_NonIce_Bulker_FC_Normalised_value_ptv(:,3:3:end);
SCE2_NonIce_Container_FC_Normalised_value_TPP_ptv = SCE2_NonIce_Container_FC_Normalised_value_ptv(:,3:3:end);
SCE2_NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv = SCE2_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,3:3:end);

SCE2_Ice_Bulker_TC_Normalised_value_TPP_ptv = SCE2_Ice_Bulker_TC_Normalised_value_ptv(:,3:3:end);
SCE2_Ice_Container_TC_Normalised_value_TPP_ptv = SCE2_Ice_Container_TC_Normalised_value_ptv(:,3:3:end);
SCE2_Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv = SCE2_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,3:3:end);

SCE2_NonIce_Bulker_TC_Normalised_value_TPP_ptv = SCE2_NonIce_Bulker_TC_Normalised_value_ptv(:,3:3:end);
SCE2_NonIce_Container_TC_Normalised_value_TPP_ptv = SCE2_NonIce_Container_TC_Normalised_value_ptv(:,3:3:end);
SCE2_NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv = SCE2_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,3:3:end);

%LSHFO Extraction
SCE1_LSHFO_Ice_Bulker_FC_Normalised_value_TPP_ptv = SCE1_LSHFO_Ice_Bulker_FC_Normalised_value_ptv(:,3:3:end);
SCE1_LSHFO_Ice_Container_FC_Normalised_value_TPP_ptv = SCE1_LSHFO_Ice_Container_FC_Normalised_value_ptv(:,3:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv = SCE1_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,3:3:end);

SCE1_LSHFO_NonIce_Bulker_FC_Normalised_value_TPP_ptv = SCE1_LSHFO_NonIce_Bulker_FC_Normalised_value_ptv(:,3:3:end);
SCE1_LSHFO_NonIce_Container_FC_Normalised_value_TPP_ptv = SCE1_LSHFO_NonIce_Container_FC_Normalised_value_ptv(:,3:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv = SCE1_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,3:3:end);

SCE1_LSHFO_Ice_Bulker_TC_Normalised_value_TPP_ptv = SCE1_LSHFO_Ice_Bulker_TC_Normalised_value_ptv(:,3:3:end);
SCE1_LSHFO_Ice_Container_TC_Normalised_value_TPP_ptv = SCE1_LSHFO_Ice_Container_TC_Normalised_value_ptv(:,3:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv = SCE1_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,3:3:end);

SCE1_LSHFO_NonIce_Bulker_TC_Normalised_value_TPP_ptv = SCE1_LSHFO_NonIce_Bulker_TC_Normalised_value_ptv(:,3:3:end);
SCE1_LSHFO_NonIce_Container_TC_Normalised_value_TPP_ptv = SCE1_LSHFO_NonIce_Container_TC_Normalised_value_ptv(:,3:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv = SCE1_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,3:3:end);

SCE2_LSHFO_Ice_Bulker_FC_Normalised_value_TPP_ptv = SCE2_LSHFO_Ice_Bulker_FC_Normalised_value_ptv(:,3:3:end);
SCE2_LSHFO_Ice_Container_FC_Normalised_value_TPP_ptv = SCE2_LSHFO_Ice_Container_FC_Normalised_value_ptv(:,3:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv = SCE2_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_ptv(:,3:3:end);

SCE2_LSHFO_NonIce_Bulker_FC_Normalised_value_TPP_ptv = SCE2_LSHFO_NonIce_Bulker_FC_Normalised_value_ptv(:,3:3:end);
SCE2_LSHFO_NonIce_Container_FC_Normalised_value_TPP_ptv = SCE2_LSHFO_NonIce_Container_FC_Normalised_value_ptv(:,3:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv = SCE2_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_ptv(:,3:3:end);

SCE2_LSHFO_Ice_Bulker_TC_Normalised_value_TPP_ptv = SCE2_LSHFO_Ice_Bulker_TC_Normalised_value_ptv(:,3:3:end);
SCE2_LSHFO_Ice_Container_TC_Normalised_value_TPP_ptv = SCE2_LSHFO_Ice_Container_TC_Normalised_value_ptv(:,3:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv = SCE2_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_ptv(:,3:3:end);

SCE2_LSHFO_NonIce_Bulker_TC_Normalised_value_TPP_ptv = SCE2_LSHFO_NonIce_Bulker_TC_Normalised_value_ptv(:,3:3:end);
SCE2_LSHFO_NonIce_Container_TC_Normalised_value_TPP_ptv = SCE2_LSHFO_NonIce_Container_TC_Normalised_value_ptv(:,3:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv = SCE2_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_ptv(:,3:3:end);

SCE1_Ice_Bulker_VC_Diff_TPP = SCE1_Ice_Bulker_VC_Diff(:,3:3:end);
SCE1_Ice_Container_VC_Diff_TPP = SCE1_Ice_Container_VC_Diff(:,3:3:end);
SCE1_Ice_Wet_Bulker_VC_Diff_TPP = SCE1_Ice_Wet_Bulker_VC_Diff(:,3:3:end);

SCE1_Ice_Bulker_OC_Diff_TPP = SCE1_Ice_Bulker_OC_Diff(:,3:3:end);
SCE1_Ice_Container_OC_Diff_TPP = SCE1_Ice_Container_OC_Diff(:,3:3:end);
SCE1_Ice_Wet_Bulker_OC_Diff_TPP = SCE1_Ice_Wet_Bulker_OC_Diff(:,3:3:end);

SCE1_Ice_Bulker_CC_Diff_TPP = SCE1_Ice_Bulker_CC_Diff(:,3:3:end);
SCE1_Ice_Container_CC_Diff_TPP = SCE1_Ice_Container_CC_Diff(:,3:3:end);
SCE1_Ice_Wet_Bulker_CC_Diff_TPP = SCE1_Ice_Wet_Bulker_CC_Diff(:,3:3:end);

SCE1_Ice_Bulker_CT_Diff_TPP = SCE1_Ice_Bulker_CT_Diff(:,3:3:end);
SCE1_Ice_Container_CT_Diff_TPP = SCE1_Ice_Container_CT_Diff(:,3:3:end);
SCE1_Ice_Wet_Bulker_CT_Diff_TPP = SCE1_Ice_Wet_Bulker_CT_Diff(:,3:3:end);

SCE1_Ice_Bulker_APC_Diff_TPP = SCE1_Ice_Bulker_APC_Diff(:,3:3:end);
SCE1_Ice_Container_APC_Diff_TPP = SCE1_Ice_Container_APC_Diff(:,3:3:end);
SCE1_Ice_Wet_Bulker_APC_Diff_TPP = SCE1_Ice_Wet_Bulker_APC_Diff(:,3:3:end);

SCE1_Ice_Bulker_ClC_Diff_TPP = SCE1_Ice_Bulker_ClC_Diff(:,3:3:end);
SCE1_Ice_Container_ClC_Diff_TPP = SCE1_Ice_Container_ClC_Diff(:,3:3:end);
SCE1_Ice_Wet_Bulker_ClC_Diff_TPP = SCE1_Ice_Wet_Bulker_ClC_Diff(:,3:3:end);

SCE1_NonIce_Bulker_VC_Diff_TPP = SCE1_NonIce_Bulker_VC_Diff(:,3:3:end);
SCE1_NonIce_Container_VC_Diff_TPP = SCE1_NonIce_Container_VC_Diff(:,3:3:end);
SCE1_NonIce_Wet_Bulker_VC_Diff_TPP = SCE1_NonIce_Wet_Bulker_VC_Diff(:,3:3:end);

SCE1_NonIce_Bulker_OC_Diff_TPP = SCE1_NonIce_Bulker_OC_Diff(:,3:3:end);
SCE1_NonIce_Container_OC_Diff_TPP = SCE1_NonIce_Container_OC_Diff(:,3:3:end);
SCE1_NonIce_Wet_Bulker_OC_Diff_TPP = SCE1_NonIce_Wet_Bulker_OC_Diff(:,3:3:end);

SCE1_NonIce_Bulker_CC_Diff_TPP = SCE1_NonIce_Bulker_CC_Diff(:,3:3:end);
SCE1_NonIce_Container_CC_Diff_TPP = SCE1_NonIce_Container_CC_Diff(:,3:3:end);
SCE1_NonIce_Wet_Bulker_CC_Diff_TPP = SCE1_NonIce_Wet_Bulker_CC_Diff(:,3:3:end);

SCE1_NonIce_Bulker_CT_Diff_TPP = SCE1_NonIce_Bulker_CT_Diff(:,3:3:end);
SCE1_NonIce_Container_CT_Diff_TPP = SCE1_NonIce_Container_CT_Diff(:,3:3:end);
SCE1_NonIce_Wet_Bulker_CT_Diff_TPP = SCE1_NonIce_Wet_Bulker_CT_Diff(:,3:3:end);

SCE1_NonIce_Bulker_APC_Diff_TPP = SCE1_NonIce_Bulker_APC_Diff(:,3:3:end);
SCE1_NonIce_Container_APC_Diff_TPP = SCE1_NonIce_Container_APC_Diff(:,3:3:end);
SCE1_NonIce_Wet_Bulker_APC_Diff_TPP = SCE1_NonIce_Wet_Bulker_APC_Diff(:,3:3:end);

SCE1_NonIce_Bulker_ClC_Diff_TPP = SCE1_NonIce_Bulker_ClC_Diff(:,3:3:end);
SCE1_NonIce_Container_ClC_Diff_TPP = SCE1_NonIce_Container_ClC_Diff(:,3:3:end);
SCE1_NonIce_Wet_Bulker_ClC_Diff_TPP = SCE1_NonIce_Wet_Bulker_ClC_Diff(:,3:3:end);

%SCE2
SCE2_Ice_Bulker_VC_Diff_TPP = SCE2_Ice_Bulker_VC_Diff(:,3:3:end);
SCE2_Ice_Container_VC_Diff_TPP = SCE2_Ice_Container_VC_Diff(:,3:3:end);
SCE2_Ice_Wet_Bulker_VC_Diff_TPP = SCE2_Ice_Wet_Bulker_VC_Diff(:,3:3:end);

SCE2_Ice_Bulker_OC_Diff_TPP = SCE2_Ice_Bulker_OC_Diff(:,3:3:end);
SCE2_Ice_Container_OC_Diff_TPP = SCE2_Ice_Container_OC_Diff(:,3:3:end);
SCE2_Ice_Wet_Bulker_OC_Diff_TPP = SCE2_Ice_Wet_Bulker_OC_Diff(:,3:3:end);

SCE2_Ice_Bulker_CC_Diff_TPP = SCE2_Ice_Bulker_CC_Diff(:,3:3:end);
SCE2_Ice_Container_CC_Diff_TPP = SCE2_Ice_Container_CC_Diff(:,3:3:end);
SCE2_Ice_Wet_Bulker_CC_Diff_TPP = SCE2_Ice_Wet_Bulker_CC_Diff(:,3:3:end);

SCE2_Ice_Bulker_CT_Diff_TPP = SCE2_Ice_Bulker_CT_Diff(:,3:3:end);
SCE2_Ice_Container_CT_Diff_TPP = SCE2_Ice_Container_CT_Diff(:,3:3:end);
SCE2_Ice_Wet_Bulker_CT_Diff_TPP = SCE2_Ice_Wet_Bulker_CT_Diff(:,3:3:end);

SCE2_Ice_Bulker_APC_Diff_TPP = SCE2_Ice_Bulker_APC_Diff(:,3:3:end);
SCE2_Ice_Container_APC_Diff_TPP = SCE2_Ice_Container_APC_Diff(:,3:3:end);
SCE2_Ice_Wet_Bulker_APC_Diff_TPP = SCE2_Ice_Wet_Bulker_APC_Diff(:,3:3:end);

SCE2_Ice_Bulker_ClC_Diff_TPP = SCE2_Ice_Bulker_ClC_Diff(:,3:3:end);
SCE2_Ice_Container_ClC_Diff_TPP = SCE2_Ice_Container_ClC_Diff(:,3:3:end);
SCE2_Ice_Wet_Bulker_ClC_Diff_TPP = SCE2_Ice_Wet_Bulker_ClC_Diff(:,3:3:end);

SCE2_NonIce_Bulker_VC_Diff_TPP = SCE2_NonIce_Bulker_VC_Diff(:,3:3:end);
SCE2_NonIce_Container_VC_Diff_TPP = SCE2_NonIce_Container_VC_Diff(:,3:3:end);
SCE2_NonIce_Wet_Bulker_VC_Diff_TPP = SCE2_NonIce_Wet_Bulker_VC_Diff(:,3:3:end);

SCE2_NonIce_Bulker_OC_Diff_TPP = SCE2_NonIce_Bulker_OC_Diff(:,3:3:end);
SCE2_NonIce_Container_OC_Diff_TPP = SCE2_NonIce_Container_OC_Diff(:,3:3:end);
SCE2_NonIce_Wet_Bulker_OC_Diff_TPP = SCE2_NonIce_Wet_Bulker_OC_Diff(:,3:3:end);

SCE2_NonIce_Bulker_CC_Diff_TPP = SCE2_NonIce_Bulker_CC_Diff(:,3:3:end);
SCE2_NonIce_Container_CC_Diff_TPP = SCE2_NonIce_Container_CC_Diff(:,3:3:end);
SCE2_NonIce_Wet_Bulker_CC_Diff_TPP = SCE2_NonIce_Wet_Bulker_CC_Diff(:,3:3:end);

SCE2_NonIce_Bulker_CT_Diff_TPP = SCE2_NonIce_Bulker_CT_Diff(:,3:3:end);
SCE2_NonIce_Container_CT_Diff_TPP = SCE2_NonIce_Container_CT_Diff(:,3:3:end);
SCE2_NonIce_Wet_Bulker_CT_Diff_TPP = SCE2_NonIce_Wet_Bulker_CT_Diff(:,3:3:end);

SCE2_NonIce_Bulker_APC_Diff_TPP = SCE2_NonIce_Bulker_APC_Diff(:,3:3:end);
SCE2_NonIce_Container_APC_Diff_TPP = SCE2_NonIce_Container_APC_Diff(:,3:3:end);
SCE2_NonIce_Wet_Bulker_APC_Diff_TPP = SCE2_NonIce_Wet_Bulker_APC_Diff(:,3:3:end);

SCE2_NonIce_Bulker_ClC_Diff_TPP = SCE2_NonIce_Bulker_ClC_Diff(:,3:3:end);
SCE2_NonIce_Container_ClC_Diff_TPP = SCE2_NonIce_Container_ClC_Diff(:,3:3:end);
SCE2_NonIce_Wet_Bulker_ClC_Diff_TPP = SCE2_NonIce_Wet_Bulker_ClC_Diff(:,3:3:end);

%LSHFO 
SCE1_LSHFO_Ice_Bulker_VC_Diff_TPP = SCE1_LSHFO_Ice_Bulker_VC_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Container_VC_Diff_TPP = SCE1_LSHFO_Ice_Container_VC_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_VC_Diff_TPP = SCE1_LSHFO_Ice_Wet_Bulker_VC_Diff(:,3:3:end);

SCE1_LSHFO_Ice_Bulker_OC_Diff_TPP = SCE1_LSHFO_Ice_Bulker_OC_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Container_OC_Diff_TPP = SCE1_LSHFO_Ice_Container_OC_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_OC_Diff_TPP = SCE1_LSHFO_Ice_Wet_Bulker_OC_Diff(:,3:3:end);

SCE1_LSHFO_Ice_Bulker_CC_Diff_TPP = SCE1_LSHFO_Ice_Bulker_CC_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Container_CC_Diff_TPP = SCE1_LSHFO_Ice_Container_CC_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_CC_Diff_TPP = SCE1_LSHFO_Ice_Wet_Bulker_CC_Diff(:,3:3:end);

SCE1_LSHFO_Ice_Bulker_CT_Diff_TPP = SCE1_LSHFO_Ice_Bulker_CT_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Container_CT_Diff_TPP = SCE1_LSHFO_Ice_Container_CT_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_CT_Diff_TPP = SCE1_LSHFO_Ice_Wet_Bulker_CT_Diff(:,3:3:end);

SCE1_LSHFO_Ice_Bulker_APC_Diff_TPP = SCE1_Ice_Bulker_APC_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Container_APC_Diff_TPP = SCE1_LSHFO_Ice_Container_APC_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_APC_Diff_TPP = SCE1_LSHFO_Ice_Wet_Bulker_APC_Diff(:,3:3:end);

SCE1_LSHFO_Ice_Bulker_ClC_Diff_TPP = SCE1_LSHFO_Ice_Bulker_ClC_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Container_ClC_Diff_TPP = SCE1_LSHFO_Ice_Container_ClC_Diff(:,3:3:end);
SCE1_LSHFO_Ice_Wet_Bulker_ClC_Diff_TPP = SCE1_LSHFO_Ice_Wet_Bulker_ClC_Diff(:,3:3:end);

SCE1_LSHFO_NonIce_Bulker_VC_Diff_TPP = SCE1_LSHFO_NonIce_Bulker_VC_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Container_VC_Diff_TPP = SCE1_LSHFO_NonIce_Container_VC_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_VC_Diff_TPP = SCE1_LSHFO_NonIce_Wet_Bulker_VC_Diff(:,3:3:end);

SCE1_LSHFO_NonIce_Bulker_OC_Diff_TPP = SCE1_LSHFO_NonIce_Bulker_OC_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Container_OC_Diff_TPP = SCE1_LSHFO_NonIce_Container_OC_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_OC_Diff_TPP = SCE1_LSHFO_NonIce_Wet_Bulker_OC_Diff(:,3:3:end);

SCE1_LSHFO_NonIce_Bulker_CC_Diff_TPP = SCE1_LSHFO_NonIce_Bulker_CC_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Container_CC_Diff_TPP = SCE1_LSHFO_NonIce_Container_CC_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_CC_Diff_TPP = SCE1_LSHFO_NonIce_Wet_Bulker_CC_Diff(:,3:3:end);

SCE1_LSHFO_NonIce_Bulker_CT_Diff_TPP = SCE1_LSHFO_NonIce_Bulker_CT_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Container_CT_Diff_TPP = SCE1_LSHFO_NonIce_Container_CT_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_CT_Diff_TPP = SCE1_LSHFO_NonIce_Wet_Bulker_CT_Diff(:,3:3:end);

SCE1_LSHFO_NonIce_Bulker_APC_Diff_TPP = SCE1_LSHFO_NonIce_Bulker_APC_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Container_APC_Diff_TPP = SCE1_LSHFO_NonIce_Container_APC_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_APC_Diff_TPP = SCE1_LSHFO_NonIce_Wet_Bulker_APC_Diff(:,3:3:end);

SCE1_LSHFO_NonIce_Bulker_ClC_Diff_TPP = SCE1_LSHFO_NonIce_Bulker_ClC_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Container_ClC_Diff_TPP = SCE1_LSHFO_NonIce_Container_ClC_Diff(:,3:3:end);
SCE1_LSHFO_NonIce_Wet_Bulker_ClC_Diff_TPP = SCE1_LSHFO_NonIce_Wet_Bulker_ClC_Diff(:,3:3:end);

%SCE2
SCE2_LSHFO_Ice_Bulker_VC_Diff_TPP = SCE2_LSHFO_Ice_Bulker_VC_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Container_VC_Diff_TPP = SCE2_LSHFO_Ice_Container_VC_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_VC_Diff_TPP = SCE2_LSHFO_Ice_Wet_Bulker_VC_Diff(:,3:3:end);

SCE2_LSHFO_Ice_Bulker_OC_Diff_TPP = SCE2_LSHFO_Ice_Bulker_OC_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Container_OC_Diff_TPP = SCE2_LSHFO_Ice_Container_OC_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_OC_Diff_TPP = SCE2_LSHFO_Ice_Wet_Bulker_OC_Diff(:,3:3:end);

SCE2_LSHFO_Ice_Bulker_CC_Diff_TPP = SCE2_LSHFO_Ice_Bulker_CC_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Container_CC_Diff_TPP = SCE2_LSHFO_Ice_Container_CC_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_CC_Diff_TPP = SCE2_LSHFO_Ice_Wet_Bulker_CC_Diff(:,3:3:end);

SCE2_LSHFO_Ice_Bulker_CT_Diff_TPP = SCE2_LSHFO_Ice_Bulker_CT_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Container_CT_Diff_TPP = SCE2_LSHFO_Ice_Container_CT_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_CT_Diff_TPP = SCE2_LSHFO_Ice_Wet_Bulker_CT_Diff(:,3:3:end);

SCE2_LSHFO_Ice_Bulker_APC_Diff_TPP = SCE2_LSHFO_Ice_Bulker_APC_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Container_APC_Diff_TPP = SCE2_LSHFO_Ice_Container_APC_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_APC_Diff_TPP = SCE2_LSHFO_Ice_Wet_Bulker_APC_Diff(:,3:3:end);

SCE2_LSHFO_Ice_Bulker_ClC_Diff_TPP = SCE2_LSHFO_Ice_Bulker_ClC_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Container_ClC_Diff_TPP = SCE2_LSHFO_Ice_Container_ClC_Diff(:,3:3:end);
SCE2_LSHFO_Ice_Wet_Bulker_ClC_Diff_TPP = SCE2_LSHFO_Ice_Wet_Bulker_ClC_Diff(:,3:3:end);

SCE2_LSHFO_NonIce_Bulker_VC_Diff_TPP = SCE2_LSHFO_NonIce_Bulker_VC_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Container_VC_Diff_TPP = SCE2_LSHFO_NonIce_Container_VC_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_VC_Diff_TPP = SCE2_LSHFO_NonIce_Wet_Bulker_VC_Diff(:,3:3:end);

SCE2_LSHFO_NonIce_Bulker_OC_Diff_TPP = SCE2_LSHFO_NonIce_Bulker_OC_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Container_OC_Diff_TPP = SCE2_LSHFO_NonIce_Container_OC_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_OC_Diff_TPP = SCE2_LSHFO_NonIce_Wet_Bulker_OC_Diff(:,3:3:end);

SCE2_LSHFO_NonIce_Bulker_CC_Diff_TPP = SCE2_LSHFO_NonIce_Bulker_CC_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Container_CC_Diff_TPP = SCE2_LSHFO_NonIce_Container_CC_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_CC_Diff_TPP = SCE2_LSHFO_NonIce_Wet_Bulker_CC_Diff(:,3:3:end);

SCE2_LSHFO_NonIce_Bulker_CT_Diff_TPP = SCE2_LSHFO_NonIce_Bulker_CT_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Container_CT_Diff_TPP = SCE2_LSHFO_NonIce_Container_CT_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_CT_Diff_TPP = SCE2_LSHFO_NonIce_Wet_Bulker_CT_Diff(:,3:3:end);

SCE2_LSHFO_NonIce_Bulker_APC_Diff_TPP = SCE2_LSHFO_NonIce_Bulker_APC_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Container_APC_Diff_TPP = SCE2_LSHFO_NonIce_Container_APC_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_APC_Diff_TPP = SCE2_LSHFO_NonIce_Wet_Bulker_APC_Diff(:,3:3:end);

SCE2_LSHFO_NonIce_Bulker_ClC_Diff_TPP = SCE2_LSHFO_NonIce_Bulker_ClC_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Container_ClC_Diff_TPP = SCE2_LSHFO_NonIce_Container_ClC_Diff(:,3:3:end);
SCE2_LSHFO_NonIce_Wet_Bulker_ClC_Diff_TPP = SCE2_LSHFO_NonIce_Wet_Bulker_ClC_Diff(:,3:3:end);

%NSR
Ice_Bulker_FC_Normalised_value_NSR_ptv = [SCE1_Ice_Bulker_FC_Normalised_value_NSR_ptv SCE2_Ice_Bulker_FC_Normalised_value_NSR_ptv];
Ice_Container_FC_Normalised_value_NSR_ptv = [SCE1_Ice_Container_FC_Normalised_value_NSR_ptv SCE2_Ice_Container_FC_Normalised_value_NSR_ptv];
Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv = [SCE1_Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv SCE2_Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv];    

Ice_Bulker_TC_Normalised_value_NSR_ptv = [SCE1_Ice_Bulker_TC_Normalised_value_NSR_ptv SCE2_Ice_Bulker_TC_Normalised_value_NSR_ptv];
Ice_Container_TC_Normalised_value_NSR_ptv = [SCE1_Ice_Container_TC_Normalised_value_NSR_ptv SCE2_Ice_Container_TC_Normalised_value_NSR_ptv];
Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv = [SCE1_Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv SCE2_Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv];    

Ice_LSHFO_Bulker_FC_Normalised_value_NSR_ptv = [SCE1_LSHFO_Ice_Bulker_FC_Normalised_value_NSR_ptv SCE2_LSHFO_Ice_Bulker_FC_Normalised_value_NSR_ptv];
Ice_LSHFO_Container_FC_Normalised_value_NSR_ptv = [SCE1_LSHFO_Ice_Container_FC_Normalised_value_NSR_ptv SCE2_LSHFO_Ice_Container_FC_Normalised_value_NSR_ptv];
Ice_LSHFO_Wet_Bulker_FC_Normalised_value_NSR_ptv = [SCE1_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv SCE2_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_NSR_ptv];    

Ice_LSHFO_Bulker_TC_Normalised_value_NSR_ptv = [SCE1_LSHFO_Ice_Bulker_TC_Normalised_value_NSR_ptv SCE2_LSHFO_Ice_Bulker_TC_Normalised_value_NSR_ptv];
Ice_LSHFO_Container_TC_Normalised_value_NSR_ptv = [SCE1_LSHFO_Ice_Container_TC_Normalised_value_NSR_ptv SCE2_LSHFO_Ice_Container_TC_Normalised_value_NSR_ptv];
Ice_LSHFO_Wet_Bulker_TC_Normalised_value_NSR_ptv = [SCE1_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv SCE2_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_NSR_ptv];    

Ice_Bulker_CT_Normalised_value_NSR_ptv = [SCE1_Ice_Bulker_CT_Normalised_value_NSR_ptv SCE2_Ice_Bulker_CT_Normalised_value_NSR_ptv];
Ice_Container_CT_Normalised_value_NSR_ptv = [SCE1_Ice_Container_CT_Normalised_value_NSR_ptv SCE2_Ice_Container_CT_Normalised_value_NSR_ptv];
Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv = [SCE1_Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv SCE2_Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv];

Ice_LSHFO_Bulker_CT_Normalised_value_NSR_ptv = [SCE1_LSHFO_Ice_Bulker_CT_Normalised_value_NSR_ptv SCE2_LSHFO_Ice_Bulker_CT_Normalised_value_NSR_ptv];
Ice_LSHFO_Container_CT_Normalised_value_NSR_ptv = [SCE1_LSHFO_Ice_Container_CT_Normalised_value_NSR_ptv SCE2_LSHFO_Ice_Container_CT_Normalised_value_NSR_ptv];
Ice_LSHFO_Wet_Bulker_CT_Normalised_value_NSR_ptv = [SCE1_LSHFO_Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv SCE2_LSHFO_Ice_Wet_Bulker_CT_Normalised_value_NSR_ptv];

Ice_Bulker_VC_Diff_NSR = [SCE1_Ice_Bulker_VC_Diff_NSR SCE2_Ice_Bulker_VC_Diff_NSR];

Ice_Bulker_OC_Diff_NSR = [SCE1_Ice_Bulker_OC_Diff_NSR SCE2_Ice_Bulker_OC_Diff_NSR];
Ice_Bulker_OC_Diff_NSR(isnan(Ice_Bulker_VC_Diff_NSR)) = NaN;

Ice_Bulker_CC_Diff_NSR = [SCE1_Ice_Bulker_CC_Diff_NSR SCE2_Ice_Bulker_CC_Diff_NSR];
Ice_Bulker_CC_Diff_NSR(isnan(Ice_Bulker_VC_Diff_NSR)) = NaN;

Ice_Bulker_CT_Diff_NSR = [SCE1_Ice_Bulker_CT_Diff_NSR SCE2_Ice_Bulker_CT_Diff_NSR];
Ice_Bulker_CT_Diff_NSR(isnan(Ice_Bulker_VC_Diff_NSR)) = NaN;

Ice_Bulker_APC_Diff_NSR = [SCE1_Ice_Bulker_APC_Diff_NSR SCE2_Ice_Bulker_APC_Diff_NSR];
Ice_Bulker_APC_Diff_NSR(isnan(Ice_Bulker_VC_Diff_NSR)) = NaN;

Ice_Bulker_ClC_Diff_NSR = [SCE1_Ice_Bulker_ClC_Diff_NSR SCE2_Ice_Bulker_ClC_Diff_NSR];
Ice_Bulker_ClC_Diff_NSR(isnan(Ice_Bulker_VC_Diff_NSR)) = NaN;

Ice_Bulker_Diff_NSR_t0 = [Ice_Bulker_VC_Diff_NSR(1,:)' Ice_Bulker_OC_Diff_NSR(1,:)' Ice_Bulker_CC_Diff_NSR(1,:)',...
    Ice_Bulker_CT_Diff_NSR(1,:)' Ice_Bulker_APC_Diff_NSR(1,:)' Ice_Bulker_ClC_Diff_NSR(1,:)']; Ice_Bulker_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Bulker_Diff_NSR_tm = [Ice_Bulker_VC_Diff_NSR(2,:)' Ice_Bulker_OC_Diff_NSR(2,:)' Ice_Bulker_CC_Diff_NSR(2,:)',...
    Ice_Bulker_CT_Diff_NSR(2,:)' Ice_Bulker_APC_Diff_NSR(2,:)' Ice_Bulker_ClC_Diff_NSR(2,:)'];  Ice_Bulker_Diff_NSR_tm(1:6:end,:) = [];
Ice_Bulker_Diff_NSR_tf = [Ice_Bulker_VC_Diff_NSR(3,:)' Ice_Bulker_OC_Diff_NSR(3,:)' Ice_Bulker_CC_Diff_NSR(3,:)',...
    Ice_Bulker_CT_Diff_NSR(3,:)' Ice_Bulker_APC_Diff_NSR(3,:)' Ice_Bulker_ClC_Diff_NSR(3,:)'];  Ice_Bulker_Diff_NSR_tf(1:6:end,:) = [];

Ice_Container_VC_Diff_NSR = [SCE1_Ice_Container_VC_Diff_NSR SCE2_Ice_Container_VC_Diff_NSR];

Ice_Container_OC_Diff_NSR = [SCE1_Ice_Container_OC_Diff_NSR SCE2_Ice_Container_OC_Diff_NSR];
Ice_Container_OC_Diff_NSR(isnan(Ice_Container_VC_Diff_NSR)) = NaN;

Ice_Container_CC_Diff_NSR = [SCE1_Ice_Container_CC_Diff_NSR SCE2_Ice_Container_CC_Diff_NSR];
Ice_Container_CC_Diff_NSR(isnan(Ice_Container_VC_Diff_NSR)) = NaN;

Ice_Container_CT_Diff_NSR = [SCE1_Ice_Container_CT_Diff_NSR SCE2_Ice_Container_CT_Diff_NSR];
Ice_Container_CT_Diff_NSR(isnan(Ice_Container_VC_Diff_NSR)) = NaN;

Ice_Container_APC_Diff_NSR = [SCE1_Ice_Container_APC_Diff_NSR SCE2_Ice_Container_APC_Diff_NSR];
Ice_Container_APC_Diff_NSR(isnan(Ice_Container_VC_Diff_NSR)) = NaN;

Ice_Container_ClC_Diff_NSR = [SCE1_Ice_Container_ClC_Diff_NSR SCE2_Ice_Container_ClC_Diff_NSR];
Ice_Container_ClC_Diff_NSR(isnan(Ice_Container_VC_Diff_NSR)) = NaN;

Ice_Container_Diff_NSR_t0 = [Ice_Container_VC_Diff_NSR(1,:)' Ice_Container_OC_Diff_NSR(1,:)' Ice_Container_CC_Diff_NSR(1,:)',...
    Ice_Container_CT_Diff_NSR(1,:)' Ice_Container_APC_Diff_NSR(1,:)' Ice_Container_ClC_Diff_NSR(1,:)']; Ice_Container_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Container_Diff_NSR_tm = [Ice_Container_VC_Diff_NSR(2,:)' Ice_Container_OC_Diff_NSR(2,:)' Ice_Container_CC_Diff_NSR(2,:)',...
    Ice_Container_CT_Diff_NSR(2,:)' Ice_Container_APC_Diff_NSR(2,:)' Ice_Container_ClC_Diff_NSR(2,:)'];  Ice_Container_Diff_NSR_tm(1:6:end,:) = [];
Ice_Container_Diff_NSR_tf = [Ice_Container_VC_Diff_NSR(3,:)' Ice_Container_OC_Diff_NSR(3,:)' Ice_Container_CC_Diff_NSR(3,:)',...
    Ice_Container_CT_Diff_NSR(3,:)' Ice_Container_APC_Diff_NSR(3,:)' Ice_Container_ClC_Diff_NSR(3,:)'];  Ice_Container_Diff_NSR_tf(1:6:end,:) = [];

Ice_Wet_Bulker_VC_Diff_NSR = [SCE1_Ice_Wet_Bulker_VC_Diff_NSR SCE2_Ice_Wet_Bulker_VC_Diff_NSR];

Ice_Wet_Bulker_OC_Diff_NSR = [SCE1_Ice_Wet_Bulker_OC_Diff_NSR SCE2_Ice_Wet_Bulker_OC_Diff_NSR];
Ice_Wet_Bulker_OC_Diff_NSR(isnan(Ice_Wet_Bulker_VC_Diff_NSR)) = NaN;

Ice_Wet_Bulker_CC_Diff_NSR = [SCE1_Ice_Wet_Bulker_CC_Diff_NSR SCE2_Ice_Wet_Bulker_CC_Diff_NSR];
Ice_Wet_Bulker_CC_Diff_NSR(isnan(Ice_Wet_Bulker_VC_Diff_NSR)) = NaN;

Ice_Wet_Bulker_CT_Diff_NSR = [SCE1_Ice_Wet_Bulker_CT_Diff_NSR SCE2_Ice_Wet_Bulker_CT_Diff_NSR];
Ice_Wet_Bulker_CT_Diff_NSR(isnan(Ice_Wet_Bulker_VC_Diff_NSR)) = NaN;

Ice_Wet_Bulker_APC_Diff_NSR = [SCE1_Ice_Wet_Bulker_APC_Diff_NSR SCE2_Ice_Wet_Bulker_APC_Diff_NSR];
Ice_Wet_Bulker_APC_Diff_NSR(isnan(Ice_Wet_Bulker_VC_Diff_NSR)) = NaN;

Ice_Wet_Bulker_ClC_Diff_NSR = [SCE1_Ice_Wet_Bulker_ClC_Diff_NSR SCE2_Ice_Wet_Bulker_ClC_Diff_NSR];
Ice_Wet_Bulker_ClC_Diff_NSR(isnan(Ice_Wet_Bulker_VC_Diff_NSR)) = NaN;

Ice_Wet_Bulker_Diff_NSR_t0 = [Ice_Wet_Bulker_VC_Diff_NSR(1,:)' Ice_Wet_Bulker_OC_Diff_NSR(1,:)' Ice_Wet_Bulker_CC_Diff_NSR(1,:)',...
    Ice_Wet_Bulker_CT_Diff_NSR(1,:)' Ice_Wet_Bulker_APC_Diff_NSR(1,:)' Ice_Wet_Bulker_ClC_Diff_NSR(1,:)']; Ice_Wet_Bulker_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Wet_Bulker_Diff_NSR_tm = [Ice_Wet_Bulker_VC_Diff_NSR(2,:)' Ice_Wet_Bulker_OC_Diff_NSR(2,:)' Ice_Wet_Bulker_CC_Diff_NSR(2,:)',...
    Ice_Wet_Bulker_CT_Diff_NSR(2,:)' Ice_Wet_Bulker_APC_Diff_NSR(2,:)' Ice_Wet_Bulker_ClC_Diff_NSR(2,:)'];  Ice_Wet_Bulker_Diff_NSR_tm(1:6:end,:) = [];
Ice_Wet_Bulker_Diff_NSR_tf = [Ice_Wet_Bulker_VC_Diff_NSR(3,:)' Ice_Wet_Bulker_OC_Diff_NSR(3,:)' Ice_Wet_Bulker_CC_Diff_NSR(3,:)',...
    Ice_Wet_Bulker_CT_Diff_NSR(3,:)' Ice_Wet_Bulker_APC_Diff_NSR(3,:)' Ice_Wet_Bulker_ClC_Diff_NSR(3,:)'];  Ice_Wet_Bulker_Diff_NSR_tf(1:6:end,:) = [];

%Emissions
Ice_Bulker_CO2eq_Diff_NSR = [SCE1_Ice_Bulker_CO2eq_Diff_NSR SCE2_Ice_Bulker_CO2eq_Diff_NSR];

Ice_Bulker_SOx_Diff_NSR = [SCE1_Ice_Bulker_SOx_Diff_NSR SCE2_Ice_Bulker_SOx_Diff_NSR];
Ice_Bulker_SOx_Diff_NSR(isnan(Ice_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_Bulker_NOx_Diff_NSR = [SCE1_Ice_Bulker_NOx_Diff_NSR SCE2_Ice_Bulker_NOx_Diff_NSR];
Ice_Bulker_NOx_Diff_NSR(isnan(Ice_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_Bulker_PM_Diff_NSR = [SCE1_Ice_Bulker_PM_Diff_NSR SCE2_Ice_Bulker_PM_Diff_NSR];
Ice_Bulker_PM_Diff_NSR(isnan(Ice_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_Bulker_Emissions_Diff_NSR_t0 = [Ice_Bulker_CO2eq_Diff_NSR(1,:)' Ice_Bulker_SOx_Diff_NSR(1,:)' Ice_Bulker_NOx_Diff_NSR(1,:)',...
    Ice_Bulker_PM_Diff_NSR(1,:)']; Ice_Bulker_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Bulker_Emissions_Diff_NSR_tm = [Ice_Bulker_CO2eq_Diff_NSR(2,:)' Ice_Bulker_SOx_Diff_NSR(2,:)' Ice_Bulker_NOx_Diff_NSR(2,:)',...
    Ice_Bulker_PM_Diff_NSR(2,:)']; Ice_Bulker_Emissions_Diff_NSR_tm(1:6:end,:) = [];
Ice_Bulker_Emissions_Diff_NSR_tf = [Ice_Bulker_CO2eq_Diff_NSR(3,:)' Ice_Bulker_SOx_Diff_NSR(3,:)' Ice_Bulker_NOx_Diff_NSR(3,:)',...
    Ice_Bulker_PM_Diff_NSR(3,:)']; Ice_Bulker_Emissions_Diff_NSR_tf(1:6:end,:) = [];

Ice_Container_CO2eq_Diff_NSR = [SCE1_Ice_Container_CO2eq_Diff_NSR SCE2_Ice_Container_CO2eq_Diff_NSR];

Ice_Container_SOx_Diff_NSR = [SCE1_Ice_Container_SOx_Diff_NSR SCE2_Ice_Container_SOx_Diff_NSR];
Ice_Container_SOx_Diff_NSR(isnan(Ice_Container_CO2eq_Diff_NSR)) = NaN;

Ice_Container_NOx_Diff_NSR = [SCE1_Ice_Container_NOx_Diff_NSR SCE2_Ice_Container_NOx_Diff_NSR];
Ice_Container_NOx_Diff_NSR(isnan(Ice_Container_CO2eq_Diff_NSR)) = NaN;

Ice_Container_PM_Diff_NSR = [SCE1_Ice_Container_PM_Diff_NSR SCE2_Ice_Container_PM_Diff_NSR];
Ice_Container_PM_Diff_NSR(isnan(Ice_Container_CO2eq_Diff_NSR)) = NaN;

Ice_Container_Emissions_Diff_NSR_t0 = [Ice_Container_CO2eq_Diff_NSR(1,:)' Ice_Container_SOx_Diff_NSR(1,:)' Ice_Container_NOx_Diff_NSR(1,:)',...
    Ice_Container_PM_Diff_NSR(1,:)']; Ice_Container_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Container_Emissions_Diff_NSR_tm = [Ice_Container_CO2eq_Diff_NSR(2,:)' Ice_Container_SOx_Diff_NSR(2,:)' Ice_Container_NOx_Diff_NSR(2,:)',...
    Ice_Container_PM_Diff_NSR(2,:)']; Ice_Container_Emissions_Diff_NSR_tm(1:6:end,:) = [];
Ice_Container_Emissions_Diff_NSR_tf = [Ice_Container_CO2eq_Diff_NSR(3,:)' Ice_Container_SOx_Diff_NSR(3,:)' Ice_Container_NOx_Diff_NSR(3,:)',...
    Ice_Container_PM_Diff_NSR(3,:)']; Ice_Container_Emissions_Diff_NSR_tf(1:6:end,:) = [];

Ice_Wet_Bulker_CO2eq_Diff_NSR = [SCE1_Ice_Wet_Bulker_CO2eq_Diff_NSR SCE2_Ice_Wet_Bulker_CO2eq_Diff_NSR];

Ice_Wet_Bulker_SOx_Diff_NSR = [SCE1_Ice_Wet_Bulker_SOx_Diff_NSR SCE2_Ice_Wet_Bulker_SOx_Diff_NSR];
Ice_Wet_Bulker_SOx_Diff_NSR(isnan(Ice_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_Wet_Bulker_NOx_Diff_NSR = [SCE1_Ice_Wet_Bulker_NOx_Diff_NSR SCE2_Ice_Wet_Bulker_NOx_Diff_NSR];
Ice_Wet_Bulker_NOx_Diff_NSR(isnan(Ice_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_Wet_Bulker_PM_Diff_NSR = [SCE1_Ice_Wet_Bulker_PM_Diff_NSR SCE2_Ice_Wet_Bulker_PM_Diff_NSR];
Ice_Wet_Bulker_PM_Diff_NSR(isnan(Ice_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_Wet_Bulker_Emissions_Diff_NSR_t0 = [Ice_Wet_Bulker_CO2eq_Diff_NSR(1,:)' Ice_Wet_Bulker_SOx_Diff_NSR(1,:)' Ice_Wet_Bulker_NOx_Diff_NSR(1,:)',...
    Ice_Wet_Bulker_PM_Diff_NSR(1,:)']; Ice_Wet_Bulker_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Wet_Bulker_Emissions_Diff_NSR_tm = [Ice_Wet_Bulker_CO2eq_Diff_NSR(2,:)' Ice_Wet_Bulker_SOx_Diff_NSR(2,:)' Ice_Wet_Bulker_NOx_Diff_NSR(2,:)',...
    Ice_Wet_Bulker_PM_Diff_NSR(2,:)']; Ice_Wet_Bulker_Emissions_Diff_NSR_tm(1:6:end,:) = [];
Ice_Wet_Bulker_Emissions_Diff_NSR_tf = [Ice_Wet_Bulker_CO2eq_Diff_NSR(3,:)' Ice_Wet_Bulker_SOx_Diff_NSR(3,:)' Ice_Wet_Bulker_NOx_Diff_NSR(3,:)',...
    Ice_Wet_Bulker_PM_Diff_NSR(3,:)']; Ice_Wet_Bulker_Emissions_Diff_NSR_tf(1:6:end,:) = [];


%LSHFO
Ice_LSHFO_Bulker_VC_Diff_NSR = [SCE1_LSHFO_Ice_Bulker_VC_Diff_NSR SCE2_LSHFO_Ice_Bulker_VC_Diff_NSR];

Ice_LSHFO_Bulker_OC_Diff_NSR = [SCE1_LSHFO_Ice_Bulker_OC_Diff_NSR SCE2_LSHFO_Ice_Bulker_OC_Diff_NSR];
Ice_LSHFO_Bulker_OC_Diff_NSR(isnan(Ice_LSHFO_Bulker_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Bulker_CC_Diff_NSR = [SCE1_LSHFO_Ice_Bulker_CC_Diff_NSR SCE2_LSHFO_Ice_Bulker_CC_Diff_NSR];
Ice_LSHFO_Bulker_CC_Diff_NSR(isnan(Ice_LSHFO_Bulker_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Bulker_CT_Diff_NSR = [SCE1_LSHFO_Ice_Bulker_CT_Diff_NSR SCE2_LSHFO_Ice_Bulker_CT_Diff_NSR];
Ice_LSHFO_Bulker_CT_Diff_NSR(isnan(Ice_LSHFO_Bulker_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Bulker_APC_Diff_NSR = [SCE1_LSHFO_Ice_Bulker_APC_Diff_NSR SCE2_LSHFO_Ice_Bulker_APC_Diff_NSR];
Ice_LSHFO_Bulker_APC_Diff_NSR(isnan(Ice_LSHFO_Bulker_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Bulker_ClC_Diff_NSR = [SCE1_LSHFO_Ice_Bulker_ClC_Diff_NSR SCE2_LSHFO_Ice_Bulker_ClC_Diff_NSR];
Ice_LSHFO_Bulker_ClC_Diff_NSR(isnan(Ice_LSHFO_Bulker_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Bulker_Diff_NSR_t0 = [Ice_LSHFO_Bulker_VC_Diff_NSR(1,:)' Ice_LSHFO_Bulker_OC_Diff_NSR(1,:)' Ice_LSHFO_Bulker_CC_Diff_NSR(1,:)',...
    Ice_LSHFO_Bulker_CT_Diff_NSR(1,:)' Ice_LSHFO_Bulker_APC_Diff_NSR(1,:)' Ice_LSHFO_Bulker_ClC_Diff_NSR(1,:)']; Ice_LSHFO_Bulker_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Bulker_Diff_NSR_tm = [Ice_LSHFO_Bulker_VC_Diff_NSR(2,:)' Ice_LSHFO_Bulker_OC_Diff_NSR(2,:)' Ice_LSHFO_Bulker_CC_Diff_NSR(2,:)',...
    Ice_LSHFO_Bulker_CT_Diff_NSR(2,:)' Ice_LSHFO_Bulker_APC_Diff_NSR(2,:)' Ice_LSHFO_Bulker_ClC_Diff_NSR(2,:)'];  Ice_LSHFO_Bulker_Diff_NSR_tm(1:6:end,:) = [];
Ice_LSHFO_Bulker_Diff_NSR_tf = [Ice_LSHFO_Bulker_VC_Diff_NSR(3,:)' Ice_LSHFO_Bulker_OC_Diff_NSR(3,:)' Ice_LSHFO_Bulker_CC_Diff_NSR(3,:)',...
    Ice_LSHFO_Bulker_CT_Diff_NSR(3,:)' Ice_LSHFO_Bulker_APC_Diff_NSR(3,:)' Ice_LSHFO_Bulker_ClC_Diff_NSR(3,:)'];  Ice_LSHFO_Bulker_Diff_NSR_tf(1:6:end,:) = [];

Ice_LSHFO_Container_VC_Diff_NSR = [SCE1_LSHFO_Ice_Container_VC_Diff_NSR SCE2_LSHFO_Ice_Container_VC_Diff_NSR];

Ice_LSHFO_Container_OC_Diff_NSR = [SCE1_LSHFO_Ice_Container_OC_Diff_NSR SCE2_LSHFO_Ice_Container_OC_Diff_NSR];
Ice_LSHFO_Container_OC_Diff_NSR(isnan(Ice_LSHFO_Container_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Container_CC_Diff_NSR = [SCE1_LSHFO_Ice_Container_CC_Diff_NSR SCE2_LSHFO_Ice_Container_CC_Diff_NSR];
Ice_LSHFO_Container_CC_Diff_NSR(isnan(Ice_LSHFO_Container_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Container_CT_Diff_NSR = [SCE1_LSHFO_Ice_Container_CT_Diff_NSR SCE2_LSHFO_Ice_Container_CT_Diff_NSR];
Ice_LSHFO_Container_CT_Diff_NSR(isnan(Ice_LSHFO_Container_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Container_APC_Diff_NSR = [SCE1_LSHFO_Ice_Container_APC_Diff_NSR SCE2_LSHFO_Ice_Container_APC_Diff_NSR];
Ice_LSHFO_Container_APC_Diff_NSR(isnan(Ice_LSHFO_Container_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Container_ClC_Diff_NSR = [SCE1_LSHFO_Ice_Container_ClC_Diff_NSR SCE2_LSHFO_Ice_Container_ClC_Diff_NSR];
Ice_LSHFO_Container_ClC_Diff_NSR(isnan(Ice_LSHFO_Container_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Container_Diff_NSR_t0 = [Ice_LSHFO_Container_VC_Diff_NSR(1,:)' Ice_LSHFO_Container_OC_Diff_NSR(1,:)' Ice_LSHFO_Container_CC_Diff_NSR(1,:)',...
    Ice_LSHFO_Container_CT_Diff_NSR(1,:)' Ice_LSHFO_Container_APC_Diff_NSR(1,:)' Ice_LSHFO_Container_ClC_Diff_NSR(1,:)']; Ice_LSHFO_Container_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Container_Diff_NSR_tm = [Ice_LSHFO_Container_VC_Diff_NSR(2,:)' Ice_LSHFO_Container_OC_Diff_NSR(2,:)' Ice_LSHFO_Container_CC_Diff_NSR(2,:)',...
    Ice_LSHFO_Container_CT_Diff_NSR(2,:)' Ice_LSHFO_Container_APC_Diff_NSR(2,:)' Ice_LSHFO_Container_ClC_Diff_NSR(2,:)'];  Ice_LSHFO_Container_Diff_NSR_tm(1:6:end,:) = [];
Ice_LSHFO_Container_Diff_NSR_tf = [Ice_LSHFO_Container_VC_Diff_NSR(3,:)' Ice_LSHFO_Container_OC_Diff_NSR(3,:)' Ice_LSHFO_Container_CC_Diff_NSR(3,:)',...
    Ice_LSHFO_Container_CT_Diff_NSR(3,:)' Ice_LSHFO_Container_APC_Diff_NSR(3,:)' Ice_LSHFO_Container_ClC_Diff_NSR(3,:)'];  Ice_LSHFO_Container_Diff_NSR_tf(1:6:end,:) = [];

Ice_LSHFO_Wet_Bulker_VC_Diff_NSR = [SCE1_LSHFO_Ice_Wet_Bulker_VC_Diff_NSR SCE2_LSHFO_Ice_Wet_Bulker_VC_Diff_NSR];

Ice_LSHFO_Wet_Bulker_OC_Diff_NSR = [SCE1_LSHFO_Ice_Wet_Bulker_OC_Diff_NSR SCE2_LSHFO_Ice_Wet_Bulker_OC_Diff_NSR];
Ice_LSHFO_Wet_Bulker_OC_Diff_NSR(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Wet_Bulker_CC_Diff_NSR = [SCE1_LSHFO_Ice_Wet_Bulker_CC_Diff_NSR SCE2_LSHFO_Ice_Wet_Bulker_CC_Diff_NSR];
Ice_LSHFO_Wet_Bulker_CC_Diff_NSR(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Wet_Bulker_CT_Diff_NSR = [SCE1_LSHFO_Ice_Wet_Bulker_CT_Diff_NSR SCE2_LSHFO_Ice_Wet_Bulker_CT_Diff_NSR];
Ice_LSHFO_Wet_Bulker_CT_Diff_NSR(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Wet_Bulker_APC_Diff_NSR = [SCE1_LSHFO_Ice_Wet_Bulker_APC_Diff_NSR SCE2_LSHFO_Ice_Wet_Bulker_APC_Diff_NSR];
Ice_LSHFO_Wet_Bulker_APC_Diff_NSR(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Wet_Bulker_ClC_Diff_NSR = [SCE1_LSHFO_Ice_Wet_Bulker_ClC_Diff_NSR SCE2_LSHFO_Ice_Wet_Bulker_ClC_Diff_NSR];
Ice_LSHFO_Wet_Bulker_ClC_Diff_NSR(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_NSR)) = NaN;

Ice_LSHFO_Wet_Bulker_Diff_NSR_t0 = [Ice_LSHFO_Wet_Bulker_VC_Diff_NSR(1,:)' Ice_LSHFO_Wet_Bulker_OC_Diff_NSR(1,:)' Ice_LSHFO_Wet_Bulker_CC_Diff_NSR(1,:)',...
    Ice_LSHFO_Wet_Bulker_CT_Diff_NSR(1,:)' Ice_LSHFO_Wet_Bulker_APC_Diff_NSR(1,:)' Ice_LSHFO_Wet_Bulker_ClC_Diff_NSR(1,:)']; Ice_LSHFO_Wet_Bulker_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Wet_Bulker_Diff_NSR_tm = [Ice_LSHFO_Wet_Bulker_VC_Diff_NSR(2,:)' Ice_LSHFO_Wet_Bulker_OC_Diff_NSR(2,:)' Ice_LSHFO_Wet_Bulker_CC_Diff_NSR(2,:)',...
    Ice_LSHFO_Wet_Bulker_CT_Diff_NSR(2,:)' Ice_LSHFO_Wet_Bulker_APC_Diff_NSR(2,:)' Ice_LSHFO_Wet_Bulker_ClC_Diff_NSR(2,:)'];  Ice_LSHFO_Wet_Bulker_Diff_NSR_tm(1:6:end,:) = [];
Ice_LSHFO_Wet_Bulker_Diff_NSR_tf = [Ice_LSHFO_Wet_Bulker_VC_Diff_NSR(3,:)' Ice_LSHFO_Wet_Bulker_OC_Diff_NSR(3,:)' Ice_LSHFO_Wet_Bulker_CC_Diff_NSR(3,:)',...
    Ice_LSHFO_Wet_Bulker_CT_Diff_NSR(3,:)' Ice_LSHFO_Wet_Bulker_APC_Diff_NSR(3,:)' Ice_LSHFO_Wet_Bulker_ClC_Diff_NSR(3,:)'];  Ice_LSHFO_Wet_Bulker_Diff_NSR_tf(1:6:end,:) = [];

Ice_LSHFO_Bulker_CO2eq_Diff_NSR = [SCE1_LSHFO_Ice_Bulker_CO2eq_Diff_NSR SCE2_LSHFO_Ice_Bulker_CO2eq_Diff_NSR];

Ice_LSHFO_Bulker_SOx_Diff_NSR = [SCE1_LSHFO_Ice_Bulker_SOx_Diff_NSR SCE2_LSHFO_Ice_Bulker_SOx_Diff_NSR];
Ice_LSHFO_Bulker_SOx_Diff_NSR(isnan(Ice_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_LSHFO_Bulker_NOx_Diff_NSR = [SCE1_LSHFO_Ice_Bulker_NOx_Diff_NSR SCE2_LSHFO_Ice_Bulker_NOx_Diff_NSR];
Ice_LSHFO_Bulker_NOx_Diff_NSR(isnan(Ice_LSHFO_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_LSHFO_Bulker_PM_Diff_NSR = [SCE1_LSHFO_Ice_Bulker_PM_Diff_NSR SCE2_LSHFO_Ice_Bulker_PM_Diff_NSR];
Ice_LSHFO_Bulker_PM_Diff_NSR(isnan(Ice_LSHFO_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_LSHFO_Bulker_Emissions_Diff_NSR_t0 = [Ice_LSHFO_Bulker_CO2eq_Diff_NSR(1,:)' Ice_LSHFO_Bulker_SOx_Diff_NSR(1,:)' Ice_LSHFO_Bulker_NOx_Diff_NSR(1,:)',...
    Ice_LSHFO_Bulker_PM_Diff_NSR(1,:)']; Ice_LSHFO_Bulker_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Bulker_Emissions_Diff_NSR_tm = [Ice_LSHFO_Bulker_CO2eq_Diff_NSR(2,:)' Ice_LSHFO_Bulker_SOx_Diff_NSR(2,:)' Ice_LSHFO_Bulker_NOx_Diff_NSR(2,:)',...
    Ice_LSHFO_Bulker_PM_Diff_NSR(2,:)']; Ice_LSHFO_Bulker_Emissions_Diff_NSR_tm(1:6:end,:) = [];
Ice_LSHFO_Bulker_Emissions_Diff_NSR_tf = [Ice_LSHFO_Bulker_CO2eq_Diff_NSR(3,:)' Ice_LSHFO_Bulker_SOx_Diff_NSR(3,:)' Ice_LSHFO_Bulker_NOx_Diff_NSR(3,:)',...
    Ice_LSHFO_Bulker_PM_Diff_NSR(3,:)']; Ice_LSHFO_Bulker_Emissions_Diff_NSR_tf(1:6:end,:) = [];

Ice_LSHFO_Container_CO2eq_Diff_NSR = [SCE1_LSHFO_Ice_Container_CO2eq_Diff_NSR SCE2_LSHFO_Ice_Container_CO2eq_Diff_NSR];

Ice_LSHFO_Container_SOx_Diff_NSR = [SCE1_LSHFO_Ice_Container_SOx_Diff_NSR SCE2_LSHFO_Ice_Container_SOx_Diff_NSR];
Ice_LSHFO_Container_SOx_Diff_NSR(isnan(Ice_LSHFO_Container_CO2eq_Diff_NSR)) = NaN;

Ice_LSHFO_Container_NOx_Diff_NSR = [SCE1_LSHFO_Ice_Container_NOx_Diff_NSR SCE2_LSHFO_Ice_Container_NOx_Diff_NSR];
Ice_LSHFO_Container_NOx_Diff_NSR(isnan(Ice_LSHFO_Container_CO2eq_Diff_NSR)) = NaN;

Ice_LSHFO_Container_PM_Diff_NSR = [SCE1_LSHFO_Ice_Container_PM_Diff_NSR SCE2_LSHFO_Ice_Container_PM_Diff_NSR];
Ice_LSHFO_Container_PM_Diff_NSR(isnan(Ice_LSHFO_Container_CO2eq_Diff_NSR)) = NaN;

Ice_LSHFO_Container_Emissions_Diff_NSR_t0 = [Ice_LSHFO_Container_CO2eq_Diff_NSR(1,:)' Ice_LSHFO_Container_SOx_Diff_NSR(1,:)' Ice_LSHFO_Container_NOx_Diff_NSR(1,:)',...
    Ice_LSHFO_Container_PM_Diff_NSR(1,:)']; Ice_LSHFO_Container_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Container_Emissions_Diff_NSR_tm = [Ice_LSHFO_Container_CO2eq_Diff_NSR(2,:)' Ice_LSHFO_Container_SOx_Diff_NSR(2,:)' Ice_LSHFO_Container_NOx_Diff_NSR(2,:)',...
    Ice_LSHFO_Container_PM_Diff_NSR(2,:)']; Ice_LSHFO_Container_Emissions_Diff_NSR_tm(1:6:end,:) = [];
Ice_LSHFO_Container_Emissions_Diff_NSR_tf = [Ice_LSHFO_Container_CO2eq_Diff_NSR(3,:)' Ice_LSHFO_Container_SOx_Diff_NSR(3,:)' Ice_LSHFO_Container_NOx_Diff_NSR(3,:)',...
    Ice_LSHFO_Container_PM_Diff_NSR(3,:)']; Ice_LSHFO_Container_Emissions_Diff_NSR_tf(1:6:end,:) = [];

Ice_LSHFO_Wet_Bulker_CO2eq_Diff_NSR = [SCE1_LSHFO_Ice_Wet_Bulker_CO2eq_Diff_NSR SCE2_LSHFO_Ice_Wet_Bulker_CO2eq_Diff_NSR];

Ice_LSHFO_Wet_Bulker_SOx_Diff_NSR = [SCE1_LSHFO_Ice_Wet_Bulker_SOx_Diff_NSR SCE2_LSHFO_Ice_Wet_Bulker_SOx_Diff_NSR];
Ice_LSHFO_Wet_Bulker_SOx_Diff_NSR(isnan(Ice_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_LSHFO_Wet_Bulker_NOx_Diff_NSR = [SCE1_LSHFO_Ice_Wet_Bulker_NOx_Diff_NSR SCE2_LSHFO_Ice_Wet_Bulker_NOx_Diff_NSR];
Ice_LSHFO_Wet_Bulker_NOx_Diff_NSR(isnan(Ice_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_LSHFO_Wet_Bulker_PM_Diff_NSR = [SCE1_LSHFO_Ice_Wet_Bulker_PM_Diff_NSR SCE2_LSHFO_Ice_Wet_Bulker_PM_Diff_NSR];
Ice_LSHFO_Wet_Bulker_PM_Diff_NSR(isnan(Ice_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;

Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_t0 = [Ice_LSHFO_Wet_Bulker_CO2eq_Diff_NSR(1,:)' Ice_LSHFO_Wet_Bulker_SOx_Diff_NSR(1,:)' Ice_LSHFO_Wet_Bulker_NOx_Diff_NSR(1,:)',...
    Ice_LSHFO_Wet_Bulker_PM_Diff_NSR(1,:)']; Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tm = [Ice_LSHFO_Wet_Bulker_CO2eq_Diff_NSR(2,:)' Ice_LSHFO_Wet_Bulker_SOx_Diff_NSR(2,:)' Ice_LSHFO_Wet_Bulker_NOx_Diff_NSR(2,:)',...
    Ice_LSHFO_Wet_Bulker_PM_Diff_NSR(2,:)']; Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tm(1:6:end,:) = [];
Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tf = [Ice_LSHFO_Wet_Bulker_CO2eq_Diff_NSR(3,:)' Ice_LSHFO_Wet_Bulker_SOx_Diff_NSR(3,:)' Ice_LSHFO_Wet_Bulker_NOx_Diff_NSR(3,:)',...
    Ice_LSHFO_Wet_Bulker_PM_Diff_NSR(3,:)']; Ice_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tf(1:6:end,:) = [];

%INT
Ice_Bulker_FC_Normalised_value_INT_ptv = [SCE1_Ice_Bulker_FC_Normalised_value_INT_ptv SCE2_Ice_Bulker_FC_Normalised_value_INT_ptv];
Ice_Container_FC_Normalised_value_INT_ptv = [SCE1_Ice_Container_FC_Normalised_value_INT_ptv SCE2_Ice_Container_FC_Normalised_value_INT_ptv];
Ice_Wet_Bulker_FC_Normalised_value_INT_ptv = [SCE1_Ice_Wet_Bulker_FC_Normalised_value_INT_ptv SCE2_Ice_Wet_Bulker_FC_Normalised_value_INT_ptv];    

Ice_Bulker_TC_Normalised_value_INT_ptv = [SCE1_Ice_Bulker_TC_Normalised_value_INT_ptv SCE2_Ice_Bulker_TC_Normalised_value_INT_ptv];
Ice_Container_TC_Normalised_value_INT_ptv = [SCE1_Ice_Container_TC_Normalised_value_INT_ptv SCE2_Ice_Container_TC_Normalised_value_INT_ptv];
Ice_Wet_Bulker_TC_Normalised_value_INT_ptv = [SCE1_Ice_Wet_Bulker_TC_Normalised_value_INT_ptv SCE2_Ice_Wet_Bulker_TC_Normalised_value_INT_ptv];    

Ice_LSHFO_Bulker_FC_Normalised_value_INT_ptv = [SCE1_LSHFO_Ice_Bulker_FC_Normalised_value_INT_ptv SCE2_LSHFO_Ice_Bulker_FC_Normalised_value_INT_ptv];
Ice_LSHFO_Container_FC_Normalised_value_INT_ptv = [SCE1_LSHFO_Ice_Container_FC_Normalised_value_INT_ptv SCE2_LSHFO_Ice_Container_FC_Normalised_value_INT_ptv];
Ice_LSHFO_Wet_Bulker_FC_Normalised_value_INT_ptv = [SCE1_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_INT_ptv SCE2_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_INT_ptv];    

Ice_LSHFO_Bulker_TC_Normalised_value_INT_ptv = [SCE1_LSHFO_Ice_Bulker_TC_Normalised_value_INT_ptv SCE2_LSHFO_Ice_Bulker_TC_Normalised_value_INT_ptv];
Ice_LSHFO_Container_TC_Normalised_value_INT_ptv = [SCE1_LSHFO_Ice_Container_TC_Normalised_value_INT_ptv SCE2_LSHFO_Ice_Container_TC_Normalised_value_INT_ptv];
Ice_LSHFO_Wet_Bulker_TC_Normalised_value_INT_ptv = [SCE1_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_INT_ptv SCE2_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_INT_ptv];    

Ice_Bulker_VC_Diff_INT = [SCE1_Ice_Bulker_VC_Diff_INT SCE2_Ice_Bulker_VC_Diff_INT];

Ice_Bulker_OC_Diff_INT = [SCE1_Ice_Bulker_OC_Diff_INT SCE2_Ice_Bulker_OC_Diff_INT];
Ice_Bulker_OC_Diff_INT(isnan(Ice_Bulker_VC_Diff_INT)) = NaN;

Ice_Bulker_CC_Diff_INT = [SCE1_Ice_Bulker_CC_Diff_INT SCE2_Ice_Bulker_CC_Diff_INT];
Ice_Bulker_CC_Diff_INT(isnan(Ice_Bulker_VC_Diff_INT)) = NaN;

Ice_Bulker_CT_Diff_INT = [SCE1_Ice_Bulker_CT_Diff_INT SCE2_Ice_Bulker_CT_Diff_INT];
Ice_Bulker_CT_Diff_INT(isnan(Ice_Bulker_VC_Diff_INT)) = NaN;

Ice_Bulker_APC_Diff_INT = [SCE1_Ice_Bulker_APC_Diff_INT SCE2_Ice_Bulker_APC_Diff_INT];
Ice_Bulker_APC_Diff_INT(isnan(Ice_Bulker_VC_Diff_INT)) = NaN;

Ice_Bulker_ClC_Diff_INT = [SCE1_Ice_Bulker_ClC_Diff_INT SCE2_Ice_Bulker_ClC_Diff_INT];
Ice_Bulker_ClC_Diff_INT(isnan(Ice_Bulker_VC_Diff_INT)) = NaN;

Ice_Bulker_Diff_INT_t0 = [Ice_Bulker_VC_Diff_INT(1,:)' Ice_Bulker_OC_Diff_INT(1,:)' Ice_Bulker_CC_Diff_INT(1,:)',...
    Ice_Bulker_CT_Diff_INT(1,:)' Ice_Bulker_APC_Diff_INT(1,:)' Ice_Bulker_ClC_Diff_INT(1,:)']; Ice_Bulker_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Bulker_Diff_INT_tm = [Ice_Bulker_VC_Diff_INT(2,:)' Ice_Bulker_OC_Diff_INT(2,:)' Ice_Bulker_CC_Diff_INT(2,:)',...
    Ice_Bulker_CT_Diff_INT(2,:)' Ice_Bulker_APC_Diff_INT(2,:)' Ice_Bulker_ClC_Diff_INT(2,:)'];  Ice_Bulker_Diff_INT_tm(1:6:end,:) = [];
Ice_Bulker_Diff_INT_tf = [Ice_Bulker_VC_Diff_INT(3,:)' Ice_Bulker_OC_Diff_INT(3,:)' Ice_Bulker_CC_Diff_INT(3,:)',...
    Ice_Bulker_CT_Diff_INT(3,:)' Ice_Bulker_APC_Diff_INT(3,:)' Ice_Bulker_ClC_Diff_INT(3,:)'];  Ice_Bulker_Diff_INT_tf(1:6:end,:) = [];

Ice_Container_VC_Diff_INT = [SCE1_Ice_Container_VC_Diff_INT SCE2_Ice_Container_VC_Diff_INT];

Ice_Container_OC_Diff_INT = [SCE1_Ice_Container_OC_Diff_INT SCE2_Ice_Container_OC_Diff_INT];
Ice_Container_OC_Diff_INT(isnan(Ice_Container_VC_Diff_INT)) = NaN;

Ice_Container_CC_Diff_INT = [SCE1_Ice_Container_CC_Diff_INT SCE2_Ice_Container_CC_Diff_INT];
Ice_Container_CC_Diff_INT(isnan(Ice_Container_VC_Diff_INT)) = NaN;

Ice_Container_CT_Diff_INT = [SCE1_Ice_Container_CT_Diff_INT SCE2_Ice_Container_CT_Diff_INT];
Ice_Container_CT_Diff_INT(isnan(Ice_Container_VC_Diff_INT)) = NaN;

Ice_Container_APC_Diff_INT = [SCE1_Ice_Container_APC_Diff_INT SCE2_Ice_Container_APC_Diff_INT];
Ice_Container_APC_Diff_INT(isnan(Ice_Container_VC_Diff_INT)) = NaN;

Ice_Container_ClC_Diff_INT = [SCE1_Ice_Container_ClC_Diff_INT SCE2_Ice_Container_ClC_Diff_INT];
Ice_Container_ClC_Diff_INT(isnan(Ice_Container_VC_Diff_INT)) = NaN;

Ice_Container_Diff_INT_t0 = [Ice_Container_VC_Diff_INT(1,:)' Ice_Container_OC_Diff_INT(1,:)' Ice_Container_CC_Diff_INT(1,:)',...
    Ice_Container_CT_Diff_INT(1,:)' Ice_Container_APC_Diff_INT(1,:)' Ice_Container_ClC_Diff_INT(1,:)']; Ice_Container_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Container_Diff_INT_tm = [Ice_Container_VC_Diff_INT(2,:)' Ice_Container_OC_Diff_INT(2,:)' Ice_Container_CC_Diff_INT(2,:)',...
    Ice_Container_CT_Diff_INT(2,:)' Ice_Container_APC_Diff_INT(2,:)' Ice_Container_ClC_Diff_INT(2,:)'];  Ice_Container_Diff_INT_tm(1:6:end,:) = [];
Ice_Container_Diff_INT_tf = [Ice_Container_VC_Diff_INT(3,:)' Ice_Container_OC_Diff_INT(3,:)' Ice_Container_CC_Diff_INT(3,:)',...
    Ice_Container_CT_Diff_INT(3,:)' Ice_Container_APC_Diff_INT(3,:)' Ice_Container_ClC_Diff_INT(3,:)'];  Ice_Container_Diff_INT_tf(1:6:end,:) = [];

Ice_Wet_Bulker_VC_Diff_INT = [SCE1_Ice_Wet_Bulker_VC_Diff_INT SCE2_Ice_Wet_Bulker_VC_Diff_INT];

Ice_Wet_Bulker_OC_Diff_INT = [SCE1_Ice_Wet_Bulker_OC_Diff_INT SCE2_Ice_Wet_Bulker_OC_Diff_INT];
Ice_Wet_Bulker_OC_Diff_INT(isnan(Ice_Wet_Bulker_VC_Diff_INT)) = NaN;

Ice_Wet_Bulker_CC_Diff_INT = [SCE1_Ice_Wet_Bulker_CC_Diff_INT SCE2_Ice_Wet_Bulker_CC_Diff_INT];
Ice_Wet_Bulker_CC_Diff_INT(isnan(Ice_Wet_Bulker_VC_Diff_INT)) = NaN;

Ice_Wet_Bulker_CT_Diff_INT = [SCE1_Ice_Wet_Bulker_CT_Diff_INT SCE2_Ice_Wet_Bulker_CT_Diff_INT];
Ice_Wet_Bulker_CT_Diff_INT(isnan(Ice_Wet_Bulker_VC_Diff_INT)) = NaN;

Ice_Wet_Bulker_APC_Diff_INT = [SCE1_Ice_Wet_Bulker_APC_Diff_INT SCE2_Ice_Wet_Bulker_APC_Diff_INT];
Ice_Wet_Bulker_APC_Diff_INT(isnan(Ice_Wet_Bulker_VC_Diff_INT)) = NaN;

Ice_Wet_Bulker_ClC_Diff_INT = [SCE1_Ice_Wet_Bulker_ClC_Diff_INT SCE2_Ice_Wet_Bulker_ClC_Diff_INT];
Ice_Wet_Bulker_ClC_Diff_INT(isnan(Ice_Wet_Bulker_VC_Diff_INT)) = NaN;

Ice_Wet_Bulker_Diff_INT_t0 = [Ice_Wet_Bulker_VC_Diff_INT(1,:)' Ice_Wet_Bulker_OC_Diff_INT(1,:)' Ice_Wet_Bulker_CC_Diff_INT(1,:)',...
    Ice_Wet_Bulker_CT_Diff_INT(1,:)' Ice_Wet_Bulker_APC_Diff_INT(1,:)' Ice_Wet_Bulker_ClC_Diff_INT(1,:)']; Ice_Wet_Bulker_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Wet_Bulker_Diff_INT_tm = [Ice_Wet_Bulker_VC_Diff_INT(2,:)' Ice_Wet_Bulker_OC_Diff_INT(2,:)' Ice_Wet_Bulker_CC_Diff_INT(2,:)',...
    Ice_Wet_Bulker_CT_Diff_INT(2,:)' Ice_Wet_Bulker_APC_Diff_INT(2,:)' Ice_Wet_Bulker_ClC_Diff_INT(2,:)'];  Ice_Wet_Bulker_Diff_INT_tm(1:6:end,:) = [];
Ice_Wet_Bulker_Diff_INT_tf = [Ice_Wet_Bulker_VC_Diff_INT(3,:)' Ice_Wet_Bulker_OC_Diff_INT(3,:)' Ice_Wet_Bulker_CC_Diff_INT(3,:)',...
    Ice_Wet_Bulker_CT_Diff_INT(3,:)' Ice_Wet_Bulker_APC_Diff_INT(3,:)' Ice_Wet_Bulker_ClC_Diff_INT(3,:)'];  Ice_Wet_Bulker_Diff_INT_tf(1:6:end,:) = [];

%LSHFO
Ice_LSHFO_Bulker_VC_Diff_INT = [SCE1_LSHFO_Ice_Bulker_VC_Diff_INT SCE2_LSHFO_Ice_Bulker_VC_Diff_INT];

Ice_LSHFO_Bulker_OC_Diff_INT = [SCE1_LSHFO_Ice_Bulker_OC_Diff_INT SCE2_LSHFO_Ice_Bulker_OC_Diff_INT];
Ice_LSHFO_Bulker_OC_Diff_INT(isnan(Ice_LSHFO_Bulker_VC_Diff_INT)) = NaN;

Ice_LSHFO_Bulker_CC_Diff_INT = [SCE1_LSHFO_Ice_Bulker_CC_Diff_INT SCE2_LSHFO_Ice_Bulker_CC_Diff_INT];
Ice_LSHFO_Bulker_CC_Diff_INT(isnan(Ice_LSHFO_Bulker_VC_Diff_INT)) = NaN;

Ice_LSHFO_Bulker_CT_Diff_INT = [SCE1_LSHFO_Ice_Bulker_CT_Diff_INT SCE2_LSHFO_Ice_Bulker_CT_Diff_INT];
Ice_LSHFO_Bulker_CT_Diff_INT(isnan(Ice_LSHFO_Bulker_VC_Diff_INT)) = NaN;

Ice_LSHFO_Bulker_APC_Diff_INT = [SCE1_LSHFO_Ice_Bulker_APC_Diff_INT SCE2_LSHFO_Ice_Bulker_APC_Diff_INT];
Ice_LSHFO_Bulker_APC_Diff_INT(isnan(Ice_LSHFO_Bulker_VC_Diff_INT)) = NaN;

Ice_LSHFO_Bulker_ClC_Diff_INT = [SCE1_LSHFO_Ice_Bulker_ClC_Diff_INT SCE2_LSHFO_Ice_Bulker_ClC_Diff_INT];
Ice_LSHFO_Bulker_ClC_Diff_INT(isnan(Ice_LSHFO_Bulker_VC_Diff_INT)) = NaN;

Ice_LSHFO_Bulker_Diff_INT_t0 = [Ice_LSHFO_Bulker_VC_Diff_INT(1,:)' Ice_LSHFO_Bulker_OC_Diff_INT(1,:)' Ice_LSHFO_Bulker_CC_Diff_INT(1,:)',...
    Ice_LSHFO_Bulker_CT_Diff_INT(1,:)' Ice_LSHFO_Bulker_APC_Diff_INT(1,:)' Ice_LSHFO_Bulker_ClC_Diff_INT(1,:)']; Ice_LSHFO_Bulker_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Bulker_Diff_INT_tm = [Ice_LSHFO_Bulker_VC_Diff_INT(2,:)' Ice_LSHFO_Bulker_OC_Diff_INT(2,:)' Ice_LSHFO_Bulker_CC_Diff_INT(2,:)',...
    Ice_LSHFO_Bulker_CT_Diff_INT(2,:)' Ice_LSHFO_Bulker_APC_Diff_INT(2,:)' Ice_LSHFO_Bulker_ClC_Diff_INT(2,:)'];  Ice_LSHFO_Bulker_Diff_INT_tm(1:6:end,:) = [];
Ice_LSHFO_Bulker_Diff_INT_tf = [Ice_LSHFO_Bulker_VC_Diff_INT(3,:)' Ice_LSHFO_Bulker_OC_Diff_INT(3,:)' Ice_LSHFO_Bulker_CC_Diff_INT(3,:)',...
    Ice_LSHFO_Bulker_CT_Diff_INT(3,:)' Ice_LSHFO_Bulker_APC_Diff_INT(3,:)' Ice_LSHFO_Bulker_ClC_Diff_INT(3,:)'];  Ice_LSHFO_Bulker_Diff_INT_tf(1:6:end,:) = [];

Ice_LSHFO_Container_VC_Diff_INT = [SCE1_LSHFO_Ice_Container_VC_Diff_INT SCE2_LSHFO_Ice_Container_VC_Diff_INT];

Ice_LSHFO_Container_OC_Diff_INT = [SCE1_LSHFO_Ice_Container_OC_Diff_INT SCE2_LSHFO_Ice_Container_OC_Diff_INT];
Ice_LSHFO_Container_OC_Diff_INT(isnan(Ice_LSHFO_Container_VC_Diff_INT)) = NaN;

Ice_LSHFO_Container_CC_Diff_INT = [SCE1_LSHFO_Ice_Container_CC_Diff_INT SCE2_LSHFO_Ice_Container_CC_Diff_INT];
Ice_LSHFO_Container_CC_Diff_INT(isnan(Ice_LSHFO_Container_VC_Diff_INT)) = NaN;

Ice_LSHFO_Container_CT_Diff_INT = [SCE1_LSHFO_Ice_Container_CT_Diff_INT SCE2_LSHFO_Ice_Container_CT_Diff_INT];
Ice_LSHFO_Container_CT_Diff_INT(isnan(Ice_LSHFO_Container_VC_Diff_INT)) = NaN;

Ice_LSHFO_Container_APC_Diff_INT = [SCE1_LSHFO_Ice_Container_APC_Diff_INT SCE2_LSHFO_Ice_Container_APC_Diff_INT];
Ice_LSHFO_Container_APC_Diff_INT(isnan(Ice_LSHFO_Container_VC_Diff_INT)) = NaN;

Ice_LSHFO_Container_ClC_Diff_INT = [SCE1_LSHFO_Ice_Container_ClC_Diff_INT SCE2_LSHFO_Ice_Container_ClC_Diff_INT];
Ice_LSHFO_Container_ClC_Diff_INT(isnan(Ice_LSHFO_Container_VC_Diff_INT)) = NaN;

Ice_LSHFO_Container_Diff_INT_t0 = [Ice_LSHFO_Container_VC_Diff_INT(1,:)' Ice_LSHFO_Container_OC_Diff_INT(1,:)' Ice_LSHFO_Container_CC_Diff_INT(1,:)',...
    Ice_LSHFO_Container_CT_Diff_INT(1,:)' Ice_LSHFO_Container_APC_Diff_INT(1,:)' Ice_LSHFO_Container_ClC_Diff_INT(1,:)']; Ice_LSHFO_Container_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Container_Diff_INT_tm = [Ice_LSHFO_Container_VC_Diff_INT(2,:)' Ice_LSHFO_Container_OC_Diff_INT(2,:)' Ice_LSHFO_Container_CC_Diff_INT(2,:)',...
    Ice_LSHFO_Container_CT_Diff_INT(2,:)' Ice_LSHFO_Container_APC_Diff_INT(2,:)' Ice_LSHFO_Container_ClC_Diff_INT(2,:)'];  Ice_LSHFO_Container_Diff_INT_tm(1:6:end,:) = [];
Ice_LSHFO_Container_Diff_INT_tf = [Ice_LSHFO_Container_VC_Diff_INT(3,:)' Ice_LSHFO_Container_OC_Diff_INT(3,:)' Ice_LSHFO_Container_CC_Diff_INT(3,:)',...
    Ice_LSHFO_Container_CT_Diff_INT(3,:)' Ice_LSHFO_Container_APC_Diff_INT(3,:)' Ice_LSHFO_Container_ClC_Diff_INT(3,:)'];  Ice_LSHFO_Container_Diff_INT_tf(1:6:end,:) = [];

Ice_LSHFO_Wet_Bulker_VC_Diff_INT = [SCE1_LSHFO_Ice_Wet_Bulker_VC_Diff_INT SCE2_LSHFO_Ice_Wet_Bulker_VC_Diff_INT];

Ice_LSHFO_Wet_Bulker_OC_Diff_INT = [SCE1_LSHFO_Ice_Wet_Bulker_OC_Diff_INT SCE2_LSHFO_Ice_Wet_Bulker_OC_Diff_INT];
Ice_LSHFO_Wet_Bulker_OC_Diff_INT(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_INT)) = NaN;

Ice_LSHFO_Wet_Bulker_CC_Diff_INT = [SCE1_LSHFO_Ice_Wet_Bulker_CC_Diff_INT SCE2_LSHFO_Ice_Wet_Bulker_CC_Diff_INT];
Ice_LSHFO_Wet_Bulker_CC_Diff_INT(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_INT)) = NaN;

Ice_LSHFO_Wet_Bulker_CT_Diff_INT = [SCE1_LSHFO_Ice_Wet_Bulker_CT_Diff_INT SCE2_LSHFO_Ice_Wet_Bulker_CT_Diff_INT];
Ice_LSHFO_Wet_Bulker_CT_Diff_INT(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_INT)) = NaN;

Ice_LSHFO_Wet_Bulker_APC_Diff_INT = [SCE1_LSHFO_Ice_Wet_Bulker_APC_Diff_INT SCE2_LSHFO_Ice_Wet_Bulker_APC_Diff_INT];
Ice_LSHFO_Wet_Bulker_APC_Diff_INT(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_INT)) = NaN;

Ice_LSHFO_Wet_Bulker_ClC_Diff_INT = [SCE1_LSHFO_Ice_Wet_Bulker_ClC_Diff_INT SCE2_LSHFO_Ice_Wet_Bulker_ClC_Diff_INT];
Ice_LSHFO_Wet_Bulker_ClC_Diff_INT(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_INT)) = NaN;

Ice_LSHFO_Wet_Bulker_Diff_INT_t0 = [Ice_LSHFO_Wet_Bulker_VC_Diff_INT(1,:)' Ice_LSHFO_Wet_Bulker_OC_Diff_INT(1,:)' Ice_LSHFO_Wet_Bulker_CC_Diff_INT(1,:)',...
    Ice_LSHFO_Wet_Bulker_CT_Diff_INT(1,:)' Ice_LSHFO_Wet_Bulker_APC_Diff_INT(1,:)' Ice_LSHFO_Wet_Bulker_ClC_Diff_INT(1,:)']; Ice_LSHFO_Wet_Bulker_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Wet_Bulker_Diff_INT_tm = [Ice_LSHFO_Wet_Bulker_VC_Diff_INT(2,:)' Ice_LSHFO_Wet_Bulker_OC_Diff_INT(2,:)' Ice_LSHFO_Wet_Bulker_CC_Diff_INT(2,:)',...
    Ice_LSHFO_Wet_Bulker_CT_Diff_INT(2,:)' Ice_LSHFO_Wet_Bulker_APC_Diff_INT(2,:)' Ice_LSHFO_Wet_Bulker_ClC_Diff_INT(2,:)'];  Ice_LSHFO_Wet_Bulker_Diff_INT_tm(1:6:end,:) = [];
Ice_LSHFO_Wet_Bulker_Diff_INT_tf = [Ice_LSHFO_Wet_Bulker_VC_Diff_INT(3,:)' Ice_LSHFO_Wet_Bulker_OC_Diff_INT(3,:)' Ice_LSHFO_Wet_Bulker_CC_Diff_INT(3,:)',...
    Ice_LSHFO_Wet_Bulker_CT_Diff_INT(3,:)' Ice_LSHFO_Wet_Bulker_APC_Diff_INT(3,:)' Ice_LSHFO_Wet_Bulker_ClC_Diff_INT(3,:)'];  Ice_LSHFO_Wet_Bulker_Diff_INT_tf(1:6:end,:) = [];

%TPP
Ice_Bulker_FC_Normalised_value_TPP_ptv = [SCE1_Ice_Bulker_FC_Normalised_value_TPP_ptv SCE2_Ice_Bulker_FC_Normalised_value_TPP_ptv];
Ice_Container_FC_Normalised_value_TPP_ptv = [SCE1_Ice_Container_FC_Normalised_value_TPP_ptv SCE2_Ice_Container_FC_Normalised_value_TPP_ptv];
Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv = [SCE1_Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv SCE2_Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv];    

Ice_Bulker_TC_Normalised_value_TPP_ptv = [SCE1_Ice_Bulker_TC_Normalised_value_TPP_ptv SCE2_Ice_Bulker_TC_Normalised_value_TPP_ptv];
Ice_Container_TC_Normalised_value_TPP_ptv = [SCE1_Ice_Container_TC_Normalised_value_TPP_ptv SCE2_Ice_Container_TC_Normalised_value_TPP_ptv];
Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv = [SCE1_Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv SCE2_Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv];    

Ice_LSHFO_Bulker_FC_Normalised_value_TPP_ptv = [SCE1_LSHFO_Ice_Bulker_FC_Normalised_value_TPP_ptv SCE2_LSHFO_Ice_Bulker_FC_Normalised_value_TPP_ptv];
Ice_LSHFO_Container_FC_Normalised_value_TPP_ptv = [SCE1_LSHFO_Ice_Container_FC_Normalised_value_TPP_ptv SCE2_LSHFO_Ice_Container_FC_Normalised_value_TPP_ptv];
Ice_LSHFO_Wet_Bulker_FC_Normalised_value_TPP_ptv = [SCE1_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv SCE2_LSHFO_Ice_Wet_Bulker_FC_Normalised_value_TPP_ptv];    

Ice_LSHFO_Bulker_TC_Normalised_value_TPP_ptv = [SCE1_LSHFO_Ice_Bulker_TC_Normalised_value_TPP_ptv SCE2_LSHFO_Ice_Bulker_TC_Normalised_value_TPP_ptv];
Ice_LSHFO_Container_TC_Normalised_value_TPP_ptv = [SCE1_LSHFO_Ice_Container_TC_Normalised_value_TPP_ptv SCE2_LSHFO_Ice_Container_TC_Normalised_value_TPP_ptv];
Ice_LSHFO_Wet_Bulker_TC_Normalised_value_TPP_ptv = [SCE1_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv SCE2_LSHFO_Ice_Wet_Bulker_TC_Normalised_value_TPP_ptv];    

Ice_Bulker_VC_Diff_TPP = [SCE1_Ice_Bulker_VC_Diff_TPP SCE2_Ice_Bulker_VC_Diff_TPP];

Ice_Bulker_OC_Diff_TPP = [SCE1_Ice_Bulker_OC_Diff_TPP SCE2_Ice_Bulker_OC_Diff_TPP];
Ice_Bulker_OC_Diff_TPP(isnan(Ice_Bulker_VC_Diff_TPP)) = NaN;

Ice_Bulker_CC_Diff_TPP = [SCE1_Ice_Bulker_CC_Diff_TPP SCE2_Ice_Bulker_CC_Diff_TPP];
Ice_Bulker_CC_Diff_TPP(isnan(Ice_Bulker_VC_Diff_TPP)) = NaN;

Ice_Bulker_CT_Diff_TPP = [SCE1_Ice_Bulker_CT_Diff_TPP SCE2_Ice_Bulker_CT_Diff_TPP];
Ice_Bulker_CT_Diff_TPP(isnan(Ice_Bulker_VC_Diff_TPP)) = NaN;

Ice_Bulker_APC_Diff_TPP = [SCE1_Ice_Bulker_APC_Diff_TPP SCE2_Ice_Bulker_APC_Diff_TPP];
Ice_Bulker_APC_Diff_TPP(isnan(Ice_Bulker_VC_Diff_TPP)) = NaN;

Ice_Bulker_ClC_Diff_TPP = [SCE1_Ice_Bulker_ClC_Diff_TPP SCE2_Ice_Bulker_ClC_Diff_TPP];
Ice_Bulker_ClC_Diff_TPP(isnan(Ice_Bulker_VC_Diff_TPP)) = NaN;

Ice_Bulker_Diff_TPP_t0 = [Ice_Bulker_VC_Diff_TPP(1,:)' Ice_Bulker_OC_Diff_TPP(1,:)' Ice_Bulker_CC_Diff_TPP(1,:)',...
    Ice_Bulker_CT_Diff_TPP(1,:)' Ice_Bulker_APC_Diff_TPP(1,:)' Ice_Bulker_ClC_Diff_TPP(1,:)']; Ice_Bulker_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Bulker_Diff_TPP_tm = [Ice_Bulker_VC_Diff_TPP(2,:)' Ice_Bulker_OC_Diff_TPP(2,:)' Ice_Bulker_CC_Diff_TPP(2,:)',...
    Ice_Bulker_CT_Diff_TPP(2,:)' Ice_Bulker_APC_Diff_TPP(2,:)' Ice_Bulker_ClC_Diff_TPP(2,:)'];  Ice_Bulker_Diff_TPP_tm(1:6:end,:) = [];
Ice_Bulker_Diff_TPP_tf = [Ice_Bulker_VC_Diff_TPP(3,:)' Ice_Bulker_OC_Diff_TPP(3,:)' Ice_Bulker_CC_Diff_TPP(3,:)',...
    Ice_Bulker_CT_Diff_TPP(3,:)' Ice_Bulker_APC_Diff_TPP(3,:)' Ice_Bulker_ClC_Diff_TPP(3,:)'];  Ice_Bulker_Diff_TPP_tf(1:6:end,:) = [];

Ice_Container_VC_Diff_TPP = [SCE1_Ice_Container_VC_Diff_TPP SCE2_Ice_Container_VC_Diff_TPP];

Ice_Container_OC_Diff_TPP = [SCE1_Ice_Container_OC_Diff_TPP SCE2_Ice_Container_OC_Diff_TPP];
Ice_Container_OC_Diff_TPP(isnan(Ice_Container_VC_Diff_TPP)) = NaN;

Ice_Container_CC_Diff_TPP = [SCE1_Ice_Container_CC_Diff_TPP SCE2_Ice_Container_CC_Diff_TPP];
Ice_Container_CC_Diff_TPP(isnan(Ice_Container_VC_Diff_TPP)) = NaN;

Ice_Container_CT_Diff_TPP = [SCE1_Ice_Container_CT_Diff_TPP SCE2_Ice_Container_CT_Diff_TPP];
Ice_Container_CT_Diff_TPP(isnan(Ice_Container_VC_Diff_TPP)) = NaN;

Ice_Container_APC_Diff_TPP = [SCE1_Ice_Container_APC_Diff_TPP SCE2_Ice_Container_APC_Diff_TPP];
Ice_Container_APC_Diff_TPP(isnan(Ice_Container_VC_Diff_TPP)) = NaN;

Ice_Container_ClC_Diff_TPP = [SCE1_Ice_Container_ClC_Diff_TPP SCE2_Ice_Container_ClC_Diff_TPP];
Ice_Container_ClC_Diff_TPP(isnan(Ice_Container_VC_Diff_TPP)) = NaN;

Ice_Container_Diff_TPP_t0 = [Ice_Container_VC_Diff_TPP(1,:)' Ice_Container_OC_Diff_TPP(1,:)' Ice_Container_CC_Diff_TPP(1,:)',...
    Ice_Container_CT_Diff_TPP(1,:)' Ice_Container_APC_Diff_TPP(1,:)' Ice_Container_ClC_Diff_TPP(1,:)']; Ice_Container_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Container_Diff_TPP_tm = [Ice_Container_VC_Diff_TPP(2,:)' Ice_Container_OC_Diff_TPP(2,:)' Ice_Container_CC_Diff_TPP(2,:)',...
    Ice_Container_CT_Diff_TPP(2,:)' Ice_Container_APC_Diff_TPP(2,:)' Ice_Container_ClC_Diff_TPP(2,:)'];  Ice_Container_Diff_TPP_tm(1:6:end,:) = [];
Ice_Container_Diff_TPP_tf = [Ice_Container_VC_Diff_TPP(3,:)' Ice_Container_OC_Diff_TPP(3,:)' Ice_Container_CC_Diff_TPP(3,:)',...
    Ice_Container_CT_Diff_TPP(3,:)' Ice_Container_APC_Diff_TPP(3,:)' Ice_Container_ClC_Diff_TPP(3,:)'];  Ice_Container_Diff_TPP_tf(1:6:end,:) = [];

Ice_Wet_Bulker_VC_Diff_TPP = [SCE1_Ice_Wet_Bulker_VC_Diff_TPP SCE2_Ice_Wet_Bulker_VC_Diff_TPP];

Ice_Wet_Bulker_OC_Diff_TPP = [SCE1_Ice_Wet_Bulker_OC_Diff_TPP SCE2_Ice_Wet_Bulker_OC_Diff_TPP];
Ice_Wet_Bulker_OC_Diff_TPP(isnan(Ice_Wet_Bulker_VC_Diff_TPP)) = NaN;

Ice_Wet_Bulker_CC_Diff_TPP = [SCE1_Ice_Wet_Bulker_CC_Diff_TPP SCE2_Ice_Wet_Bulker_CC_Diff_TPP];
Ice_Wet_Bulker_CC_Diff_TPP(isnan(Ice_Wet_Bulker_VC_Diff_TPP)) = NaN;

Ice_Wet_Bulker_CT_Diff_TPP = [SCE1_Ice_Wet_Bulker_CT_Diff_TPP SCE2_Ice_Wet_Bulker_CT_Diff_TPP];
Ice_Wet_Bulker_CT_Diff_TPP(isnan(Ice_Wet_Bulker_VC_Diff_TPP)) = NaN;

Ice_Wet_Bulker_APC_Diff_TPP = [SCE1_Ice_Wet_Bulker_APC_Diff_TPP SCE2_Ice_Wet_Bulker_APC_Diff_TPP];
Ice_Wet_Bulker_APC_Diff_TPP(isnan(Ice_Wet_Bulker_VC_Diff_TPP)) = NaN;

Ice_Wet_Bulker_ClC_Diff_TPP = [SCE1_Ice_Wet_Bulker_ClC_Diff_TPP SCE2_Ice_Wet_Bulker_ClC_Diff_TPP];
Ice_Wet_Bulker_ClC_Diff_TPP(isnan(Ice_Wet_Bulker_VC_Diff_TPP)) = NaN;

Ice_Wet_Bulker_Diff_TPP_t0 = [Ice_Wet_Bulker_VC_Diff_TPP(1,:)' Ice_Wet_Bulker_OC_Diff_TPP(1,:)' Ice_Wet_Bulker_CC_Diff_TPP(1,:)',...
    Ice_Wet_Bulker_CT_Diff_TPP(1,:)' Ice_Wet_Bulker_APC_Diff_TPP(1,:)' Ice_Wet_Bulker_ClC_Diff_TPP(1,:)']; Ice_Wet_Bulker_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_Wet_Bulker_Diff_TPP_tm = [Ice_Wet_Bulker_VC_Diff_TPP(2,:)' Ice_Wet_Bulker_OC_Diff_TPP(2,:)' Ice_Wet_Bulker_CC_Diff_TPP(2,:)',...
    Ice_Wet_Bulker_CT_Diff_TPP(2,:)' Ice_Wet_Bulker_APC_Diff_TPP(2,:)' Ice_Wet_Bulker_ClC_Diff_TPP(2,:)'];  Ice_Wet_Bulker_Diff_TPP_tm(1:6:end,:) = [];
Ice_Wet_Bulker_Diff_TPP_tf = [Ice_Wet_Bulker_VC_Diff_TPP(3,:)' Ice_Wet_Bulker_OC_Diff_TPP(3,:)' Ice_Wet_Bulker_CC_Diff_TPP(3,:)',...
    Ice_Wet_Bulker_CT_Diff_TPP(3,:)' Ice_Wet_Bulker_APC_Diff_TPP(3,:)' Ice_Wet_Bulker_ClC_Diff_TPP(3,:)'];  Ice_Wet_Bulker_Diff_TPP_tf(1:6:end,:) = [];

%LSHFO
Ice_LSHFO_Bulker_VC_Diff_TPP = [SCE1_LSHFO_Ice_Bulker_VC_Diff_TPP SCE2_LSHFO_Ice_Bulker_VC_Diff_TPP];

Ice_LSHFO_Bulker_OC_Diff_TPP = [SCE1_LSHFO_Ice_Bulker_OC_Diff_TPP SCE2_LSHFO_Ice_Bulker_OC_Diff_TPP];
Ice_LSHFO_Bulker_OC_Diff_TPP(isnan(Ice_LSHFO_Bulker_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Bulker_CC_Diff_TPP = [SCE1_LSHFO_Ice_Bulker_CC_Diff_TPP SCE2_LSHFO_Ice_Bulker_CC_Diff_TPP];
Ice_LSHFO_Bulker_CC_Diff_TPP(isnan(Ice_LSHFO_Bulker_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Bulker_CT_Diff_TPP = [SCE1_LSHFO_Ice_Bulker_CT_Diff_TPP SCE2_LSHFO_Ice_Bulker_CT_Diff_TPP];
Ice_LSHFO_Bulker_CT_Diff_TPP(isnan(Ice_LSHFO_Bulker_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Bulker_APC_Diff_TPP = [SCE1_LSHFO_Ice_Bulker_APC_Diff_TPP SCE2_LSHFO_Ice_Bulker_APC_Diff_TPP];
Ice_LSHFO_Bulker_APC_Diff_TPP(isnan(Ice_LSHFO_Bulker_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Bulker_ClC_Diff_TPP = [SCE1_LSHFO_Ice_Bulker_ClC_Diff_TPP SCE2_LSHFO_Ice_Bulker_ClC_Diff_TPP];
Ice_LSHFO_Bulker_ClC_Diff_TPP(isnan(Ice_LSHFO_Bulker_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Bulker_Diff_TPP_t0 = [Ice_LSHFO_Bulker_VC_Diff_TPP(1,:)' Ice_LSHFO_Bulker_OC_Diff_TPP(1,:)' Ice_LSHFO_Bulker_CC_Diff_TPP(1,:)',...
    Ice_LSHFO_Bulker_CT_Diff_TPP(1,:)' Ice_LSHFO_Bulker_APC_Diff_TPP(1,:)' Ice_LSHFO_Bulker_ClC_Diff_TPP(1,:)']; Ice_LSHFO_Bulker_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Bulker_Diff_TPP_tm = [Ice_LSHFO_Bulker_VC_Diff_TPP(2,:)' Ice_LSHFO_Bulker_OC_Diff_TPP(2,:)' Ice_LSHFO_Bulker_CC_Diff_TPP(2,:)',...
    Ice_LSHFO_Bulker_CT_Diff_TPP(2,:)' Ice_LSHFO_Bulker_APC_Diff_TPP(2,:)' Ice_LSHFO_Bulker_ClC_Diff_TPP(2,:)'];  Ice_LSHFO_Bulker_Diff_TPP_tm(1:6:end,:) = [];
Ice_LSHFO_Bulker_Diff_TPP_tf = [Ice_LSHFO_Bulker_VC_Diff_TPP(3,:)' Ice_LSHFO_Bulker_OC_Diff_TPP(3,:)' Ice_LSHFO_Bulker_CC_Diff_TPP(3,:)',...
    Ice_LSHFO_Bulker_CT_Diff_TPP(3,:)' Ice_LSHFO_Bulker_APC_Diff_TPP(3,:)' Ice_LSHFO_Bulker_ClC_Diff_TPP(3,:)'];  Ice_LSHFO_Bulker_Diff_TPP_tf(1:6:end,:) = [];

Ice_LSHFO_Container_VC_Diff_TPP = [SCE1_LSHFO_Ice_Container_VC_Diff_TPP SCE2_LSHFO_Ice_Container_VC_Diff_TPP];

Ice_LSHFO_Container_OC_Diff_TPP = [SCE1_LSHFO_Ice_Container_OC_Diff_TPP SCE2_LSHFO_Ice_Container_OC_Diff_TPP];
Ice_LSHFO_Container_OC_Diff_TPP(isnan(Ice_LSHFO_Container_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Container_CC_Diff_TPP = [SCE1_LSHFO_Ice_Container_CC_Diff_TPP SCE2_LSHFO_Ice_Container_CC_Diff_TPP];
Ice_LSHFO_Container_CC_Diff_TPP(isnan(Ice_LSHFO_Container_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Container_CT_Diff_TPP = [SCE1_LSHFO_Ice_Container_CT_Diff_TPP SCE2_LSHFO_Ice_Container_CT_Diff_TPP];
Ice_LSHFO_Container_CT_Diff_TPP(isnan(Ice_LSHFO_Container_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Container_APC_Diff_TPP = [SCE1_LSHFO_Ice_Container_APC_Diff_TPP SCE2_LSHFO_Ice_Container_APC_Diff_TPP];
Ice_LSHFO_Container_APC_Diff_TPP(isnan(Ice_LSHFO_Container_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Container_ClC_Diff_TPP = [SCE1_LSHFO_Ice_Container_ClC_Diff_TPP SCE2_LSHFO_Ice_Container_ClC_Diff_TPP];
Ice_LSHFO_Container_ClC_Diff_TPP(isnan(Ice_LSHFO_Container_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Container_Diff_TPP_t0 = [Ice_LSHFO_Container_VC_Diff_TPP(1,:)' Ice_LSHFO_Container_OC_Diff_TPP(1,:)' Ice_LSHFO_Container_CC_Diff_TPP(1,:)',...
    Ice_LSHFO_Container_CT_Diff_TPP(1,:)' Ice_LSHFO_Container_APC_Diff_TPP(1,:)' Ice_LSHFO_Container_ClC_Diff_TPP(1,:)']; Ice_LSHFO_Container_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Container_Diff_TPP_tm = [Ice_LSHFO_Container_VC_Diff_TPP(2,:)' Ice_LSHFO_Container_OC_Diff_TPP(2,:)' Ice_LSHFO_Container_CC_Diff_TPP(2,:)',...
    Ice_LSHFO_Container_CT_Diff_TPP(2,:)' Ice_LSHFO_Container_APC_Diff_TPP(2,:)' Ice_LSHFO_Container_ClC_Diff_TPP(2,:)'];  Ice_LSHFO_Container_Diff_TPP_tm(1:6:end,:) = [];
Ice_LSHFO_Container_Diff_TPP_tf = [Ice_LSHFO_Container_VC_Diff_TPP(3,:)' Ice_LSHFO_Container_OC_Diff_TPP(3,:)' Ice_LSHFO_Container_CC_Diff_TPP(3,:)',...
    Ice_LSHFO_Container_CT_Diff_TPP(3,:)' Ice_LSHFO_Container_APC_Diff_TPP(3,:)' Ice_LSHFO_Container_ClC_Diff_TPP(3,:)'];  Ice_LSHFO_Container_Diff_TPP_tf(1:6:end,:) = [];

Ice_LSHFO_Wet_Bulker_VC_Diff_TPP = [SCE1_LSHFO_Ice_Wet_Bulker_VC_Diff_TPP SCE2_LSHFO_Ice_Wet_Bulker_VC_Diff_TPP];

Ice_LSHFO_Wet_Bulker_OC_Diff_TPP = [SCE1_LSHFO_Ice_Wet_Bulker_OC_Diff_TPP SCE2_LSHFO_Ice_Wet_Bulker_OC_Diff_TPP];
Ice_LSHFO_Wet_Bulker_OC_Diff_TPP(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Wet_Bulker_CC_Diff_TPP = [SCE1_LSHFO_Ice_Wet_Bulker_CC_Diff_TPP SCE2_LSHFO_Ice_Wet_Bulker_CC_Diff_TPP];
Ice_LSHFO_Wet_Bulker_CC_Diff_TPP(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Wet_Bulker_CT_Diff_TPP = [SCE1_LSHFO_Ice_Wet_Bulker_CT_Diff_TPP SCE2_LSHFO_Ice_Wet_Bulker_CT_Diff_TPP];
Ice_LSHFO_Wet_Bulker_CT_Diff_TPP(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Wet_Bulker_APC_Diff_TPP = [SCE1_LSHFO_Ice_Wet_Bulker_APC_Diff_TPP SCE2_LSHFO_Ice_Wet_Bulker_APC_Diff_TPP];
Ice_LSHFO_Wet_Bulker_APC_Diff_TPP(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Wet_Bulker_ClC_Diff_TPP = [SCE1_LSHFO_Ice_Wet_Bulker_ClC_Diff_TPP SCE2_LSHFO_Ice_Wet_Bulker_ClC_Diff_TPP];
Ice_LSHFO_Wet_Bulker_ClC_Diff_TPP(isnan(Ice_LSHFO_Wet_Bulker_VC_Diff_TPP)) = NaN;

Ice_LSHFO_Wet_Bulker_Diff_TPP_t0 = [Ice_LSHFO_Wet_Bulker_VC_Diff_TPP(1,:)' Ice_LSHFO_Wet_Bulker_OC_Diff_TPP(1,:)' Ice_LSHFO_Wet_Bulker_CC_Diff_TPP(1,:)',...
    Ice_LSHFO_Wet_Bulker_CT_Diff_TPP(1,:)' Ice_LSHFO_Wet_Bulker_APC_Diff_TPP(1,:)' Ice_LSHFO_Wet_Bulker_ClC_Diff_TPP(1,:)']; Ice_LSHFO_Wet_Bulker_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values 
Ice_LSHFO_Wet_Bulker_Diff_TPP_tm = [Ice_LSHFO_Wet_Bulker_VC_Diff_TPP(2,:)' Ice_LSHFO_Wet_Bulker_OC_Diff_TPP(2,:)' Ice_LSHFO_Wet_Bulker_CC_Diff_TPP(2,:)',...
    Ice_LSHFO_Wet_Bulker_CT_Diff_TPP(2,:)' Ice_LSHFO_Wet_Bulker_APC_Diff_TPP(2,:)' Ice_LSHFO_Wet_Bulker_ClC_Diff_TPP(2,:)'];  Ice_LSHFO_Wet_Bulker_Diff_TPP_tm(1:6:end,:) = [];
Ice_LSHFO_Wet_Bulker_Diff_TPP_tf = [Ice_LSHFO_Wet_Bulker_VC_Diff_TPP(3,:)' Ice_LSHFO_Wet_Bulker_OC_Diff_TPP(3,:)' Ice_LSHFO_Wet_Bulker_CC_Diff_TPP(3,:)',...
    Ice_LSHFO_Wet_Bulker_CT_Diff_TPP(3,:)' Ice_LSHFO_Wet_Bulker_APC_Diff_TPP(3,:)' Ice_LSHFO_Wet_Bulker_ClC_Diff_TPP(3,:)'];  Ice_LSHFO_Wet_Bulker_Diff_TPP_tf(1:6:end,:) = [];

if inp.SSP585 == 1
    %NSR
   NonIce_Bulker_FC_Normalised_value_NSR_ptv = [SCE1_NonIce_Bulker_FC_Normalised_value_NSR_ptv SCE2_NonIce_Bulker_FC_Normalised_value_NSR_ptv];
   NonIce_Container_FC_Normalised_value_NSR_ptv = [SCE1_NonIce_Container_FC_Normalised_value_NSR_ptv SCE2_NonIce_Container_FC_Normalised_value_NSR_ptv];
   NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv = [SCE1_NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv SCE2_NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv];
    
   NonIce_Bulker_TC_Normalised_value_NSR_ptv = [SCE1_NonIce_Bulker_TC_Normalised_value_NSR_ptv SCE2_NonIce_Bulker_TC_Normalised_value_NSR_ptv];
   NonIce_Container_TC_Normalised_value_NSR_ptv = [SCE1_NonIce_Container_TC_Normalised_value_NSR_ptv SCE2_NonIce_Container_TC_Normalised_value_NSR_ptv];
   NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv = [SCE1_NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv SCE2_NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv];
    
   NonIce_LSHFO_Bulker_FC_Normalised_value_NSR_ptv = [SCE1_LSHFO_NonIce_Bulker_FC_Normalised_value_NSR_ptv SCE2_LSHFO_NonIce_Bulker_FC_Normalised_value_NSR_ptv];
   NonIce_LSHFO_Container_FC_Normalised_value_NSR_ptv = [SCE1_LSHFO_NonIce_Container_FC_Normalised_value_NSR_ptv SCE2_LSHFO_NonIce_Container_FC_Normalised_value_NSR_ptv];
   NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_NSR_ptv = [SCE1_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv SCE2_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv];
    
   NonIce_LSHFO_Bulker_TC_Normalised_value_NSR_ptv = [SCE1_LSHFO_NonIce_Bulker_TC_Normalised_value_NSR_ptv SCE2_LSHFO_NonIce_Bulker_TC_Normalised_value_NSR_ptv];
   NonIce_LSHFO_Container_TC_Normalised_value_NSR_ptv = [SCE1_LSHFO_NonIce_Container_TC_Normalised_value_NSR_ptv SCE2_LSHFO_NonIce_Container_TC_Normalised_value_NSR_ptv];
   NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_NSR_ptv = [SCE1_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv SCE2_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv];
   
   NonIce_Bulker_VC_Diff_NSR = [SCE1_NonIce_Bulker_VC_Diff_NSR SCE2_NonIce_Bulker_VC_Diff_NSR];
   
   NonIce_Bulker_OC_Diff_NSR = [SCE1_NonIce_Bulker_OC_Diff_NSR SCE2_NonIce_Bulker_OC_Diff_NSR];
   NonIce_Bulker_OC_Diff_NSR(isnan(NonIce_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_Bulker_CC_Diff_NSR = [SCE1_NonIce_Bulker_CC_Diff_NSR SCE2_NonIce_Bulker_CC_Diff_NSR];
   NonIce_Bulker_CC_Diff_NSR(isnan(NonIce_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_Bulker_CT_Diff_NSR = [SCE1_NonIce_Bulker_CT_Diff_NSR SCE2_NonIce_Bulker_CT_Diff_NSR];
   NonIce_Bulker_CT_Diff_NSR(isnan(NonIce_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_Bulker_APC_Diff_NSR = [SCE1_NonIce_Bulker_APC_Diff_NSR SCE2_NonIce_Bulker_APC_Diff_NSR];
   NonIce_Bulker_APC_Diff_NSR(isnan(NonIce_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_Bulker_ClC_Diff_NSR = [SCE1_NonIce_Bulker_ClC_Diff_NSR SCE2_NonIce_Bulker_ClC_Diff_NSR];
   NonIce_Bulker_ClC_Diff_NSR(isnan(NonIce_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_Bulker_Diff_NSR_t0 = [NonIce_Bulker_VC_Diff_NSR(1,:)' NonIce_Bulker_OC_Diff_NSR(1,:)' NonIce_Bulker_CC_Diff_NSR(1,:)',...
       NonIce_Bulker_CT_Diff_NSR(1,:)' NonIce_Bulker_APC_Diff_NSR(1,:)' NonIce_Bulker_ClC_Diff_NSR(1,:)']; NonIce_Bulker_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Bulker_Diff_NSR_tm = [NonIce_Bulker_VC_Diff_NSR(2,:)' NonIce_Bulker_OC_Diff_NSR(2,:)' NonIce_Bulker_CC_Diff_NSR(2,:)',...
       NonIce_Bulker_CT_Diff_NSR(2,:)' NonIce_Bulker_APC_Diff_NSR(2,:)' NonIce_Bulker_ClC_Diff_NSR(2,:)'];  NonIce_Bulker_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_Bulker_Diff_NSR_tf = [NonIce_Bulker_VC_Diff_NSR(3,:)' NonIce_Bulker_OC_Diff_NSR(3,:)' NonIce_Bulker_CC_Diff_NSR(3,:)',...
       NonIce_Bulker_CT_Diff_NSR(3,:)' NonIce_Bulker_APC_Diff_NSR(3,:)' NonIce_Bulker_ClC_Diff_NSR(3,:)'];  NonIce_Bulker_Diff_NSR_tf(1:6:end,:) = [];
   
   NonIce_Container_VC_Diff_NSR = [SCE1_NonIce_Container_VC_Diff_NSR SCE2_NonIce_Container_VC_Diff_NSR];
   
   NonIce_Container_OC_Diff_NSR = [SCE1_NonIce_Container_OC_Diff_NSR SCE2_NonIce_Container_OC_Diff_NSR];
   NonIce_Container_OC_Diff_NSR(isnan(NonIce_Container_VC_Diff_NSR)) = NaN;
   
   NonIce_Container_CC_Diff_NSR = [SCE1_NonIce_Container_CC_Diff_NSR SCE2_NonIce_Container_CC_Diff_NSR];
   NonIce_Container_CC_Diff_NSR(isnan(NonIce_Container_VC_Diff_NSR)) = NaN;
   
   NonIce_Container_CT_Diff_NSR = [SCE1_NonIce_Container_CT_Diff_NSR SCE2_NonIce_Container_CT_Diff_NSR];
   NonIce_Container_CT_Diff_NSR(isnan(NonIce_Container_VC_Diff_NSR)) = NaN;
   
   NonIce_Container_APC_Diff_NSR = [SCE1_NonIce_Container_APC_Diff_NSR SCE2_NonIce_Container_APC_Diff_NSR];
   NonIce_Container_APC_Diff_NSR(isnan(NonIce_Container_VC_Diff_NSR)) = NaN;
   
   NonIce_Container_ClC_Diff_NSR = [SCE1_NonIce_Container_ClC_Diff_NSR SCE2_NonIce_Container_ClC_Diff_NSR];
   NonIce_Container_ClC_Diff_NSR(isnan(NonIce_Container_VC_Diff_NSR)) = NaN;
   
   NonIce_Container_Diff_NSR_t0 = [NonIce_Container_VC_Diff_NSR(1,:)' NonIce_Container_OC_Diff_NSR(1,:)' NonIce_Container_CC_Diff_NSR(1,:)',...
       NonIce_Container_CT_Diff_NSR(1,:)' NonIce_Container_APC_Diff_NSR(1,:)' NonIce_Container_ClC_Diff_NSR(1,:)']; NonIce_Container_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Container_Diff_NSR_tm = [NonIce_Container_VC_Diff_NSR(2,:)' NonIce_Container_OC_Diff_NSR(2,:)' NonIce_Container_CC_Diff_NSR(2,:)',...
       NonIce_Container_CT_Diff_NSR(2,:)' NonIce_Container_APC_Diff_NSR(2,:)' NonIce_Container_ClC_Diff_NSR(2,:)'];  NonIce_Container_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_Container_Diff_NSR_tf = [NonIce_Container_VC_Diff_NSR(3,:)' NonIce_Container_OC_Diff_NSR(3,:)' NonIce_Container_CC_Diff_NSR(3,:)',...
       NonIce_Container_CT_Diff_NSR(3,:)' NonIce_Container_APC_Diff_NSR(3,:)' NonIce_Container_ClC_Diff_NSR(3,:)'];  NonIce_Container_Diff_NSR_tf(1:6:end,:) = [];
   
   NonIce_Wet_Bulker_VC_Diff_NSR = [SCE1_NonIce_Wet_Bulker_VC_Diff_NSR SCE2_NonIce_Wet_Bulker_VC_Diff_NSR];
   
   NonIce_Wet_Bulker_OC_Diff_NSR = [SCE1_NonIce_Wet_Bulker_OC_Diff_NSR SCE2_NonIce_Wet_Bulker_OC_Diff_NSR];
   NonIce_Wet_Bulker_OC_Diff_NSR(isnan(NonIce_Wet_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_Wet_Bulker_CC_Diff_NSR = [SCE1_NonIce_Wet_Bulker_CC_Diff_NSR SCE2_NonIce_Wet_Bulker_CC_Diff_NSR];
   NonIce_Wet_Bulker_CC_Diff_NSR(isnan(NonIce_Wet_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_Wet_Bulker_CT_Diff_NSR = [SCE1_NonIce_Wet_Bulker_CT_Diff_NSR SCE2_NonIce_Wet_Bulker_CT_Diff_NSR];
   NonIce_Wet_Bulker_CT_Diff_NSR(isnan(NonIce_Wet_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_Wet_Bulker_APC_Diff_NSR = [SCE1_NonIce_Wet_Bulker_APC_Diff_NSR SCE2_NonIce_Wet_Bulker_APC_Diff_NSR];
   NonIce_Wet_Bulker_APC_Diff_NSR(isnan(NonIce_Wet_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_Wet_Bulker_ClC_Diff_NSR = [SCE1_NonIce_Wet_Bulker_ClC_Diff_NSR SCE2_NonIce_Wet_Bulker_ClC_Diff_NSR];
   NonIce_Wet_Bulker_ClC_Diff_NSR(isnan(NonIce_Wet_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_Wet_Bulker_Diff_NSR_t0 = [NonIce_Wet_Bulker_VC_Diff_NSR(1,:)' NonIce_Wet_Bulker_OC_Diff_NSR(1,:)' NonIce_Wet_Bulker_CC_Diff_NSR(1,:)',...
       NonIce_Wet_Bulker_CT_Diff_NSR(1,:)' NonIce_Wet_Bulker_APC_Diff_NSR(1,:)' NonIce_Wet_Bulker_ClC_Diff_NSR(1,:)']; NonIce_Wet_Bulker_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Wet_Bulker_Diff_NSR_tm = [NonIce_Wet_Bulker_VC_Diff_NSR(2,:)' NonIce_Wet_Bulker_OC_Diff_NSR(2,:)' NonIce_Wet_Bulker_CC_Diff_NSR(2,:)',...
       NonIce_Wet_Bulker_CT_Diff_NSR(2,:)' NonIce_Wet_Bulker_APC_Diff_NSR(2,:)' NonIce_Wet_Bulker_ClC_Diff_NSR(2,:)'];  NonIce_Wet_Bulker_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_Wet_Bulker_Diff_NSR_tf = [NonIce_Wet_Bulker_VC_Diff_NSR(3,:)' NonIce_Wet_Bulker_OC_Diff_NSR(3,:)' NonIce_Wet_Bulker_CC_Diff_NSR(3,:)',...
       NonIce_Wet_Bulker_CT_Diff_NSR(3,:)' NonIce_Wet_Bulker_APC_Diff_NSR(3,:)' NonIce_Wet_Bulker_ClC_Diff_NSR(3,:)'];  NonIce_Wet_Bulker_Diff_NSR_tf(1:6:end,:) = [];
   
   %Emissions
   NonIce_Bulker_CO2eq_Diff_NSR = [SCE1_NonIce_Bulker_CO2eq_Diff_NSR SCE2_NonIce_Bulker_CO2eq_Diff_NSR];
   
   NonIce_Bulker_SOx_Diff_NSR = [SCE1_NonIce_Bulker_SOx_Diff_NSR SCE2_NonIce_Bulker_SOx_Diff_NSR];
   NonIce_Bulker_SOx_Diff_NSR(isnan(NonIce_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_Bulker_NOx_Diff_NSR = [SCE1_NonIce_Bulker_NOx_Diff_NSR SCE2_NonIce_Bulker_NOx_Diff_NSR];
   NonIce_Bulker_NOx_Diff_NSR(isnan(NonIce_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_Bulker_PM_Diff_NSR = [SCE1_NonIce_Bulker_PM_Diff_NSR SCE2_NonIce_Bulker_PM_Diff_NSR];
   NonIce_Bulker_PM_Diff_NSR(isnan(NonIce_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_Bulker_Emissions_Diff_NSR_t0 = [NonIce_Bulker_CO2eq_Diff_NSR(1,:)' NonIce_Bulker_SOx_Diff_NSR(1,:)' NonIce_Bulker_NOx_Diff_NSR(1,:)',...
       NonIce_Bulker_PM_Diff_NSR(1,:)']; NonIce_Bulker_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Bulker_Emissions_Diff_NSR_tm = [NonIce_Bulker_CO2eq_Diff_NSR(2,:)' NonIce_Bulker_SOx_Diff_NSR(2,:)' NonIce_Bulker_NOx_Diff_NSR(2,:)',...
       NonIce_Bulker_PM_Diff_NSR(2,:)']; NonIce_Bulker_Emissions_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_Bulker_Emissions_Diff_NSR_tf = [NonIce_Bulker_CO2eq_Diff_NSR(3,:)' NonIce_Bulker_SOx_Diff_NSR(3,:)' NonIce_Bulker_NOx_Diff_NSR(3,:)',...
       NonIce_Bulker_PM_Diff_NSR(3,:)']; NonIce_Bulker_Emissions_Diff_NSR_tf(1:6:end,:) = [];
   
   NonIce_Container_CO2eq_Diff_NSR = [SCE1_NonIce_Container_CO2eq_Diff_NSR SCE2_NonIce_Container_CO2eq_Diff_NSR];
   
   NonIce_Container_SOx_Diff_NSR = [SCE1_NonIce_Container_SOx_Diff_NSR SCE2_NonIce_Container_SOx_Diff_NSR];
   NonIce_Container_SOx_Diff_NSR(isnan(NonIce_Container_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_Container_NOx_Diff_NSR = [SCE1_NonIce_Container_NOx_Diff_NSR SCE2_NonIce_Container_NOx_Diff_NSR];
   NonIce_Container_NOx_Diff_NSR(isnan(NonIce_Container_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_Container_PM_Diff_NSR = [SCE1_NonIce_Container_PM_Diff_NSR SCE2_NonIce_Container_PM_Diff_NSR];
   NonIce_Container_PM_Diff_NSR(isnan(NonIce_Container_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_Container_Emissions_Diff_NSR_t0 = [NonIce_Container_CO2eq_Diff_NSR(1,:)' NonIce_Container_SOx_Diff_NSR(1,:)' NonIce_Container_NOx_Diff_NSR(1,:)',...
       NonIce_Container_PM_Diff_NSR(1,:)']; NonIce_Container_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Container_Emissions_Diff_NSR_tm = [NonIce_Container_CO2eq_Diff_NSR(2,:)' NonIce_Container_SOx_Diff_NSR(2,:)' NonIce_Container_NOx_Diff_NSR(2,:)',...
       NonIce_Container_PM_Diff_NSR(2,:)']; NonIce_Container_Emissions_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_Container_Emissions_Diff_NSR_tf = [NonIce_Container_CO2eq_Diff_NSR(3,:)' NonIce_Container_SOx_Diff_NSR(3,:)' NonIce_Container_NOx_Diff_NSR(3,:)',...
       NonIce_Container_PM_Diff_NSR(3,:)']; NonIce_Container_Emissions_Diff_NSR_tf(1:6:end,:) = [];
   
   NonIce_Wet_Bulker_CO2eq_Diff_NSR = [SCE1_NonIce_Wet_Bulker_CO2eq_Diff_NSR SCE2_NonIce_Wet_Bulker_CO2eq_Diff_NSR];
   
   NonIce_Wet_Bulker_SOx_Diff_NSR = [SCE1_NonIce_Wet_Bulker_SOx_Diff_NSR SCE2_NonIce_Wet_Bulker_SOx_Diff_NSR];
   NonIce_Wet_Bulker_SOx_Diff_NSR(isnan(NonIce_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_Wet_Bulker_NOx_Diff_NSR = [SCE1_NonIce_Wet_Bulker_NOx_Diff_NSR SCE2_NonIce_Wet_Bulker_NOx_Diff_NSR];
   NonIce_Wet_Bulker_NOx_Diff_NSR(isnan(NonIce_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_Wet_Bulker_PM_Diff_NSR = [SCE1_NonIce_Wet_Bulker_PM_Diff_NSR SCE2_NonIce_Wet_Bulker_PM_Diff_NSR];
   NonIce_Wet_Bulker_PM_Diff_NSR(isnan(NonIce_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_Wet_Bulker_Emissions_Diff_NSR_t0 = [NonIce_Wet_Bulker_CO2eq_Diff_NSR(1,:)' NonIce_Wet_Bulker_SOx_Diff_NSR(1,:)' NonIce_Wet_Bulker_NOx_Diff_NSR(1,:)',...
       NonIce_Wet_Bulker_PM_Diff_NSR(1,:)']; NonIce_Wet_Bulker_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Wet_Bulker_Emissions_Diff_NSR_tm = [NonIce_Wet_Bulker_CO2eq_Diff_NSR(2,:)' NonIce_Wet_Bulker_SOx_Diff_NSR(2,:)' NonIce_Wet_Bulker_NOx_Diff_NSR(2,:)',...
       NonIce_Wet_Bulker_PM_Diff_NSR(2,:)']; NonIce_Wet_Bulker_Emissions_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_Wet_Bulker_Emissions_Diff_NSR_tf = [NonIce_Wet_Bulker_CO2eq_Diff_NSR(3,:)' NonIce_Wet_Bulker_SOx_Diff_NSR(3,:)' NonIce_Wet_Bulker_NOx_Diff_NSR(3,:)',...
       NonIce_Wet_Bulker_PM_Diff_NSR(3,:)']; NonIce_Wet_Bulker_Emissions_Diff_NSR_tf(1:6:end,:) = [];
   
   %LSHFO
   NonIce_LSHFO_Bulker_VC_Diff_NSR = [SCE1_LSHFO_NonIce_Bulker_VC_Diff_NSR SCE2_LSHFO_NonIce_Bulker_VC_Diff_NSR];
   
   NonIce_LSHFO_Bulker_OC_Diff_NSR = [SCE1_LSHFO_NonIce_Bulker_OC_Diff_NSR SCE2_LSHFO_NonIce_Bulker_OC_Diff_NSR];
   NonIce_LSHFO_Bulker_OC_Diff_NSR(isnan(NonIce_LSHFO_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Bulker_CC_Diff_NSR = [SCE1_LSHFO_NonIce_Bulker_CC_Diff_NSR SCE2_LSHFO_NonIce_Bulker_CC_Diff_NSR];
   NonIce_LSHFO_Bulker_CC_Diff_NSR(isnan(NonIce_LSHFO_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Bulker_CT_Diff_NSR = [SCE1_LSHFO_NonIce_Bulker_CT_Diff_NSR SCE2_LSHFO_NonIce_Bulker_CT_Diff_NSR];
   NonIce_LSHFO_Bulker_CT_Diff_NSR(isnan(NonIce_LSHFO_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Bulker_APC_Diff_NSR = [SCE1_LSHFO_NonIce_Bulker_APC_Diff_NSR SCE2_LSHFO_NonIce_Bulker_APC_Diff_NSR];
   NonIce_LSHFO_Bulker_APC_Diff_NSR(isnan(NonIce_LSHFO_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Bulker_ClC_Diff_NSR = [SCE1_LSHFO_NonIce_Bulker_ClC_Diff_NSR SCE2_LSHFO_NonIce_Bulker_ClC_Diff_NSR];
   NonIce_LSHFO_Bulker_ClC_Diff_NSR(isnan(NonIce_LSHFO_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Bulker_Diff_NSR_t0 = [NonIce_LSHFO_Bulker_VC_Diff_NSR(1,:)' NonIce_LSHFO_Bulker_OC_Diff_NSR(1,:)' NonIce_LSHFO_Bulker_CC_Diff_NSR(1,:)',...
       NonIce_LSHFO_Bulker_CT_Diff_NSR(1,:)' NonIce_LSHFO_Bulker_APC_Diff_NSR(1,:)' NonIce_LSHFO_Bulker_ClC_Diff_NSR(1,:)']; NonIce_LSHFO_Bulker_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Bulker_Diff_NSR_tm = [NonIce_LSHFO_Bulker_VC_Diff_NSR(2,:)' NonIce_LSHFO_Bulker_OC_Diff_NSR(2,:)' NonIce_LSHFO_Bulker_CC_Diff_NSR(2,:)',...
       NonIce_LSHFO_Bulker_CT_Diff_NSR(2,:)' NonIce_LSHFO_Bulker_APC_Diff_NSR(2,:)' NonIce_LSHFO_Bulker_ClC_Diff_NSR(2,:)'];  NonIce_LSHFO_Bulker_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_LSHFO_Bulker_Diff_NSR_tf = [NonIce_LSHFO_Bulker_VC_Diff_NSR(3,:)' NonIce_LSHFO_Bulker_OC_Diff_NSR(3,:)' NonIce_LSHFO_Bulker_CC_Diff_NSR(3,:)',...
       NonIce_LSHFO_Bulker_CT_Diff_NSR(3,:)' NonIce_LSHFO_Bulker_APC_Diff_NSR(3,:)' NonIce_LSHFO_Bulker_ClC_Diff_NSR(3,:)'];  NonIce_LSHFO_Bulker_Diff_NSR_tf(1:6:end,:) = [];
   
   NonIce_LSHFO_Container_VC_Diff_NSR = [SCE1_LSHFO_NonIce_Container_VC_Diff_NSR SCE2_LSHFO_NonIce_Container_VC_Diff_NSR];
   
   NonIce_LSHFO_Container_OC_Diff_NSR = [SCE1_LSHFO_NonIce_Container_OC_Diff_NSR SCE2_LSHFO_NonIce_Container_OC_Diff_NSR];
   NonIce_LSHFO_Container_OC_Diff_NSR(isnan(NonIce_LSHFO_Container_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Container_CC_Diff_NSR = [SCE1_LSHFO_NonIce_Container_CC_Diff_NSR SCE2_LSHFO_NonIce_Container_CC_Diff_NSR];
   NonIce_LSHFO_Container_CC_Diff_NSR(isnan(NonIce_LSHFO_Container_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Container_CT_Diff_NSR = [SCE1_LSHFO_NonIce_Container_CT_Diff_NSR SCE2_LSHFO_NonIce_Container_CT_Diff_NSR];
   NonIce_LSHFO_Container_CT_Diff_NSR(isnan(NonIce_LSHFO_Container_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Container_APC_Diff_NSR = [SCE1_LSHFO_NonIce_Container_APC_Diff_NSR SCE2_LSHFO_NonIce_Container_APC_Diff_NSR];
   NonIce_LSHFO_Container_APC_Diff_NSR(isnan(NonIce_LSHFO_Container_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Container_ClC_Diff_NSR = [SCE1_LSHFO_NonIce_Container_ClC_Diff_NSR SCE2_LSHFO_NonIce_Container_ClC_Diff_NSR];
   NonIce_LSHFO_Container_ClC_Diff_NSR(isnan(NonIce_LSHFO_Container_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Container_Diff_NSR_t0 = [NonIce_LSHFO_Container_VC_Diff_NSR(1,:)' NonIce_LSHFO_Container_OC_Diff_NSR(1,:)' NonIce_LSHFO_Container_CC_Diff_NSR(1,:)',...
       NonIce_LSHFO_Container_CT_Diff_NSR(1,:)' NonIce_LSHFO_Container_APC_Diff_NSR(1,:)' NonIce_LSHFO_Container_ClC_Diff_NSR(1,:)']; NonIce_LSHFO_Container_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Container_Diff_NSR_tm = [NonIce_LSHFO_Container_VC_Diff_NSR(2,:)' NonIce_LSHFO_Container_OC_Diff_NSR(2,:)' NonIce_LSHFO_Container_CC_Diff_NSR(2,:)',...
       NonIce_LSHFO_Container_CT_Diff_NSR(2,:)' NonIce_LSHFO_Container_APC_Diff_NSR(2,:)' NonIce_LSHFO_Container_ClC_Diff_NSR(2,:)'];  NonIce_LSHFO_Container_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_LSHFO_Container_Diff_NSR_tf = [NonIce_LSHFO_Container_VC_Diff_NSR(3,:)' NonIce_LSHFO_Container_OC_Diff_NSR(3,:)' NonIce_LSHFO_Container_CC_Diff_NSR(3,:)',...
       NonIce_LSHFO_Container_CT_Diff_NSR(3,:)' NonIce_LSHFO_Container_APC_Diff_NSR(3,:)' NonIce_LSHFO_Container_ClC_Diff_NSR(3,:)'];  NonIce_LSHFO_Container_Diff_NSR_tf(1:6:end,:) = [];
   
   NonIce_LSHFO_Wet_Bulker_VC_Diff_NSR = [SCE1_LSHFO_NonIce_Wet_Bulker_VC_Diff_NSR SCE2_LSHFO_NonIce_Wet_Bulker_VC_Diff_NSR];
   
   NonIce_LSHFO_Wet_Bulker_OC_Diff_NSR = [SCE1_LSHFO_NonIce_Wet_Bulker_OC_Diff_NSR SCE2_LSHFO_NonIce_Wet_Bulker_OC_Diff_NSR];
   NonIce_LSHFO_Wet_Bulker_OC_Diff_NSR(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_CC_Diff_NSR = [SCE1_LSHFO_NonIce_Wet_Bulker_CC_Diff_NSR SCE2_LSHFO_NonIce_Wet_Bulker_CC_Diff_NSR];
   NonIce_LSHFO_Wet_Bulker_CC_Diff_NSR(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_CT_Diff_NSR = [SCE1_LSHFO_NonIce_Wet_Bulker_CT_Diff_NSR SCE2_LSHFO_NonIce_Wet_Bulker_CT_Diff_NSR];
   NonIce_LSHFO_Wet_Bulker_CT_Diff_NSR(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_APC_Diff_NSR = [SCE1_LSHFO_NonIce_Wet_Bulker_APC_Diff_NSR SCE2_LSHFO_NonIce_Wet_Bulker_APC_Diff_NSR];
   NonIce_LSHFO_Wet_Bulker_APC_Diff_NSR(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_ClC_Diff_NSR = [SCE1_LSHFO_NonIce_Wet_Bulker_ClC_Diff_NSR SCE2_LSHFO_NonIce_Wet_Bulker_ClC_Diff_NSR];
   NonIce_LSHFO_Wet_Bulker_ClC_Diff_NSR(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_Diff_NSR_t0 = [NonIce_LSHFO_Wet_Bulker_VC_Diff_NSR(1,:)' NonIce_LSHFO_Wet_Bulker_OC_Diff_NSR(1,:)' NonIce_LSHFO_Wet_Bulker_CC_Diff_NSR(1,:)',...
       NonIce_LSHFO_Wet_Bulker_CT_Diff_NSR(1,:)' NonIce_LSHFO_Wet_Bulker_APC_Diff_NSR(1,:)' NonIce_LSHFO_Wet_Bulker_ClC_Diff_NSR(1,:)']; NonIce_LSHFO_Wet_Bulker_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Wet_Bulker_Diff_NSR_tm = [NonIce_LSHFO_Wet_Bulker_VC_Diff_NSR(2,:)' NonIce_LSHFO_Wet_Bulker_OC_Diff_NSR(2,:)' NonIce_LSHFO_Wet_Bulker_CC_Diff_NSR(2,:)',...
       NonIce_LSHFO_Wet_Bulker_CT_Diff_NSR(2,:)' NonIce_LSHFO_Wet_Bulker_APC_Diff_NSR(2,:)' NonIce_LSHFO_Wet_Bulker_ClC_Diff_NSR(2,:)'];  NonIce_LSHFO_Wet_Bulker_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_LSHFO_Wet_Bulker_Diff_NSR_tf = [NonIce_LSHFO_Wet_Bulker_VC_Diff_NSR(3,:)' NonIce_LSHFO_Wet_Bulker_OC_Diff_NSR(3,:)' NonIce_LSHFO_Wet_Bulker_CC_Diff_NSR(3,:)',...
       NonIce_LSHFO_Wet_Bulker_CT_Diff_NSR(3,:)' NonIce_LSHFO_Wet_Bulker_APC_Diff_NSR(3,:)' NonIce_LSHFO_Wet_Bulker_ClC_Diff_NSR(3,:)'];  NonIce_LSHFO_Wet_Bulker_Diff_NSR_tf(1:6:end,:) = [];
   
   NonIce_LSHFO_Bulker_CO2eq_Diff_NSR = [SCE1_LSHFO_NonIce_Bulker_CO2eq_Diff_NSR SCE2_LSHFO_NonIce_Bulker_CO2eq_Diff_NSR];
   
   NonIce_LSHFO_Bulker_SOx_Diff_NSR = [SCE1_LSHFO_NonIce_Bulker_SOx_Diff_NSR SCE2_LSHFO_NonIce_Bulker_SOx_Diff_NSR];
   NonIce_LSHFO_Bulker_SOx_Diff_NSR(isnan(NonIce_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Bulker_NOx_Diff_NSR = [SCE1_LSHFO_NonIce_Bulker_NOx_Diff_NSR SCE2_LSHFO_NonIce_Bulker_NOx_Diff_NSR];
   NonIce_LSHFO_Bulker_NOx_Diff_NSR(isnan(NonIce_LSHFO_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Bulker_PM_Diff_NSR = [SCE1_LSHFO_NonIce_Bulker_PM_Diff_NSR SCE2_LSHFO_NonIce_Bulker_PM_Diff_NSR];
   NonIce_LSHFO_Bulker_PM_Diff_NSR(isnan(NonIce_LSHFO_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Bulker_Emissions_Diff_NSR_t0 = [NonIce_LSHFO_Bulker_CO2eq_Diff_NSR(1,:)' NonIce_LSHFO_Bulker_SOx_Diff_NSR(1,:)' NonIce_LSHFO_Bulker_NOx_Diff_NSR(1,:)',...
       NonIce_LSHFO_Bulker_PM_Diff_NSR(1,:)']; NonIce_LSHFO_Bulker_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Bulker_Emissions_Diff_NSR_tm = [NonIce_LSHFO_Bulker_CO2eq_Diff_NSR(2,:)' NonIce_LSHFO_Bulker_SOx_Diff_NSR(2,:)' NonIce_LSHFO_Bulker_NOx_Diff_NSR(2,:)',...
       NonIce_LSHFO_Bulker_PM_Diff_NSR(2,:)']; NonIce_LSHFO_Bulker_Emissions_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_LSHFO_Bulker_Emissions_Diff_NSR_tf = [NonIce_LSHFO_Bulker_CO2eq_Diff_NSR(3,:)' NonIce_LSHFO_Bulker_SOx_Diff_NSR(3,:)' NonIce_LSHFO_Bulker_NOx_Diff_NSR(3,:)',...
       NonIce_LSHFO_Bulker_PM_Diff_NSR(3,:)']; NonIce_LSHFO_Bulker_Emissions_Diff_NSR_tf(1:6:end,:) = [];
   
   NonIce_LSHFO_Container_CO2eq_Diff_NSR = [SCE1_LSHFO_NonIce_Container_CO2eq_Diff_NSR SCE2_LSHFO_NonIce_Container_CO2eq_Diff_NSR];
   
   NonIce_LSHFO_Container_SOx_Diff_NSR = [SCE1_LSHFO_NonIce_Container_SOx_Diff_NSR SCE2_LSHFO_NonIce_Container_SOx_Diff_NSR];
   NonIce_LSHFO_Container_SOx_Diff_NSR(isnan(NonIce_LSHFO_Container_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Container_NOx_Diff_NSR = [SCE1_LSHFO_NonIce_Container_NOx_Diff_NSR SCE2_LSHFO_NonIce_Container_NOx_Diff_NSR];
   NonIce_LSHFO_Container_NOx_Diff_NSR(isnan(NonIce_LSHFO_Container_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Container_PM_Diff_NSR = [SCE1_LSHFO_NonIce_Container_PM_Diff_NSR SCE2_LSHFO_NonIce_Container_PM_Diff_NSR];
   NonIce_LSHFO_Container_PM_Diff_NSR(isnan(NonIce_LSHFO_Container_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Container_Emissions_Diff_NSR_t0 = [NonIce_LSHFO_Container_CO2eq_Diff_NSR(1,:)' NonIce_LSHFO_Container_SOx_Diff_NSR(1,:)' NonIce_LSHFO_Container_NOx_Diff_NSR(1,:)',...
       NonIce_LSHFO_Container_PM_Diff_NSR(1,:)']; NonIce_LSHFO_Container_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Container_Emissions_Diff_NSR_tm = [NonIce_LSHFO_Container_CO2eq_Diff_NSR(2,:)' NonIce_LSHFO_Container_SOx_Diff_NSR(2,:)' NonIce_LSHFO_Container_NOx_Diff_NSR(2,:)',...
       NonIce_LSHFO_Container_PM_Diff_NSR(2,:)']; NonIce_LSHFO_Container_Emissions_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_LSHFO_Container_Emissions_Diff_NSR_tf = [NonIce_LSHFO_Container_CO2eq_Diff_NSR(3,:)' NonIce_LSHFO_Container_SOx_Diff_NSR(3,:)' NonIce_LSHFO_Container_NOx_Diff_NSR(3,:)',...
       NonIce_LSHFO_Container_PM_Diff_NSR(3,:)']; NonIce_LSHFO_Container_Emissions_Diff_NSR_tf(1:6:end,:) = [];
   
   NonIce_LSHFO_Wet_Bulker_CO2eq_Diff_NSR = [SCE1_LSHFO_NonIce_Wet_Bulker_CO2eq_Diff_NSR SCE2_LSHFO_NonIce_Wet_Bulker_CO2eq_Diff_NSR];
   
   NonIce_LSHFO_Wet_Bulker_SOx_Diff_NSR = [SCE1_LSHFO_NonIce_Wet_Bulker_SOx_Diff_NSR SCE2_LSHFO_NonIce_Wet_Bulker_SOx_Diff_NSR];
   NonIce_LSHFO_Wet_Bulker_SOx_Diff_NSR(isnan(NonIce_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_NOx_Diff_NSR = [SCE1_LSHFO_NonIce_Wet_Bulker_NOx_Diff_NSR SCE2_LSHFO_NonIce_Wet_Bulker_NOx_Diff_NSR];
   NonIce_LSHFO_Wet_Bulker_NOx_Diff_NSR(isnan(NonIce_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_PM_Diff_NSR = [SCE1_LSHFO_NonIce_Wet_Bulker_PM_Diff_NSR SCE2_LSHFO_NonIce_Wet_Bulker_PM_Diff_NSR];
   NonIce_LSHFO_Wet_Bulker_PM_Diff_NSR(isnan(NonIce_Wet_Bulker_CO2eq_Diff_NSR)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_t0 = [NonIce_LSHFO_Wet_Bulker_CO2eq_Diff_NSR(1,:)' NonIce_LSHFO_Wet_Bulker_SOx_Diff_NSR(1,:)' NonIce_LSHFO_Wet_Bulker_NOx_Diff_NSR(1,:)',...
       NonIce_LSHFO_Wet_Bulker_PM_Diff_NSR(1,:)']; NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tm = [NonIce_LSHFO_Wet_Bulker_CO2eq_Diff_NSR(2,:)' NonIce_LSHFO_Wet_Bulker_SOx_Diff_NSR(2,:)' NonIce_LSHFO_Wet_Bulker_NOx_Diff_NSR(2,:)',...
       NonIce_LSHFO_Wet_Bulker_PM_Diff_NSR(2,:)']; NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tm(1:6:end,:) = [];
   NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tf = [NonIce_LSHFO_Wet_Bulker_CO2eq_Diff_NSR(3,:)' NonIce_LSHFO_Wet_Bulker_SOx_Diff_NSR(3,:)' NonIce_LSHFO_Wet_Bulker_NOx_Diff_NSR(3,:)',...
       NonIce_LSHFO_Wet_Bulker_PM_Diff_NSR(3,:)']; NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tf(1:6:end,:) = [];

   %INT
   NonIce_Bulker_FC_Normalised_value_INT_ptv = [SCE1_NonIce_Bulker_FC_Normalised_value_INT_ptv SCE2_NonIce_Bulker_FC_Normalised_value_INT_ptv];
   NonIce_Container_FC_Normalised_value_INT_ptv = [SCE1_NonIce_Container_FC_Normalised_value_INT_ptv SCE2_NonIce_Container_FC_Normalised_value_INT_ptv];
   NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv = [SCE1_NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv SCE2_NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv];
   
   NonIce_Bulker_TC_Normalised_value_INT_ptv = [SCE1_NonIce_Bulker_TC_Normalised_value_INT_ptv SCE2_NonIce_Bulker_TC_Normalised_value_INT_ptv];
   NonIce_Container_TC_Normalised_value_INT_ptv = [SCE1_NonIce_Container_TC_Normalised_value_INT_ptv SCE2_NonIce_Container_TC_Normalised_value_INT_ptv];
   NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv = [SCE1_NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv SCE2_NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv];
   
   NonIce_LSHFO_Bulker_FC_Normalised_value_INT_ptv = [SCE1_LSHFO_NonIce_Bulker_FC_Normalised_value_INT_ptv SCE2_LSHFO_NonIce_Bulker_FC_Normalised_value_INT_ptv];
   NonIce_LSHFO_Container_FC_Normalised_value_INT_ptv = [SCE1_LSHFO_NonIce_Container_FC_Normalised_value_INT_ptv SCE2_LSHFO_NonIce_Container_FC_Normalised_value_INT_ptv];
   NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_INT_ptv = [SCE1_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv SCE2_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv];
   
   NonIce_LSHFO_Bulker_TC_Normalised_value_INT_ptv = [SCE1_LSHFO_NonIce_Bulker_TC_Normalised_value_INT_ptv SCE2_LSHFO_NonIce_Bulker_TC_Normalised_value_INT_ptv];
   NonIce_LSHFO_Container_TC_Normalised_value_INT_ptv = [SCE1_LSHFO_NonIce_Container_TC_Normalised_value_INT_ptv SCE2_LSHFO_NonIce_Container_TC_Normalised_value_INT_ptv];
   NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_INT_ptv = [SCE1_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv SCE2_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv];
   
   NonIce_Bulker_VC_Diff_INT = [SCE1_NonIce_Bulker_VC_Diff_INT SCE2_NonIce_Bulker_VC_Diff_INT];
   
   NonIce_Bulker_OC_Diff_INT = [SCE1_NonIce_Bulker_OC_Diff_INT SCE2_NonIce_Bulker_OC_Diff_INT];
   NonIce_Bulker_OC_Diff_INT(isnan(NonIce_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_Bulker_CC_Diff_INT = [SCE1_NonIce_Bulker_CC_Diff_INT SCE2_NonIce_Bulker_CC_Diff_INT];
   NonIce_Bulker_CC_Diff_INT(isnan(NonIce_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_Bulker_CT_Diff_INT = [SCE1_NonIce_Bulker_CT_Diff_INT SCE2_NonIce_Bulker_CT_Diff_INT];
   NonIce_Bulker_CT_Diff_INT(isnan(NonIce_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_Bulker_APC_Diff_INT = [SCE1_NonIce_Bulker_APC_Diff_INT SCE2_NonIce_Bulker_APC_Diff_INT];
   NonIce_Bulker_APC_Diff_INT(isnan(NonIce_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_Bulker_ClC_Diff_INT = [SCE1_NonIce_Bulker_ClC_Diff_INT SCE2_NonIce_Bulker_ClC_Diff_INT];
   NonIce_Bulker_ClC_Diff_INT(isnan(NonIce_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_Bulker_Diff_INT_t0 = [NonIce_Bulker_VC_Diff_INT(1,:)' NonIce_Bulker_OC_Diff_INT(1,:)' NonIce_Bulker_CC_Diff_INT(1,:)',...
       NonIce_Bulker_CT_Diff_INT(1,:)' NonIce_Bulker_APC_Diff_INT(1,:)' NonIce_Bulker_ClC_Diff_INT(1,:)']; NonIce_Bulker_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Bulker_Diff_INT_tm = [NonIce_Bulker_VC_Diff_INT(2,:)' NonIce_Bulker_OC_Diff_INT(2,:)' NonIce_Bulker_CC_Diff_INT(2,:)',...
       NonIce_Bulker_CT_Diff_INT(2,:)' NonIce_Bulker_APC_Diff_INT(2,:)' NonIce_Bulker_ClC_Diff_INT(2,:)'];  NonIce_Bulker_Diff_INT_tm(1:6:end,:) = [];
   NonIce_Bulker_Diff_INT_tf = [NonIce_Bulker_VC_Diff_INT(3,:)' NonIce_Bulker_OC_Diff_INT(3,:)' NonIce_Bulker_CC_Diff_INT(3,:)',...
       NonIce_Bulker_CT_Diff_INT(3,:)' NonIce_Bulker_APC_Diff_INT(3,:)' NonIce_Bulker_ClC_Diff_INT(3,:)'];  NonIce_Bulker_Diff_INT_tf(1:6:end,:) = [];
   
   NonIce_Container_VC_Diff_INT = [SCE1_NonIce_Container_VC_Diff_INT SCE2_NonIce_Container_VC_Diff_INT];
   
   NonIce_Container_OC_Diff_INT = [SCE1_NonIce_Container_OC_Diff_INT SCE2_NonIce_Container_OC_Diff_INT];
   NonIce_Container_OC_Diff_INT(isnan(NonIce_Container_VC_Diff_INT)) = NaN;
   
   NonIce_Container_CC_Diff_INT = [SCE1_NonIce_Container_CC_Diff_INT SCE2_NonIce_Container_CC_Diff_INT];
   NonIce_Container_CC_Diff_INT(isnan(NonIce_Container_VC_Diff_INT)) = NaN;
   
   NonIce_Container_CT_Diff_INT = [SCE1_NonIce_Container_CT_Diff_INT SCE2_NonIce_Container_CT_Diff_INT];
   NonIce_Container_CT_Diff_INT(isnan(NonIce_Container_VC_Diff_INT)) = NaN;
   
   NonIce_Container_APC_Diff_INT = [SCE1_NonIce_Container_APC_Diff_INT SCE2_NonIce_Container_APC_Diff_INT];
   NonIce_Container_APC_Diff_INT(isnan(NonIce_Container_VC_Diff_INT)) = NaN;
   
   NonIce_Container_ClC_Diff_INT = [SCE1_NonIce_Container_ClC_Diff_INT SCE2_NonIce_Container_ClC_Diff_INT];
   NonIce_Container_ClC_Diff_INT(isnan(NonIce_Container_VC_Diff_INT)) = NaN;
   
   NonIce_Container_Diff_INT_t0 = [NonIce_Container_VC_Diff_INT(1,:)' NonIce_Container_OC_Diff_INT(1,:)' NonIce_Container_CC_Diff_INT(1,:)',...
       NonIce_Container_CT_Diff_INT(1,:)' NonIce_Container_APC_Diff_INT(1,:)' NonIce_Container_ClC_Diff_INT(1,:)']; NonIce_Container_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Container_Diff_INT_tm = [NonIce_Container_VC_Diff_INT(2,:)' NonIce_Container_OC_Diff_INT(2,:)' NonIce_Container_CC_Diff_INT(2,:)',...
       NonIce_Container_CT_Diff_INT(2,:)' NonIce_Container_APC_Diff_INT(2,:)' NonIce_Container_ClC_Diff_INT(2,:)'];  NonIce_Container_Diff_INT_tm(1:6:end,:) = [];
   NonIce_Container_Diff_INT_tf = [NonIce_Container_VC_Diff_INT(3,:)' NonIce_Container_OC_Diff_INT(3,:)' NonIce_Container_CC_Diff_INT(3,:)',...
       NonIce_Container_CT_Diff_INT(3,:)' NonIce_Container_APC_Diff_INT(3,:)' NonIce_Container_ClC_Diff_INT(3,:)'];  NonIce_Container_Diff_INT_tf(1:6:end,:) = [];
   
   NonIce_Wet_Bulker_VC_Diff_INT = [SCE1_NonIce_Wet_Bulker_VC_Diff_INT SCE2_NonIce_Wet_Bulker_VC_Diff_INT];
   
   NonIce_Wet_Bulker_OC_Diff_INT = [SCE1_NonIce_Wet_Bulker_OC_Diff_INT SCE2_NonIce_Wet_Bulker_OC_Diff_INT];
   NonIce_Wet_Bulker_OC_Diff_INT(isnan(NonIce_Wet_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_Wet_Bulker_CC_Diff_INT = [SCE1_NonIce_Wet_Bulker_CC_Diff_INT SCE2_NonIce_Wet_Bulker_CC_Diff_INT];
   NonIce_Wet_Bulker_CC_Diff_INT(isnan(NonIce_Wet_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_Wet_Bulker_CT_Diff_INT = [SCE1_NonIce_Wet_Bulker_CT_Diff_INT SCE2_NonIce_Wet_Bulker_CT_Diff_INT];
   NonIce_Wet_Bulker_CT_Diff_INT(isnan(NonIce_Wet_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_Wet_Bulker_APC_Diff_INT = [SCE1_NonIce_Wet_Bulker_APC_Diff_INT SCE2_NonIce_Wet_Bulker_APC_Diff_INT];
   NonIce_Wet_Bulker_APC_Diff_INT(isnan(NonIce_Wet_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_Wet_Bulker_ClC_Diff_INT = [SCE1_NonIce_Wet_Bulker_ClC_Diff_INT SCE2_NonIce_Wet_Bulker_ClC_Diff_INT];
   NonIce_Wet_Bulker_ClC_Diff_INT(isnan(NonIce_Wet_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_Wet_Bulker_Diff_INT_t0 = [NonIce_Wet_Bulker_VC_Diff_INT(1,:)' NonIce_Wet_Bulker_OC_Diff_INT(1,:)' NonIce_Wet_Bulker_CC_Diff_INT(1,:)',...
       NonIce_Wet_Bulker_CT_Diff_INT(1,:)' NonIce_Wet_Bulker_APC_Diff_INT(1,:)' NonIce_Wet_Bulker_ClC_Diff_INT(1,:)']; NonIce_Wet_Bulker_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Wet_Bulker_Diff_INT_tm = [NonIce_Wet_Bulker_VC_Diff_INT(2,:)' NonIce_Wet_Bulker_OC_Diff_INT(2,:)' NonIce_Wet_Bulker_CC_Diff_INT(2,:)',...
       NonIce_Wet_Bulker_CT_Diff_INT(2,:)' NonIce_Wet_Bulker_APC_Diff_INT(2,:)' NonIce_Wet_Bulker_ClC_Diff_INT(2,:)'];  NonIce_Wet_Bulker_Diff_INT_tm(1:6:end,:) = [];
   NonIce_Wet_Bulker_Diff_INT_tf = [NonIce_Wet_Bulker_VC_Diff_INT(3,:)' NonIce_Wet_Bulker_OC_Diff_INT(3,:)' NonIce_Wet_Bulker_CC_Diff_INT(3,:)',...
       NonIce_Wet_Bulker_CT_Diff_INT(3,:)' NonIce_Wet_Bulker_APC_Diff_INT(3,:)' NonIce_Wet_Bulker_ClC_Diff_INT(3,:)'];  NonIce_Wet_Bulker_Diff_INT_tf(1:6:end,:) = [];
   
   %LSHFO
   NonIce_LSHFO_Bulker_VC_Diff_INT = [SCE1_LSHFO_NonIce_Bulker_VC_Diff_INT SCE2_LSHFO_NonIce_Bulker_VC_Diff_INT];
   
   NonIce_LSHFO_Bulker_OC_Diff_INT = [SCE1_LSHFO_NonIce_Bulker_OC_Diff_INT SCE2_LSHFO_NonIce_Bulker_OC_Diff_INT];
   NonIce_LSHFO_Bulker_OC_Diff_INT(isnan(NonIce_LSHFO_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Bulker_CC_Diff_INT = [SCE1_LSHFO_NonIce_Bulker_CC_Diff_INT SCE2_LSHFO_NonIce_Bulker_CC_Diff_INT];
   NonIce_LSHFO_Bulker_CC_Diff_INT(isnan(NonIce_LSHFO_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Bulker_CT_Diff_INT = [SCE1_LSHFO_NonIce_Bulker_CT_Diff_INT SCE2_LSHFO_NonIce_Bulker_CT_Diff_INT];
   NonIce_LSHFO_Bulker_CT_Diff_INT(isnan(NonIce_LSHFO_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Bulker_APC_Diff_INT = [SCE1_LSHFO_NonIce_Bulker_APC_Diff_INT SCE2_LSHFO_NonIce_Bulker_APC_Diff_INT];
   NonIce_LSHFO_Bulker_APC_Diff_INT(isnan(NonIce_LSHFO_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Bulker_ClC_Diff_INT = [SCE1_LSHFO_NonIce_Bulker_ClC_Diff_INT SCE2_LSHFO_NonIce_Bulker_ClC_Diff_INT];
   NonIce_LSHFO_Bulker_ClC_Diff_INT(isnan(NonIce_LSHFO_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Bulker_Diff_INT_t0 = [NonIce_LSHFO_Bulker_VC_Diff_INT(1,:)' NonIce_LSHFO_Bulker_OC_Diff_INT(1,:)' NonIce_LSHFO_Bulker_CC_Diff_INT(1,:)',...
       NonIce_LSHFO_Bulker_CT_Diff_INT(1,:)' NonIce_LSHFO_Bulker_APC_Diff_INT(1,:)' NonIce_LSHFO_Bulker_ClC_Diff_INT(1,:)']; NonIce_LSHFO_Bulker_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Bulker_Diff_INT_tm = [NonIce_LSHFO_Bulker_VC_Diff_INT(2,:)' NonIce_LSHFO_Bulker_OC_Diff_INT(2,:)' NonIce_LSHFO_Bulker_CC_Diff_INT(2,:)',...
       NonIce_LSHFO_Bulker_CT_Diff_INT(2,:)' NonIce_LSHFO_Bulker_APC_Diff_INT(2,:)' NonIce_LSHFO_Bulker_ClC_Diff_INT(2,:)'];  NonIce_LSHFO_Bulker_Diff_INT_tm(1:6:end,:) = [];
   NonIce_LSHFO_Bulker_Diff_INT_tf = [NonIce_LSHFO_Bulker_VC_Diff_INT(3,:)' NonIce_LSHFO_Bulker_OC_Diff_INT(3,:)' NonIce_LSHFO_Bulker_CC_Diff_INT(3,:)',...
       NonIce_LSHFO_Bulker_CT_Diff_INT(3,:)' NonIce_LSHFO_Bulker_APC_Diff_INT(3,:)' NonIce_LSHFO_Bulker_ClC_Diff_INT(3,:)'];  NonIce_LSHFO_Bulker_Diff_INT_tf(1:6:end,:) = [];
   
   NonIce_LSHFO_Container_VC_Diff_INT = [SCE1_LSHFO_NonIce_Container_VC_Diff_INT SCE2_LSHFO_NonIce_Container_VC_Diff_INT];
   
   NonIce_LSHFO_Container_OC_Diff_INT = [SCE1_LSHFO_NonIce_Container_OC_Diff_INT SCE2_LSHFO_NonIce_Container_OC_Diff_INT];
   NonIce_LSHFO_Container_OC_Diff_INT(isnan(NonIce_LSHFO_Container_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Container_CC_Diff_INT = [SCE1_LSHFO_NonIce_Container_CC_Diff_INT SCE2_LSHFO_NonIce_Container_CC_Diff_INT];
   NonIce_LSHFO_Container_CC_Diff_INT(isnan(NonIce_LSHFO_Container_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Container_CT_Diff_INT = [SCE1_LSHFO_NonIce_Container_CT_Diff_INT SCE2_LSHFO_NonIce_Container_CT_Diff_INT];
   NonIce_LSHFO_Container_CT_Diff_INT(isnan(NonIce_LSHFO_Container_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Container_APC_Diff_INT = [SCE1_LSHFO_NonIce_Container_APC_Diff_INT SCE2_LSHFO_NonIce_Container_APC_Diff_INT];
   NonIce_LSHFO_Container_APC_Diff_INT(isnan(NonIce_LSHFO_Container_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Container_ClC_Diff_INT = [SCE1_LSHFO_NonIce_Container_ClC_Diff_INT SCE2_LSHFO_NonIce_Container_ClC_Diff_INT];
   NonIce_LSHFO_Container_ClC_Diff_INT(isnan(NonIce_LSHFO_Container_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Container_Diff_INT_t0 = [NonIce_LSHFO_Container_VC_Diff_INT(1,:)' NonIce_LSHFO_Container_OC_Diff_INT(1,:)' NonIce_LSHFO_Container_CC_Diff_INT(1,:)',...
       NonIce_LSHFO_Container_CT_Diff_INT(1,:)' NonIce_LSHFO_Container_APC_Diff_INT(1,:)' NonIce_LSHFO_Container_ClC_Diff_INT(1,:)']; NonIce_LSHFO_Container_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Container_Diff_INT_tm = [NonIce_LSHFO_Container_VC_Diff_INT(2,:)' NonIce_LSHFO_Container_OC_Diff_INT(2,:)' NonIce_LSHFO_Container_CC_Diff_INT(2,:)',...
       NonIce_LSHFO_Container_CT_Diff_INT(2,:)' NonIce_LSHFO_Container_APC_Diff_INT(2,:)' NonIce_LSHFO_Container_ClC_Diff_INT(2,:)'];  NonIce_LSHFO_Container_Diff_INT_tm(1:6:end,:) = [];
   NonIce_LSHFO_Container_Diff_INT_tf = [NonIce_LSHFO_Container_VC_Diff_INT(3,:)' NonIce_LSHFO_Container_OC_Diff_INT(3,:)' NonIce_LSHFO_Container_CC_Diff_INT(3,:)',...
       NonIce_LSHFO_Container_CT_Diff_INT(3,:)' NonIce_LSHFO_Container_APC_Diff_INT(3,:)' NonIce_LSHFO_Container_ClC_Diff_INT(3,:)'];  NonIce_LSHFO_Container_Diff_INT_tf(1:6:end,:) = [];
   
   NonIce_LSHFO_Wet_Bulker_VC_Diff_INT = [SCE1_LSHFO_NonIce_Wet_Bulker_VC_Diff_INT SCE2_LSHFO_NonIce_Wet_Bulker_VC_Diff_INT];
   
   NonIce_LSHFO_Wet_Bulker_OC_Diff_INT = [SCE1_LSHFO_NonIce_Wet_Bulker_OC_Diff_INT SCE2_LSHFO_NonIce_Wet_Bulker_OC_Diff_INT];
   NonIce_LSHFO_Wet_Bulker_OC_Diff_INT(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_CC_Diff_INT = [SCE1_LSHFO_NonIce_Wet_Bulker_CC_Diff_INT SCE2_LSHFO_NonIce_Wet_Bulker_CC_Diff_INT];
   NonIce_LSHFO_Wet_Bulker_CC_Diff_INT(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_CT_Diff_INT = [SCE1_LSHFO_NonIce_Wet_Bulker_CT_Diff_INT SCE2_LSHFO_NonIce_Wet_Bulker_CT_Diff_INT];
   NonIce_LSHFO_Wet_Bulker_CT_Diff_INT(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_APC_Diff_INT = [SCE1_LSHFO_NonIce_Wet_Bulker_APC_Diff_INT SCE2_LSHFO_NonIce_Wet_Bulker_APC_Diff_INT];
   NonIce_LSHFO_Wet_Bulker_APC_Diff_INT(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_ClC_Diff_INT = [SCE1_LSHFO_NonIce_Wet_Bulker_ClC_Diff_INT SCE2_LSHFO_NonIce_Wet_Bulker_ClC_Diff_INT];
   NonIce_LSHFO_Wet_Bulker_ClC_Diff_INT(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_INT)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_Diff_INT_t0 = [NonIce_LSHFO_Wet_Bulker_VC_Diff_INT(1,:)' NonIce_LSHFO_Wet_Bulker_OC_Diff_INT(1,:)' NonIce_LSHFO_Wet_Bulker_CC_Diff_INT(1,:)',...
       NonIce_LSHFO_Wet_Bulker_CT_Diff_INT(1,:)' NonIce_LSHFO_Wet_Bulker_APC_Diff_INT(1,:)' NonIce_LSHFO_Wet_Bulker_ClC_Diff_INT(1,:)']; NonIce_LSHFO_Wet_Bulker_Diff_INT_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Wet_Bulker_Diff_INT_tm = [NonIce_LSHFO_Wet_Bulker_VC_Diff_INT(2,:)' NonIce_LSHFO_Wet_Bulker_OC_Diff_INT(2,:)' NonIce_LSHFO_Wet_Bulker_CC_Diff_INT(2,:)',...
       NonIce_LSHFO_Wet_Bulker_CT_Diff_INT(2,:)' NonIce_LSHFO_Wet_Bulker_APC_Diff_INT(2,:)' NonIce_LSHFO_Wet_Bulker_ClC_Diff_INT(2,:)'];  NonIce_LSHFO_Wet_Bulker_Diff_INT_tm(1:6:end,:) = [];
   NonIce_LSHFO_Wet_Bulker_Diff_INT_tf = [NonIce_LSHFO_Wet_Bulker_VC_Diff_INT(3,:)' NonIce_LSHFO_Wet_Bulker_OC_Diff_INT(3,:)' NonIce_LSHFO_Wet_Bulker_CC_Diff_INT(3,:)',...
       NonIce_LSHFO_Wet_Bulker_CT_Diff_INT(3,:)' NonIce_LSHFO_Wet_Bulker_APC_Diff_INT(3,:)' NonIce_LSHFO_Wet_Bulker_ClC_Diff_INT(3,:)'];  NonIce_LSHFO_Wet_Bulker_Diff_INT_tf(1:6:end,:) = [];
    
    %TPP
   NonIce_Bulker_FC_Normalised_value_TPP_ptv = [SCE1_NonIce_Bulker_FC_Normalised_value_TPP_ptv SCE2_NonIce_Bulker_FC_Normalised_value_TPP_ptv];
   NonIce_Container_FC_Normalised_value_TPP_ptv = [SCE1_NonIce_Container_FC_Normalised_value_TPP_ptv SCE2_NonIce_Container_FC_Normalised_value_TPP_ptv];
   NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv = [SCE1_NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv SCE2_NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv];
    
   NonIce_Bulker_TC_Normalised_value_TPP_ptv = [SCE1_NonIce_Bulker_TC_Normalised_value_TPP_ptv SCE2_NonIce_Bulker_TC_Normalised_value_TPP_ptv];
   NonIce_Container_TC_Normalised_value_TPP_ptv = [SCE1_NonIce_Container_TC_Normalised_value_TPP_ptv SCE2_NonIce_Container_TC_Normalised_value_TPP_ptv];
   NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv = [SCE1_NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv SCE2_NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv];
    
   NonIce_LSHFO_Bulker_FC_Normalised_value_TPP_ptv = [SCE1_LSHFO_NonIce_Bulker_FC_Normalised_value_TPP_ptv SCE2_LSHFO_NonIce_Bulker_FC_Normalised_value_TPP_ptv];
   NonIce_LSHFO_Container_FC_Normalised_value_TPP_ptv = [SCE1_LSHFO_NonIce_Container_FC_Normalised_value_TPP_ptv SCE2_LSHFO_NonIce_Container_FC_Normalised_value_TPP_ptv];
   NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_TPP_ptv = [SCE1_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv SCE2_LSHFO_NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv];
    
   NonIce_LSHFO_Bulker_TC_Normalised_value_TPP_ptv = [SCE1_LSHFO_NonIce_Bulker_TC_Normalised_value_TPP_ptv SCE2_LSHFO_NonIce_Bulker_TC_Normalised_value_TPP_ptv];
   NonIce_LSHFO_Container_TC_Normalised_value_TPP_ptv = [SCE1_LSHFO_NonIce_Container_TC_Normalised_value_TPP_ptv SCE2_LSHFO_NonIce_Container_TC_Normalised_value_TPP_ptv];
   NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_TPP_ptv = [SCE1_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv SCE2_LSHFO_NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv];
   
   NonIce_Bulker_VC_Diff_TPP = [SCE1_NonIce_Bulker_VC_Diff_TPP SCE2_NonIce_Bulker_VC_Diff_TPP];
   
   NonIce_Bulker_OC_Diff_TPP = [SCE1_NonIce_Bulker_OC_Diff_TPP SCE2_NonIce_Bulker_OC_Diff_TPP];
   NonIce_Bulker_OC_Diff_TPP(isnan(NonIce_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_Bulker_CC_Diff_TPP = [SCE1_NonIce_Bulker_CC_Diff_TPP SCE2_NonIce_Bulker_CC_Diff_TPP];
   NonIce_Bulker_CC_Diff_TPP(isnan(NonIce_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_Bulker_CT_Diff_TPP = [SCE1_NonIce_Bulker_CT_Diff_TPP SCE2_NonIce_Bulker_CT_Diff_TPP];
   NonIce_Bulker_CT_Diff_TPP(isnan(NonIce_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_Bulker_APC_Diff_TPP = [SCE1_NonIce_Bulker_APC_Diff_TPP SCE2_NonIce_Bulker_APC_Diff_TPP];
   NonIce_Bulker_APC_Diff_TPP(isnan(NonIce_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_Bulker_ClC_Diff_TPP = [SCE1_NonIce_Bulker_ClC_Diff_TPP SCE2_NonIce_Bulker_ClC_Diff_TPP];
   NonIce_Bulker_ClC_Diff_TPP(isnan(NonIce_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_Bulker_Diff_TPP_t0 = [NonIce_Bulker_VC_Diff_TPP(1,:)' NonIce_Bulker_OC_Diff_TPP(1,:)' NonIce_Bulker_CC_Diff_TPP(1,:)',...
       NonIce_Bulker_CT_Diff_TPP(1,:)' NonIce_Bulker_APC_Diff_TPP(1,:)' NonIce_Bulker_ClC_Diff_TPP(1,:)']; NonIce_Bulker_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Bulker_Diff_TPP_tm = [NonIce_Bulker_VC_Diff_TPP(2,:)' NonIce_Bulker_OC_Diff_TPP(2,:)' NonIce_Bulker_CC_Diff_TPP(2,:)',...
       NonIce_Bulker_CT_Diff_TPP(2,:)' NonIce_Bulker_APC_Diff_TPP(2,:)' NonIce_Bulker_ClC_Diff_TPP(2,:)'];  NonIce_Bulker_Diff_TPP_tm(1:6:end,:) = [];
   NonIce_Bulker_Diff_TPP_tf = [NonIce_Bulker_VC_Diff_TPP(3,:)' NonIce_Bulker_OC_Diff_TPP(3,:)' NonIce_Bulker_CC_Diff_TPP(3,:)',...
       NonIce_Bulker_CT_Diff_TPP(3,:)' NonIce_Bulker_APC_Diff_TPP(3,:)' NonIce_Bulker_ClC_Diff_TPP(3,:)'];  NonIce_Bulker_Diff_TPP_tf(1:6:end,:) = [];
   
   NonIce_Container_VC_Diff_TPP = [SCE1_NonIce_Container_VC_Diff_TPP SCE2_NonIce_Container_VC_Diff_TPP];
   
   NonIce_Container_OC_Diff_TPP = [SCE1_NonIce_Container_OC_Diff_TPP SCE2_NonIce_Container_OC_Diff_TPP];
   NonIce_Container_OC_Diff_TPP(isnan(NonIce_Container_VC_Diff_TPP)) = NaN;
   
   NonIce_Container_CC_Diff_TPP = [SCE1_NonIce_Container_CC_Diff_TPP SCE2_NonIce_Container_CC_Diff_TPP];
   NonIce_Container_CC_Diff_TPP(isnan(NonIce_Container_VC_Diff_TPP)) = NaN;
   
   NonIce_Container_CT_Diff_TPP = [SCE1_NonIce_Container_CT_Diff_TPP SCE2_NonIce_Container_CT_Diff_TPP];
   NonIce_Container_CT_Diff_TPP(isnan(NonIce_Container_VC_Diff_TPP)) = NaN;
   
   NonIce_Container_APC_Diff_TPP = [SCE1_NonIce_Container_APC_Diff_TPP SCE2_NonIce_Container_APC_Diff_TPP];
   NonIce_Container_APC_Diff_TPP(isnan(NonIce_Container_VC_Diff_TPP)) = NaN;
   
   NonIce_Container_ClC_Diff_TPP = [SCE1_NonIce_Container_ClC_Diff_TPP SCE2_NonIce_Container_ClC_Diff_TPP];
   NonIce_Container_ClC_Diff_TPP(isnan(NonIce_Container_VC_Diff_TPP)) = NaN;
   
   NonIce_Container_Diff_TPP_t0 = [NonIce_Container_VC_Diff_TPP(1,:)' NonIce_Container_OC_Diff_TPP(1,:)' NonIce_Container_CC_Diff_TPP(1,:)',...
       NonIce_Container_CT_Diff_TPP(1,:)' NonIce_Container_APC_Diff_TPP(1,:)' NonIce_Container_ClC_Diff_TPP(1,:)']; NonIce_Container_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Container_Diff_TPP_tm = [NonIce_Container_VC_Diff_TPP(2,:)' NonIce_Container_OC_Diff_TPP(2,:)' NonIce_Container_CC_Diff_TPP(2,:)',...
       NonIce_Container_CT_Diff_TPP(2,:)' NonIce_Container_APC_Diff_TPP(2,:)' NonIce_Container_ClC_Diff_TPP(2,:)'];  NonIce_Container_Diff_TPP_tm(1:6:end,:) = [];
   NonIce_Container_Diff_TPP_tf = [NonIce_Container_VC_Diff_TPP(3,:)' NonIce_Container_OC_Diff_TPP(3,:)' NonIce_Container_CC_Diff_TPP(3,:)',...
       NonIce_Container_CT_Diff_TPP(3,:)' NonIce_Container_APC_Diff_TPP(3,:)' NonIce_Container_ClC_Diff_TPP(3,:)'];  NonIce_Container_Diff_TPP_tf(1:6:end,:) = [];
   
   NonIce_Wet_Bulker_VC_Diff_TPP = [SCE1_NonIce_Wet_Bulker_VC_Diff_TPP SCE2_NonIce_Wet_Bulker_VC_Diff_TPP];
   
   NonIce_Wet_Bulker_OC_Diff_TPP = [SCE1_NonIce_Wet_Bulker_OC_Diff_TPP SCE2_NonIce_Wet_Bulker_OC_Diff_TPP];
   NonIce_Wet_Bulker_OC_Diff_TPP(isnan(NonIce_Wet_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_Wet_Bulker_CC_Diff_TPP = [SCE1_NonIce_Wet_Bulker_CC_Diff_TPP SCE2_NonIce_Wet_Bulker_CC_Diff_TPP];
   NonIce_Wet_Bulker_CC_Diff_TPP(isnan(NonIce_Wet_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_Wet_Bulker_CT_Diff_TPP = [SCE1_NonIce_Wet_Bulker_CT_Diff_TPP SCE2_NonIce_Wet_Bulker_CT_Diff_TPP];
   NonIce_Wet_Bulker_CT_Diff_TPP(isnan(NonIce_Wet_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_Wet_Bulker_APC_Diff_TPP = [SCE1_NonIce_Wet_Bulker_APC_Diff_TPP SCE2_NonIce_Wet_Bulker_APC_Diff_TPP];
   NonIce_Wet_Bulker_APC_Diff_TPP(isnan(NonIce_Wet_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_Wet_Bulker_ClC_Diff_TPP = [SCE1_NonIce_Wet_Bulker_ClC_Diff_TPP SCE2_NonIce_Wet_Bulker_ClC_Diff_TPP];
   NonIce_Wet_Bulker_ClC_Diff_TPP(isnan(NonIce_Wet_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_Wet_Bulker_Diff_TPP_t0 = [NonIce_Wet_Bulker_VC_Diff_TPP(1,:)' NonIce_Wet_Bulker_OC_Diff_TPP(1,:)' NonIce_Wet_Bulker_CC_Diff_TPP(1,:)',...
       NonIce_Wet_Bulker_CT_Diff_TPP(1,:)' NonIce_Wet_Bulker_APC_Diff_TPP(1,:)' NonIce_Wet_Bulker_ClC_Diff_TPP(1,:)']; NonIce_Wet_Bulker_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_Wet_Bulker_Diff_TPP_tm = [NonIce_Wet_Bulker_VC_Diff_TPP(2,:)' NonIce_Wet_Bulker_OC_Diff_TPP(2,:)' NonIce_Wet_Bulker_CC_Diff_TPP(2,:)',...
       NonIce_Wet_Bulker_CT_Diff_TPP(2,:)' NonIce_Wet_Bulker_APC_Diff_TPP(2,:)' NonIce_Wet_Bulker_ClC_Diff_TPP(2,:)'];  NonIce_Wet_Bulker_Diff_TPP_tm(1:6:end,:) = [];
   NonIce_Wet_Bulker_Diff_TPP_tf = [NonIce_Wet_Bulker_VC_Diff_TPP(3,:)' NonIce_Wet_Bulker_OC_Diff_TPP(3,:)' NonIce_Wet_Bulker_CC_Diff_TPP(3,:)',...
       NonIce_Wet_Bulker_CT_Diff_TPP(3,:)' NonIce_Wet_Bulker_APC_Diff_TPP(3,:)' NonIce_Wet_Bulker_ClC_Diff_TPP(3,:)'];  NonIce_Wet_Bulker_Diff_TPP_tf(1:6:end,:) = [];
   
   %LSHFO
   NonIce_LSHFO_Bulker_VC_Diff_TPP = [SCE1_LSHFO_NonIce_Bulker_VC_Diff_TPP SCE2_LSHFO_NonIce_Bulker_VC_Diff_TPP];
   
   NonIce_LSHFO_Bulker_OC_Diff_TPP = [SCE1_LSHFO_NonIce_Bulker_OC_Diff_TPP SCE2_LSHFO_NonIce_Bulker_OC_Diff_TPP];
   NonIce_LSHFO_Bulker_OC_Diff_TPP(isnan(NonIce_LSHFO_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Bulker_CC_Diff_TPP = [SCE1_LSHFO_NonIce_Bulker_CC_Diff_TPP SCE2_LSHFO_NonIce_Bulker_CC_Diff_TPP];
   NonIce_LSHFO_Bulker_CC_Diff_TPP(isnan(NonIce_LSHFO_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Bulker_CT_Diff_TPP = [SCE1_LSHFO_NonIce_Bulker_CT_Diff_TPP SCE2_LSHFO_NonIce_Bulker_CT_Diff_TPP];
   NonIce_LSHFO_Bulker_CT_Diff_TPP(isnan(NonIce_LSHFO_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Bulker_APC_Diff_TPP = [SCE1_LSHFO_NonIce_Bulker_APC_Diff_TPP SCE2_LSHFO_NonIce_Bulker_APC_Diff_TPP];
   NonIce_LSHFO_Bulker_APC_Diff_TPP(isnan(NonIce_LSHFO_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Bulker_ClC_Diff_TPP = [SCE1_LSHFO_NonIce_Bulker_ClC_Diff_TPP SCE2_LSHFO_NonIce_Bulker_ClC_Diff_TPP];
   NonIce_LSHFO_Bulker_ClC_Diff_TPP(isnan(NonIce_LSHFO_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Bulker_Diff_TPP_t0 = [NonIce_LSHFO_Bulker_VC_Diff_TPP(1,:)' NonIce_LSHFO_Bulker_OC_Diff_TPP(1,:)' NonIce_LSHFO_Bulker_CC_Diff_TPP(1,:)',...
       NonIce_LSHFO_Bulker_CT_Diff_TPP(1,:)' NonIce_LSHFO_Bulker_APC_Diff_TPP(1,:)' NonIce_LSHFO_Bulker_ClC_Diff_TPP(1,:)']; NonIce_LSHFO_Bulker_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Bulker_Diff_TPP_tm = [NonIce_LSHFO_Bulker_VC_Diff_TPP(2,:)' NonIce_LSHFO_Bulker_OC_Diff_TPP(2,:)' NonIce_LSHFO_Bulker_CC_Diff_TPP(2,:)',...
       NonIce_LSHFO_Bulker_CT_Diff_TPP(2,:)' NonIce_LSHFO_Bulker_APC_Diff_TPP(2,:)' NonIce_LSHFO_Bulker_ClC_Diff_TPP(2,:)'];  NonIce_LSHFO_Bulker_Diff_TPP_tm(1:6:end,:) = [];
   NonIce_LSHFO_Bulker_Diff_TPP_tf = [NonIce_LSHFO_Bulker_VC_Diff_TPP(3,:)' NonIce_LSHFO_Bulker_OC_Diff_TPP(3,:)' NonIce_LSHFO_Bulker_CC_Diff_TPP(3,:)',...
       NonIce_LSHFO_Bulker_CT_Diff_TPP(3,:)' NonIce_LSHFO_Bulker_APC_Diff_TPP(3,:)' NonIce_LSHFO_Bulker_ClC_Diff_TPP(3,:)'];  NonIce_LSHFO_Bulker_Diff_TPP_tf(1:6:end,:) = [];
   
   NonIce_LSHFO_Container_VC_Diff_TPP = [SCE1_LSHFO_NonIce_Container_VC_Diff_TPP SCE2_LSHFO_NonIce_Container_VC_Diff_TPP];
   
   NonIce_LSHFO_Container_OC_Diff_TPP = [SCE1_LSHFO_NonIce_Container_OC_Diff_TPP SCE2_LSHFO_NonIce_Container_OC_Diff_TPP];
   NonIce_LSHFO_Container_OC_Diff_TPP(isnan(NonIce_LSHFO_Container_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Container_CC_Diff_TPP = [SCE1_LSHFO_NonIce_Container_CC_Diff_TPP SCE2_LSHFO_NonIce_Container_CC_Diff_TPP];
   NonIce_LSHFO_Container_CC_Diff_TPP(isnan(NonIce_LSHFO_Container_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Container_CT_Diff_TPP = [SCE1_LSHFO_NonIce_Container_CT_Diff_TPP SCE2_LSHFO_NonIce_Container_CT_Diff_TPP];
   NonIce_LSHFO_Container_CT_Diff_TPP(isnan(NonIce_LSHFO_Container_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Container_APC_Diff_TPP = [SCE1_LSHFO_NonIce_Container_APC_Diff_TPP SCE2_LSHFO_NonIce_Container_APC_Diff_TPP];
   NonIce_LSHFO_Container_APC_Diff_TPP(isnan(NonIce_LSHFO_Container_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Container_ClC_Diff_TPP = [SCE1_LSHFO_NonIce_Container_ClC_Diff_TPP SCE2_LSHFO_NonIce_Container_ClC_Diff_TPP];
   NonIce_LSHFO_Container_ClC_Diff_TPP(isnan(NonIce_LSHFO_Container_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Container_Diff_TPP_t0 = [NonIce_LSHFO_Container_VC_Diff_TPP(1,:)' NonIce_LSHFO_Container_OC_Diff_TPP(1,:)' NonIce_LSHFO_Container_CC_Diff_TPP(1,:)',...
       NonIce_LSHFO_Container_CT_Diff_TPP(1,:)' NonIce_LSHFO_Container_APC_Diff_TPP(1,:)' NonIce_LSHFO_Container_ClC_Diff_TPP(1,:)']; NonIce_LSHFO_Container_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Container_Diff_TPP_tm = [NonIce_LSHFO_Container_VC_Diff_TPP(2,:)' NonIce_LSHFO_Container_OC_Diff_TPP(2,:)' NonIce_LSHFO_Container_CC_Diff_TPP(2,:)',...
       NonIce_LSHFO_Container_CT_Diff_TPP(2,:)' NonIce_LSHFO_Container_APC_Diff_TPP(2,:)' NonIce_LSHFO_Container_ClC_Diff_TPP(2,:)'];  NonIce_LSHFO_Container_Diff_TPP_tm(1:6:end,:) = [];
   NonIce_LSHFO_Container_Diff_TPP_tf = [NonIce_LSHFO_Container_VC_Diff_TPP(3,:)' NonIce_LSHFO_Container_OC_Diff_TPP(3,:)' NonIce_LSHFO_Container_CC_Diff_TPP(3,:)',...
       NonIce_LSHFO_Container_CT_Diff_TPP(3,:)' NonIce_LSHFO_Container_APC_Diff_TPP(3,:)' NonIce_LSHFO_Container_ClC_Diff_TPP(3,:)'];  NonIce_LSHFO_Container_Diff_TPP_tf(1:6:end,:) = [];
   
   NonIce_LSHFO_Wet_Bulker_VC_Diff_TPP = [SCE1_LSHFO_NonIce_Wet_Bulker_VC_Diff_TPP SCE2_LSHFO_NonIce_Wet_Bulker_VC_Diff_TPP];
   
   NonIce_LSHFO_Wet_Bulker_OC_Diff_TPP = [SCE1_LSHFO_NonIce_Wet_Bulker_OC_Diff_TPP SCE2_LSHFO_NonIce_Wet_Bulker_OC_Diff_TPP];
   NonIce_LSHFO_Wet_Bulker_OC_Diff_TPP(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_CC_Diff_TPP = [SCE1_LSHFO_NonIce_Wet_Bulker_CC_Diff_TPP SCE2_LSHFO_NonIce_Wet_Bulker_CC_Diff_TPP];
   NonIce_LSHFO_Wet_Bulker_CC_Diff_TPP(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_CT_Diff_TPP = [SCE1_LSHFO_NonIce_Wet_Bulker_CT_Diff_TPP SCE2_LSHFO_NonIce_Wet_Bulker_CT_Diff_TPP];
   NonIce_LSHFO_Wet_Bulker_CT_Diff_TPP(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_APC_Diff_TPP = [SCE1_LSHFO_NonIce_Wet_Bulker_APC_Diff_TPP SCE2_LSHFO_NonIce_Wet_Bulker_APC_Diff_TPP];
   NonIce_LSHFO_Wet_Bulker_APC_Diff_TPP(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_ClC_Diff_TPP = [SCE1_LSHFO_NonIce_Wet_Bulker_ClC_Diff_TPP SCE2_LSHFO_NonIce_Wet_Bulker_ClC_Diff_TPP];
   NonIce_LSHFO_Wet_Bulker_ClC_Diff_TPP(isnan(NonIce_LSHFO_Wet_Bulker_VC_Diff_TPP)) = NaN;
   
   NonIce_LSHFO_Wet_Bulker_Diff_TPP_t0 = [NonIce_LSHFO_Wet_Bulker_VC_Diff_TPP(1,:)' NonIce_LSHFO_Wet_Bulker_OC_Diff_TPP(1,:)' NonIce_LSHFO_Wet_Bulker_CC_Diff_TPP(1,:)',...
       NonIce_LSHFO_Wet_Bulker_CT_Diff_TPP(1,:)' NonIce_LSHFO_Wet_Bulker_APC_Diff_TPP(1,:)' NonIce_LSHFO_Wet_Bulker_ClC_Diff_TPP(1,:)']; NonIce_LSHFO_Wet_Bulker_Diff_TPP_t0(1:6:end,:) = []; %Deleting HFO values
   NonIce_LSHFO_Wet_Bulker_Diff_TPP_tm = [NonIce_LSHFO_Wet_Bulker_VC_Diff_TPP(2,:)' NonIce_LSHFO_Wet_Bulker_OC_Diff_TPP(2,:)' NonIce_LSHFO_Wet_Bulker_CC_Diff_TPP(2,:)',...
       NonIce_LSHFO_Wet_Bulker_CT_Diff_TPP(2,:)' NonIce_LSHFO_Wet_Bulker_APC_Diff_TPP(2,:)' NonIce_LSHFO_Wet_Bulker_ClC_Diff_TPP(2,:)'];  NonIce_LSHFO_Wet_Bulker_Diff_TPP_tm(1:6:end,:) = [];
   NonIce_LSHFO_Wet_Bulker_Diff_TPP_tf = [NonIce_LSHFO_Wet_Bulker_VC_Diff_TPP(3,:)' NonIce_LSHFO_Wet_Bulker_OC_Diff_TPP(3,:)' NonIce_LSHFO_Wet_Bulker_CC_Diff_TPP(3,:)',...
       NonIce_LSHFO_Wet_Bulker_CT_Diff_TPP(3,:)' NonIce_LSHFO_Wet_Bulker_APC_Diff_TPP(3,:)' NonIce_LSHFO_Wet_Bulker_ClC_Diff_TPP(3,:)'];  NonIce_LSHFO_Wet_Bulker_Diff_TPP_tf(1:6:end,:) = [];
   
   
else
    %NSR
    NonIce_Bulker_FC_Normalised_value_NSR_ptv = NaN;
    NonIce_Container_FC_Normalised_value_NSR_ptv = NaN;
    NonIce_Wet_Bulker_FC_Normalised_value_NSR_ptv = NaN;
    
    NonIce_Bulker_TC_Normalised_value_NSR_ptv =NaN;
    NonIce_Container_TC_Normalised_value_NSR_ptv = NaN;
    NonIce_Wet_Bulker_TC_Normalised_value_NSR_ptv = NaN;
    
    NonIce_LSHFO_Bulker_FC_Normalised_value_NSR_ptv = NaN;
    NonIce_LSHFO_Container_FC_Normalised_value_NSR_ptv =NaN;
    NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_NSR_ptv = NaN;
    
    NonIce_LSHFO_Bulker_TC_Normalised_value_NSR_ptv = NaN;
    NonIce_LSHFO_Container_TC_Normalised_value_NSR_ptv = NaN;
    NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_NSR_ptv = NaN;

    NonIce_Bulker_Diff_NSR_t0 = NaN;
    NonIce_Bulker_Diff_NSR_tm = NaN;
    NonIce_Bulker_Diff_NSR_tf = NaN;
    
    NonIce_Container_Diff_NSR_t0 = NaN;
    NonIce_Container_Diff_NSR_tm = NaN;
    NonIce_Container_Diff_NSR_tf = NaN;
    
    NonIce_Wet_Bulker_Diff_NSR_t0 = NaN;
    NonIce_Wet_Bulker_Diff_NSR_tm = NaN;
    NonIce_Wet_Bulker_Diff_NSR_tf  = NaN;   
    
    NonIce_Bulker_Emissions_Diff_NSR_t0  = NaN;
    NonIce_Bulker_Emissions_Diff_NSR_tm = NaN;
    NonIce_Bulker_Emissions_Diff_NSR_tf  = NaN;
    
    NonIce_Container_Emissions_Diff_NSR_t0  = NaN;
    NonIce_Container_Emissions_Diff_NSR_tm = NaN;
    NonIce_Container_Emissions_Diff_NSR_tf  = NaN;
    
    NonIce_Wet_Bulker_Emissions_Diff_NSR_t0  = NaN;
    NonIce_Wet_Bulker_Emissions_Diff_NSR_tm = NaN;
    NonIce_Wet_Bulker_Emissions_Diff_NSR_tf  = NaN;    
    
    NonIce_LSHFO_Bulker_Diff_NSR_t0 = NaN;
    NonIce_LSHFO_Bulker_Diff_NSR_tm = NaN;
    NonIce_LSHFO_Bulker_Diff_NSR_tf = NaN;
    
    NonIce_LSHFO_Container_Diff_NSR_t0 = NaN;
    NonIce_LSHFO_Container_Diff_NSR_tm = NaN;
    NonIce_LSHFO_Container_Diff_NSR_tf = NaN;
    
    NonIce_LSHFO_Wet_Bulker_Diff_NSR_t0 = NaN;
    NonIce_LSHFO_Wet_Bulker_Diff_NSR_tm = NaN;
    NonIce_LSHFO_Wet_Bulker_Diff_NSR_tf = NaN;
    
    NonIce_LSHFO_Bulker_Emissions_Diff_NSR_t0  = NaN;
    NonIce_LSHFO_Bulker_Emissions_Diff_NSR_tm = NaN;
    NonIce_LSHFO_Bulker_Emissions_Diff_NSR_tf  = NaN;
    
    NonIce_LSHFO_Container_Emissions_Diff_NSR_t0  = NaN;
    NonIce_LSHFO_Container_Emissions_Diff_NSR_tm = NaN;
    NonIce_LSHFO_Container_Emissions_Diff_NSR_tf  = NaN;
    
    NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_t0  = NaN;
    NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tm = NaN;
    NonIce_LSHFO_Wet_Bulker_Emissions_Diff_NSR_tf  = NaN;
    
    %INT
    NonIce_Bulker_FC_Normalised_value_INT_ptv = NaN;
    NonIce_Container_FC_Normalised_value_INT_ptv = NaN;
    NonIce_Wet_Bulker_FC_Normalised_value_INT_ptv = NaN;
    
    NonIce_Bulker_TC_Normalised_value_INT_ptv = NaN;
    NonIce_Container_TC_Normalised_value_INT_ptv = NaN;
    NonIce_Wet_Bulker_TC_Normalised_value_INT_ptv = NaN;
    
    NonIce_LSHFO_Bulker_FC_Normalised_value_INT_ptv = NaN;
    NonIce_LSHFO_Container_FC_Normalised_value_INT_ptv = NaN;
    NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_INT_ptv = NaN;
    
    NonIce_LSHFO_Bulker_TC_Normalised_value_INT_ptv = NaN;
    NonIce_LSHFO_Container_TC_Normalised_value_INT_ptv = NaN;
    NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_INT_ptv = NaN;
    
    NonIce_Bulker_Diff_INT_t0 = NaN;
    NonIce_Bulker_Diff_INT_tm = NaN;
    NonIce_Bulker_Diff_INT_tf = NaN;
    
    NonIce_Container_Diff_INT_t0 = NaN;
    NonIce_Container_Diff_INT_tm = NaN;
    NonIce_Container_Diff_INT_tf = NaN;
    
    NonIce_Wet_Bulker_Diff_INT_t0 = NaN;
    NonIce_Wet_Bulker_Diff_INT_tm = NaN;
    NonIce_Wet_Bulker_Diff_INT_tf  = NaN;   
    
    NonIce_LSHFO_Bulker_Diff_INT_t0 = NaN;
    NonIce_LSHFO_Bulker_Diff_INT_tm = NaN;
    NonIce_LSHFO_Bulker_Diff_INT_tf = NaN;
    
    NonIce_LSHFO_Container_Diff_INT_t0 = NaN;
    NonIce_LSHFO_Container_Diff_INT_tm = NaN;
    NonIce_LSHFO_Container_Diff_INT_tf = NaN;
    
    NonIce_LSHFO_Wet_Bulker_Diff_INT_t0 = NaN;
    NonIce_LSHFO_Wet_Bulker_Diff_INT_tm = NaN;
    NonIce_LSHFO_Wet_Bulker_Diff_INT_tf = NaN;
    
    %TPP
    NonIce_Bulker_FC_Normalised_value_TPP_ptv = NaN;
    NonIce_Container_FC_Normalised_value_TPP_ptv = NaN;
    NonIce_Wet_Bulker_FC_Normalised_value_TPP_ptv = NaN;
    
    NonIce_Bulker_TC_Normalised_value_TPP_ptv = NaN;
    NonIce_Container_TC_Normalised_value_TPP_ptv = NaN;
    NonIce_Wet_Bulker_TC_Normalised_value_TPP_ptv = NaN;
    
    NonIce_LSHFO_Bulker_FC_Normalised_value_TPP_ptv = NaN;
    NonIce_LSHFO_Container_FC_Normalised_value_TPP_ptv = NaN;
    NonIce_LSHFO_Wet_Bulker_FC_Normalised_value_TPP_ptv = NaN;
    
    NonIce_LSHFO_Bulker_TC_Normalised_value_TPP_ptv = NaN;
    NonIce_LSHFO_Container_TC_Normalised_value_TPP_ptv = NaN;
    NonIce_LSHFO_Wet_Bulker_TC_Normalised_value_TPP_ptv = NaN;
   
    NonIce_Bulker_Diff_TPP_t0 = NaN;
    NonIce_Bulker_Diff_TPP_tm = NaN;
    NonIce_Bulker_Diff_TPP_tf = NaN;
    
    NonIce_Container_Diff_TPP_t0 = NaN;
    NonIce_Container_Diff_TPP_tm = NaN;
    NonIce_Container_Diff_TPP_tf = NaN;
    
    NonIce_Wet_Bulker_Diff_TPP_t0 = NaN;
    NonIce_Wet_Bulker_Diff_TPP_tm = NaN;
    NonIce_Wet_Bulker_Diff_TPP_tf  = NaN;   
    
    NonIce_LSHFO_Bulker_Diff_TPP_t0 = NaN;
    NonIce_LSHFO_Bulker_Diff_TPP_tm = NaN;
    NonIce_LSHFO_Bulker_Diff_TPP_tf = NaN;
    
    NonIce_LSHFO_Container_Diff_TPP_t0 = NaN;
    NonIce_LSHFO_Container_Diff_TPP_tm = NaN;
    NonIce_LSHFO_Container_Diff_TPP_tf = NaN;
    
    NonIce_LSHFO_Wet_Bulker_Diff_TPP_t0 = NaN;
    NonIce_LSHFO_Wet_Bulker_Diff_TPP_tm = NaN;
    NonIce_LSHFO_Wet_Bulker_Diff_TPP_tf = NaN;

    
end

