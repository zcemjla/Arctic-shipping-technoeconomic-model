function [SCE1_Fuel_costs_t0, SCE1_Fuel_costs_tm, SCE1_Fuel_costs_tf, SCE1_Aux_Fuel_costs_t0, SCE1_Aux_Fuel_costs_tm, SCE1_Aux_Fuel_costs_tf, SCE1_Boil_Fuel_costs_t0, SCE1_Boil_Fuel_costs_tm, SCE1_Boil_Fuel_costs_tf,...
    SCE2_Fuel_costs_t0, SCE2_Fuel_costs_tm, SCE2_Fuel_costs_tf, SCE2_Aux_Fuel_costs_t0, SCE2_Aux_Fuel_costs_tm, SCE2_Aux_Fuel_costs_tf, SCE2_Boil_Fuel_costs_t0, SCE2_Boil_Fuel_costs_tm, SCE2_Boil_Fuel_costs_tf,...
    SCE3_Fuel_costs_t0, SCE3_Fuel_costs_tm, SCE3_Fuel_costs_tf, SCE3_Aux_Fuel_costs_t0, SCE3_Aux_Fuel_costs_tm, SCE3_Aux_Fuel_costs_tf, SCE3_Boil_Fuel_costs_t0, SCE3_Boil_Fuel_costs_tm, SCE3_Boil_Fuel_costs_tf,...
    SCE1_Fuel_cons_t0, SCE1_Fuel_cons_tm, SCE1_Fuel_cons_tf, SCE1_Aux_Fuel_cons_t0, SCE1_Aux_Fuel_cons_tm, SCE1_Aux_Fuel_cons_tf, SCE1_Boil_Fuel_cons_t0, SCE1_Boil_Fuel_cons_tm, SCE1_Boil_Fuel_cons_tf,...
    SCE2_Fuel_cons_t0, SCE2_Fuel_cons_tm, SCE2_Fuel_cons_tf, SCE2_Aux_Fuel_cons_t0, SCE2_Aux_Fuel_cons_tm, SCE2_Aux_Fuel_cons_tf, SCE2_Boil_Fuel_cons_t0, SCE2_Boil_Fuel_cons_tm, SCE2_Boil_Fuel_cons_tf,...
    SCE3_Fuel_cons_t0, SCE3_Fuel_cons_tm, SCE3_Fuel_cons_tf, SCE3_Aux_Fuel_cons_t0, SCE3_Aux_Fuel_cons_tm, SCE3_Aux_Fuel_cons_tf, SCE3_Boil_Fuel_cons_t0, SCE3_Boil_Fuel_cons_tm, SCE3_Boil_Fuel_cons_tf] = Fuelcost_profile(d, Fuel_price, Icesfc_design, inp, Scenario1_Fuel_consumption, Scenario1_Aux_Fuel_consumption, Scenario1_Boil_Fuel_consumption,...
    Scenario2_Fuel_consumption, Scenario2_Aux_Fuel_consumption, Scenario2_Boil_Fuel_consumption,...
    Scenario3_Fuel_consumption, Scenario3_Aux_Fuel_consumption, Scenario3_Boil_Fuel_consumption);

%This function explores the relationship between fuel type, consumption and
%costs 
%   Specifically it finds which fuels can be used to maximise profits for
%   the charterer 
%Cap - Fuel indices
% 2-stroke/HFO = 1
% 2-stroke/LSHFO = 2
% 2-stroke/MDO = 3
% 4-stroke spark ignition/LNG = 4
% 4-stroke spark ignition/NH3 = 5
% Fuel cell/NH3 = 6


%Design of propulsion and electric power generation systems, available
%through IMARest 
%EEDI specifications 
%The maritime engineering reference book

%Need to tabulate my results, group in terms of scenarios and time

%These ratios are not inclusive of
%the changes you would get from switching an engine and running on the same
%fuel, so for engines which run multiple fuels the ratio would be different
%still. Alternative fuels don't have this problem, I also exclude Hyd
%retrofit from analysis as all ships are newbuilds and this makes it a more
%fair assessment 

Table_width = width(Scenario1_Fuel_consumption);
NonIcesfc_design = d.design_main_engine_sfc(:);
sfc_LNG = 172;
sfc_NH3ICE = 391;
sfc_NH3FC = 456;

%I aggregate all the fuel prices into their corresponding tables and then
%I will group them according to their engine type 
%Columns represent the Routes (so Route 1, 2 and 3) and the rows, the
%designs
%Assume separate configuration for aux and me for 2-stroke

%Scenario 1 - Arctic year round
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Find the fuel prices with their corresponding dates

%2 - stroke
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%HFO
%Extracting fuel consumed
%t_0
%%%%%
Two_Str_Ice_HFO_Fuel_Cons_SCE1_t0 = Scenario1_Fuel_consumption(:,1:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Fuel_Cons_SCE1_t0 = Scenario1_Fuel_consumption(:,2:Table_width/3:Table_width);

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_t0 = Scenario1_Aux_Fuel_consumption(:,1:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_t0 = Scenario1_Aux_Fuel_consumption(:,2:Table_width/3:Table_width);

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_t0 = Scenario1_Boil_Fuel_consumption(:,1:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_t0 = Scenario1_Boil_Fuel_consumption(:,2:Table_width/3:Table_width);

%t_m
%%%%%
Two_Str_Ice_HFO_Fuel_Cons_SCE1_tm = Scenario1_Fuel_consumption(:,3:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tm = Scenario1_Fuel_consumption(:,4:Table_width/3:Table_width);

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tm = Scenario1_Aux_Fuel_consumption(:,3:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tm = Scenario1_Aux_Fuel_consumption(:,4:Table_width/3:Table_width);

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tm = Scenario1_Boil_Fuel_consumption(:,3:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tm = Scenario1_Boil_Fuel_consumption(:,4:Table_width/3:Table_width);

%t_f
%%%%%
Two_Str_Ice_HFO_Fuel_Cons_SCE1_tf = Scenario1_Fuel_consumption(:,5:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tf = Scenario1_Fuel_consumption(:,6:Table_width/3:Table_width);

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tf = Scenario1_Aux_Fuel_consumption(:,5:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tf = Scenario1_Aux_Fuel_consumption(:,6:Table_width/3:Table_width);

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tf = Scenario1_Boil_Fuel_consumption(:,5:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tf = Scenario1_Boil_Fuel_consumption(:,6:Table_width/3:Table_width);

%Fuel costs - I've converted from tables into matrices to allow for 
%multiplication, it goes for design speed (rows) and routes (columns)
%t_0
%%%%%
x=inp.t_0 == Fuel_price(:,1);
HFOpr_t0 = Fuel_price(x,2);
LSHFOpr_t0 = Fuel_price(x,3);
MDOpr_t0 = Fuel_price(x,4);

Two_Str_Ice_HFO_Fuel_Cost_SCE1_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE1_t0{:,:}.*HFOpr_t0;
Two_Str_NonIce_HFO_Fuel_Cost_SCE1_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_t0{:,:}.*HFOpr_t0;

Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE1_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}.*HFOpr_t0;
Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE1_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}.*HFOpr_t0;

Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE1_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}.*HFOpr_t0;
Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE1_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}.*HFOpr_t0;

%t_m
%%%%%
x=inp.t_m == Fuel_price(:,1);
HFOpr_tm = Fuel_price(x,2);
LSHFOpr_tm = Fuel_price(x,3);
MDOpr_tm = Fuel_price(x,4);

Two_Str_Ice_HFO_Fuel_Cost_SCE1_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE1_tm{:,:}.*HFOpr_tm;
Two_Str_NonIce_HFO_Fuel_Cost_SCE1_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tm{:,:}.*HFOpr_tm;

Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE1_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}.*HFOpr_tm;
Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE1_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}.*HFOpr_tm;

Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE1_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}.*HFOpr_tm;
Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE1_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}.*HFOpr_tm;

%t_f
%%%%%
x=inp.t_f == Fuel_price(:,1);
HFOpr_tf = Fuel_price(x,2);
LSHFOpr_tf = Fuel_price(x,3);
MDOpr_tf = Fuel_price(x,4);

Two_Str_Ice_HFO_Fuel_Cost_SCE1_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE1_tf{:,:}.*HFOpr_tf;
Two_Str_NonIce_HFO_Fuel_Cost_SCE1_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tf{:,:}.*HFOpr_tf;

Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE1_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}.*HFOpr_tf;
Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE1_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}.*HFOpr_tf;

Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE1_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}.*HFOpr_tf;
Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE1_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}.*HFOpr_tf;

%LSHFO
%Extracting fuel consumed - HFO and LSHFO have the same energy properties
%t_0
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cons_SCE1_t0 =  Two_Str_Ice_HFO_Fuel_Cons_SCE1_t0{:,:};
Two_Str_NonIce_LSHFO_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_t0{:,:};

Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_t0{:,:};
Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_t0{:,:};

Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_t0{:,:};
Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_t0{:,:};

%t_m
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cons_SCE1_tm =  Two_Str_Ice_HFO_Fuel_Cons_SCE1_tm{:,:};
Two_Str_NonIce_LSHFO_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tm{:,:};

Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tm{:,:};
Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tm{:,:};

Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tm{:,:};
Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tm{:,:};

%t_f
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cons_SCE1_tf =  Two_Str_Ice_HFO_Fuel_Cons_SCE1_tf{:,:};
Two_Str_NonIce_LSHFO_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tf{:,:};

Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tf{:,:};
Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tf{:,:};

Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tf{:,:};
Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tf{:,:};

%Fuel costs
%t_0
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cost_SCE1_t0 = Two_Str_Ice_LSHFO_Fuel_Cons_SCE1_t0.*LSHFOpr_t0;
Two_Str_NonIce_LSHFO_Fuel_Cost_SCE1_t0 = Two_Str_NonIce_LSHFO_Fuel_Cons_SCE1_t0.*LSHFOpr_t0;

Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE1_t0 = Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE1_t0.*LSHFOpr_t0;
Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE1_t0 = Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE1_t0.*LSHFOpr_t0;

Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE1_t0 = Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE1_t0.*LSHFOpr_t0;
Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE1_t0 = Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE1_t0.*LSHFOpr_t0;

%t_m
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cost_SCE1_tm = Two_Str_Ice_LSHFO_Fuel_Cons_SCE1_tm.*LSHFOpr_tm;
Two_Str_NonIce_LSHFO_Fuel_Cost_SCE1_tm = Two_Str_NonIce_LSHFO_Fuel_Cons_SCE1_tm.*LSHFOpr_tm;

Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE1_tm = Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE1_tm.*LSHFOpr_tm;
Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE1_tm = Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE1_tm.*LSHFOpr_tm;

Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE1_tm = Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE1_tm.*LSHFOpr_tm;
Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE1_tm = Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE1_tm.*LSHFOpr_tm;

%t_f
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cost_SCE1_tf = Two_Str_Ice_LSHFO_Fuel_Cons_SCE1_tf.*LSHFOpr_tf;
Two_Str_NonIce_LSHFO_Fuel_Cost_SCE1_tf = Two_Str_NonIce_LSHFO_Fuel_Cons_SCE1_tf.*LSHFOpr_tf;

Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE1_tf = Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE1_tf.*LSHFOpr_tf;
Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE1_tf = Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE1_tf.*LSHFOpr_tf;

Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE1_tf = Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE1_tf.*LSHFOpr_tf;
Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE1_tf = Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE1_tf.*LSHFOpr_tf;

%MDO
%Extracting fuel consumed
%t_0
%%%%%
Two_Str_Ice_MDO_Fuel_Cons_SCE1_t0 =  Two_Str_Ice_HFO_Fuel_Cons_SCE1_t0{:,:}.*(40.2./42.7); %Energy density of HFO divided by MDO
Two_Str_NonIce_MDO_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_t0{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}.*(40.2./42.7);

