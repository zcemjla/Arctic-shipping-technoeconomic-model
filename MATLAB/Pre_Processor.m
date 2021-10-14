function [Ice_dwt_loss, Boil_cons, Pow_ice_rat, Pow_Nonice, Pow_ice, Aux_Pow_ice_rat, Aux_Pow_ice, gt, Ice_gt, IMO_type, IMO_size, SCE3_Suez_nav_d, Ice_dwt] = Pre_Processor(d,dwt);


%This function preprocesses the inputs to acquire more specifications about
%the vessel by categorising it

%Numbers are obtained from Pisces and IMO 3rd GHG study
%Dry Bulkers
if exist('Ice_Dry_Bulk_vessels') == 0
    Ice_Dry_Bulk_vessels = readtable('Input_data\Fleet_registers\Ice_Bulker_vessels.csv');
end

if exist('NonIce_Dry_Bulk_vessels') == 0
    NonIce_Dry_Bulk_vessels = readtable('Input_data\Fleet_registers\NonIce_Bulker_vessels.csv');
end

if exist('Ice_Container_vessels') == 0
    Ice_Container_vessels = readtable('Input_data\Fleet_registers\Ice_Container_vessels.csv');
end

if exist('NonIce_Container_vessels') == 0
    NonIce_Container_vessels = readtable('Input_data\Fleet_registers\NonIce_Container_vessels.csv');
end

if exist('Ice_Wet_Bulk_vessels') == 0
    Ice_Wet_Bulk_vessels = readtable('Input_data\Fleet_registers\Ice_WetBulker_vessels.csv');
end

if exist('NonIce_Wet_Bulk_vessels') == 0
    NonIce_Wet_Bulk_vessels = readtable('Input_data\Fleet_registers\NonIce_WetBulker_vessels.csv');
end

if exist('bulker_cont_IHS_specs') == 0
    bulker_cont_IHS_specs = readtable('Input_data\Fleet_registers\bulker_cont_IHS_specs.csv');
end

%Sorting out and tidying the data
Class_1A = Ice_Dry_Bulk_vessels.Ice_class_level == 5; %Notation
Dry_Bulk_Ice_power = Ice_Dry_Bulk_vessels.MainEngine1_mkW_(Class_1A); Dry_Bulk_Ice_Aux_power = Ice_Dry_Bulk_vessels.AuxiliaryEngine1_mkW_(Class_1A); 
Dry_Bulk_Ice_GT = Ice_Dry_Bulk_vessels.GT(Class_1A); Dry_Bulk_Ice_dwt = Ice_Dry_Bulk_vessels.Dwt(Class_1A); Dry_Bulk_Ice_dwt_Aux = Ice_Dry_Bulk_vessels.Dwt(Class_1A);
[Dry_Bulk_Ice_dwt,dwt_Indices] = rmmissing(Dry_Bulk_Ice_dwt); Dry_Bulk_Ice_power(dwt_Indices) = [];
Dry_Bulk_Ice_power = sort(Dry_Bulk_Ice_power); 
Dry_Bulk_Ice_GT(dwt_Indices) = []; Dry_Bulk_Ice_GT = sort(Dry_Bulk_Ice_GT); Dry_Bulk_Ice_dwt = sort(Dry_Bulk_Ice_dwt);
Dry_Bulk_Ice_Ice_class_level = Ice_Dry_Bulk_vessels.Ice_class_level(Class_1A)./5;
[Dry_Bulk_Ice_Aux_power,dwt_Aux_Indices] = rmmissing(Dry_Bulk_Ice_Aux_power);
Dry_Bulk_Ice_dwt_Aux(dwt_Aux_Indices) = []; Dry_Bulk_Ice_dwt_Aux = sort(Dry_Bulk_Ice_dwt_Aux); Dry_Bulk_Ice_Aux_power = sort(Dry_Bulk_Ice_Aux_power); Dry_Bulk_Ice_Ice_Class_level_Aux = 1.*ones(length(Dry_Bulk_Ice_dwt_Aux(:,1)),1);

