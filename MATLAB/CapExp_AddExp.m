% by Joseph Lambert
% Version 1.0
% Annualised capital expenditure

function [Cargo_dwt, SCE1_NonIce_Cap_Value_t0, SCE1_NonIce_Cap_Value_tm, SCE1_NonIce_Cap_Value_tf, SCE1_Ice_Cap_Value_t0, SCE1_Ice_Cap_Value_tm, SCE1_Ice_Cap_Value_tf,...
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

%Capital index 
% 1 = 2-stroke Diesel
% 2 = 4 stroke LNG spark ignition
% 3 = 4 stroke NH3 spark ignition
% 4 = Ammonia Fuel cell


if exist('Ice_Container_vessels') == 0
    Ice_Container_vessels = readtable('Input_data\Fleet_registers\Ice_Container_vessels.csv');
end

if exist('NonIce_Container_vessels') == 0
    NonIce_Container_vessels = readtable('Input_data\Fleet_registers\Ice_Container_vessels.csv');
end

if exist('Ice_Bulker_vessels') == 0
    Ice_Bulker_vessels = readtable('Input_data\Fleet_registers\Ice_Bulker_vessels.csv');
end

if exist('NonIce_Bulker_vessels') == 0
    NonIce_Bulker_vessels = readtable('Input_data\Fleet_registers\NonIce_Bulker_vessels.csv');
end

if exist('Ice_Wet_Bulker_vessels') == 0
    Ice_Wet_Bulker_vessels = readtable('Input_data\Fleet_registers\Ice_WetBulker_vessels.csv');
end

if exist('NonIce_Wet_Bulker_vessels') == 0
    NonIce_Wet_Bulker_vessels = readtable('Input_data\Fleet_registers\NonIce_WetBulker_vessels.csv');
end

Class_1A = Ice_Container_vessels.Ice_class_level == 5;
Ice_Container_dwt = Ice_Container_vessels.Dwt(Class_1A); Ice_Container_Price_NB = Ice_Container_vessels.Price_NB(Class_1A); Ice_Container_dwt(isnan(Ice_Container_Price_NB)) = []; Ice_Container_Price_NB(isnan(Ice_Container_Price_NB)) = [];

NonIce_Container_dwt = NonIce_Container_vessels.Dwt; NonIce_Container_Price_NB = NonIce_Container_vessels.Price_NB; NonIce_Container_dwt(isnan(NonIce_Container_Price_NB)) = []; NonIce_Container_Price_NB(isnan(NonIce_Container_Price_NB)) = [];

Ice_Class_Container_level = ones(length(Ice_Container_dwt(:,1)),1); NonIce_Class_Container_level = zeros(length(NonIce_Container_dwt(:,1)),1);

Container_dwt =  log([NonIce_Container_dwt; Ice_Container_dwt]); Container_Price_NB = log([NonIce_Container_Price_NB; Ice_Container_Price_NB]); Class_Container_level = [NonIce_Class_Container_level; Ice_Class_Container_level];

Container_NB_table = table(Container_dwt, Container_Price_NB, Class_Container_level); Container_NB_table.Class_Container_level = categorical(Container_NB_table.Class_Container_level);
x1 = fitlm(Container_NB_table);

Class_1A = Ice_Bulker_vessels.Ice_class_level == 5;
Ice_Bulker_dwt = Ice_Bulker_vessels.Dwt(Class_1A); Ice_Bulker_Price_NB = Ice_Bulker_vessels.Price_NB(Class_1A); Ice_Bulker_dwt(isnan(Ice_Bulker_Price_NB)) = []; Ice_Bulker_Price_NB(isnan(Ice_Bulker_Price_NB)) = [];

NonIce_Bulker_dwt = NonIce_Bulker_vessels.Dwt; NonIce_Bulker_Price_NB = NonIce_Bulker_vessels.Price_NB; NonIce_Bulker_dwt(isnan(NonIce_Bulker_Price_NB)) = []; NonIce_Bulker_Price_NB(isnan(NonIce_Bulker_Price_NB)) = [];

Ice_Class_Bulker_level = ones(length(Ice_Bulker_dwt(:,1)),1); NonIce_Class_Bulker_level = zeros(length(NonIce_Bulker_dwt(:,1)),1);

Class_1A = Ice_Wet_Bulker_vessels.Ice_class_level == 5;
Ice_Wet_Bulker_dwt = Ice_Wet_Bulker_vessels.Dwt(Class_1A); Ice_Wet_Bulker_Price_NB = Ice_Wet_Bulker_vessels.Price_NB(Class_1A); Ice_Wet_Bulker_dwt(isnan(Ice_Wet_Bulker_Price_NB)) = []; Ice_Wet_Bulker_Price_NB(isnan(Ice_Wet_Bulker_Price_NB)) = [];

NonIce_Wet_Bulker_dwt = NonIce_Wet_Bulker_vessels.Dwt; NonIce_Wet_Bulker_Price_NB = NonIce_Wet_Bulker_vessels.Price_NB; NonIce_Wet_Bulker_dwt(isnan(NonIce_Wet_Bulker_Price_NB)) = []; NonIce_Wet_Bulker_Price_NB(isnan(NonIce_Wet_Bulker_Price_NB)) = [];

Ice_Class_Wet_Bulker_level = ones(length(Ice_Wet_Bulker_dwt(:,1)),1); NonIce_Class_Wet_Bulker_level = zeros(length(NonIce_Wet_Bulker_dwt(:,1)),1);

Wet_Bulker_dwt =  [NonIce_Bulker_dwt; NonIce_Wet_Bulker_dwt; Ice_Bulker_dwt; Ice_Wet_Bulker_dwt]; Wet_Bulker_Price_NB = [NonIce_Bulker_Price_NB; NonIce_Wet_Bulker_Price_NB; Ice_Bulker_Price_NB; Ice_Wet_Bulker_Price_NB]; Class_Wet_Bulker_level = [NonIce_Class_Bulker_level; NonIce_Class_Wet_Bulker_level; Ice_Class_Bulker_level; Ice_Class_Wet_Bulker_level];

Wet_Bulker_NB_table = table(Wet_Bulker_dwt, Wet_Bulker_Price_NB, Class_Wet_Bulker_level); Wet_Bulker_NB_table.Class_Wet_Bulker_level = categorical(Wet_Bulker_NB_table.Class_Wet_Bulker_level);
x2 = fitlm(Wet_Bulker_NB_table);



%Will need this to show evidence when writing thesis 
% x1 = fitlm(Ice_Container_array(:,1), Ice_Container_array(:,2));
% x2 = fitlm(NonIce_Container_array(:,1), NonIce_Container_array(:,2));
% p1 = polyfit(Ice_Container_array(:,1), Ice_Container_array(:,2),1);
% p2 = polyfit(NonIce_Container_array(:,1), NonIce_Container_array(:,2),1);


% Ice_CapValue = zeros(height(d),1);
% for i = 1:1:height(d)
%     Ice_CapValue(i) = exp(-0.958 + (0.453.*log(dwt(i))) + 0.304.*1);
% end

Ice_CapValue = zeros(height(d),1);
for i = 1:1:height(d)
    Ice_CapValue(i) = 20.894 + (0.00026133.*dwt(i)) + 1.109.*1;
end
 %Doesn't apply for container ships 

NonIce_CapValue = zeros(height(d),1);
for i = 1:1:height(d)
    NonIce_CapValue(i) = 20.894 + (0.00026133.*dwt(i));
end

for i = 26:1:65
    Ice_CapValue(i) =exp(-3.5677 + 0.69783.*log(dwt(i))+0.080013);
    NonIce_CapValue(i) =exp(-3.5677 + 0.69783.*log(dwt(i)));
end
    
Ice_CapValue = 10.^6.*Ice_CapValue.*ones(length(Ice_CapValue(:,1)),6);
NonIce_CapValue = 10.^6.*NonIce_CapValue.*ones(length(Ice_CapValue(:,1)),6);

%Engine retrofit costs 
Ice_Engine_Unit_Cost_t0 = Engine_Unit_Cost_MW.*((Pow_ice_rat.*d.installed_main_engine_power_kW) + Aux_Pow_ice).*0.001.*Learning_Curve_t0; %Assume auxiliary power changes too
Ice_Engine_Unit_Cost_tm = Engine_Unit_Cost_MW.*((Pow_ice_rat.*d.installed_main_engine_power_kW) + Aux_Pow_ice).*0.001.*Learning_Curve_tm;
Ice_Engine_Unit_Cost_tf = Engine_Unit_Cost_MW.*((Pow_ice_rat.*d.installed_main_engine_power_kW) + Aux_Pow_ice).*0.001.*Learning_Curve_tf;

NonIce_Engine_Unit_Cost_t0 = Engine_Unit_Cost_MW.*(d.installed_main_engine_power_kW + d.installed_auxiliary_power_kW).*0.001.*Learning_Curve_t0;
NonIce_Engine_Unit_Cost_tm = Engine_Unit_Cost_MW.*(d.installed_main_engine_power_kW + d.installed_auxiliary_power_kW).*0.001.*Learning_Curve_tm;
NonIce_Engine_Unit_Cost_tf = Engine_Unit_Cost_MW.*(d.installed_main_engine_power_kW + d.installed_auxiliary_power_kW).*0.001.*Learning_Curve_tf;

%Storage retrofit costs - it doesn't change with time
Ice_Storage_Cost = ((Pow_ice_rat.*d.installed_main_engine_power_kW) + Aux_Pow_ice).*Storage_Cost_kW;
NonIce_Storage_Cost = (d.installed_main_engine_power_kW + d.installed_auxiliary_power_kW).*Storage_Cost_kW;

Ice_CapValue_t0 = Ice_CapValue + Ice_Engine_Unit_Cost_t0 + Ice_Storage_Cost;
Ice_CapValue_tm = Ice_CapValue + Ice_Engine_Unit_Cost_tm + Ice_Storage_Cost;
Ice_CapValue_tf = Ice_CapValue + Ice_Engine_Unit_Cost_tf + Ice_Storage_Cost;

NonIce_CapValue_t0 = NonIce_CapValue + NonIce_Engine_Unit_Cost_t0 + NonIce_Storage_Cost;
NonIce_CapValue_tm = NonIce_CapValue + NonIce_Engine_Unit_Cost_tm + NonIce_Storage_Cost;
NonIce_CapValue_tf = NonIce_CapValue + NonIce_Engine_Unit_Cost_tf + NonIce_Storage_Cost;

Annuity_factor = (1-(1+Loan_Interest_Rate)^-Amortisation_period)./Loan_Interest_Rate;

SCE1_Ice_Cap_Value_t0 = zeros(length(Ice_CapValue_t0(:,1)),3.*length(Ice_CapValue_t0(1,:)));
SCE1_Ice_Cap_Value_tm = zeros(length(Ice_CapValue_tm(:,1)),3.*length(Ice_CapValue_tm(1,:)));
SCE1_Ice_Cap_Value_tf = zeros(length(Ice_CapValue_tf(:,1)),3.*length(Ice_CapValue_tf(1,:)));

for i = 1:1:length(SCE1_Ice_Cap_Value_t0(1,:))
    SCE1_Ice_Cap_Value_t0(:,i) = Ice_CapValue_t0(:,ceil(i./3));
    SCE1_Ice_Cap_Value_tm(:,i) = Ice_CapValue_tm(:,ceil(i./3));
    SCE1_Ice_Cap_Value_tf(:,i) = Ice_CapValue_tf(:,ceil(i./3));
end
    
SCE1_NonIce_Cap_Value_t0 = zeros(length(NonIce_CapValue_t0(:,1)),3.*length(NonIce_CapValue_t0(1,:)));
SCE1_NonIce_Cap_Value_tm = zeros(length(NonIce_CapValue_tm(:,1)),3.*length(NonIce_CapValue_tm(1,:)));
SCE1_NonIce_Cap_Value_tf = zeros(length(NonIce_CapValue_tf(:,1)),3.*length(NonIce_CapValue_tf(1,:)));

for i = 1:1:length(SCE1_NonIce_Cap_Value_t0(1,:))
    SCE1_NonIce_Cap_Value_t0(:,i) = NonIce_CapValue_t0(:,ceil(i./3));
    SCE1_NonIce_Cap_Value_tm(:,i) = NonIce_CapValue_tm(:,ceil(i./3));
    SCE1_NonIce_Cap_Value_tf(:,i) = NonIce_CapValue_tf(:,ceil(i./3));
end
    
SCE2_Ice_Cap_Value_t0 = zeros(length(Ice_CapValue_t0(:,1)),3.*length(Ice_CapValue_t0(1,:)));
SCE2_Ice_Cap_Value_tm = zeros(length(Ice_CapValue_tm(:,1)),3.*length(Ice_CapValue_tm(1,:)));
SCE2_Ice_Cap_Value_tf = zeros(length(Ice_CapValue_tf(:,1)),3.*length(Ice_CapValue_tf(1,:)));

for i = 1:1:length(SCE2_Ice_Cap_Value_t0(1,:))
    SCE2_Ice_Cap_Value_t0(:,i) = Ice_CapValue_t0(:,ceil(i./3));
    SCE2_Ice_Cap_Value_tm(:,i) = Ice_CapValue_tm(:,ceil(i./3));
    SCE2_Ice_Cap_Value_tf(:,i) = Ice_CapValue_tf(:,ceil(i./3));
end
    
SCE2_NonIce_Cap_Value_t0 = zeros(length(NonIce_CapValue_t0(:,1)),3.*length(NonIce_CapValue_t0(1,:)));
SCE2_NonIce_Cap_Value_tm = zeros(length(NonIce_CapValue_tm(:,1)),3.*length(NonIce_CapValue_tm(1,:)));
SCE2_NonIce_Cap_Value_tf = zeros(length(NonIce_CapValue_tf(:,1)),3.*length(NonIce_CapValue_tf(1,:)));

for i = 1:1:length(SCE2_NonIce_Cap_Value_t0(1,:))
    SCE2_NonIce_Cap_Value_t0(:,i) = NonIce_CapValue_t0(:,ceil(i./3));
    SCE2_NonIce_Cap_Value_tm(:,i) = NonIce_CapValue_tm(:,ceil(i./3));
    SCE2_NonIce_Cap_Value_tf(:,i) = NonIce_CapValue_tf(:,ceil(i./3));
end
 
SCE3_Ice_Cap_Value_t0 = Ice_CapValue_t0;
SCE3_Ice_Cap_Value_tm = Ice_CapValue_tm;
SCE3_Ice_Cap_Value_tf = Ice_CapValue_tf;
  
SCE3_NonIce_Cap_Value_t0 = NonIce_CapValue_t0;
SCE3_NonIce_Cap_Value_tm = NonIce_CapValue_tm;
SCE3_NonIce_Cap_Value_tf = NonIce_CapValue_tf;

%Downpayments
SCE1_Ice_Downpayment_Ann_t0 = (SCE1_Ice_Cap_Value_t0.*Capital_Advance)./t;
SCE1_Ice_Downpayment_Ann_tm = (SCE1_Ice_Cap_Value_tm.*Capital_Advance)./t;
SCE1_Ice_Downpayment_Ann_tf = (SCE1_Ice_Cap_Value_tf.*Capital_Advance)./t;

SCE1_NonIce_Downpayment_Ann_t0 = (SCE1_NonIce_Cap_Value_t0.*Capital_Advance)./t;
SCE1_NonIce_Downpayment_Ann_tm = (SCE1_NonIce_Cap_Value_tm.*Capital_Advance)./t;
SCE1_NonIce_Downpayment_Ann_tf = (SCE1_NonIce_Cap_Value_tf.*Capital_Advance)./t;

SCE2_Ice_Downpayment_Ann_t0 = (SCE2_Ice_Cap_Value_t0.*Capital_Advance)./t;
SCE2_Ice_Downpayment_Ann_tm = (SCE2_Ice_Cap_Value_tm.*Capital_Advance)./t;
SCE2_Ice_Downpayment_Ann_tf = (SCE2_Ice_Cap_Value_tf.*Capital_Advance)./t;

SCE2_NonIce_Downpayment_Ann_t0 = (SCE2_NonIce_Cap_Value_t0.*Capital_Advance)./t;
SCE2_NonIce_Downpayment_Ann_tm = (SCE2_NonIce_Cap_Value_tm.*Capital_Advance)./t;
SCE2_NonIce_Downpayment_Ann_tf = (SCE2_NonIce_Cap_Value_tf.*Capital_Advance)./t;

SCE3_Ice_Downpayment_Ann_t0 = (SCE3_Ice_Cap_Value_t0.*Capital_Advance)./t;
SCE3_Ice_Downpayment_Ann_tm = (SCE3_Ice_Cap_Value_tm.*Capital_Advance)./t;
SCE3_Ice_Downpayment_Ann_tf = (SCE3_Ice_Cap_Value_tf.*Capital_Advance)./t;

SCE3_NonIce_Downpayment_Ann_t0 = (SCE3_NonIce_Cap_Value_t0.*Capital_Advance)./t;
SCE3_NonIce_Downpayment_Ann_tm = (SCE3_NonIce_Cap_Value_tm.*Capital_Advance)./t;
SCE3_NonIce_Downpayment_Ann_tf = (SCE3_NonIce_Cap_Value_tf.*Capital_Advance)./t;

%Annuity payments
SCE1_Ice_Annuity_Ann_t0 = (SCE1_Ice_Cap_Value_t0.*(1 - Capital_Advance))./Annuity_factor;
SCE1_Ice_Annuity_Ann_tm = (SCE1_Ice_Cap_Value_tm.*(1 - Capital_Advance))./Annuity_factor;
SCE1_Ice_Annuity_Ann_tf = (SCE1_Ice_Cap_Value_tf.*(1 - Capital_Advance))./Annuity_factor;

SCE1_NonIce_Annuity_Ann_t0 = (SCE1_NonIce_Cap_Value_t0.*(1 - Capital_Advance))./Annuity_factor;
SCE1_NonIce_Annuity_Ann_tm = (SCE1_NonIce_Cap_Value_tm.*(1 - Capital_Advance))./Annuity_factor;
SCE1_NonIce_Annuity_Ann_tf = (SCE1_NonIce_Cap_Value_tf.*(1 - Capital_Advance))./Annuity_factor;

SCE2_Ice_Annuity_Ann_t0 = (SCE2_Ice_Cap_Value_t0.*(1 - Capital_Advance))./Annuity_factor;
SCE2_Ice_Annuity_Ann_tm = (SCE2_Ice_Cap_Value_tm.*(1 - Capital_Advance))./Annuity_factor;
SCE2_Ice_Annuity_Ann_tf = (SCE2_Ice_Cap_Value_tf.*(1 - Capital_Advance))./Annuity_factor;

SCE2_NonIce_Annuity_Ann_t0 = (SCE2_NonIce_Cap_Value_t0.*(1 - Capital_Advance))./Annuity_factor;
SCE2_NonIce_Annuity_Ann_tm = (SCE2_NonIce_Cap_Value_tm.*(1 - Capital_Advance))./Annuity_factor;
SCE2_NonIce_Annuity_Ann_tf = (SCE2_NonIce_Cap_Value_tf.*(1 - Capital_Advance))./Annuity_factor;

SCE3_Ice_Annuity_Ann_t0 = (SCE3_Ice_Cap_Value_t0.*(1 - Capital_Advance))./Annuity_factor;
SCE3_Ice_Annuity_Ann_tm = (SCE3_Ice_Cap_Value_tm.*(1 - Capital_Advance))./Annuity_factor;
SCE3_Ice_Annuity_Ann_tf = (SCE3_Ice_Cap_Value_tf.*(1 - Capital_Advance))./Annuity_factor;

SCE3_NonIce_Annuity_Ann_t0 = (SCE3_NonIce_Cap_Value_t0.*(1 - Capital_Advance))./Annuity_factor;
SCE3_NonIce_Annuity_Ann_tm = (SCE3_NonIce_Cap_Value_tm.*(1 - Capital_Advance))./Annuity_factor;
SCE3_NonIce_Annuity_Ann_tf = (SCE3_NonIce_Cap_Value_tf.*(1 - Capital_Advance))./Annuity_factor;

%Depreciation costs
SCE1_Ice_Dep_Ann_t0 = SCE1_Ice_Cap_Value_t0./t;
SCE1_Ice_Dep_Ann_tm = SCE1_Ice_Cap_Value_tm./t;
SCE1_Ice_Dep_Ann_tf = SCE1_Ice_Cap_Value_tf./t;

SCE1_NonIce_Dep_Ann_t0 = SCE1_NonIce_Cap_Value_t0./t;
SCE1_NonIce_Dep_Ann_tm = SCE1_NonIce_Cap_Value_tm./t;
SCE1_NonIce_Dep_Ann_tf = SCE1_NonIce_Cap_Value_tf./t;

SCE2_Ice_Dep_Ann_t0 = SCE2_Ice_Cap_Value_t0./t;
SCE2_Ice_Dep_Ann_tm = SCE2_Ice_Cap_Value_tm./t;
SCE2_Ice_Dep_Ann_tf = SCE2_Ice_Cap_Value_tf./t;

SCE2_NonIce_Dep_Ann_t0 = SCE2_NonIce_Cap_Value_t0./t;
SCE2_NonIce_Dep_Ann_tm = SCE2_NonIce_Cap_Value_tm./t;
SCE2_NonIce_Dep_Ann_tf = SCE2_NonIce_Cap_Value_tf./t;

SCE3_Ice_Dep_Ann_t0 = SCE3_Ice_Cap_Value_t0./t;
SCE3_Ice_Dep_Ann_tm = SCE3_Ice_Cap_Value_tm./t;
SCE3_Ice_Dep_Ann_tf = SCE3_Ice_Cap_Value_tf./t;

SCE3_NonIce_Dep_Ann_t0 = SCE3_NonIce_Cap_Value_t0./t;
SCE3_NonIce_Dep_Ann_tm = SCE3_NonIce_Cap_Value_tm./t;
SCE3_NonIce_Dep_Ann_tf = SCE3_NonIce_Cap_Value_tf./t;


%Organise the spot rates
Comm_rates_pt = ones(100,1);
Comm_rates_pt(1:25) = Dry_Bulk_Rev_pt;
Comm_rates_pt(26:65) = Container_Rev_pt;
Comm_rates_pt(66:end) = Wet_Bulk_Rev_pt;

%Deadweight loss costs 
Ice_dwt_rev_loss = Comm_rates_pt.*(Ice_dwt_loss + ((Ice_Energy_capacity_kWh./1000).*dwtloss_pMWh));
NonIce_dwt_rev_loss = Comm_rates_pt.*((NonIce_Energy_capacity_kWh./1000).*dwtloss_pMWh);

SCE1_Ice_dwt_rev_loss_t0 = zeros(length(Ice_dwt_rev_loss(:,1)),3.*length(Ice_dwt_rev_loss(1,:)));
for i = 1:1:length(Ice_dwt_rev_loss(1,:))
    SCE1_Ice_dwt_rev_loss_t0(:,(3.*(i-1))+1) = Ice_dwt_rev_loss(:,i); 
    SCE1_Ice_dwt_rev_loss_t0(:,(3.*(i-1))+2) = Ice_dwt_rev_loss(:,i); 
    SCE1_Ice_dwt_rev_loss_t0(:,(3.*(i-1))+3) = Ice_dwt_rev_loss(:,i); 
end

SCE1_Ice_dwt_rev_loss_tm = zeros(length(Ice_dwt_rev_loss(:,1)),3.*length(Ice_dwt_rev_loss(1,:)));
for i = 1:1:length(Ice_dwt_rev_loss(1,:))
    SCE1_Ice_dwt_rev_loss_tm(:,(3.*(i-1))+1) = Ice_dwt_rev_loss(:,i); 
    SCE1_Ice_dwt_rev_loss_tm(:,(3.*(i-1))+2) = Ice_dwt_rev_loss(:,i); 
    SCE1_Ice_dwt_rev_loss_tm(:,(3.*(i-1))+3) = Ice_dwt_rev_loss(:,i); 
end

SCE1_Ice_dwt_rev_loss_tf = zeros(length(Ice_dwt_rev_loss(:,1)),3.*length(Ice_dwt_rev_loss(1,:)));
for i = 1:1:length(Ice_dwt_rev_loss(1,:))
    SCE1_Ice_dwt_rev_loss_tf(:,(3.*(i-1))+1) = Ice_dwt_rev_loss(:,i); 
    SCE1_Ice_dwt_rev_loss_tf(:,(3.*(i-1))+2) = Ice_dwt_rev_loss(:,i); 
    SCE1_Ice_dwt_rev_loss_tf(:,(3.*(i-1))+3) = Ice_dwt_rev_loss(:,i); 
end

SCE1_NonIce_dwt_rev_loss_t0 = zeros(length(NonIce_dwt_rev_loss(:,1)),3.*length(NonIce_dwt_rev_loss(1,:)));
for i = 1:1:length(NonIce_dwt_rev_loss(1,:))
    SCE1_NonIce_dwt_rev_loss_t0(:,(3.*(i-1))+1) = NonIce_dwt_rev_loss(:,i); 
    SCE1_NonIce_dwt_rev_loss_t0(:,(3.*(i-1))+2) = NonIce_dwt_rev_loss(:,i); 
    SCE1_NonIce_dwt_rev_loss_t0(:,(3.*(i-1))+3) = NonIce_dwt_rev_loss(:,i); 
end

SCE1_NonIce_dwt_rev_loss_tm = zeros(length(NonIce_dwt_rev_loss(:,1)),3.*length(NonIce_dwt_rev_loss(1,:)));
for i = 1:1:length(NonIce_dwt_rev_loss(1,:))
    SCE1_NonIce_dwt_rev_loss_tm(:,(3.*(i-1))+1) = NonIce_dwt_rev_loss(:,i); 
    SCE1_NonIce_dwt_rev_loss_tm(:,(3.*(i-1))+2) = NonIce_dwt_rev_loss(:,i); 
    SCE1_NonIce_dwt_rev_loss_tm(:,(3.*(i-1))+3) = NonIce_dwt_rev_loss(:,i); 
end

SCE1_NonIce_dwt_rev_loss_tf = zeros(length(NonIce_dwt_rev_loss(:,1)),3.*length(NonIce_dwt_rev_loss(1,:)));
for i = 1:1:length(NonIce_dwt_rev_loss(1,:))
    SCE1_NonIce_dwt_rev_loss_tf(:,(3.*(i-1))+1) = NonIce_dwt_rev_loss(:,i); 
    SCE1_NonIce_dwt_rev_loss_tf(:,(3.*(i-1))+2) = NonIce_dwt_rev_loss(:,i); 
    SCE1_NonIce_dwt_rev_loss_tf(:,(3.*(i-1))+3) = NonIce_dwt_rev_loss(:,i); 
end

SCE2_Ice_dwt_rev_loss_t0 = zeros(length(Ice_dwt_rev_loss(:,1)),3.*length(Ice_dwt_rev_loss(1,:)));
for i = 1:1:length(Ice_dwt_rev_loss(1,:))
    SCE2_Ice_dwt_rev_loss_t0(:,(3.*(i-1))+1) = Ice_dwt_rev_loss(:,i); 
    SCE2_Ice_dwt_rev_loss_t0(:,(3.*(i-1))+2) = Ice_dwt_rev_loss(:,i); 
    SCE2_Ice_dwt_rev_loss_t0(:,(3.*(i-1))+3) = Ice_dwt_rev_loss(:,i); 
end

SCE2_Ice_dwt_rev_loss_tm = zeros(length(Ice_dwt_rev_loss(:,1)),3.*length(Ice_dwt_rev_loss(1,:)));
for i = 1:1:length(Ice_dwt_rev_loss(1,:))
    SCE2_Ice_dwt_rev_loss_tm(:,(3.*(i-1))+1) = Ice_dwt_rev_loss(:,i); 
    SCE2_Ice_dwt_rev_loss_tm(:,(3.*(i-1))+2) = Ice_dwt_rev_loss(:,i); 
    SCE2_Ice_dwt_rev_loss_tm(:,(3.*(i-1))+3) = Ice_dwt_rev_loss(:,i); 
end

SCE2_Ice_dwt_rev_loss_tf = zeros(length(Ice_dwt_rev_loss(:,1)),3.*length(Ice_dwt_rev_loss(1,:)));
for i = 1:1:length(Ice_dwt_rev_loss(1,:))
    SCE2_Ice_dwt_rev_loss_tf(:,(3.*(i-1))+1) = Ice_dwt_rev_loss(:,i); 
    SCE2_Ice_dwt_rev_loss_tf(:,(3.*(i-1))+2) = Ice_dwt_rev_loss(:,i); 
    SCE2_Ice_dwt_rev_loss_tf(:,(3.*(i-1))+3) = Ice_dwt_rev_loss(:,i); 
end

SCE2_NonIce_dwt_rev_loss_t0 = zeros(length(NonIce_dwt_rev_loss(:,1)),3.*length(NonIce_dwt_rev_loss(1,:)));
for i = 1:1:length(NonIce_dwt_rev_loss(1,:))
    SCE2_NonIce_dwt_rev_loss_t0(:,(3.*(i-1))+1) = NonIce_dwt_rev_loss(:,i); 
    SCE2_NonIce_dwt_rev_loss_t0(:,(3.*(i-1))+2) = NonIce_dwt_rev_loss(:,i); 
    SCE2_NonIce_dwt_rev_loss_t0(:,(3.*(i-1))+3) = NonIce_dwt_rev_loss(:,i); 
end

SCE2_NonIce_dwt_rev_loss_tm = zeros(length(NonIce_dwt_rev_loss(:,1)),3.*length(NonIce_dwt_rev_loss(1,:)));
for i = 1:1:length(NonIce_dwt_rev_loss(1,:))
    SCE2_NonIce_dwt_rev_loss_tm(:,(3.*(i-1))+1) = NonIce_dwt_rev_loss(:,i); 
    SCE2_NonIce_dwt_rev_loss_tm(:,(3.*(i-1))+2) = NonIce_dwt_rev_loss(:,i); 
    SCE2_NonIce_dwt_rev_loss_tm(:,(3.*(i-1))+3) = NonIce_dwt_rev_loss(:,i); 
end

SCE2_NonIce_dwt_rev_loss_tf = zeros(length(NonIce_dwt_rev_loss(:,1)),3.*length(NonIce_dwt_rev_loss(1,:)));
for i = 1:1:length(NonIce_dwt_rev_loss(1,:))
    SCE2_NonIce_dwt_rev_loss_tf(:,(3.*(i-1))+1) = NonIce_dwt_rev_loss(:,i); 
    SCE2_NonIce_dwt_rev_loss_tf(:,(3.*(i-1))+2) = NonIce_dwt_rev_loss(:,i); 
    SCE2_NonIce_dwt_rev_loss_tf(:,(3.*(i-1))+3) = NonIce_dwt_rev_loss(:,i); 
end

SCE3_Ice_dwt_rev_loss = Ice_dwt_rev_loss;
SCE3_NonIce_dwt_rev_loss = NonIce_dwt_rev_loss;

%Deadweight loss 
Ice_dwt = dwt - (Ice_dwt_loss + ((Ice_Energy_capacity_kWh./1000).*dwtloss_pMWh));
NonIce_dwt = dwt - (((NonIce_Energy_capacity_kWh./1000).*dwtloss_pMWh));

SCE1_Ice_dwt = Ice_dwt;
SCE1_NonIce_dwt = NonIce_dwt;

SCE2_Ice_dwt = Ice_dwt;
SCE2_NonIce_dwt = NonIce_dwt;

SCE3_Ice_dwt = Ice_dwt;
SCE3_NonIce_dwt = NonIce_dwt;

Cargo_dwt = dwt;

%Sum together

SCE1_Ice_Total_CapEx_t0 = SCE1_Ice_Downpayment_Ann_t0 + SCE1_Ice_Annuity_Ann_t0 + SCE1_Ice_Dep_Ann_t0;
SCE1_Ice_Total_CapEx_tm = SCE1_Ice_Downpayment_Ann_tm + SCE1_Ice_Annuity_Ann_tm + SCE1_Ice_Dep_Ann_tm;
SCE1_Ice_Total_CapEx_tf = SCE1_Ice_Downpayment_Ann_tf + SCE1_Ice_Annuity_Ann_tf + SCE1_Ice_Dep_Ann_tf;

SCE1_NonIce_Total_CapEx_t0 = SCE1_NonIce_Downpayment_Ann_t0 + SCE1_NonIce_Annuity_Ann_t0 + SCE1_NonIce_Dep_Ann_t0;
SCE1_NonIce_Total_CapEx_tm = SCE1_NonIce_Downpayment_Ann_tm + SCE1_NonIce_Annuity_Ann_tm + SCE1_NonIce_Dep_Ann_tm;
SCE1_NonIce_Total_CapEx_tf = SCE1_NonIce_Downpayment_Ann_tf + SCE1_NonIce_Annuity_Ann_tf + SCE1_NonIce_Dep_Ann_tf;

SCE2_Ice_Total_CapEx_t0 = SCE2_Ice_Downpayment_Ann_t0 + SCE2_Ice_Annuity_Ann_t0 + SCE2_Ice_Dep_Ann_t0;
SCE2_Ice_Total_CapEx_tm = SCE2_Ice_Downpayment_Ann_tm + SCE2_Ice_Annuity_Ann_tm + SCE2_Ice_Dep_Ann_tm;
SCE2_Ice_Total_CapEx_tf = SCE2_Ice_Downpayment_Ann_tf + SCE2_Ice_Annuity_Ann_tf + SCE2_Ice_Dep_Ann_tf;

SCE2_NonIce_Total_CapEx_t0 = SCE2_NonIce_Downpayment_Ann_t0 + SCE2_NonIce_Annuity_Ann_t0 + SCE2_NonIce_Dep_Ann_t0;
SCE2_NonIce_Total_CapEx_tm = SCE2_NonIce_Downpayment_Ann_tm + SCE2_NonIce_Annuity_Ann_tm + SCE2_NonIce_Dep_Ann_tm;
SCE2_NonIce_Total_CapEx_tf = SCE2_NonIce_Downpayment_Ann_tf + SCE2_NonIce_Annuity_Ann_tf + SCE2_NonIce_Dep_Ann_tf;

SCE3_Ice_Total_CapEx_t0 = SCE3_Ice_Downpayment_Ann_t0 + SCE3_Ice_Annuity_Ann_t0 + SCE3_Ice_Dep_Ann_t0;
SCE3_Ice_Total_CapEx_tm = SCE3_Ice_Downpayment_Ann_tm + SCE3_Ice_Annuity_Ann_tm + SCE3_Ice_Dep_Ann_tm;
SCE3_Ice_Total_CapEx_tf = SCE3_Ice_Downpayment_Ann_tf + SCE3_Ice_Annuity_Ann_tf + SCE3_Ice_Dep_Ann_tf;

SCE3_NonIce_Total_CapEx_t0 = SCE3_NonIce_Downpayment_Ann_t0 + SCE3_NonIce_Annuity_Ann_t0 + SCE3_NonIce_Dep_Ann_t0;
SCE3_NonIce_Total_CapEx_tm = SCE3_NonIce_Downpayment_Ann_tm + SCE3_NonIce_Annuity_Ann_tm + SCE3_NonIce_Dep_Ann_tm;
SCE3_NonIce_Total_CapEx_tf = SCE3_NonIce_Downpayment_Ann_tf + SCE3_NonIce_Annuity_Ann_tf + SCE3_NonIce_Dep_Ann_tf;

%Additional operating expense for fuel cells 
Ice_AddOpEx_t0 = 0.001.*TLC_PA_MW.*((Pow_ice_rat.*d.installed_main_engine_power_kW) + Aux_Pow_ice).*Learning_Curve_t0;
NonIce_AddOpEx_t0 = 0.001.*TLC_PA_MW.*(d.installed_main_engine_power_kW + d.installed_auxiliary_power_kW).*Learning_Curve_t0;

Ice_AddOpEx_tm = 0.001.*TLC_PA_MW.*((Pow_ice_rat.*d.installed_main_engine_power_kW) + Aux_Pow_ice).*Learning_Curve_tm;
NonIce_AddOpEx_tm = 0.001.*TLC_PA_MW.*(d.installed_main_engine_power_kW + d.installed_auxiliary_power_kW).*Learning_Curve_tm;

Ice_AddOpEx_tf = 0.001.*TLC_PA_MW.*((Pow_ice_rat.*d.installed_main_engine_power_kW) + Aux_Pow_ice).*Learning_Curve_tf;
NonIce_AddOpEx_tf = 0.001.*TLC_PA_MW.*(d.installed_main_engine_power_kW + d.installed_auxiliary_power_kW).*Learning_Curve_tf;

SCE1_Ice_AddOpex_t0 = zeros(length(Ice_AddOpEx_t0(:,1)),3.*length(Ice_AddOpEx_t0(1,:)));
SCE1_Ice_AddOpex_tm = zeros(length(Ice_AddOpEx_tm(:,1)),3.*length(Ice_AddOpEx_tm(1,:)));
SCE1_Ice_AddOpex_tf = zeros(length(Ice_AddOpEx_tf(:,1)),3.*length(Ice_AddOpEx_tf(1,:)));

SCE1_NonIce_AddOpex_t0 = zeros(length(NonIce_AddOpEx_t0(:,1)),3.*length(NonIce_AddOpEx_t0(1,:)));
SCE1_NonIce_AddOpex_tm = zeros(length(NonIce_AddOpEx_tm(:,1)),3.*length(NonIce_AddOpEx_tm(1,:)));
SCE1_NonIce_AddOpex_tf = zeros(length(NonIce_AddOpEx_tf(:,1)),3.*length(NonIce_AddOpEx_tf(1,:)));

for i = 1:1:length(SCE1_Ice_AddOpex_t0(1,:))
    SCE1_Ice_AddOpex_t0(:,i) = Ice_AddOpEx_t0(:,ceil(i./3));
    SCE1_Ice_AddOpex_tm(:,i) = Ice_AddOpEx_tm(:,ceil(i./3));
    SCE1_Ice_AddOpex_tf(:,i) = Ice_AddOpEx_tf(:,ceil(i./3));
    
    SCE1_NonIce_AddOpex_t0(:,i) = NonIce_AddOpEx_t0(:,ceil(i./3));
    SCE1_NonIce_AddOpex_tm(:,i) = NonIce_AddOpEx_tm(:,ceil(i./3));
    SCE1_NonIce_AddOpex_tf(:,i) = NonIce_AddOpEx_tf(:,ceil(i./3));    
end
    

SCE2_Ice_AddOpex_t0 = zeros(length(Ice_AddOpEx_t0(:,1)),3.*length(Ice_AddOpEx_t0(1,:)));
SCE2_Ice_AddOpex_tm = zeros(length(Ice_AddOpEx_tm(:,1)),3.*length(Ice_AddOpEx_tm(1,:)));
SCE2_Ice_AddOpex_tf = zeros(length(Ice_AddOpEx_tf(:,1)),3.*length(Ice_AddOpEx_tf(1,:)));

SCE2_NonIce_AddOpex_t0 = zeros(length(NonIce_AddOpEx_t0(:,1)),3.*length(NonIce_AddOpEx_t0(1,:)));
SCE2_NonIce_AddOpex_tm = zeros(length(NonIce_AddOpEx_tm(:,1)),3.*length(NonIce_AddOpEx_tm(1,:)));
SCE2_NonIce_AddOpex_tf = zeros(length(NonIce_AddOpEx_tf(:,1)),3.*length(NonIce_AddOpEx_tf(1,:)));

for i = 1:1:length(SCE2_Ice_AddOpex_t0(1,:))
    SCE2_Ice_AddOpex_t0(:,i) = Ice_AddOpEx_t0(:,ceil(i./3));
    SCE2_Ice_AddOpex_tm(:,i) = Ice_AddOpEx_tm(:,ceil(i./3));
    SCE2_Ice_AddOpex_tf(:,i) = Ice_AddOpEx_tf(:,ceil(i./3));
    
    SCE2_NonIce_AddOpex_t0(:,i) = NonIce_AddOpEx_t0(:,ceil(i./3));
    SCE2_NonIce_AddOpex_tm(:,i) = NonIce_AddOpEx_tm(:,ceil(i./3));
    SCE2_NonIce_AddOpex_tf(:,i) = NonIce_AddOpEx_tf(:,ceil(i./3));    
end

SCE3_Ice_AddOpex_t0 = Ice_AddOpEx_t0; SCE3_NonIce_AddOpex_t0 = NonIce_AddOpEx_t0;
SCE3_Ice_AddOpex_tm = Ice_AddOpEx_tm; SCE3_NonIce_AddOpex_tm = NonIce_AddOpEx_tm;
SCE3_Ice_AddOpex_tf = Ice_AddOpEx_tf; SCE3_NonIce_AddOpex_tf = NonIce_AddOpEx_tf;