%t_m
%%%%%
Two_Str_Ice_MDO_Fuel_Cons_SCE1_tm =  Two_Str_Ice_HFO_Fuel_Cons_SCE1_tm{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tm{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}.*(40.2./42.7);

%t_f
%%%%%
Two_Str_Ice_MDO_Fuel_Cons_SCE1_tf =  Two_Str_Ice_HFO_Fuel_Cons_SCE1_tf{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tf{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}.*(40.2./42.7);

%Fuel costs
%t_0
%%%%%
Two_Str_Ice_MDO_Fuel_Cost_SCE1_t0 = Two_Str_Ice_MDO_Fuel_Cons_SCE1_t0.*MDOpr_t0;
Two_Str_NonIce_MDO_Fuel_Cost_SCE1_t0 = Two_Str_NonIce_MDO_Fuel_Cons_SCE1_t0.*MDOpr_t0;

Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE1_t0 = Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE1_t0.*MDOpr_t0;
Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE1_t0 = Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE1_t0.*MDOpr_t0;

Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE1_t0 = Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE1_t0.*MDOpr_t0;
Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE1_t0 = Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE1_t0.*MDOpr_t0;

%t_m
%%%%%
Two_Str_Ice_MDO_Fuel_Cost_SCE1_tm = Two_Str_Ice_MDO_Fuel_Cons_SCE1_tm.*MDOpr_tm;
Two_Str_NonIce_MDO_Fuel_Cost_SCE1_tm = Two_Str_NonIce_MDO_Fuel_Cons_SCE1_tm.*MDOpr_tm;

Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE1_tm = Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE1_tm.*MDOpr_tm;
Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE1_tm = Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE1_tm.*MDOpr_tm;

Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE1_tm = Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE1_tm.*MDOpr_tm;
Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE1_tm = Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE1_tm.*MDOpr_tm;

%t_f
%%%%%
Two_Str_Ice_MDO_Fuel_Cost_SCE1_tf = Two_Str_Ice_MDO_Fuel_Cons_SCE1_tf.*MDOpr_tf;
Two_Str_NonIce_MDO_Fuel_Cost_SCE1_tf = Two_Str_NonIce_MDO_Fuel_Cons_SCE1_tf.*MDOpr_tf;

Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE1_tf = Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE1_tf.*MDOpr_tf;
Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE1_tf = Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE1_tf.*MDOpr_tf;

Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE1_tf = Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE1_tf.*MDOpr_tf;
Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE1_tf = Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE1_tf.*MDOpr_tf;

%LNG - Internal Combustion Engine
%t_0
%%%%%
Combust_Ice_LNG_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE1_t0{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_t0{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Aux_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Aux_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Boil_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Boil_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}.*(sfc_LNG./NonIcesfc_design);

%t_m
%%%%%
Combust_Ice_LNG_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE1_tm{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tm{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Aux_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Aux_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Boil_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Boil_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}.*(sfc_LNG./NonIcesfc_design);

%t_f
%%%%%
Combust_Ice_LNG_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE1_tf{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tf{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Aux_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Aux_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Boil_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Boil_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}.*(sfc_LNG./NonIcesfc_design);

%Fuel costs 
%t_0
%%%%%
x=inp.t_0 == Fuel_price(:,1);
LNGpr_t0 = Fuel_price(x,5);

Combust_Ice_LNG_Fuel_Cost_SCE1_t0 = Combust_Ice_LNG_Fuel_Cons_SCE1_t0.*LNGpr_t0;
Combust_NonIce_LNG_Fuel_Cost_SCE1_t0 = Combust_NonIce_LNG_Fuel_Cons_SCE1_t0.*LNGpr_t0;

Combust_Ice_LNG_Aux_Fuel_Cost_SCE1_t0 = Combust_Ice_LNG_Aux_Fuel_Cons_SCE1_t0.*LNGpr_t0;
Combust_NonIce_LNG_Aux_Fuel_Cost_SCE1_t0 = Combust_NonIce_LNG_Aux_Fuel_Cons_SCE1_t0.*LNGpr_t0;

Combust_Ice_LNG_Boil_Fuel_Cost_SCE1_t0 = Combust_Ice_LNG_Boil_Fuel_Cons_SCE1_t0.*LNGpr_t0;
Combust_NonIce_LNG_Boil_Fuel_Cost_SCE1_t0 = Combust_NonIce_LNG_Boil_Fuel_Cons_SCE1_t0.*LNGpr_t0;

%t_m
%%%%%
x=inp.t_m == Fuel_price(:,1);
LNGpr_tm = Fuel_price(x,5);

Combust_Ice_LNG_Fuel_Cost_SCE1_tm = Combust_Ice_LNG_Fuel_Cons_SCE1_tm.*LNGpr_tm;
Combust_NonIce_LNG_Fuel_Cost_SCE1_tm = Combust_NonIce_LNG_Fuel_Cons_SCE1_tm.*LNGpr_tm;

Combust_Ice_LNG_Aux_Fuel_Cost_SCE1_tm = Combust_Ice_LNG_Aux_Fuel_Cons_SCE1_tm.*LNGpr_tm;
Combust_NonIce_LNG_Aux_Fuel_Cost_SCE1_tm = Combust_NonIce_LNG_Aux_Fuel_Cons_SCE1_tm.*LNGpr_tm;

Combust_Ice_LNG_Boil_Fuel_Cost_SCE1_tm = Combust_Ice_LNG_Boil_Fuel_Cons_SCE1_tm.*LNGpr_tm;
Combust_NonIce_LNG_Boil_Fuel_Cost_SCE1_tm = Combust_NonIce_LNG_Boil_Fuel_Cons_SCE1_tm.*LNGpr_tm;

%t_f
%%%%%
x=inp.t_f == Fuel_price(:,1);
LNGpr_tf = Fuel_price(x,5);

Combust_Ice_LNG_Fuel_Cost_SCE1_tf = Combust_Ice_LNG_Fuel_Cons_SCE1_tf.*LNGpr_tf;
Combust_NonIce_LNG_Fuel_Cost_SCE1_tf = Combust_NonIce_LNG_Fuel_Cons_SCE1_tf.*LNGpr_tf;

Combust_Ice_LNG_Aux_Fuel_Cost_SCE1_tf = Combust_Ice_LNG_Aux_Fuel_Cons_SCE1_tf.*LNGpr_tf;
Combust_NonIce_LNG_Aux_Fuel_Cost_SCE1_tf = Combust_NonIce_LNG_Aux_Fuel_Cons_SCE1_tf.*LNGpr_tf;

Combust_Ice_LNG_Boil_Fuel_Cost_SCE1_tf = Combust_Ice_LNG_Boil_Fuel_Cons_SCE1_tf.*LNGpr_tf;
Combust_NonIce_LNG_Boil_Fuel_Cost_SCE1_tf = Combust_NonIce_LNG_Boil_Fuel_Cons_SCE1_tf.*LNGpr_tf;

%Ammonia - Internal Combustion Engine
%t_0
%%%%%
Combust_Ice_Amm_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Aux_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Aux_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Boil_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Boil_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

%t_m
%%%%%
Combust_Ice_Amm_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Aux_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Aux_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Boil_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Boil_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

%t_f
%%%%%
Combust_Ice_Amm_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Aux_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Aux_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Boil_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Boil_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

%Fuel costs 
%t_0
%%%%%
x=inp.t_0 == Fuel_price(:,1);
Ammpr_t0 = Fuel_price(x,6);

Combust_Ice_Amm_Fuel_Cost_SCE1_t0 = Combust_Ice_Amm_Fuel_Cons_SCE1_t0.*Ammpr_t0;
Combust_NonIce_Amm_Fuel_Cost_SCE1_t0 = Combust_NonIce_Amm_Fuel_Cons_SCE1_t0.*Ammpr_t0;

Combust_Ice_Amm_Aux_Fuel_Cost_SCE1_t0 = Combust_Ice_Amm_Aux_Fuel_Cons_SCE1_t0.*Ammpr_t0;
Combust_NonIce_Amm_Aux_Fuel_Cost_SCE1_t0 = Combust_NonIce_Amm_Aux_Fuel_Cons_SCE1_t0.*Ammpr_t0;

Combust_Ice_Amm_Boil_Fuel_Cost_SCE1_t0 = Combust_Ice_Amm_Boil_Fuel_Cons_SCE1_t0.*Ammpr_t0;
Combust_NonIce_Amm_Boil_Fuel_Cost_SCE1_t0 = Combust_NonIce_Amm_Boil_Fuel_Cons_SCE1_t0.*Ammpr_t0;

%t_m
%%%%%
x=inp.t_m == Fuel_price(:,1);
Ammpr_tm = Fuel_price(x,6);

Combust_Ice_Amm_Fuel_Cost_SCE1_tm = Combust_Ice_Amm_Fuel_Cons_SCE1_tm.*Ammpr_tm;
Combust_NonIce_Amm_Fuel_Cost_SCE1_tm = Combust_NonIce_Amm_Fuel_Cons_SCE1_tm.*Ammpr_tm;

Combust_Ice_Amm_Aux_Fuel_Cost_SCE1_tm = Combust_Ice_Amm_Aux_Fuel_Cons_SCE1_tm.*Ammpr_tm;
Combust_NonIce_Amm_Aux_Fuel_Cost_SCE1_tm = Combust_NonIce_Amm_Aux_Fuel_Cons_SCE1_tm.*Ammpr_tm;

Combust_Ice_Amm_Boil_Fuel_Cost_SCE1_tm = Combust_Ice_Amm_Boil_Fuel_Cons_SCE1_tm.*Ammpr_tm;
Combust_NonIce_Amm_Boil_Fuel_Cost_SCE1_tm = Combust_NonIce_Amm_Boil_Fuel_Cons_SCE1_tm.*Ammpr_tm;

%t_f
%%%%%
x=inp.t_f == Fuel_price(:,1);
Ammpr_tf = Fuel_price(x,6);

Combust_Ice_Amm_Fuel_Cost_SCE1_tf = Combust_Ice_Amm_Fuel_Cons_SCE1_tf.*Ammpr_tf;
Combust_NonIce_Amm_Fuel_Cost_SCE1_tf = Combust_NonIce_Amm_Fuel_Cons_SCE1_tf.*Ammpr_tf;

Combust_Ice_Amm_Aux_Fuel_Cost_SCE1_tf = Combust_Ice_Amm_Aux_Fuel_Cons_SCE1_tf.*Ammpr_tf;
Combust_NonIce_Amm_Aux_Fuel_Cost_SCE1_tf = Combust_NonIce_Amm_Aux_Fuel_Cons_SCE1_tf.*Ammpr_tf;

Combust_Ice_Amm_Boil_Fuel_Cost_SCE1_tf = Combust_Ice_Amm_Boil_Fuel_Cons_SCE1_tf.*Ammpr_tf;
Combust_NonIce_Amm_Boil_Fuel_Cost_SCE1_tf = Combust_NonIce_Amm_Boil_Fuel_Cons_SCE1_tf.*Ammpr_tf;

%Ammonia - Fuel cells
%t_0
%%%%%
Fuel_cell_Ice_Amm_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}.*(sfc_NH3FC./NonIcesfc_design);

%t_m
%%%%%
Fuel_cell_Ice_Amm_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}.*(sfc_NH3FC./NonIcesfc_design);

%t_f
%%%%%
Fuel_cell_Ice_Amm_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3FC./Icesfc_design);

Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3FC./Icesfc_design);

Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}.*(sfc_NH3FC./Icesfc_design);

%Fuel costs 
%t_0
%%%%%

Fuel_cell_Ice_Amm_Fuel_Cost_SCE1_t0 = Fuel_cell_Ice_Amm_Fuel_Cons_SCE1_t0.*Ammpr_t0;
Fuel_cell_NonIce_Amm_Fuel_Cost_SCE1_t0 = Fuel_cell_NonIce_Amm_Fuel_Cons_SCE1_t0.*Ammpr_t0;

Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE1_t0 = Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE1_t0.*Ammpr_t0;
Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE1_t0 = Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE1_t0.*Ammpr_t0;

Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE1_t0 = Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE1_t0.*Ammpr_t0;
Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE1_t0 = Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE1_t0.*Ammpr_t0;

%t_m
%%%%%

Fuel_cell_Ice_Amm_Fuel_Cost_SCE1_tm = Fuel_cell_Ice_Amm_Fuel_Cons_SCE1_tm.*Ammpr_tm;
Fuel_cell_NonIce_Amm_Fuel_Cost_SCE1_tm = Fuel_cell_NonIce_Amm_Fuel_Cons_SCE1_tm.*Ammpr_tm;

Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE1_tm = Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE1_tm.*Ammpr_tm;
Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE1_tm = Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE1_tm.*Ammpr_tm;

Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE1_tm = Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE1_tm.*Ammpr_tm;
Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE1_tm = Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE1_tm.*Ammpr_tm;

%t_f
%%%%%

Fuel_cell_Ice_Amm_Fuel_Cost_SCE1_tf = Fuel_cell_Ice_Amm_Fuel_Cons_SCE1_tf.*Ammpr_tf;
Fuel_cell_NonIce_Amm_Fuel_Cost_SCE1_tf = Fuel_cell_NonIce_Amm_Fuel_Cons_SCE1_tf.*Ammpr_tf;

Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE1_tf = Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE1_tf.*Ammpr_tf;
Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE1_tf = Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE1_tf.*Ammpr_tf;

Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE1_tf = Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE1_tf.*Ammpr_tf;
Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE1_tf = Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE1_tf.*Ammpr_tf;