Dry_Bulk_NonIce_power = NonIce_Dry_Bulk_vessels.MainEngine1_mkW_; Dry_Bulk_NonIce_Aux_power = NonIce_Dry_Bulk_vessels.AuxiliaryEngine1_mkW_;
Dry_Bulk_NonIce_GT = NonIce_Dry_Bulk_vessels.GT; Dry_Bulk_NonIce_dwt = NonIce_Dry_Bulk_vessels.Dwt; 
Dry_Bulk_NonIce_dwt_Aux = NonIce_Dry_Bulk_vessels.Dwt; [Dry_Bulk_NonIce_dwt,dwt_Indices] = rmmissing(Dry_Bulk_NonIce_dwt);
Dry_Bulk_NonIce_power(dwt_Indices) = []; Dry_Bulk_NonIce_power = sort(Dry_Bulk_NonIce_power); 
Dry_Bulk_NonIce_GT(dwt_Indices) = []; Dry_Bulk_NonIce_GT = sort(Dry_Bulk_NonIce_GT);
Dry_Bulk_NonIce_dwt = sort(Dry_Bulk_NonIce_dwt); [Dry_Bulk_NonIce_Aux_power,dwt_Aux_Indices] = rmmissing(Dry_Bulk_NonIce_Aux_power);
Dry_Bulk_NonIce_dwt_Aux(dwt_Aux_Indices) = []; Dry_Bulk_NonIce_dwt_Aux = sort(Dry_Bulk_NonIce_dwt_Aux); Dry_Bulk_NonIce_Aux_power = sort(Dry_Bulk_NonIce_Aux_power);

Bulker_IHS = bulker_cont_IHS_specs(strcmp('Bulk carrier',bulker_cont_IHS_specs.ship_type_standardized(:)),:); 

Dry_Bulk_NonIce_power = Bulker_IHS.eng_total_kw;
Dry_Bulk_NonIce_dwt = Bulker_IHS.deadweight;
Dry_Bulk_NonIce_GT = Bulker_IHS.gross_tonnage;

Dry_Bulk_NonIce_Ice_Class_level = zeros(length(Dry_Bulk_NonIce_dwt),1);
Dry_Bulk_NonIce_Ice_Class_level_Aux = zeros(length(Dry_Bulk_NonIce_dwt_Aux),1);
Dry_Bulk_dwt = log([Dry_Bulk_NonIce_dwt; Dry_Bulk_Ice_dwt]);
Dry_Bulk_dwt_Aux = log([Dry_Bulk_NonIce_dwt_Aux; Dry_Bulk_Ice_dwt_Aux]);
Dry_Bulk_GT = log([Dry_Bulk_NonIce_GT; Dry_Bulk_Ice_GT]);
Dry_Bulk_Ice_Class_Level = [Dry_Bulk_NonIce_Ice_Class_level; Dry_Bulk_Ice_Ice_class_level];
Dry_Bulk_Ice_Class_Level_Aux = [Dry_Bulk_NonIce_Ice_Class_level_Aux; Dry_Bulk_Ice_Ice_Class_level_Aux];

%Bringing the data together 
Dry_Bulk_dwt_Table = table(Dry_Bulk_GT, Dry_Bulk_dwt, Dry_Bulk_Ice_Class_Level);
Dry_Bulk_dwt_Table.Dry_Bulk_Ice_Class_Level = categorical(Dry_Bulk_dwt_Table.Dry_Bulk_Ice_Class_Level);

Dry_Bulk_power = log([Dry_Bulk_NonIce_power; Dry_Bulk_Ice_power]);
Dry_Bulk_Aux_power = log([Dry_Bulk_NonIce_Aux_power; Dry_Bulk_Ice_Aux_power]);

Dry_Bulk_power_Table = table(Dry_Bulk_dwt,Dry_Bulk_power, Dry_Bulk_Ice_Class_Level);
Dry_Bulk_power_Table.Dry_Bulk_Ice_Class_Level = categorical(Dry_Bulk_power_Table.Dry_Bulk_Ice_Class_Level);