%Scenario 2 - Arctic Routes when open, Suez route when closed
%2 - stroke
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%HFO
%Extracting fuel consumed
%t_0
%%%%%
Two_Str_Ice_HFO_Fuel_Cons_SCE2_t0 = Scenario2_Fuel_consumption(:,1:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Fuel_Cons_SCE2_t0 = Scenario2_Fuel_consumption(:,2:Table_width/3:Table_width);

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_t0 = Scenario2_Aux_Fuel_consumption(:,1:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_t0 = Scenario2_Aux_Fuel_consumption(:,2:Table_width/3:Table_width);

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_t0 = Scenario2_Boil_Fuel_consumption(:,1:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_t0 = Scenario2_Boil_Fuel_consumption(:,2:Table_width/3:Table_width);

%t_m
%%%%%
Two_Str_Ice_HFO_Fuel_Cons_SCE2_tm = Scenario2_Fuel_consumption(:,3:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tm = Scenario2_Fuel_consumption(:,4:Table_width/3:Table_width);

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tm = Scenario2_Aux_Fuel_consumption(:,3:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tm = Scenario2_Aux_Fuel_consumption(:,4:Table_width/3:Table_width);

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tm = Scenario2_Boil_Fuel_consumption(:,3:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tm = Scenario2_Boil_Fuel_consumption(:,4:Table_width/3:Table_width);

%t_f
%%%%%
Two_Str_Ice_HFO_Fuel_Cons_SCE2_tf = Scenario2_Fuel_consumption(:,5:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tf = Scenario2_Fuel_consumption(:,6:Table_width/3:Table_width);

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tf = Scenario2_Aux_Fuel_consumption(:,5:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tf = Scenario2_Aux_Fuel_consumption(:,6:Table_width/3:Table_width);

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tf = Scenario2_Boil_Fuel_consumption(:,5:Table_width/3:Table_width);
Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tf = Scenario2_Boil_Fuel_consumption(:,6:Table_width/3:Table_width);

%Fuel costs - I've converted from tables into matrices to allow for 
%multiplication, it goes for design speed (rows) and routes (columns)
%t_0
%%%%%

Two_Str_Ice_HFO_Fuel_Cost_SCE2_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE2_t0{:,:}.*HFOpr_t0;
Two_Str_NonIce_HFO_Fuel_Cost_SCE2_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_t0{:,:}.*HFOpr_t0;

Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE2_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}.*HFOpr_t0;
Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE2_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}.*HFOpr_t0;

Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE2_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}.*HFOpr_t0;
Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE2_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}.*HFOpr_t0;

%t_m
%%%%%

Two_Str_Ice_HFO_Fuel_Cost_SCE2_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE2_tm{:,:}.*HFOpr_tm;
Two_Str_NonIce_HFO_Fuel_Cost_SCE2_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tm{:,:}.*HFOpr_tm;

Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE2_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}.*HFOpr_tm;
Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE2_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}.*HFOpr_tm;

Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE2_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}.*HFOpr_tm;
Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE2_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}.*HFOpr_tm;

%t_f
%%%%%

Two_Str_Ice_HFO_Fuel_Cost_SCE2_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE2_tf{:,:}.*HFOpr_tf;
Two_Str_NonIce_HFO_Fuel_Cost_SCE2_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tf{:,:}.*HFOpr_tf;

Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE2_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}.*HFOpr_tf;
Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE2_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}.*HFOpr_tf;

Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE2_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}.*HFOpr_tf;
Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE2_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}.*HFOpr_tf;

%LSHFO
%Extracting fuel consumed
%t_0
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cons_SCE2_t0 =  Two_Str_Ice_HFO_Fuel_Cons_SCE2_t0{:,:};
Two_Str_NonIce_LSHFO_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_t0{:,:};

Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_t0{:,:};
Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_t0{:,:};

Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_t0{:,:};
Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_t0{:,:};

%t_m
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cons_SCE2_tm =  Two_Str_Ice_HFO_Fuel_Cons_SCE2_tm{:,:};
Two_Str_NonIce_LSHFO_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tm{:,:};

Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tm{:,:};
Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tm{:,:};

Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tm{:,:};
Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tm{:,:};

%t_f
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cons_SCE2_tf =  Two_Str_Ice_HFO_Fuel_Cons_SCE2_tf{:,:};
Two_Str_NonIce_LSHFO_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tf{:,:};

Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tf{:,:};
Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tf{:,:};

Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tf{:,:};
Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tf{:,:};

%Fuel costs
%t_0
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cost_SCE2_t0 = Two_Str_Ice_LSHFO_Fuel_Cons_SCE2_t0.*LSHFOpr_t0;
Two_Str_NonIce_LSHFO_Fuel_Cost_SCE2_t0 = Two_Str_NonIce_LSHFO_Fuel_Cons_SCE2_t0.*LSHFOpr_t0;

Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE2_t0 = Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE2_t0.*LSHFOpr_t0;
Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE2_t0 = Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE2_t0.*LSHFOpr_t0;

Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE2_t0 = Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE2_t0.*LSHFOpr_t0;
Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE2_t0 = Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE2_t0.*LSHFOpr_t0;

%t_m
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cost_SCE2_tm = Two_Str_Ice_LSHFO_Fuel_Cons_SCE2_tm.*LSHFOpr_tm;
Two_Str_NonIce_LSHFO_Fuel_Cost_SCE2_tm = Two_Str_NonIce_LSHFO_Fuel_Cons_SCE2_tm.*LSHFOpr_tm;

Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE2_tm = Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE2_tm.*LSHFOpr_tm;
Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE2_tm = Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE2_tm.*LSHFOpr_tm;

Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE2_tm = Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE2_tm.*LSHFOpr_tm;
Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE2_tm = Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE2_tm.*LSHFOpr_tm;

%t_f
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cost_SCE2_tf = Two_Str_Ice_LSHFO_Fuel_Cons_SCE2_tf.*LSHFOpr_tf;
Two_Str_NonIce_LSHFO_Fuel_Cost_SCE2_tf = Two_Str_NonIce_LSHFO_Fuel_Cons_SCE2_tf.*LSHFOpr_tf;

Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE2_tf = Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE2_tf.*LSHFOpr_tf;
Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE2_tf = Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE2_tf.*LSHFOpr_tf;

Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE2_tf = Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE2_tf.*LSHFOpr_tf;
Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE2_tf = Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE2_tf.*LSHFOpr_tf;

%MDO
%Extracting fuel consumed
%t_0
%%%%%
Two_Str_Ice_MDO_Fuel_Cons_SCE2_t0 =  Two_Str_Ice_HFO_Fuel_Cons_SCE2_t0{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_t0{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}.*(40.2./42.7);

%t_m
%%%%%
Two_Str_Ice_MDO_Fuel_Cons_SCE2_tm =  Two_Str_Ice_HFO_Fuel_Cons_SCE2_tm{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tm{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}.*(40.2./42.7);

%t_f
%%%%%
Two_Str_Ice_MDO_Fuel_Cons_SCE2_tf =  Two_Str_Ice_HFO_Fuel_Cons_SCE2_tf{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tf{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}.*(40.2./42.7);

%Fuel costs
%t_0
%%%%%
Two_Str_Ice_MDO_Fuel_Cost_SCE2_t0 = Two_Str_Ice_MDO_Fuel_Cons_SCE2_t0.*MDOpr_t0;
Two_Str_NonIce_MDO_Fuel_Cost_SCE2_t0 = Two_Str_NonIce_MDO_Fuel_Cons_SCE2_t0.*MDOpr_t0;

Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE2_t0 = Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE2_t0.*MDOpr_t0;
Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE2_t0 = Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE2_t0.*MDOpr_t0;

Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE2_t0 = Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE2_t0.*MDOpr_t0;
Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE2_t0 = Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE2_t0.*MDOpr_t0;

%t_m
%%%%%
Two_Str_Ice_MDO_Fuel_Cost_SCE2_tm = Two_Str_Ice_MDO_Fuel_Cons_SCE2_tm.*MDOpr_tm;
Two_Str_NonIce_MDO_Fuel_Cost_SCE2_tm = Two_Str_NonIce_MDO_Fuel_Cons_SCE2_tm.*MDOpr_tm;

Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE2_tm = Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE2_tm.*MDOpr_tm;
Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE2_tm = Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE2_tm.*MDOpr_tm;

Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE2_tm = Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE2_tm.*MDOpr_tm;
Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE2_tm = Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE2_tm.*MDOpr_tm;

%t_f
%%%%%
Two_Str_Ice_MDO_Fuel_Cost_SCE2_tf = Two_Str_Ice_MDO_Fuel_Cons_SCE2_tf.*MDOpr_tf;
Two_Str_NonIce_MDO_Fuel_Cost_SCE2_tf = Two_Str_NonIce_MDO_Fuel_Cons_SCE2_tf.*MDOpr_tf;

Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE2_tf = Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE2_tf.*MDOpr_tf;
Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE2_tf = Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE2_tf.*MDOpr_tf;

Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE2_tf = Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE2_tf.*MDOpr_tf;
Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE2_tf = Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE2_tf.*MDOpr_tf;

%LNG - Internal Combustion Engine
%t_0
%%%%%
Combust_Ice_LNG_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE2_t0{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_t0{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Aux_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Aux_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Boil_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Boil_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}.*(sfc_LNG./NonIcesfc_design);

%t_m
%%%%%
Combust_Ice_LNG_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE2_tm{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tm{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Aux_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Aux_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Boil_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Boil_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}.*(sfc_LNG./NonIcesfc_design);

%t_f
%%%%%
Combust_Ice_LNG_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE2_tf{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tf{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Aux_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Aux_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Boil_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Boil_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}.*(sfc_LNG./NonIcesfc_design);

%Fuel costs 
%t_0
%%%%%

Combust_Ice_LNG_Fuel_Cost_SCE2_t0 = Combust_Ice_LNG_Fuel_Cons_SCE2_t0.*LNGpr_t0;
Combust_NonIce_LNG_Fuel_Cost_SCE2_t0 = Combust_NonIce_LNG_Fuel_Cons_SCE2_t0.*LNGpr_t0;

Combust_Ice_LNG_Aux_Fuel_Cost_SCE2_t0 = Combust_Ice_LNG_Aux_Fuel_Cons_SCE2_t0.*LNGpr_t0;
Combust_NonIce_LNG_Aux_Fuel_Cost_SCE2_t0 = Combust_NonIce_LNG_Aux_Fuel_Cons_SCE2_t0.*LNGpr_t0;

Combust_Ice_LNG_Boil_Fuel_Cost_SCE2_t0 = Combust_Ice_LNG_Boil_Fuel_Cons_SCE2_t0.*LNGpr_t0;
Combust_NonIce_LNG_Boil_Fuel_Cost_SCE2_t0 = Combust_NonIce_LNG_Boil_Fuel_Cons_SCE2_t0.*LNGpr_t0;

%t_m
%%%%%

Combust_Ice_LNG_Fuel_Cost_SCE2_tm = Combust_Ice_LNG_Fuel_Cons_SCE2_tm.*LNGpr_tm;
Combust_NonIce_LNG_Fuel_Cost_SCE2_tm = Combust_NonIce_LNG_Fuel_Cons_SCE2_tm.*LNGpr_tm;

Combust_Ice_LNG_Aux_Fuel_Cost_SCE2_tm = Combust_Ice_LNG_Aux_Fuel_Cons_SCE2_tm.*LNGpr_tm;
Combust_NonIce_LNG_Aux_Fuel_Cost_SCE2_tm = Combust_NonIce_LNG_Aux_Fuel_Cons_SCE2_tm.*LNGpr_tm;

Combust_Ice_LNG_Boil_Fuel_Cost_SCE2_tm = Combust_Ice_LNG_Boil_Fuel_Cons_SCE2_tm.*LNGpr_tm;
Combust_NonIce_LNG_Boil_Fuel_Cost_SCE2_tm = Combust_NonIce_LNG_Boil_Fuel_Cons_SCE2_tm.*LNGpr_tm;

%t_f
%%%%%

Combust_Ice_LNG_Fuel_Cost_SCE2_tf = Combust_Ice_LNG_Fuel_Cons_SCE2_tf.*LNGpr_tf;
Combust_NonIce_LNG_Fuel_Cost_SCE2_tf = Combust_NonIce_LNG_Fuel_Cons_SCE2_tf.*LNGpr_tf;

Combust_Ice_LNG_Aux_Fuel_Cost_SCE2_tf = Combust_Ice_LNG_Aux_Fuel_Cons_SCE2_tf.*LNGpr_tf;
Combust_NonIce_LNG_Aux_Fuel_Cost_SCE2_tf = Combust_NonIce_LNG_Aux_Fuel_Cons_SCE2_tf.*LNGpr_tf;

Combust_Ice_LNG_Boil_Fuel_Cost_SCE2_tf = Combust_Ice_LNG_Boil_Fuel_Cons_SCE2_tf.*LNGpr_tf;
Combust_NonIce_LNG_Boil_Fuel_Cost_SCE2_tf = Combust_NonIce_LNG_Boil_Fuel_Cons_SCE2_tf.*LNGpr_tf;

%Ammonia - Internal Combustion Engine
%t_0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Combust_Ice_Amm_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Aux_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Aux_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Boil_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Boil_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

%t_m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Combust_Ice_Amm_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Aux_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Aux_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Boil_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Boil_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

%t_f
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Combust_Ice_Amm_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Aux_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Aux_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Boil_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Boil_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

%Fuel costs 
%t_0
%%%%%

Combust_Ice_Amm_Fuel_Cost_SCE2_t0 = Combust_Ice_Amm_Fuel_Cons_SCE2_t0.*Ammpr_t0;
Combust_NonIce_Amm_Fuel_Cost_SCE2_t0 = Combust_NonIce_Amm_Fuel_Cons_SCE2_t0.*Ammpr_t0;

Combust_Ice_Amm_Aux_Fuel_Cost_SCE2_t0 = Combust_Ice_Amm_Aux_Fuel_Cons_SCE2_t0.*Ammpr_t0;
Combust_NonIce_Amm_Aux_Fuel_Cost_SCE2_t0 = Combust_NonIce_Amm_Aux_Fuel_Cons_SCE2_t0.*Ammpr_t0;

Combust_Ice_Amm_Boil_Fuel_Cost_SCE2_t0 = Combust_Ice_Amm_Boil_Fuel_Cons_SCE2_t0.*Ammpr_t0;
Combust_NonIce_Amm_Boil_Fuel_Cost_SCE2_t0 = Combust_NonIce_Amm_Boil_Fuel_Cons_SCE2_t0.*Ammpr_t0;

%t_m
%%%%%

Combust_Ice_Amm_Fuel_Cost_SCE2_tm = Combust_Ice_Amm_Fuel_Cons_SCE2_tm.*Ammpr_tm;
Combust_NonIce_Amm_Fuel_Cost_SCE2_tm = Combust_NonIce_Amm_Fuel_Cons_SCE2_tm.*Ammpr_tm;

Combust_Ice_Amm_Aux_Fuel_Cost_SCE2_tm = Combust_Ice_Amm_Aux_Fuel_Cons_SCE2_tm.*Ammpr_tm;
Combust_NonIce_Amm_Aux_Fuel_Cost_SCE2_tm = Combust_NonIce_Amm_Aux_Fuel_Cons_SCE2_tm.*Ammpr_tm;

Combust_Ice_Amm_Boil_Fuel_Cost_SCE2_tm = Combust_Ice_Amm_Boil_Fuel_Cons_SCE2_tm.*Ammpr_tm;
Combust_NonIce_Amm_Boil_Fuel_Cost_SCE2_tm = Combust_NonIce_Amm_Boil_Fuel_Cons_SCE2_tm.*Ammpr_tm;

%t_f
%%%%%

Combust_Ice_Amm_Fuel_Cost_SCE2_tf = Combust_Ice_Amm_Fuel_Cons_SCE2_tf.*Ammpr_tf;
Combust_NonIce_Amm_Fuel_Cost_SCE2_tf = Combust_NonIce_Amm_Fuel_Cons_SCE2_tf.*Ammpr_tf;

Combust_Ice_Amm_Aux_Fuel_Cost_SCE2_tf = Combust_Ice_Amm_Aux_Fuel_Cons_SCE2_tf.*Ammpr_tf;
Combust_NonIce_Amm_Aux_Fuel_Cost_SCE2_tf = Combust_NonIce_Amm_Aux_Fuel_Cons_SCE2_tf.*Ammpr_tf;

Combust_Ice_Amm_Boil_Fuel_Cost_SCE2_tf = Combust_Ice_Amm_Boil_Fuel_Cons_SCE2_tf.*Ammpr_tf;
Combust_NonIce_Amm_Boil_Fuel_Cost_SCE2_tf = Combust_NonIce_Amm_Boil_Fuel_Cons_SCE2_tf.*Ammpr_tf;

%Ammonia - Fuel cells
%t_0
%%%%%
Fuel_cell_Ice_Amm_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}.*(sfc_NH3FC./NonIcesfc_design);

%t_m
%%%%%
Fuel_cell_Ice_Amm_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}.*(sfc_NH3FC./NonIcesfc_design);

%t_f
%%%%%
Fuel_cell_Ice_Amm_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}.*(sfc_NH3FC./NonIcesfc_design);

%Fuel costs 
%t_0
%%%%%

Fuel_cell_Ice_Amm_Fuel_Cost_SCE2_t0 = Fuel_cell_Ice_Amm_Fuel_Cons_SCE2_t0.*Ammpr_t0;
Fuel_cell_NonIce_Amm_Fuel_Cost_SCE2_t0 = Fuel_cell_NonIce_Amm_Fuel_Cons_SCE2_t0.*Ammpr_t0;

Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE2_t0 = Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE2_t0.*Ammpr_t0;
Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE2_t0 = Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE2_t0.*Ammpr_t0;

Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE2_t0 = Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE2_t0.*Ammpr_t0;
Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE2_t0 = Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE2_t0.*Ammpr_t0;

%t_m
%%%%%

Fuel_cell_Ice_Amm_Fuel_Cost_SCE2_tm = Fuel_cell_Ice_Amm_Fuel_Cons_SCE2_tm.*Ammpr_tm;
Fuel_cell_NonIce_Amm_Fuel_Cost_SCE2_tm = Fuel_cell_NonIce_Amm_Fuel_Cons_SCE2_tm.*Ammpr_tm;

Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE2_tm = Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE2_tm.*Ammpr_tm;
Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE2_tm = Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE2_tm.*Ammpr_tm;

Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE2_tm = Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE2_tm.*Ammpr_tm;
Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE2_tm = Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE2_tm.*Ammpr_tm;

%t_f
%%%%%

Fuel_cell_Ice_Amm_Fuel_Cost_SCE2_tf = Fuel_cell_Ice_Amm_Fuel_Cons_SCE2_tf.*Ammpr_tf;
Fuel_cell_NonIce_Amm_Fuel_Cost_SCE2_tf = Fuel_cell_NonIce_Amm_Fuel_Cons_SCE2_tf.*Ammpr_tf;

Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE2_tf = Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE2_tf.*Ammpr_tf;
Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE2_tf = Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE2_tf.*Ammpr_tf;

Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE2_tf = Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE2_tf.*Ammpr_tf;
Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE2_tf = Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE2_tf.*Ammpr_tf;

%Scenario 3 - Suez year round
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2 - stroke
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Two_Str_Ice_HFO_Fuel_Cons_SCE3_t0 = Scenario3_Fuel_consumption(:,1);
Two_Str_NonIce_HFO_Fuel_Cons_SCE3_t0 = Scenario3_Fuel_consumption(:,2);

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_t0 = Scenario3_Aux_Fuel_consumption(:,1);
Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_t0 = Scenario3_Aux_Fuel_consumption(:,2);

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_t0 = Scenario3_Boil_Fuel_consumption(:,1);
Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_t0 = Scenario3_Boil_Fuel_consumption(:,2);

%t_m
%%%%%
Two_Str_Ice_HFO_Fuel_Cons_SCE3_tm = Scenario3_Fuel_consumption(:,1);
Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tm = Scenario3_Fuel_consumption(:,2);

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tm = Scenario3_Aux_Fuel_consumption(:,1);
Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tm = Scenario3_Aux_Fuel_consumption(:,2);

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tm = Scenario3_Boil_Fuel_consumption(:,1);
Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tm = Scenario3_Boil_Fuel_consumption(:,2);

%t_f
%%%%%
Two_Str_Ice_HFO_Fuel_Cons_SCE3_tf = Scenario3_Fuel_consumption(:,1);
Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tf = Scenario3_Fuel_consumption(:,2);

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tf = Scenario3_Aux_Fuel_consumption(:,1);
Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tf = Scenario3_Aux_Fuel_consumption(:,2);

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tf = Scenario3_Boil_Fuel_consumption(:,1);
Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tf = Scenario3_Boil_Fuel_consumption(:,2);

%Fuel costs - I've converted from tables into matrices to allow for 
%multiplication, it goes for design speed (rows) and routes (columns)
%t_0
%%%%%

Two_Str_Ice_HFO_Fuel_Cost_SCE3_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE3_t0{:,:}.*HFOpr_t0;
Two_Str_NonIce_HFO_Fuel_Cost_SCE3_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_t0{:,:}.*HFOpr_t0;

Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE3_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}.*HFOpr_t0;
Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE3_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}.*HFOpr_t0;

Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE3_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}.*HFOpr_t0;
Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE3_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}.*HFOpr_t0;

%t_m
%%%%%

Two_Str_Ice_HFO_Fuel_Cost_SCE3_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE3_tm{:,:}.*HFOpr_tm;
Two_Str_NonIce_HFO_Fuel_Cost_SCE3_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tm{:,:}.*HFOpr_tm;

Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE3_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}.*HFOpr_tm;
Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE3_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}.*HFOpr_tm;

Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE3_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}.*HFOpr_tm;
Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE3_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}.*HFOpr_tm;

%t_f
%%%%%

Two_Str_Ice_HFO_Fuel_Cost_SCE3_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE3_tf{:,:}.*HFOpr_tf;
Two_Str_NonIce_HFO_Fuel_Cost_SCE3_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tf{:,:}.*HFOpr_tf;

Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE3_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}.*HFOpr_tf;
Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE3_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}.*HFOpr_tf;

Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE3_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}.*HFOpr_tf;
Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE3_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}.*HFOpr_tf;

%LSHFO
%Extracting fuel consumed
%t_0
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cons_SCE3_t0 =  Two_Str_Ice_HFO_Fuel_Cons_SCE3_t0{:,:};
Two_Str_NonIce_LSHFO_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_t0{:,:};

Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_t0{:,:};
Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_t0{:,:};

Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_t0{:,:};
Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_t0{:,:};

%t_m
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cons_SCE3_tm =  Two_Str_Ice_HFO_Fuel_Cons_SCE3_tm{:,:};
Two_Str_NonIce_LSHFO_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tm{:,:};

Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tm{:,:};
Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tm{:,:};

Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tm{:,:};
Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tm{:,:};

%t_f
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cons_SCE3_tf =  Two_Str_Ice_HFO_Fuel_Cons_SCE3_tf{:,:};
Two_Str_NonIce_LSHFO_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tf{:,:};

Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tf{:,:};
Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tf{:,:};

Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tf{:,:};
Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tf{:,:};

%Fuel costs
%t_0
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cost_SCE3_t0 = Two_Str_Ice_LSHFO_Fuel_Cons_SCE3_t0.*LSHFOpr_t0;
Two_Str_NonIce_LSHFO_Fuel_Cost_SCE3_t0 = Two_Str_NonIce_LSHFO_Fuel_Cons_SCE3_t0.*LSHFOpr_t0;

Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE3_t0 = Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE3_t0.*LSHFOpr_t0;
Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE3_t0 = Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE3_t0.*LSHFOpr_t0;

Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE3_t0 = Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE3_t0.*LSHFOpr_t0;
Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE3_t0 = Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE3_t0.*LSHFOpr_t0;

%t_m
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cost_SCE3_tm = Two_Str_Ice_LSHFO_Fuel_Cons_SCE3_tm.*LSHFOpr_tm;
Two_Str_NonIce_LSHFO_Fuel_Cost_SCE3_tm = Two_Str_NonIce_LSHFO_Fuel_Cons_SCE3_tm.*LSHFOpr_tm;

Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE3_tm = Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE3_tm.*LSHFOpr_tm;
Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE3_tm = Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE3_tm.*LSHFOpr_tm;

Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE3_tm = Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE3_tm.*LSHFOpr_tm;
Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE3_tm = Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE3_tm.*LSHFOpr_tm;

%t_f
%%%%%
Two_Str_Ice_LSHFO_Fuel_Cost_SCE3_tf = Two_Str_Ice_LSHFO_Fuel_Cons_SCE3_tf.*LSHFOpr_tf;
Two_Str_NonIce_LSHFO_Fuel_Cost_SCE3_tf = Two_Str_NonIce_LSHFO_Fuel_Cons_SCE3_tf.*LSHFOpr_tf;

Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE3_tf = Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE3_tf.*LSHFOpr_tf;
Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE3_tf = Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE3_tf.*LSHFOpr_tf;

Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE3_tf = Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE3_tf.*LSHFOpr_tf;
Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE3_tf = Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE3_tf.*LSHFOpr_tf;