Dry_Bulk_Aux_power_Table = table(Dry_Bulk_dwt_Aux,Dry_Bulk_Aux_power, Dry_Bulk_Ice_Class_Level_Aux);
Dry_Bulk_Aux_power_Table.Dry_Bulk_Ice_Class_Level_Aux = categorical(Dry_Bulk_Aux_power_Table.Dry_Bulk_Ice_Class_Level_Aux);


X = [Bulker_IHS.length_overall, Bulker_IHS.service_speed, Bulker_IHS.deadweight];
Bulker_IHS_Model = fitlm(X, Bulker_IHS.eng_total_kw);

%Containers
Class_1A = Ice_Container_vessels.Ice_class_level == 5;
Container_Ice_power = Ice_Container_vessels.MainEngine1_mkW_(Class_1A); Container_Ice_Aux_power = Ice_Container_vessels.AuxiliaryEngine1_mkW_(Class_1A);
Container_Ice_GT = Ice_Container_vessels.GT(Class_1A); Container_Ice_dwt = Ice_Container_vessels.Dwt(Class_1A); Container_Ice_dwt_Aux = Ice_Container_vessels.Dwt(Class_1A);
[Container_Ice_dwt,dwt_Indices] = rmmissing(Container_Ice_dwt); Container_Ice_power(dwt_Indices) = []; Container_Ice_power = sort(Container_Ice_power); 
Container_Ice_GT(dwt_Indices) = []; Container_Ice_GT = sort(Container_Ice_GT); Container_Ice_dwt = sort(Container_Ice_dwt);
[Container_Ice_Aux_power,dwt_Aux_Indices] = rmmissing(Container_Ice_Aux_power); Container_Ice_dwt_Aux(dwt_Aux_Indices) = [];
Container_Ice_dwt_Aux = sort(Container_Ice_dwt_Aux); Container_Ice_Aux_power = sort(Container_Ice_Aux_power);
Container_Ice_Ice_Class_level = Ice_Container_vessels.Ice_class_level(Class_1A)./5; Container_Ice_Ice_Class_level_Aux = 1.*ones(length(Container_Ice_dwt_Aux(:,1)),1);

Container_NonIce_power = NonIce_Container_vessels.MainEngine1_mkW_; Container_NonIce_Aux_power = NonIce_Container_vessels.AuxiliaryEngine1_mkW_;
Container_NonIce_GT = NonIce_Container_vessels.GT; Container_NonIce_dwt = NonIce_Container_vessels.Dwt;
Container_NonIce_dwt_Aux = NonIce_Container_vessels.Dwt; [Container_NonIce_dwt,dwt_Indices] = rmmissing(Container_NonIce_dwt);
Container_NonIce_power(dwt_Indices) = []; Container_NonIce_power = sort(Container_NonIce_power); 
Container_NonIce_GT(dwt_Indices) = []; Container_NonIce_GT = sort(Container_NonIce_GT); Container_NonIce_dwt = sort(Container_NonIce_dwt); [Container_NonIce_Aux_power,dwt_Aux_Indices] = rmmissing(Container_NonIce_Aux_power);
Container_NonIce_dwt_Aux(dwt_Aux_Indices) = []; Container_NonIce_dwt_Aux = sort(Container_NonIce_dwt_Aux); Container_NonIce_Aux_power = sort(Container_NonIce_Aux_power);

%IHS
Container_IHS = bulker_cont_IHS_specs(strcmp('Container',bulker_cont_IHS_specs.ship_type_standardized(:)),:); 

Container_NonIce_power = Container_IHS.eng_total_kw;
Container_NonIce_dwt = Container_IHS.deadweight;
Container_NonIce_GT = Container_IHS.gross_tonnage;

Container_NonIce_Ice_Class_level = zeros(length(Container_NonIce_dwt),1); Container_NonIce_Ice_Class_level_Aux = zeros(length(Container_NonIce_dwt_Aux),1);
Container_dwt = log([Container_NonIce_dwt; Container_Ice_dwt]); Container_dwt_Aux = log([Container_NonIce_dwt_Aux; Container_Ice_dwt_Aux]); 
Container_GT = log([Container_NonIce_GT; Container_Ice_GT]); Container_Ice_Class_Level = [Container_NonIce_Ice_Class_level; Container_Ice_Ice_Class_level];
Container_Ice_Class_Level_Aux = [Container_NonIce_Ice_Class_level_Aux; Container_Ice_Ice_Class_level_Aux];