%MDO
%Extracting fuel consumed
%t_0
%%%%%
Two_Str_Ice_MDO_Fuel_Cons_SCE3_t0 =  Two_Str_Ice_HFO_Fuel_Cons_SCE3_t0{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_t0{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}.*(40.2./42.7);

%t_m
%%%%%
Two_Str_Ice_MDO_Fuel_Cons_SCE3_tm =  Two_Str_Ice_HFO_Fuel_Cons_SCE3_tm{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tm{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}.*(40.2./42.7);

%t_f
%%%%%
Two_Str_Ice_MDO_Fuel_Cons_SCE3_tf =  Two_Str_Ice_HFO_Fuel_Cons_SCE3_tf{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tf{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}.*(40.2./42.7);

Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}.*(40.2./42.7);
Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}.*(40.2./42.7);

%Fuel costs
%t_0
%%%%%
Two_Str_Ice_MDO_Fuel_Cost_SCE3_t0 = Two_Str_Ice_MDO_Fuel_Cons_SCE3_t0.*MDOpr_t0;
Two_Str_NonIce_MDO_Fuel_Cost_SCE3_t0 = Two_Str_NonIce_MDO_Fuel_Cons_SCE3_t0.*MDOpr_t0;

Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE3_t0 = Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE3_t0.*MDOpr_t0;
Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE3_t0 = Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE3_t0.*MDOpr_t0;

Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE3_t0 = Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE3_t0.*MDOpr_t0;
Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE3_t0 = Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE3_t0.*MDOpr_t0;

%t_m
%%%%%
Two_Str_Ice_MDO_Fuel_Cost_SCE3_tm = Two_Str_Ice_MDO_Fuel_Cons_SCE3_tm.*MDOpr_tm;
Two_Str_NonIce_MDO_Fuel_Cost_SCE3_tm = Two_Str_NonIce_MDO_Fuel_Cons_SCE3_tm.*MDOpr_tm;

Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE3_tm = Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE3_tm.*MDOpr_tm;
Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE3_tm = Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE3_tm.*MDOpr_tm;

Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE3_tm = Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE3_tm.*MDOpr_tm;
Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE3_tm = Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE3_tm.*MDOpr_tm;

%t_f
%%%%%
Two_Str_Ice_MDO_Fuel_Cost_SCE3_tf = Two_Str_Ice_MDO_Fuel_Cons_SCE3_tf.*MDOpr_tf;
Two_Str_NonIce_MDO_Fuel_Cost_SCE3_tf = Two_Str_NonIce_MDO_Fuel_Cons_SCE3_tf.*MDOpr_tf;

Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE3_tf = Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE3_tf.*MDOpr_tf;
Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE3_tf = Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE3_tf.*MDOpr_tf;

Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE3_tf = Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE3_tf.*MDOpr_tf;
Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE3_tf = Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE3_tf.*MDOpr_tf;

%LNG - Internal Combustion Engine
%t_0
%%%%%
Combust_Ice_LNG_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE3_t0{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_t0{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Aux_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Aux_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Boil_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Boil_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}.*(sfc_LNG./NonIcesfc_design);

%t_m
%%%%%
Combust_Ice_LNG_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE3_tm{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tm{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Aux_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Aux_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Boil_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Boil_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}.*(sfc_LNG./NonIcesfc_design);

%t_f
%%%%%
Combust_Ice_LNG_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE3_tf{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tf{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Aux_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Aux_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}.*(sfc_LNG./NonIcesfc_design);

Combust_Ice_LNG_Boil_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}.*(sfc_LNG./Icesfc_design);
Combust_NonIce_LNG_Boil_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}.*(sfc_LNG./NonIcesfc_design);

%Fuel costs 
%t_0
%%%%%

Combust_Ice_LNG_Fuel_Cost_SCE3_t0 = Combust_Ice_LNG_Fuel_Cons_SCE3_t0.*LNGpr_t0;
Combust_NonIce_LNG_Fuel_Cost_SCE3_t0 = Combust_NonIce_LNG_Fuel_Cons_SCE3_t0.*LNGpr_t0;

Combust_Ice_LNG_Aux_Fuel_Cost_SCE3_t0 = Combust_Ice_LNG_Aux_Fuel_Cons_SCE3_t0.*LNGpr_t0;
Combust_NonIce_LNG_Aux_Fuel_Cost_SCE3_t0 = Combust_NonIce_LNG_Aux_Fuel_Cons_SCE3_t0.*LNGpr_t0;

Combust_Ice_LNG_Boil_Fuel_Cost_SCE3_t0 = Combust_Ice_LNG_Boil_Fuel_Cons_SCE3_t0.*LNGpr_t0;
Combust_NonIce_LNG_Boil_Fuel_Cost_SCE3_t0 = Combust_NonIce_LNG_Boil_Fuel_Cons_SCE3_t0.*LNGpr_t0;

%t_m
%%%%%

Combust_Ice_LNG_Fuel_Cost_SCE3_tm = Combust_Ice_LNG_Fuel_Cons_SCE3_tm.*LNGpr_tm;
Combust_NonIce_LNG_Fuel_Cost_SCE3_tm = Combust_NonIce_LNG_Fuel_Cons_SCE3_tm.*LNGpr_tm;

Combust_Ice_LNG_Aux_Fuel_Cost_SCE3_tm = Combust_Ice_LNG_Aux_Fuel_Cons_SCE3_tm.*LNGpr_tm;
Combust_NonIce_LNG_Aux_Fuel_Cost_SCE3_tm = Combust_NonIce_LNG_Aux_Fuel_Cons_SCE3_tm.*LNGpr_tm;

Combust_Ice_LNG_Boil_Fuel_Cost_SCE3_tm = Combust_Ice_LNG_Boil_Fuel_Cons_SCE3_tm.*LNGpr_tm;
Combust_NonIce_LNG_Boil_Fuel_Cost_SCE3_tm = Combust_NonIce_LNG_Boil_Fuel_Cons_SCE3_tm.*LNGpr_tm;

%t_f
%%%%%

Combust_Ice_LNG_Fuel_Cost_SCE3_tf = Combust_Ice_LNG_Fuel_Cons_SCE3_tf.*LNGpr_tf;
Combust_NonIce_LNG_Fuel_Cost_SCE3_tf = Combust_NonIce_LNG_Fuel_Cons_SCE3_tf.*LNGpr_tf;

Combust_Ice_LNG_Aux_Fuel_Cost_SCE3_tf = Combust_Ice_LNG_Aux_Fuel_Cons_SCE3_tf.*LNGpr_tf;
Combust_NonIce_LNG_Aux_Fuel_Cost_SCE3_tf = Combust_NonIce_LNG_Aux_Fuel_Cons_SCE3_tf.*LNGpr_tf;

Combust_Ice_LNG_Boil_Fuel_Cost_SCE3_tf = Combust_Ice_LNG_Boil_Fuel_Cons_SCE3_tf.*LNGpr_tf;
Combust_NonIce_LNG_Boil_Fuel_Cost_SCE3_tf = Combust_NonIce_LNG_Boil_Fuel_Cons_SCE3_tf.*LNGpr_tf;

%Ammonia - Internal Combustion Engine
%t_0
%%%%%
Combust_Ice_Amm_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Aux_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Aux_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Boil_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Boil_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

%t_m
%%%%%
Combust_Ice_Amm_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Aux_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Aux_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Boil_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Boil_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

%t_f
%%%%%
Combust_Ice_Amm_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Aux_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Aux_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

Combust_Ice_Amm_Boil_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3ICE./Icesfc_design);
Combust_NonIce_Amm_Boil_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3ICE./NonIcesfc_design);

%Fuel costs 
%t_0
%%%%%

Combust_Ice_Amm_Fuel_Cost_SCE3_t0 = Combust_Ice_Amm_Fuel_Cons_SCE3_t0.*Ammpr_t0;
Combust_NonIce_Amm_Fuel_Cost_SCE3_t0 = Combust_NonIce_Amm_Fuel_Cons_SCE3_t0.*Ammpr_t0;

Combust_Ice_Amm_Aux_Fuel_Cost_SCE3_t0 = Combust_Ice_Amm_Aux_Fuel_Cons_SCE3_t0.*Ammpr_t0;
Combust_NonIce_Amm_Aux_Fuel_Cost_SCE3_t0 = Combust_NonIce_Amm_Aux_Fuel_Cons_SCE3_t0.*Ammpr_t0;

Combust_Ice_Amm_Boil_Fuel_Cost_SCE3_t0 = Combust_Ice_Amm_Boil_Fuel_Cons_SCE3_t0.*Ammpr_t0;
Combust_NonIce_Amm_Boil_Fuel_Cost_SCE3_t0 = Combust_NonIce_Amm_Boil_Fuel_Cons_SCE3_t0.*Ammpr_t0;

%t_m
%%%%%

Combust_Ice_Amm_Fuel_Cost_SCE3_tm = Combust_Ice_Amm_Fuel_Cons_SCE3_tm.*Ammpr_tm;
Combust_NonIce_Amm_Fuel_Cost_SCE3_tm = Combust_NonIce_Amm_Fuel_Cons_SCE3_tm.*Ammpr_tm;

Combust_Ice_Amm_Aux_Fuel_Cost_SCE3_tm = Combust_Ice_Amm_Aux_Fuel_Cons_SCE3_tm.*Ammpr_tm;
Combust_NonIce_Amm_Aux_Fuel_Cost_SCE3_tm = Combust_NonIce_Amm_Aux_Fuel_Cons_SCE3_tm.*Ammpr_tm;

Combust_Ice_Amm_Boil_Fuel_Cost_SCE3_tm = Combust_Ice_Amm_Boil_Fuel_Cons_SCE3_tm.*Ammpr_tm;
Combust_NonIce_Amm_Boil_Fuel_Cost_SCE3_tm = Combust_NonIce_Amm_Boil_Fuel_Cons_SCE3_tm.*Ammpr_tm;

%t_f
%%%%%

Combust_Ice_Amm_Fuel_Cost_SCE3_tf = Combust_Ice_Amm_Fuel_Cons_SCE3_tf.*Ammpr_tf;
Combust_NonIce_Amm_Fuel_Cost_SCE3_tf = Combust_NonIce_Amm_Fuel_Cons_SCE3_tf.*Ammpr_tf;

Combust_Ice_Amm_Aux_Fuel_Cost_SCE3_tf = Combust_Ice_Amm_Aux_Fuel_Cons_SCE3_tf.*Ammpr_tf;
Combust_NonIce_Amm_Aux_Fuel_Cost_SCE3_tf = Combust_NonIce_Amm_Aux_Fuel_Cons_SCE3_tf.*Ammpr_tf;

Combust_Ice_Amm_Boil_Fuel_Cost_SCE3_tf = Combust_Ice_Amm_Boil_Fuel_Cons_SCE3_tf.*Ammpr_tf;
Combust_NonIce_Amm_Boil_Fuel_Cost_SCE3_tf = Combust_NonIce_Amm_Boil_Fuel_Cons_SCE3_tf.*Ammpr_tf;

%Ammonia - Methane - Fuel cells
%t_0
%%%%%
Fuel_cell_Ice_Amm_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}.*(sfc_NH3FC./NonIcesfc_design);

%t_m
%%%%%
Fuel_cell_Ice_Amm_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}.*(sfc_NH3FC./NonIcesfc_design);

%t_f
%%%%%
Fuel_cell_Ice_Amm_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3FC./NonIcesfc_design);

Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3FC./Icesfc_design);
Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}.*(sfc_NH3FC./NonIcesfc_design);

%Fuel costs 
%t_0
%%%%%

Fuel_cell_Ice_Amm_Fuel_Cost_SCE3_t0 = Fuel_cell_Ice_Amm_Fuel_Cons_SCE3_t0.*Ammpr_t0;
Fuel_cell_NonIce_Amm_Fuel_Cost_SCE3_t0 = Fuel_cell_NonIce_Amm_Fuel_Cons_SCE3_t0.*Ammpr_t0;

Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE3_t0 = Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE3_t0.*Ammpr_t0;
Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE3_t0 = Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE3_t0.*Ammpr_t0;

Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE3_t0 = Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE3_t0.*Ammpr_t0;
Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE3_t0 = Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE3_t0.*Ammpr_t0;

%t_m
%%%%%

Fuel_cell_Ice_Amm_Fuel_Cost_SCE3_tm = Fuel_cell_Ice_Amm_Fuel_Cons_SCE3_tm.*Ammpr_tm;
Fuel_cell_NonIce_Amm_Fuel_Cost_SCE3_tm = Fuel_cell_NonIce_Amm_Fuel_Cons_SCE3_tm.*Ammpr_tm;

Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE3_tm = Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE3_tm.*Ammpr_tm;
Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE3_tm = Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE3_tm.*Ammpr_tm;

Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE3_tm = Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE3_tm.*Ammpr_tm;
Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE3_tm = Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE3_tm.*Ammpr_tm;

%t_f
%%%%%

Fuel_cell_Ice_Amm_Fuel_Cost_SCE3_tf = Fuel_cell_Ice_Amm_Fuel_Cons_SCE3_tf.*Ammpr_tf;
Fuel_cell_NonIce_Amm_Fuel_Cost_SCE3_tf = Fuel_cell_NonIce_Amm_Fuel_Cons_SCE3_tf.*Ammpr_tf;

Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE3_tf = Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE3_tf.*Ammpr_tf;
Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE3_tf = Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE3_tf.*Ammpr_tf;

Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE3_tf = Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE3_tf.*Ammpr_tf;
Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE3_tf = Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE3_tf.*Ammpr_tf;

%Collating the fuel costs together 
%Scenario 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE1_Fuel_costs_t0 = table(Two_Str_Ice_HFO_Fuel_Cost_SCE1_t0, Two_Str_NonIce_HFO_Fuel_Cost_SCE1_t0, Two_Str_Ice_LSHFO_Fuel_Cost_SCE1_t0, Two_Str_NonIce_LSHFO_Fuel_Cost_SCE1_t0,...
    Two_Str_Ice_MDO_Fuel_Cost_SCE1_t0, Two_Str_NonIce_MDO_Fuel_Cost_SCE1_t0, Combust_Ice_LNG_Fuel_Cost_SCE1_t0, Combust_NonIce_LNG_Fuel_Cost_SCE1_t0,... 
    Combust_Ice_Amm_Fuel_Cost_SCE1_t0, Combust_NonIce_Amm_Fuel_Cost_SCE1_t0, Fuel_cell_Ice_Amm_Fuel_Cost_SCE1_t0, Fuel_cell_NonIce_Amm_Fuel_Cost_SCE1_t0);

SCE1_Fuel_costs_tm = table(Two_Str_Ice_HFO_Fuel_Cost_SCE1_tm, Two_Str_NonIce_HFO_Fuel_Cost_SCE1_tm, Two_Str_Ice_LSHFO_Fuel_Cost_SCE1_tm, Two_Str_NonIce_LSHFO_Fuel_Cost_SCE1_tm,...
    Two_Str_Ice_MDO_Fuel_Cost_SCE1_tm, Two_Str_NonIce_MDO_Fuel_Cost_SCE1_tm, Combust_Ice_LNG_Fuel_Cost_SCE1_tm, Combust_NonIce_LNG_Fuel_Cost_SCE1_tm,... 
    Combust_Ice_Amm_Fuel_Cost_SCE1_tm, Combust_NonIce_Amm_Fuel_Cost_SCE1_tm, Fuel_cell_Ice_Amm_Fuel_Cost_SCE1_tm, Fuel_cell_NonIce_Amm_Fuel_Cost_SCE1_tm);

SCE1_Fuel_costs_tf = table(Two_Str_Ice_HFO_Fuel_Cost_SCE1_tf, Two_Str_NonIce_HFO_Fuel_Cost_SCE1_tf, Two_Str_Ice_LSHFO_Fuel_Cost_SCE1_tf, Two_Str_NonIce_LSHFO_Fuel_Cost_SCE1_tf,...
    Two_Str_Ice_MDO_Fuel_Cost_SCE1_tf, Two_Str_NonIce_MDO_Fuel_Cost_SCE1_tf, Combust_Ice_LNG_Fuel_Cost_SCE1_tf, Combust_NonIce_LNG_Fuel_Cost_SCE1_tf,... 
    Combust_Ice_Amm_Fuel_Cost_SCE1_tf, Combust_NonIce_Amm_Fuel_Cost_SCE1_tf, Fuel_cell_Ice_Amm_Fuel_Cost_SCE1_tf, Fuel_cell_NonIce_Amm_Fuel_Cost_SCE1_tf);

SCE1_Aux_Fuel_costs_t0 = table(Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE1_t0, Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE1_t0, Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE1_t0, Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE1_t0,...
    Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE1_t0, Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE1_t0, Combust_Ice_LNG_Aux_Fuel_Cost_SCE1_t0, Combust_NonIce_LNG_Aux_Fuel_Cost_SCE1_t0,...
    Combust_Ice_Amm_Aux_Fuel_Cost_SCE1_t0, Combust_NonIce_Amm_Aux_Fuel_Cost_SCE1_t0, Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE1_t0, Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE1_t0);

SCE1_Aux_Fuel_costs_tm = table(Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE1_tm, Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE1_tm, Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE1_tm, Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE1_tm,...
    Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE1_tm, Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE1_tm, Combust_Ice_LNG_Aux_Fuel_Cost_SCE1_tm, Combust_NonIce_LNG_Aux_Fuel_Cost_SCE1_tm,...
    Combust_Ice_Amm_Aux_Fuel_Cost_SCE1_tm, Combust_NonIce_Amm_Aux_Fuel_Cost_SCE1_tm, Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE1_tm, Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE1_tm);

SCE1_Aux_Fuel_costs_tf = table(Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE1_tf, Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE1_tf, Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE1_tf, Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE1_tf,...
    Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE1_tf, Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE1_tf, Combust_Ice_LNG_Aux_Fuel_Cost_SCE1_tf, Combust_NonIce_LNG_Aux_Fuel_Cost_SCE1_tf,...
    Combust_Ice_Amm_Aux_Fuel_Cost_SCE1_tf, Combust_NonIce_Amm_Aux_Fuel_Cost_SCE1_tf, Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE1_tf, Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE1_tf);

SCE1_Boil_Fuel_costs_t0 = table(Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE1_t0, Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE1_t0, Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE1_t0, Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE1_t0,...
    Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE1_t0, Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE1_t0, Combust_Ice_LNG_Boil_Fuel_Cost_SCE1_t0, Combust_NonIce_LNG_Boil_Fuel_Cost_SCE1_t0,...
    Combust_Ice_Amm_Boil_Fuel_Cost_SCE1_t0, Combust_NonIce_Amm_Boil_Fuel_Cost_SCE1_t0, Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE1_t0, Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE1_t0);

SCE1_Boil_Fuel_costs_tm = table(Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE1_tm, Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE1_tm, Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE1_tm, Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE1_tm,...
    Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE1_tm, Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE1_tm, Combust_Ice_LNG_Boil_Fuel_Cost_SCE1_tm, Combust_NonIce_LNG_Boil_Fuel_Cost_SCE1_tm,...
    Combust_Ice_Amm_Boil_Fuel_Cost_SCE1_tm, Combust_NonIce_Amm_Boil_Fuel_Cost_SCE1_tm, Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE1_tm, Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE1_tm);

SCE1_Boil_Fuel_costs_tf = table(Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE1_tf, Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE1_tf, Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE1_tf, Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE1_tf,...
    Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE1_tf, Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE1_tf, Combust_Ice_LNG_Boil_Fuel_Cost_SCE1_tf, Combust_NonIce_LNG_Boil_Fuel_Cost_SCE1_tf,...
    Combust_Ice_Amm_Boil_Fuel_Cost_SCE1_tf, Combust_NonIce_Amm_Boil_Fuel_Cost_SCE1_tf, Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE1_tf, Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE1_tf);

%Scenario 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE2_Fuel_costs_t0 = table(Two_Str_Ice_HFO_Fuel_Cost_SCE2_t0, Two_Str_NonIce_HFO_Fuel_Cost_SCE2_t0, Two_Str_Ice_LSHFO_Fuel_Cost_SCE2_t0, Two_Str_NonIce_LSHFO_Fuel_Cost_SCE2_t0,...
    Two_Str_Ice_MDO_Fuel_Cost_SCE2_t0, Two_Str_NonIce_MDO_Fuel_Cost_SCE2_t0, Combust_Ice_LNG_Fuel_Cost_SCE2_t0, Combust_NonIce_LNG_Fuel_Cost_SCE2_t0,... 
    Combust_Ice_Amm_Fuel_Cost_SCE2_t0, Combust_NonIce_Amm_Fuel_Cost_SCE2_t0, Fuel_cell_Ice_Amm_Fuel_Cost_SCE2_t0, Fuel_cell_NonIce_Amm_Fuel_Cost_SCE2_t0);

SCE2_Fuel_costs_tm = table(Two_Str_Ice_HFO_Fuel_Cost_SCE2_tm, Two_Str_NonIce_HFO_Fuel_Cost_SCE2_tm, Two_Str_Ice_LSHFO_Fuel_Cost_SCE2_tm, Two_Str_NonIce_LSHFO_Fuel_Cost_SCE2_tm,...
    Two_Str_Ice_MDO_Fuel_Cost_SCE2_tm, Two_Str_NonIce_MDO_Fuel_Cost_SCE2_tm, Combust_Ice_LNG_Fuel_Cost_SCE2_tm, Combust_NonIce_LNG_Fuel_Cost_SCE2_tm,... 
    Combust_Ice_Amm_Fuel_Cost_SCE2_tm, Combust_NonIce_Amm_Fuel_Cost_SCE2_tm, Fuel_cell_Ice_Amm_Fuel_Cost_SCE2_tm, Fuel_cell_NonIce_Amm_Fuel_Cost_SCE2_tm);

SCE2_Fuel_costs_tf = table(Two_Str_Ice_HFO_Fuel_Cost_SCE2_tf, Two_Str_NonIce_HFO_Fuel_Cost_SCE2_tf, Two_Str_Ice_LSHFO_Fuel_Cost_SCE2_tf, Two_Str_NonIce_LSHFO_Fuel_Cost_SCE2_tf,...
    Two_Str_Ice_MDO_Fuel_Cost_SCE2_tf, Two_Str_NonIce_MDO_Fuel_Cost_SCE2_tf, Combust_Ice_LNG_Fuel_Cost_SCE2_tf, Combust_NonIce_LNG_Fuel_Cost_SCE2_tf,... 
    Combust_Ice_Amm_Fuel_Cost_SCE2_tf, Combust_NonIce_Amm_Fuel_Cost_SCE2_tf, Fuel_cell_Ice_Amm_Fuel_Cost_SCE2_tf, Fuel_cell_NonIce_Amm_Fuel_Cost_SCE2_tf);

SCE2_Aux_Fuel_costs_t0 = table(Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE2_t0, Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE2_t0, Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE2_t0, Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE2_t0,...
    Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE2_t0, Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE2_t0, Combust_Ice_LNG_Aux_Fuel_Cost_SCE2_t0, Combust_NonIce_LNG_Aux_Fuel_Cost_SCE2_t0,...
    Combust_Ice_Amm_Aux_Fuel_Cost_SCE2_t0, Combust_NonIce_Amm_Aux_Fuel_Cost_SCE2_t0, Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE2_t0, Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE2_t0);

SCE2_Aux_Fuel_costs_tm = table(Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE2_tm, Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE2_tm, Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE2_tm, Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE2_tm,...
    Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE2_tm, Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE2_tm, Combust_Ice_LNG_Aux_Fuel_Cost_SCE2_tm, Combust_NonIce_LNG_Aux_Fuel_Cost_SCE2_tm,...
    Combust_Ice_Amm_Aux_Fuel_Cost_SCE2_tm, Combust_NonIce_Amm_Aux_Fuel_Cost_SCE2_tm, Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE2_tm, Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE2_tm);

SCE2_Aux_Fuel_costs_tf = table(Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE2_tf, Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE2_tf, Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE2_tf, Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE2_tf,...
    Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE2_tf, Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE2_tf, Combust_Ice_LNG_Aux_Fuel_Cost_SCE2_tf, Combust_NonIce_LNG_Aux_Fuel_Cost_SCE2_tf,...
    Combust_Ice_Amm_Aux_Fuel_Cost_SCE2_tf, Combust_NonIce_Amm_Aux_Fuel_Cost_SCE2_tf, Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE2_tf, Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE2_tf);

SCE2_Boil_Fuel_costs_t0 = table(Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE2_t0, Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE2_t0, Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE2_t0, Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE2_t0,...
    Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE2_t0, Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE2_t0, Combust_Ice_LNG_Boil_Fuel_Cost_SCE2_t0, Combust_NonIce_LNG_Boil_Fuel_Cost_SCE2_t0,...
    Combust_Ice_Amm_Boil_Fuel_Cost_SCE2_t0, Combust_NonIce_Amm_Boil_Fuel_Cost_SCE2_t0, Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE2_t0, Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE2_t0);

SCE2_Boil_Fuel_costs_tm = table(Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE2_tm, Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE2_tm, Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE2_tm, Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE2_tm,...
    Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE2_tm, Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE2_tm, Combust_Ice_LNG_Boil_Fuel_Cost_SCE2_tm, Combust_NonIce_LNG_Boil_Fuel_Cost_SCE2_tm,...
    Combust_Ice_Amm_Boil_Fuel_Cost_SCE2_tm, Combust_NonIce_Amm_Boil_Fuel_Cost_SCE2_tm, Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE2_tm, Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE2_tm);

SCE2_Boil_Fuel_costs_tf = table(Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE2_tf, Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE2_tf, Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE2_tf, Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE2_tf,...
    Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE2_tf, Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE2_tf, Combust_Ice_LNG_Boil_Fuel_Cost_SCE2_tf, Combust_NonIce_LNG_Boil_Fuel_Cost_SCE2_tf,...
    Combust_Ice_Amm_Boil_Fuel_Cost_SCE2_tf, Combust_NonIce_Amm_Boil_Fuel_Cost_SCE2_tf, Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE2_tf, Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE2_tf);


%Scenario 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE3_Fuel_costs_t0 = table(Two_Str_Ice_HFO_Fuel_Cost_SCE3_t0, Two_Str_NonIce_HFO_Fuel_Cost_SCE3_t0, Two_Str_Ice_LSHFO_Fuel_Cost_SCE3_t0, Two_Str_NonIce_LSHFO_Fuel_Cost_SCE3_t0,...
    Two_Str_Ice_MDO_Fuel_Cost_SCE3_t0, Two_Str_NonIce_MDO_Fuel_Cost_SCE3_t0, Combust_Ice_LNG_Fuel_Cost_SCE3_t0, Combust_NonIce_LNG_Fuel_Cost_SCE3_t0,... 
    Combust_Ice_Amm_Fuel_Cost_SCE3_t0, Combust_NonIce_Amm_Fuel_Cost_SCE3_t0, Fuel_cell_Ice_Amm_Fuel_Cost_SCE3_t0, Fuel_cell_NonIce_Amm_Fuel_Cost_SCE3_t0);

SCE3_Fuel_costs_tm = table(Two_Str_Ice_HFO_Fuel_Cost_SCE3_tm, Two_Str_NonIce_HFO_Fuel_Cost_SCE3_tm, Two_Str_Ice_LSHFO_Fuel_Cost_SCE3_tm, Two_Str_NonIce_LSHFO_Fuel_Cost_SCE3_tm,...
    Two_Str_Ice_MDO_Fuel_Cost_SCE3_tm, Two_Str_NonIce_MDO_Fuel_Cost_SCE3_tm, Combust_Ice_LNG_Fuel_Cost_SCE3_tm, Combust_NonIce_LNG_Fuel_Cost_SCE3_tm,... 
    Combust_Ice_Amm_Fuel_Cost_SCE3_tm, Combust_NonIce_Amm_Fuel_Cost_SCE3_tm, Fuel_cell_Ice_Amm_Fuel_Cost_SCE3_tm, Fuel_cell_NonIce_Amm_Fuel_Cost_SCE3_tm);

SCE3_Fuel_costs_tf = table(Two_Str_Ice_HFO_Fuel_Cost_SCE3_tf, Two_Str_NonIce_HFO_Fuel_Cost_SCE3_tf, Two_Str_Ice_LSHFO_Fuel_Cost_SCE3_tf, Two_Str_NonIce_LSHFO_Fuel_Cost_SCE3_tf,...
    Two_Str_Ice_MDO_Fuel_Cost_SCE3_tf, Two_Str_NonIce_MDO_Fuel_Cost_SCE3_tf, Combust_Ice_LNG_Fuel_Cost_SCE3_tf, Combust_NonIce_LNG_Fuel_Cost_SCE3_tf,... 
    Combust_Ice_Amm_Fuel_Cost_SCE3_tf, Combust_NonIce_Amm_Fuel_Cost_SCE3_tf, Fuel_cell_Ice_Amm_Fuel_Cost_SCE3_tf, Fuel_cell_NonIce_Amm_Fuel_Cost_SCE3_tf);