Container_dwt_Table = table(Container_GT, Container_dwt, Container_Ice_Class_Level); Container_dwt_Table.Container_Ice_Class_Level = categorical(Container_dwt_Table.Container_Ice_Class_Level);

Container_power = log([Container_NonIce_power; Container_Ice_power]); Container_Aux_power = log([Container_NonIce_Aux_power; Container_Ice_Aux_power]);

Container_power_Table = table(Container_dwt,Container_power, Container_Ice_Class_Level);
Container_power_Table.Container_Ice_Class_Level = categorical(Container_power_Table.Container_Ice_Class_Level);

Container_Aux_power_Table = table(Container_dwt_Aux,Container_Aux_power, Container_Ice_Class_Level_Aux);
Container_Aux_power_Table.Container_Ice_Class_Level_Aux = categorical(Container_Aux_power_Table.Container_Ice_Class_Level_Aux);



X = [Container_IHS.length_overall, Container_IHS.service_speed, Container_IHS.deadweight];
Container_IHS_Model = fitlm(X, Container_IHS.eng_total_kw);

%Wet Bulkers
Class_1A = Ice_Wet_Bulk_vessels.Ice_class_level == 5;
Wet_Bulk_Ice_power = Ice_Wet_Bulk_vessels.MainEngine1_mkW_(Class_1A); Wet_Bulk_Ice_Aux_power = Ice_Wet_Bulk_vessels.AuxiliaryEngine1_mkW_(Class_1A); 
Wet_Bulk_Ice_GT = Ice_Wet_Bulk_vessels.GT(Class_1A); Wet_Bulk_Ice_dwt = Ice_Wet_Bulk_vessels.Dwt(Class_1A); Wet_Bulk_Ice_dwt_Aux = Ice_Wet_Bulk_vessels.Dwt(Class_1A);
[Wet_Bulk_Ice_dwt,dwt_Indices] = rmmissing(Wet_Bulk_Ice_dwt); Wet_Bulk_Ice_power(dwt_Indices) = []; Wet_Bulk_Ice_power = sort(Wet_Bulk_Ice_power); 
Wet_Bulk_Ice_GT(dwt_Indices) = []; Wet_Bulk_Ice_GT = sort(Wet_Bulk_Ice_GT); Wet_Bulk_Ice_dwt = sort(Wet_Bulk_Ice_dwt);
Wet_Bulk_Ice_Ice_class_level = Ice_Wet_Bulk_vessels.Ice_class_level(Class_1A)./5; [Wet_Bulk_Ice_Aux_power,dwt_Aux_Indices] = rmmissing(Wet_Bulk_Ice_Aux_power);
Wet_Bulk_Ice_dwt_Aux(dwt_Aux_Indices) = []; Wet_Bulk_Ice_dwt_Aux = sort(Wet_Bulk_Ice_dwt_Aux); Wet_Bulk_Ice_Aux_power = sort(Wet_Bulk_Ice_Aux_power);
Wet_Bulk_Ice_Ice_Class_level_Aux = 1.*ones(length(Wet_Bulk_Ice_dwt_Aux(:,1)),1);

Wet_Bulk_NonIce_power = NonIce_Wet_Bulk_vessels.MainEngine1_mkW_; Wet_Bulk_NonIce_Aux_power = NonIce_Wet_Bulk_vessels.AuxiliaryEngine1_mkW_; Wet_Bulk_NonIce_GT = NonIce_Wet_Bulk_vessels.GT;
Wet_Bulk_NonIce_dwt = NonIce_Wet_Bulk_vessels.Dwt; Wet_Bulk_NonIce_dwt_Aux = NonIce_Wet_Bulk_vessels.Dwt; [Wet_Bulk_NonIce_dwt,dwt_Indices] = rmmissing(Wet_Bulk_NonIce_dwt);
Wet_Bulk_NonIce_power(dwt_Indices) = []; Wet_Bulk_NonIce_power = sort(Wet_Bulk_NonIce_power); 
Wet_Bulk_NonIce_GT(dwt_Indices) = []; Wet_Bulk_NonIce_GT = sort(Wet_Bulk_NonIce_GT); Wet_Bulk_NonIce_dwt = sort(Wet_Bulk_NonIce_dwt);
[Wet_Bulk_NonIce_Aux_power,dwt_Aux_Indices] = rmmissing(Wet_Bulk_NonIce_Aux_power); 
Wet_Bulk_NonIce_dwt_Aux(dwt_Aux_Indices) = []; Wet_Bulk_NonIce_dwt_Aux = sort(Wet_Bulk_NonIce_dwt_Aux); Wet_Bulk_NonIce_Aux_power = sort(Wet_Bulk_NonIce_Aux_power);

Wet_Bulker_IHS_logic = logical(strcmp('Oil tanker',bulker_cont_IHS_specs.ship_type_standardized(:)) + strcmp('Chemical tanker',bulker_cont_IHS_specs.ship_type_standardized(:)));
Wet_Bulker_IHS = bulker_cont_IHS_specs(Wet_Bulker_IHS_logic,:); 

Wet_Bulk_NonIce_power = Wet_Bulker_IHS.eng_total_kw;
Wet_Bulk_NonIce_dwt = Wet_Bulker_IHS.deadweight;
Wet_Bulk_NonIce_GT = Wet_Bulker_IHS.gross_tonnage;

Wet_Bulk_NonIce_Ice_Class_level = zeros(length(Wet_Bulk_NonIce_dwt),1); Wet_Bulk_NonIce_Ice_Class_level_Aux = zeros(length(Wet_Bulk_NonIce_dwt_Aux),1);
Wet_Bulk_dwt = log([Wet_Bulk_NonIce_dwt; Wet_Bulk_Ice_dwt]); Wet_Bulk_dwt_Aux = log([Wet_Bulk_NonIce_dwt_Aux; Wet_Bulk_Ice_dwt_Aux]); Wet_Bulk_GT = log([Wet_Bulk_NonIce_GT; Wet_Bulk_Ice_GT]);
Wet_Bulk_Ice_Class_Level = [Wet_Bulk_NonIce_Ice_Class_level; Wet_Bulk_Ice_Ice_class_level]; Wet_Bulk_Ice_Class_Level_Aux = [Wet_Bulk_NonIce_Ice_Class_level_Aux; Wet_Bulk_Ice_Ice_Class_level_Aux];

Wet_Bulk_dwt_Table = table(Wet_Bulk_GT, Wet_Bulk_dwt, Wet_Bulk_Ice_Class_Level);
Wet_Bulk_dwt_Table.Wet_Bulk_Ice_Class_Level = categorical(Wet_Bulk_dwt_Table.Wet_Bulk_Ice_Class_Level);

Wet_Bulk_power = log([Wet_Bulk_NonIce_power; Wet_Bulk_Ice_power]);
Wet_Bulk_Aux_power = log([Wet_Bulk_NonIce_Aux_power; Wet_Bulk_Ice_Aux_power]);

Wet_Bulk_power_Table = table(Wet_Bulk_dwt,Wet_Bulk_power, Wet_Bulk_Ice_Class_Level);
Wet_Bulk_power_Table.Wet_Bulk_Ice_Class_Level = categorical(Wet_Bulk_power_Table.Wet_Bulk_Ice_Class_Level);

Wet_Bulk_Aux_power_Table = table(Wet_Bulk_dwt_Aux,Wet_Bulk_Aux_power, Wet_Bulk_Ice_Class_Level_Aux);
Wet_Bulk_Aux_power_Table.Wet_Bulk_Ice_Class_Level_Aux = categorical(Wet_Bulk_Aux_power_Table.Wet_Bulk_Ice_Class_Level_Aux);