SCE3_Aux_Fuel_costs_t0 = table(Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE3_t0, Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE3_t0, Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE3_t0, Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE3_t0,...
    Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE3_t0, Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE3_t0, Combust_Ice_LNG_Aux_Fuel_Cost_SCE3_t0, Combust_NonIce_LNG_Aux_Fuel_Cost_SCE3_t0,...
    Combust_Ice_Amm_Aux_Fuel_Cost_SCE3_t0, Combust_NonIce_Amm_Aux_Fuel_Cost_SCE3_t0, Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE3_t0, Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE3_t0);

SCE3_Aux_Fuel_costs_tm = table(Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE3_tm, Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE3_tm, Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE3_tm, Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE3_tm,...
    Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE3_tm, Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE3_tm, Combust_Ice_LNG_Aux_Fuel_Cost_SCE3_tm, Combust_NonIce_LNG_Aux_Fuel_Cost_SCE3_tm,...
    Combust_Ice_Amm_Aux_Fuel_Cost_SCE3_tm, Combust_NonIce_Amm_Aux_Fuel_Cost_SCE3_tm, Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE3_tm, Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE3_tm);

SCE3_Aux_Fuel_costs_tf = table(Two_Str_Ice_HFO_Aux_Fuel_Cost_SCE3_tf, Two_Str_NonIce_HFO_Aux_Fuel_Cost_SCE3_tf, Two_Str_Ice_LSHFO_Aux_Fuel_Cost_SCE3_tf, Two_Str_NonIce_LSHFO_Aux_Fuel_Cost_SCE3_tf,...
    Two_Str_Ice_MDO_Aux_Fuel_Cost_SCE3_tf, Two_Str_NonIce_MDO_Aux_Fuel_Cost_SCE3_tf, Combust_Ice_LNG_Aux_Fuel_Cost_SCE3_tf, Combust_NonIce_LNG_Aux_Fuel_Cost_SCE3_tf,...
    Combust_Ice_Amm_Aux_Fuel_Cost_SCE3_tf, Combust_NonIce_Amm_Aux_Fuel_Cost_SCE3_tf, Fuel_cell_Ice_Amm_Aux_Fuel_Cost_SCE3_tf, Fuel_cell_NonIce_Amm_Aux_Fuel_Cost_SCE3_tf);

SCE3_Boil_Fuel_costs_t0 = table(Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE3_t0, Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE3_t0, Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE3_t0, Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE3_t0,...
    Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE3_t0, Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE3_t0, Combust_Ice_LNG_Boil_Fuel_Cost_SCE3_t0, Combust_NonIce_LNG_Boil_Fuel_Cost_SCE3_t0,...
    Combust_Ice_Amm_Boil_Fuel_Cost_SCE3_t0, Combust_NonIce_Amm_Boil_Fuel_Cost_SCE3_t0, Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE3_t0, Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE3_t0);

SCE3_Boil_Fuel_costs_tm = table(Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE3_tm, Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE3_tm, Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE3_tm, Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE3_tm,...
    Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE3_tm, Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE3_tm, Combust_Ice_LNG_Boil_Fuel_Cost_SCE3_tm, Combust_NonIce_LNG_Boil_Fuel_Cost_SCE3_tm,...
    Combust_Ice_Amm_Boil_Fuel_Cost_SCE3_tm, Combust_NonIce_Amm_Boil_Fuel_Cost_SCE3_tm, Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE3_tm, Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE3_tm);

SCE3_Boil_Fuel_costs_tf = table(Two_Str_Ice_HFO_Boil_Fuel_Cost_SCE3_tf, Two_Str_NonIce_HFO_Boil_Fuel_Cost_SCE3_tf, Two_Str_Ice_LSHFO_Boil_Fuel_Cost_SCE3_tf, Two_Str_NonIce_LSHFO_Boil_Fuel_Cost_SCE3_tf,...
    Two_Str_Ice_MDO_Boil_Fuel_Cost_SCE3_tf, Two_Str_NonIce_MDO_Boil_Fuel_Cost_SCE3_tf, Combust_Ice_LNG_Boil_Fuel_Cost_SCE3_tf, Combust_NonIce_LNG_Boil_Fuel_Cost_SCE3_tf,...
    Combust_Ice_Amm_Boil_Fuel_Cost_SCE3_tf, Combust_NonIce_Amm_Boil_Fuel_Cost_SCE3_tf, Fuel_cell_Ice_Amm_Boil_Fuel_Cost_SCE3_tf, Fuel_cell_NonIce_Amm_Boil_Fuel_Cost_SCE3_tf);

%Collating the fuel consumption together 
%These variables are still tables and so I need to convert them into
%doubles
Two_Str_Ice_HFO_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE1_t0{:,:}; Two_Str_NonIce_HFO_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_t0{:,:};

Two_Str_Ice_HFO_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE1_tm{:,:}; Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tm{:,:};

Two_Str_Ice_HFO_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE1_tf{:,:}; Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tf{:,:};

Two_Str_Ice_HFO_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE2_t0{:,:}; Two_Str_NonIce_HFO_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_t0{:,:};

Two_Str_Ice_HFO_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE2_tm{:,:}; Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tm{:,:};

Two_Str_Ice_HFO_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE2_tf{:,:}; Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tf{:,:};

Two_Str_Ice_HFO_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Fuel_Cons_SCE3_t0{:,:}; Two_Str_NonIce_HFO_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_t0{:,:};

Two_Str_Ice_HFO_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Fuel_Cons_SCE3_tm{:,:}; Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tm{:,:};

Two_Str_Ice_HFO_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Fuel_Cons_SCE3_tf{:,:}; Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tf{:,:};

%Auxiliary

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_t0{:,:}; Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_t0{:,:};

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tm{:,:}; Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tm{:,:};

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tf{:,:}; Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tf{:,:};

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_t0{:,:}; Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_t0{:,:};

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tm{:,:}; Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tm{:,:};

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tf{:,:}; Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tf{:,:};

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_t0{:,:}; Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_t0{:,:};

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tm{:,:}; Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tm{:,:};

Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tf{:,:}; Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tf{:,:};

%Boiler

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_t0{:,:}; Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_t0{:,:};

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tm{:,:}; Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tm{:,:};

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tf{:,:}; Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tf{:,:};

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_t0{:,:}; Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_t0{:,:};

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tm{:,:}; Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tm{:,:};

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tf{:,:}; Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tf{:,:};

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_t0 = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_t0{:,:}; Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_t0 = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_t0{:,:};

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tm = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tm{:,:}; Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tm = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tm{:,:};

Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tf = Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tf{:,:}; Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tf = Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tf{:,:};

%Scenario 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE1_Fuel_cons_t0 = table(Two_Str_Ice_HFO_Fuel_Cons_SCE1_t0, Two_Str_NonIce_HFO_Fuel_Cons_SCE1_t0, Two_Str_Ice_LSHFO_Fuel_Cons_SCE1_t0, Two_Str_NonIce_LSHFO_Fuel_Cons_SCE1_t0,...
    Two_Str_Ice_MDO_Fuel_Cons_SCE1_t0, Two_Str_NonIce_MDO_Fuel_Cons_SCE1_t0, Combust_Ice_LNG_Fuel_Cons_SCE1_t0, Combust_NonIce_LNG_Fuel_Cons_SCE1_t0,... 
    Combust_Ice_Amm_Fuel_Cons_SCE1_t0, Combust_NonIce_Amm_Fuel_Cons_SCE1_t0, Fuel_cell_Ice_Amm_Fuel_Cons_SCE1_t0, Fuel_cell_NonIce_Amm_Fuel_Cons_SCE1_t0);

SCE1_Fuel_cons_tm = table(Two_Str_Ice_HFO_Fuel_Cons_SCE1_tm, Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tm, Two_Str_Ice_LSHFO_Fuel_Cons_SCE1_tm, Two_Str_NonIce_LSHFO_Fuel_Cons_SCE1_tm,...
    Two_Str_Ice_MDO_Fuel_Cons_SCE1_tm, Two_Str_NonIce_MDO_Fuel_Cons_SCE1_tm, Combust_Ice_LNG_Fuel_Cons_SCE1_tm, Combust_NonIce_LNG_Fuel_Cons_SCE1_tm,... 
    Combust_Ice_Amm_Fuel_Cons_SCE1_tm, Combust_NonIce_Amm_Fuel_Cons_SCE1_tm, Fuel_cell_Ice_Amm_Fuel_Cons_SCE1_tm, Fuel_cell_NonIce_Amm_Fuel_Cons_SCE1_tm);

SCE1_Fuel_cons_tf = table(Two_Str_Ice_HFO_Fuel_Cons_SCE1_tf, Two_Str_NonIce_HFO_Fuel_Cons_SCE1_tf, Two_Str_Ice_LSHFO_Fuel_Cons_SCE1_tf, Two_Str_NonIce_LSHFO_Fuel_Cons_SCE1_tf,...
    Two_Str_Ice_MDO_Fuel_Cons_SCE1_tf, Two_Str_NonIce_MDO_Fuel_Cons_SCE1_tf, Combust_Ice_LNG_Fuel_Cons_SCE1_tf, Combust_NonIce_LNG_Fuel_Cons_SCE1_tf,... 
    Combust_Ice_Amm_Fuel_Cons_SCE1_tf, Combust_NonIce_Amm_Fuel_Cons_SCE1_tf, Fuel_cell_Ice_Amm_Fuel_Cons_SCE1_tf, Fuel_cell_NonIce_Amm_Fuel_Cons_SCE1_tf);

SCE1_Aux_Fuel_cons_t0 = table(Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_t0, Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_t0, Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE1_t0, Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE1_t0,...
    Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE1_t0, Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE1_t0, Combust_Ice_LNG_Aux_Fuel_Cons_SCE1_t0, Combust_NonIce_LNG_Aux_Fuel_Cons_SCE1_t0,...
    Combust_Ice_Amm_Aux_Fuel_Cons_SCE1_t0, Combust_NonIce_Amm_Aux_Fuel_Cons_SCE1_t0, Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE1_t0, Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE1_t0);

SCE1_Aux_Fuel_cons_tm = table(Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tm, Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tm, Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE1_tm, Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE1_tm,...
    Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE1_tm, Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE1_tm, Combust_Ice_LNG_Aux_Fuel_Cons_SCE1_tm, Combust_NonIce_LNG_Aux_Fuel_Cons_SCE1_tm,...
    Combust_Ice_Amm_Aux_Fuel_Cons_SCE1_tm, Combust_NonIce_Amm_Aux_Fuel_Cons_SCE1_tm, Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE1_tm, Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE1_tm);

SCE1_Aux_Fuel_cons_tf = table(Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE1_tf, Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE1_tf, Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE1_tf, Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE1_tf,...
    Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE1_tf, Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE1_tf, Combust_Ice_LNG_Aux_Fuel_Cons_SCE1_tf, Combust_NonIce_LNG_Aux_Fuel_Cons_SCE1_tf,...
    Combust_Ice_Amm_Aux_Fuel_Cons_SCE1_tf, Combust_NonIce_Amm_Aux_Fuel_Cons_SCE1_tf, Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE1_tf, Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE1_tf);

SCE1_Boil_Fuel_cons_t0 = table(Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_t0, Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_t0, Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE1_t0, Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE1_t0,...
    Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE1_t0, Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE1_t0, Combust_Ice_LNG_Boil_Fuel_Cons_SCE1_t0, Combust_NonIce_LNG_Boil_Fuel_Cons_SCE1_t0,...
    Combust_Ice_Amm_Boil_Fuel_Cons_SCE1_t0, Combust_NonIce_Amm_Boil_Fuel_Cons_SCE1_t0, Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE1_t0, Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE1_t0);

SCE1_Boil_Fuel_cons_tm = table(Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tm, Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tm, Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE1_tm, Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE1_tm,...
    Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE1_tm, Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE1_tm, Combust_Ice_LNG_Boil_Fuel_Cons_SCE1_tm, Combust_NonIce_LNG_Boil_Fuel_Cons_SCE1_tm,...
    Combust_Ice_Amm_Boil_Fuel_Cons_SCE1_tm, Combust_NonIce_Amm_Boil_Fuel_Cons_SCE1_tm, Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE1_tm, Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE1_tm);

SCE1_Boil_Fuel_cons_tf = table(Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE1_tf, Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE1_tf, Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE1_tf, Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE1_tf,...
    Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE1_tf, Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE1_tf, Combust_Ice_LNG_Boil_Fuel_Cons_SCE1_tf, Combust_NonIce_LNG_Boil_Fuel_Cons_SCE1_tf,...
    Combust_Ice_Amm_Boil_Fuel_Cons_SCE1_tf, Combust_NonIce_Amm_Boil_Fuel_Cons_SCE1_tf, Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE1_tf, Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE1_tf);