Dry_Bulk_GT_Table = [Dry_Bulk_dwt_Table(:,2) Dry_Bulk_dwt_Table(:,1) Dry_Bulk_dwt_Table(:,3)];
Container_GT_Table = [Container_dwt_Table(:,2) Container_dwt_Table(:,1) Container_dwt_Table(:,3)];
Wet_Bulk_GT_Table = [Wet_Bulk_dwt_Table(:,2) Wet_Bulk_dwt_Table(:,1) Wet_Bulk_dwt_Table(:,3)];



X = [Wet_Bulker_IHS.length_overall, Wet_Bulker_IHS.service_speed, Wet_Bulker_IHS.deadweight];
Wet_Bulker_IHS_Model = fitlm(X, Wet_Bulker_IHS.eng_total_kw);

%Regression
%Dry Bulk 
Dry_Bulk_GT_Table = fitlm(Dry_Bulk_GT_Table);

Dry_Bulk_dwt_fit = fitlm(Dry_Bulk_dwt_Table);

Dry_Bulk_power_fit = fitlm(Dry_Bulk_power_Table);

Dry_Bulk_Aux_power_fit = fitlm(Dry_Bulk_Aux_power_Table);

%Container
Container_GT_fit = fitlm(Container_GT_Table);

Container_dwt_fit = fitlm(Container_dwt_Table);

Container_power_fit = fitlm(Container_power_Table); %Got rid of the intercept because it bred a false value 

Container_Aux_power_fit = fitlm(Container_Aux_power_Table);
%Will need to work out a R^2 value though 

%p-value was found to be statistically insignificant hence there's no
%correlation between ice class and auxiliary power, therefore the power
%ratio is assumed to be equal to 1
% Container_Aux_power_fit = fitlm(Container_Aux_power_Table); %Got rid of the intercept here too

%Wet Bulk 
Wet_Bulk_GT_fit = fitlm(Wet_Bulk_GT_Table);

Wet_Bulk_dwt_fit = fitlm(Wet_Bulk_dwt_Table);

Wet_Bulk_power_fit = fitlm(Wet_Bulk_power_Table);

Wet_Bulk_Aux_power_fit = fitlm(Wet_Bulk_Aux_power_Table);

Boiler_tab=readtable('Input_data\Main_input_data\Boiler_consumption.csv');
ship_name = d.shipName(:);

%I assume that the ice strengthened ship and the OW ship have the same
%volume/GT and that there are no standard errors with the regression
Pow_Nonice = zeros(height(d),1);
Pow_ice = zeros(height(d),1);
Pow_ice_rat = zeros(height(d),1);
Aux_Pow_ice = zeros(height(d),1);
Aux_Pow_ice_rat = zeros(height(d),1);
IMO_type = zeros(height(d),1);
IMO_size = zeros(height(d),1);
Boil_cons = zeros(height(d),1);
Ice_gt = zeros(height(d),1);
gt = zeros(height(d),1);
Ice_dwt_rat = zeros(height(d),1);
Ice_dwt = zeros(height(d),1);
SCE3_Suez_nav_d = zeros(height(d),1);

for i = 1:1:length(d.cargoType(:,1))
    Cargo_type = d.cargoType(i);
    ship_name = d.shipName(i);
    
    if strcmp(Cargo_type, 'Wet Bulk')
        IMO_type(i,:) = 7;
        if dwt(i) > 0 && dwt(i) <= 4999
            IMO_size(i,:) = 1;
            SCE3_Suez_nav_d(i,:) = 144;
            Boil_cons(i,:)= Boiler_tab.Boiler_consumption(25);
        elseif dwt(i) > 4999 && dwt(i) <= 9999
             IMO_size(i,:) = 2;
            SCE3_Suez_nav_d(i,:) = 147;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(26);
        elseif dwt(i) > 9999 && dwt(i) <= 19999
            IMO_size(i,:) = 3;
            SCE3_Suez_nav_d(i,:) = 149;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(27);
        elseif dwt(i) > 19999 && dwt(i) <= 59999
            IMO_size(i,:) = 4;
            SCE3_Suez_nav_d(i,:) = 164;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(28);
        elseif dwt(i) > 59999 && dwt(i) <= 79999
            IMO_size(i,:) = 5;
            SCE3_Suez_nav_d(i,:) = 183;
            Boil_cons(i,:)= Boiler_tab.Boiler_consumption(29);
        elseif dwt(i) > 79999 && dwt(i) <= 119999
            IMO_size(i,:) = 6;
            SCE3_Suez_nav_d(i,:) = 186;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(30);
        elseif dwt(i) > 119999 && dwt(i) <= 199999
            IMO_size(i,:) = 7;
            SCE3_Suez_nav_d(i,:) = 206;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(31);
        end
        gt(i,:) = exp(-0.37459+0.98351.*log(dwt(i)));
        Ice_gt(i,:) = exp(-0.37459+0.98351.*log(dwt(i))+0.10749);
        Ice_dwt_rat(i,:) = exp(0.54512+(0.99828.*log(gt(i,:)))-(1.*0.097441))./exp(0.54512+(0.99828.*log(gt(i,:))));
        Ice_dwt(i,:) = Ice_dwt_rat(i,:).*dwt(i);
        
        if Ice_dwt(i,:) > dwt(i)
            Ice_dwt(i,:) = dwt(i);
        end
        Pow_Nonice(i,:) = -8650.5 + (24.454.*1.02.*d.designWaterlineLength_m_(i)) + (664.08.*d.design_speed_kts(i)) + (0.053734.*dwt(i));  
        
        if i < 70
            Pow_Nonice(i,:) = d.installed_main_engine_power_kW(i);
        end
        
        Pow_ice_rat(i,:) = exp(3.2379+(0.54556.*log(dwt(i)))+(1.*0.17825))./exp(3.2379+(0.54556.*log(dwt(i)))); %See Solakivi 2018 for regression model
        
        Pow_ice(i,:) = Pow_ice_rat(i,:).*Pow_Nonice(i,:);
                        
        Aux_Pow_ice_rat(i,:) = exp(3.3091+(0.41484.*log(dwt(i)))+(1.*0.24556))./exp(3.3091+(0.41484.*log(dwt(i)))); %Solakivi 2018 for regression model
        
        Aux_Pow_ice(i,:) = d.installed_auxiliary_power_kW(i).*Aux_Pow_ice_rat(i,:);

        
    elseif strcmp(Cargo_type, 'Containers')
        IMO_type(i,:) = 4;
        if strcmp(ship_name,'Container Ship Size 1')
            IMO_size(i,:) = 1;
            SCE3_Suez_nav_d(i,:) = 190;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(11);
        elseif strcmp(ship_name,'Container Ship Size 2')
            IMO_size(i,:) = 2;
            SCE3_Suez_nav_d(i,:) = 200;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(12);
        elseif strcmp(ship_name,'Container Ship Size 3')
            IMO_size(i,:) = 3;
            SCE3_Suez_nav_d(i,:) = 208;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(13);
        elseif strcmp(ship_name,'Container Ship Size 4')
            IMO_size(i,:) = 4;
            SCE3_Suez_nav_d(i,:) = 236;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(14);
        elseif strcmp(ship_name,'Container Ship Size 5')
            IMO_size(i,:)= 5;
            SCE3_Suez_nav_d(i,:) = 246;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(15);
        elseif strcmp(ship_name,'Container Ship Size 6')
            IMO_size(i,:) = 6;
            SCE3_Suez_nav_d(i,:) = 256;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(16);
        elseif strcmp(ship_name,'Container Ship Size 7')
            IMO_size(i,:) = 7;
            SCE3_Suez_nav_d(i,:) = 241;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(17);
        elseif strcmp(ship_name,'Container Ship Size 8')
            IMO_size(i,:)= 8;
            SCE3_Suez_nav_d(i,:) = 251; %Source pisces
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(18);
            
        end
        gt(i,:) = exp(-0.72554+1.0537.*log(dwt(i)));
        Ice_gt(i,:) = exp(-0.72554+1.0537.*log(dwt(i))+0.040714);
        Ice_dwt_rat(i,:) = exp(0.83685+(0.93438.*log(gt(i,:)))-(1.*0.052326))./exp(0.83685+(0.93438.*log(gt(i,:))));
        Ice_dwt(i,:)= dwt(i).*Ice_dwt_rat(i,:);
        
        if Ice_dwt(i,:) > dwt(i)
            Ice_dwt(i,:) = dwt(i);
        end
        
        Pow_Nonice(i,:) = -45163 + (63.215.*1.02.*d.designWaterlineLength_m_(i)) + (2212.1.*d.design_speed_kts(i)) + (0.17887.*dwt(i));
        
        if i < 30
            Pow_Nonice(i,:) = d.installed_main_engine_power_kW(i);
        end
                           
        Pow_ice_rat(i,:) = exp((1.1943+(0.83437.*log(dwt(i)))+(1.*0.064203)))./exp((1.1943+(0.83437.*log(dwt(i)))));
        
        Pow_ice(i,:) = Pow_ice_rat(i,:).*Pow_Nonice(i,:);
        
        Aux_Pow_ice_rat(i,:) =  exp((-0.11939+(0.81557.*log(dwt(i)))-(1.*0)))./exp(-0.11939+(0.81557.*log(dwt(i)))); %Assumption here is that it's equal to 1 as Ice class was found to be statistically insignificant
        
        Aux_Pow_ice(i,:) = d.installed_auxiliary_power_kW(i).*Aux_Pow_ice_rat(i,:);
      
        
    elseif strcmp(Cargo_type, 'Dry Bulk')
        IMO_type(i,:) = 1;
        if dwt(i) > 0 && dwt(i) <= 9999
            IMO_size(i,:) = 1;
            SCE3_Suez_nav_d(i,:) = 167;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(1);
        elseif dwt(i) > 9999 && dwt(i) <= 34999
            IMO_size(i,:) = 2;
            SCE3_Suez_nav_d(i,:) = 168;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(2);
        elseif dwt(i) > 34999 && dwt(i) <= 59999
            IMO_size(i,:) = 3;
            SCE3_Suez_nav_d(i,:) = 173;
            Boil_cons(i,:)= Boiler_tab.Boiler_consumption(3);
        elseif dwt(i) > 59999 && dwt(i) <= 99999
            IMO_size(i,:) = 4;
            SCE3_Suez_nav_d(i,:) = 258;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(4);
        elseif dwt(i) > 99999 && dwt(i) <= 199999
            IMO_size(i,:) = 5;
            SCE3_Suez_nav_d(i,:) = 191;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(5);
        elseif dwt(i) > 199999
            IMO_size(i,:) = 6;
            SCE3_Suez_nav_d(i,:) = 202;
            Boil_cons(i,:) = Boiler_tab.Boiler_consumption(6);
        end
        
        gt(i,:) = exp(-0.16429+0.96345.*log(dwt(i)));
        Ice_gt(i,:) = exp(-0.16429+0.96345.*log(dwt(i))+0.099514);
        Ice_dwt_rat(i,:)= exp(0.47316+(1.0076.*log(gt(i,:)))-(1.*0.10461))./exp(0.47316+(1.0076.*log(gt(i,:))));
        Ice_dwt(i,:) = dwt(i).*Ice_dwt_rat(i,:);
        
        Pow_Nonice(i,:) = -7319.8 + (30.155.*1.02.*d.designWaterlineLength_m_(i)) + (488.57.*d.design_speed_kts(i)) + (0.041142.*dwt(i));
        
        Pow_ice_rat(i,:) = exp(3.4428+(0.51817.*log(dwt(i)))+(1.*0.21926))./exp(3.4428+(0.51817.*log(dwt(i))));
                
        Pow_ice(i,:) = Pow_ice_rat(i,:).*Pow_Nonice(i,:);
            
        Aux_Pow_ice_rat(i,:) = exp(2.9818+(0.4149.*log(dwt(i)))+(1.*0.19222))./exp(2.9818+(0.4149.*log(dwt(i)))); %See Solakivi 2018 for model
        
        Aux_Pow_ice(i,:) = d.installed_auxiliary_power_kW(i).*Aux_Pow_ice_rat(i,:);
        
    end
  
end

%Turns the deadweight reduction into a cost
Ice_dwt_loss = dwt - Ice_dwt; 