%Scenario 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE2_Fuel_cons_t0 = table(Two_Str_Ice_HFO_Fuel_Cons_SCE2_t0, Two_Str_NonIce_HFO_Fuel_Cons_SCE2_t0, Two_Str_Ice_LSHFO_Fuel_Cons_SCE2_t0, Two_Str_NonIce_LSHFO_Fuel_Cons_SCE2_t0,...
    Two_Str_Ice_MDO_Fuel_Cons_SCE2_t0, Two_Str_NonIce_MDO_Fuel_Cons_SCE2_t0, Combust_Ice_LNG_Fuel_Cons_SCE2_t0, Combust_NonIce_LNG_Fuel_Cons_SCE2_t0,... 
    Combust_Ice_Amm_Fuel_Cons_SCE2_t0, Combust_NonIce_Amm_Fuel_Cons_SCE2_t0, Fuel_cell_Ice_Amm_Fuel_Cons_SCE2_t0, Fuel_cell_NonIce_Amm_Fuel_Cons_SCE2_t0);

SCE2_Fuel_cons_tm = table(Two_Str_Ice_HFO_Fuel_Cons_SCE2_tm, Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tm, Two_Str_Ice_LSHFO_Fuel_Cons_SCE2_tm, Two_Str_NonIce_LSHFO_Fuel_Cons_SCE2_tm,...
    Two_Str_Ice_MDO_Fuel_Cons_SCE2_tm, Two_Str_NonIce_MDO_Fuel_Cons_SCE2_tm, Combust_Ice_LNG_Fuel_Cons_SCE2_tm, Combust_NonIce_LNG_Fuel_Cons_SCE2_tm,... 
    Combust_Ice_Amm_Fuel_Cons_SCE2_tm, Combust_NonIce_Amm_Fuel_Cons_SCE2_tm, Fuel_cell_Ice_Amm_Fuel_Cons_SCE2_tm, Fuel_cell_NonIce_Amm_Fuel_Cons_SCE2_tm);

SCE2_Fuel_cons_tf = table(Two_Str_Ice_HFO_Fuel_Cons_SCE2_tf, Two_Str_NonIce_HFO_Fuel_Cons_SCE2_tf, Two_Str_Ice_LSHFO_Fuel_Cons_SCE2_tf, Two_Str_NonIce_LSHFO_Fuel_Cons_SCE2_tf,...
    Two_Str_Ice_MDO_Fuel_Cons_SCE2_tf, Two_Str_NonIce_MDO_Fuel_Cons_SCE2_tf, Combust_Ice_LNG_Fuel_Cons_SCE2_tf, Combust_NonIce_LNG_Fuel_Cons_SCE2_tf,... 
    Combust_Ice_Amm_Fuel_Cons_SCE2_tf, Combust_NonIce_Amm_Fuel_Cons_SCE2_tf, Fuel_cell_Ice_Amm_Fuel_Cons_SCE2_tf, Fuel_cell_NonIce_Amm_Fuel_Cons_SCE2_tf);

SCE2_Aux_Fuel_cons_t0 = table(Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_t0, Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_t0, Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE2_t0, Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE2_t0,...
    Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE2_t0, Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE2_t0, Combust_Ice_LNG_Aux_Fuel_Cons_SCE2_t0, Combust_NonIce_LNG_Aux_Fuel_Cons_SCE2_t0,...
    Combust_Ice_Amm_Aux_Fuel_Cons_SCE2_t0, Combust_NonIce_Amm_Aux_Fuel_Cons_SCE2_t0, Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE2_t0, Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE2_t0);

SCE2_Aux_Fuel_cons_tm = table(Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tm, Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tm, Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE2_tm, Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE2_tm,...
    Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE2_tm, Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE2_tm, Combust_Ice_LNG_Aux_Fuel_Cons_SCE2_tm, Combust_NonIce_LNG_Aux_Fuel_Cons_SCE2_tm,...
    Combust_Ice_Amm_Aux_Fuel_Cons_SCE2_tm, Combust_NonIce_Amm_Aux_Fuel_Cons_SCE2_tm, Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE2_tm, Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE2_tm);

SCE2_Aux_Fuel_cons_tf = table(Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE2_tf, Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE2_tf, Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE2_tf, Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE2_tf,...
    Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE2_tf, Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE2_tf, Combust_Ice_LNG_Aux_Fuel_Cons_SCE2_tf, Combust_NonIce_LNG_Aux_Fuel_Cons_SCE2_tf,...
    Combust_Ice_Amm_Aux_Fuel_Cons_SCE2_tf, Combust_NonIce_Amm_Aux_Fuel_Cons_SCE2_tf, Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE2_tf, Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE2_tf);

SCE2_Boil_Fuel_cons_t0 = table(Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_t0, Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_t0, Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE2_t0, Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE2_t0,...
    Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE2_t0, Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE2_t0, Combust_Ice_LNG_Boil_Fuel_Cons_SCE2_t0, Combust_NonIce_LNG_Boil_Fuel_Cons_SCE2_t0,...
    Combust_Ice_Amm_Boil_Fuel_Cons_SCE2_t0, Combust_NonIce_Amm_Boil_Fuel_Cons_SCE2_t0, Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE2_t0, Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE2_t0);

SCE2_Boil_Fuel_cons_tm = table(Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tm, Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tm, Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE2_tm, Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE2_tm,...
    Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE2_tm, Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE2_tm, Combust_Ice_LNG_Boil_Fuel_Cons_SCE2_tm, Combust_NonIce_LNG_Boil_Fuel_Cons_SCE2_tm,...
    Combust_Ice_Amm_Boil_Fuel_Cons_SCE2_tm, Combust_NonIce_Amm_Boil_Fuel_Cons_SCE2_tm, Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE2_tm, Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE2_tm);

SCE2_Boil_Fuel_cons_tf = table(Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE2_tf, Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE2_tf, Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE2_tf, Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE2_tf,...
    Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE2_tf, Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE2_tf, Combust_Ice_LNG_Boil_Fuel_Cons_SCE2_tf, Combust_NonIce_LNG_Boil_Fuel_Cons_SCE2_tf,...
    Combust_Ice_Amm_Boil_Fuel_Cons_SCE2_tf, Combust_NonIce_Amm_Boil_Fuel_Cons_SCE2_tf, Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE2_tf, Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE2_tf);

%Scenario 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE3_Fuel_cons_t0 = table(Two_Str_Ice_HFO_Fuel_Cons_SCE3_t0, Two_Str_NonIce_HFO_Fuel_Cons_SCE3_t0, Two_Str_Ice_LSHFO_Fuel_Cons_SCE3_t0, Two_Str_NonIce_LSHFO_Fuel_Cons_SCE3_t0,...
    Two_Str_Ice_MDO_Fuel_Cons_SCE3_t0, Two_Str_NonIce_MDO_Fuel_Cons_SCE3_t0, Combust_Ice_LNG_Fuel_Cons_SCE3_t0, Combust_NonIce_LNG_Fuel_Cons_SCE3_t0,... 
    Combust_Ice_Amm_Fuel_Cons_SCE3_t0, Combust_NonIce_Amm_Fuel_Cons_SCE3_t0, Fuel_cell_Ice_Amm_Fuel_Cons_SCE3_t0, Fuel_cell_NonIce_Amm_Fuel_Cons_SCE3_t0);

SCE3_Fuel_cons_tm = table(Two_Str_Ice_HFO_Fuel_Cons_SCE3_tm, Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tm, Two_Str_Ice_LSHFO_Fuel_Cons_SCE3_tm, Two_Str_NonIce_LSHFO_Fuel_Cons_SCE3_tm,...
    Two_Str_Ice_MDO_Fuel_Cons_SCE3_tm, Two_Str_NonIce_MDO_Fuel_Cons_SCE3_tm, Combust_Ice_LNG_Fuel_Cons_SCE3_tm, Combust_NonIce_LNG_Fuel_Cons_SCE3_tm,... 
    Combust_Ice_Amm_Fuel_Cons_SCE3_tm, Combust_NonIce_Amm_Fuel_Cons_SCE3_tm, Fuel_cell_Ice_Amm_Fuel_Cons_SCE3_tm, Fuel_cell_NonIce_Amm_Fuel_Cons_SCE3_tm);

SCE3_Fuel_cons_tf = table(Two_Str_Ice_HFO_Fuel_Cons_SCE3_tf, Two_Str_NonIce_HFO_Fuel_Cons_SCE3_tf, Two_Str_Ice_LSHFO_Fuel_Cons_SCE3_tf, Two_Str_NonIce_LSHFO_Fuel_Cons_SCE3_tf,...
    Two_Str_Ice_MDO_Fuel_Cons_SCE3_tf, Two_Str_NonIce_MDO_Fuel_Cons_SCE3_tf, Combust_Ice_LNG_Fuel_Cons_SCE3_tf, Combust_NonIce_LNG_Fuel_Cons_SCE3_tf,... 
    Combust_Ice_Amm_Fuel_Cons_SCE3_tf, Combust_NonIce_Amm_Fuel_Cons_SCE3_tf, Fuel_cell_Ice_Amm_Fuel_Cons_SCE3_tf, Fuel_cell_NonIce_Amm_Fuel_Cons_SCE3_tf);

SCE3_Aux_Fuel_cons_t0 = table(Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_t0, Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_t0, Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE3_t0, Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE3_t0,...
    Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE3_t0, Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE3_t0, Combust_Ice_LNG_Aux_Fuel_Cons_SCE3_t0, Combust_NonIce_LNG_Aux_Fuel_Cons_SCE3_t0,...
    Combust_Ice_Amm_Aux_Fuel_Cons_SCE3_t0, Combust_NonIce_Amm_Aux_Fuel_Cons_SCE3_t0, Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE3_t0, Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE3_t0);

SCE3_Aux_Fuel_cons_tm = table(Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tm, Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tm, Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE3_tm, Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE3_tm,...
    Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE3_tm, Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE3_tm, Combust_Ice_LNG_Aux_Fuel_Cons_SCE3_tm, Combust_NonIce_LNG_Aux_Fuel_Cons_SCE3_tm,...
    Combust_Ice_Amm_Aux_Fuel_Cons_SCE3_tm, Combust_NonIce_Amm_Aux_Fuel_Cons_SCE3_tm, Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE3_tm, Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE3_tm);

SCE3_Aux_Fuel_cons_tf = table(Two_Str_Ice_HFO_Aux_Fuel_Cons_SCE3_tf, Two_Str_NonIce_HFO_Aux_Fuel_Cons_SCE3_tf, Two_Str_Ice_LSHFO_Aux_Fuel_Cons_SCE3_tf, Two_Str_NonIce_LSHFO_Aux_Fuel_Cons_SCE3_tf,...
    Two_Str_Ice_MDO_Aux_Fuel_Cons_SCE3_tf, Two_Str_NonIce_MDO_Aux_Fuel_Cons_SCE3_tf, Combust_Ice_LNG_Aux_Fuel_Cons_SCE3_tf, Combust_NonIce_LNG_Aux_Fuel_Cons_SCE3_tf,...
    Combust_Ice_Amm_Aux_Fuel_Cons_SCE3_tf, Combust_NonIce_Amm_Aux_Fuel_Cons_SCE3_tf, Fuel_cell_Ice_Amm_Aux_Fuel_Cons_SCE3_tf, Fuel_cell_NonIce_Amm_Aux_Fuel_Cons_SCE3_tf);

SCE3_Boil_Fuel_cons_t0 = table(Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_t0, Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_t0, Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE3_t0, Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE3_t0,...
    Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE3_t0, Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE3_t0, Combust_Ice_LNG_Boil_Fuel_Cons_SCE3_t0, Combust_NonIce_LNG_Boil_Fuel_Cons_SCE3_t0,...
    Combust_Ice_Amm_Boil_Fuel_Cons_SCE3_t0, Combust_NonIce_Amm_Boil_Fuel_Cons_SCE3_t0, Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE3_t0, Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE3_t0);

SCE3_Boil_Fuel_cons_tm = table(Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tm, Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tm, Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE3_tm, Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE3_tm,...
    Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE3_tm, Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE3_tm, Combust_Ice_LNG_Boil_Fuel_Cons_SCE3_tm, Combust_NonIce_LNG_Boil_Fuel_Cons_SCE3_tm,...
    Combust_Ice_Amm_Boil_Fuel_Cons_SCE3_tm, Combust_NonIce_Amm_Boil_Fuel_Cons_SCE3_tm, Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE3_tm, Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE3_tm);

SCE3_Boil_Fuel_cons_tf = table(Two_Str_Ice_HFO_Boil_Fuel_Cons_SCE3_tf, Two_Str_NonIce_HFO_Boil_Fuel_Cons_SCE3_tf, Two_Str_Ice_LSHFO_Boil_Fuel_Cons_SCE3_tf, Two_Str_NonIce_LSHFO_Boil_Fuel_Cons_SCE3_tf,...
    Two_Str_Ice_MDO_Boil_Fuel_Cons_SCE3_tf, Two_Str_NonIce_MDO_Boil_Fuel_Cons_SCE3_tf, Combust_Ice_LNG_Boil_Fuel_Cons_SCE3_tf, Combust_NonIce_LNG_Boil_Fuel_Cons_SCE3_tf,...
    Combust_Ice_Amm_Boil_Fuel_Cons_SCE3_tf, Combust_NonIce_Amm_Boil_Fuel_Cons_SCE3_tf, Fuel_cell_Ice_Amm_Boil_Fuel_Cons_SCE3_tf, Fuel_cell_NonIce_Amm_Boil_Fuel_Cons_SCE3_tf);
