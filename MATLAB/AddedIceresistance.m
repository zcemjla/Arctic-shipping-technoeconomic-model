function   [Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0, Ice_Energy_consumed_SCE1Route1_Arctic_t_t0,...
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
    Logic_mat_Route_1_OW_feasibility_Scenario2_t0,...
    Logic_mat_Route_1_OW_feasibility_Scenario2_tm,...
    Logic_mat_Route_1_OW_feasibility_Scenario2_tf,...
    Logic_mat_Route_2_OW_feasibility_Scenario2_t0,...
    Logic_mat_Route_2_OW_feasibility_Scenario2_tm,...
    Logic_mat_Route_2_OW_feasibility_Scenario2_tf,...
    Logic_mat_Route_3_OW_feasibility_Scenario2_t0,...
    Logic_mat_Route_3_OW_feasibility_Scenario2_tm,...
    Logic_mat_Route_3_OW_feasibility_Scenario2_tf,...
    Unit_length_AB, Unit_length_BD,...
    Unit_length_DE, Unit_length_EF, Unit_length_FG,...
    Unit_length_AG, Unit_length_GH, Unit_length_HE,...
    Unit_length_AC, Unit_length_CE, Avg_Engine_Load, Arctic_OW_Route1_T_A);

%Input parameters; The assumption is that all the ice strengthened vessels
%will have the same bow form

Alpha = Alpha.*pi./180;

Sigma = 500*10^3; %Bending strength of sea ice, the maximum value for
%the baltic sea ice was taken as Arctic sea ice is harder (Omre,2012) and
%but it shouldn't me much harder than the sample values stated in
%Lindqvist (1989)


%degrees conv into radians (I get complex numbers otherwise); The assumption here is that phi is 80 instead of 90
%because 90 implies a bulbous bow and tan90 is invalid. Furthermore, as a
%consequence of the relationship between the variables the ice resistance
%increases at an approximate exponential rate as phi increases suggesting
%it's impossible to break level ice. A bulbous bow means better open water
%performance at the expense of ice breaking performance
%It performs poorly in open waters because of the rolling motion and wave
%slamming loads
Mu = 0.05; %Coefficient of friction, Guo(2018) - I took the lowest value otherwise anomalies occur and 0.1 was reported for all other cases
%Of course Mu can change depending on the material of the ship and velocity
%of the ship
Beam = d.design_beam_m(:);
T = d.design_draught_m(:);
Length_WL = d.designWaterlineLength_m_(:);
Phi = atan(T./Length_WL);
Psi = atan(tan(Phi)./sin(Alpha));
n_ships = 20; %20 ships are being considered
Ship_design_speed_length = length(v)./n_ships;
g = 9.80665; %ms^-2
rho_water = 1024; %kgm^-3
rho_sea_ice = 910; %kgm^-3 (Timco and Frederking (1996))
Poisson = 0.3; %Lindqvist 1989
E_Young = 2.*10.^9;
Des_v = d.design_speed_kts(:);
Ice_OW_Resistance_N = Ice_Operating_Total_Resistance;
NonIce_OW_Resistance_N = NonIce_Operating_Total_Resistance;

%This function calculates the additional resistance and hence power that
%the ship must overcome to break the ice, this can then be used to
%calculate the change in sfc for the vessel
L1_SCE2Route1 = length(SIT_Route1_t0);
L2_SCE2Route2 = length(SIT_Route2_t0);
L3_SCE2Route3 = length(SIT_Route3_t0);

%Scenario 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%For scenario 1 the annual sea ice thickness encountered is literally the
%variable SIT as it's assumed that the Arctic is operational all year
%round, however the nav_d is equal to the operational days and the ship
%would still avoid the worst month for navigating (March) - hence I should
%calculate accordingly

%To ensure that the number of days operating through the Arctic doesn't
%supersede the average days at sea, the logic mat must be corrected
%Round the average suez navigational days to the nearest month
SCE1_n_days = round(SCE3_Suez_nav_d./30)*30;

%Now I can build a logic matrix with the number of months equidistant from
%September (the thinnest month for navigating)

%I can now build a logic array based off when the ship is likely to operate
%Avoiding March

SCE1_NonOp_n_days = 360 - SCE1_n_days;
SCE1_NonOp_n_days_bounds = SCE1_NonOp_n_days./2;

%One of the months will count as March and it is assumed that the worst
%month is avoided

SCE1_NonOp_n_days_Upper_bound = round(90+SCE1_NonOp_n_days_bounds); SCE1_NonOp_n_month_Upper_bound = round(SCE1_NonOp_n_days_Upper_bound./30);
SCE1_NonOp_n_days_Lower_bound = round(90-SCE1_NonOp_n_days_bounds); SCE1_NonOp_n_month_Lower_bound = round(SCE1_NonOp_n_days_Lower_bound./30);

%If the lower bound is less than 0 then reconfigure it to move to the end
%of the year, so if the lower bound is 0 then that should be reconfigured
%to be 12 (December)
for i = 1:1:length(SCE1_NonOp_n_month_Lower_bound)
    if SCE1_NonOp_n_month_Lower_bound(i) <1
        SCE1_NonOp_n_month_Lower_bound(i) = 12+SCE1_NonOp_n_month_Lower_bound(i);
    end
end

%No time dependency, as in Scenario 1 the thickness of ice
%and the route are irrelevant and so I'm therefore assuming that
%The number of operational days from the IMO 3rd ghg study doesn't change

Logic_mat_IceStrength_feasibility_Scenario1 = [];
for i = 1:1:n_ships
    Ones = ones(12,1);
    if SCE1_NonOp_n_month_Lower_bound(1+((i-1)*Ship_design_speed_length)) > SCE1_NonOp_n_month_Upper_bound(1+((i-1)*Ship_design_speed_length))
        if SCE1_n_days(1+((i-1)*Ship_design_speed_length)) < 180
            Zeros = zeros(12,1);
            SCE1_Op_Lower_bound = 9 - ((0.5.*(SCE1_n_days(1+((i-1)*Ship_design_speed_length))))./30) ;
            SCE1_Op_Upper_bound = 9 + ((0.5.*(SCE1_n_days(1+((i-1)*Ship_design_speed_length))))./30) - 1;
            Zeros(SCE1_Op_Lower_bound:1:SCE1_Op_Upper_bound) =  1;
            Logic_mat_IceStrength_feasibility_Scenario1_iter = Zeros;
        else
            Ones(1:1:SCE1_NonOp_n_month_Upper_bound(1+((i-1)*Ship_design_speed_length))) = 0;
            Ones(SCE1_NonOp_n_month_Lower_bound(1+((i-1)*Ship_design_speed_length)):1:12-1) = 0;
            Logic_mat_IceStrength_feasibility_Scenario1_iter = Ones;
        end
    else
        Ones(SCE1_NonOp_n_month_Lower_bound(1+((i-1)*Ship_design_speed_length)):1:SCE1_NonOp_n_month_Upper_bound(1+((i-1)*Ship_design_speed_length))-1) = 0;
        Logic_mat_IceStrength_feasibility_Scenario1_iter = Ones;
    end
    Logic_mat_IceStrength_feasibility_Scenario1 = [Logic_mat_IceStrength_feasibility_Scenario1; Logic_mat_IceStrength_feasibility_Scenario1_iter];
end



%Scenario 2

%Modifying the logical arrays in case the average days at sea is less than
%the Arctic navigable period, so I can capture the sea ice thickness later
% %on
SCE2_Route1_Arctic_nav_d_t0 = 30.*sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0(:,1));
SCE2_Route1_Arctic_nav_d_t0 = repmat(SCE2_Route1_Arctic_nav_d_t0,length(v),1);

% %t_m
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE2_Route1_Arctic_nav_d_tm = 30.*sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm(:,1));
SCE2_Route1_Arctic_nav_d_tm = repmat(SCE2_Route1_Arctic_nav_d_tm,length(v),1);

% %t_f
% %%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE2_Route1_Arctic_nav_d_tf = 30.*sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf(:,1));
SCE2_Route1_Arctic_nav_d_tf = repmat(SCE2_Route1_Arctic_nav_d_tf,length(v),1);

% %Route 2
SCE2_Route2_Arctic_nav_d_t0 = 30.*sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0(:,1));
SCE2_Route2_Arctic_nav_d_t0 = repmat(SCE2_Route2_Arctic_nav_d_t0,length(v),1);
%
% %t_m
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE2_Route2_Arctic_nav_d_tm = 30.*sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm(:,1));
SCE2_Route2_Arctic_nav_d_tm = repmat(SCE2_Route2_Arctic_nav_d_tm,length(v),1);

% %t_f
% %%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE2_Route2_Arctic_nav_d_tf = 30.*sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf(:,1));
SCE2_Route2_Arctic_nav_d_tf = repmat(SCE2_Route2_Arctic_nav_d_tf,length(v),1);

% %Route 3
% %%%%%%%%%%%%%%
SCE2_Route3_Arctic_nav_d_t0 = 30.*sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0(:,1));
SCE2_Route3_Arctic_nav_d_t0 = repmat(SCE2_Route3_Arctic_nav_d_t0,length(v),1);

% %t_m
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE2_Route3_Arctic_nav_d_tm = 30.*sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm(:,1));
SCE2_Route3_Arctic_nav_d_tm = repmat(SCE2_Route3_Arctic_nav_d_tm,length(v),1);

% %t_f
% %%%%%%%%%%%%%%%%%%%%%%%%%%%
SCE2_Route3_Arctic_nav_d_tf = 30.*sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf(:,1));
SCE2_Route3_Arctic_nav_d_tf = repmat(SCE2_Route3_Arctic_nav_d_tf,length(v),1);

Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_t0 = [];
for j = 1:1:n_ships
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1+((j-1).*12):j*12,:);
    for i = 1:1:length(Logic_mat_IceStrength_feasibility_Scenario1_iter)
        Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_t0_iter = repmat(Logic_mat_IceStrength_feasibility_Scenario1_iter(i),L1_SCE2Route1/12,1);
        Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_t0 = [Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_t0;Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_t0_iter];
    end
end

Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_tm = [];
for j = 1:1:n_ships
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1+((j-1).*12):j*12,:);
    for i = 1:1:length(Logic_mat_IceStrength_feasibility_Scenario1_iter)
        Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tm_iter = repmat(Logic_mat_IceStrength_feasibility_Scenario1_iter(i),L1_SCE2Route1/12,1);
        Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_tm = [Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_tm;Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tm_iter];
    end
end

Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_tf = [];
for j = 1:1:n_ships
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1+((j-1).*12):j*12,:);
    for i = 1:1:length(Logic_mat_IceStrength_feasibility_Scenario1_iter)
        Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tf_iter = repmat(Logic_mat_IceStrength_feasibility_Scenario1_iter(i),L1_SCE2Route1/12,1);
        Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_tf = [Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_tf;Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tf_iter];
    end
end

Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_t0 = [];
for j = 1:1:n_ships
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1+((j-1).*12):j*12,:);
    for i = 1:1:length(Logic_mat_IceStrength_feasibility_Scenario1_iter)
        Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_t0_iter = repmat(Logic_mat_IceStrength_feasibility_Scenario1_iter(i),L2_SCE2Route2/12,1);
        Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_t0 = [Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_t0;Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_t0_iter];
    end
end

Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_tm = [];
for j = 1:1:n_ships
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1+((j-1).*12):j*12,:);
    for i = 1:1:length(Logic_mat_IceStrength_feasibility_Scenario1_iter)
        Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tm_iter = repmat(Logic_mat_IceStrength_feasibility_Scenario1_iter(i),L2_SCE2Route2/12,1);
        Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_tm = [Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_tm;Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tm_iter];
    end
end

Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_tf = [];
for j = 1:1:n_ships
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1+((j-1).*12):j*12,:);
    for i = 1:1:length(Logic_mat_IceStrength_feasibility_Scenario1_iter)
        Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tf_iter = repmat(Logic_mat_IceStrength_feasibility_Scenario1_iter(i),L2_SCE2Route2/12,1);
        Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_tf = [Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_tf;Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tf_iter];
    end
end

Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_t0 = [];
for j = 1:1:n_ships
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1+((j-1).*12):j*12,:);
    for i = 1:1:length(Logic_mat_IceStrength_feasibility_Scenario1_iter)
        Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_t0_iter = repmat(Logic_mat_IceStrength_feasibility_Scenario1_iter(i),L3_SCE2Route3/12,1);
        Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_t0 = [Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_t0;Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_t0_iter];
    end
end

Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_tm = [];
for j = 1:1:n_ships
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1+((j-1).*12):j*12,:);
    for i = 1:1:length(Logic_mat_IceStrength_feasibility_Scenario1_iter)
        Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tm_iter = repmat(Logic_mat_IceStrength_feasibility_Scenario1_iter(i),L3_SCE2Route3/12,1);
        Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_tm = [Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_tm;Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tm_iter];
    end
end

Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_tf = [];
for j = 1:1:n_ships
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1+((j-1).*12):j*12,:);
    for i = 1:1:length(Logic_mat_IceStrength_feasibility_Scenario1_iter)
        Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tf_iter = repmat(Logic_mat_IceStrength_feasibility_Scenario1_iter(i),L3_SCE2Route3/12,1);
        Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_tf = [Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_tf;Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tf_iter];
    end
end

%Route 1
Reshaped_Time_days_SCE1Route1_t0 = [];
Reshaped_Time_days_SCE1Route1_tm = [];
Reshaped_Time_days_SCE1Route1_tf = [];
IB_time_SCE1Route1_t0 = [];
IB_time_SCE1Route1_tm = [];
IB_time_SCE1Route1_tf = [];
Agg_Op_speed1_SCE1Route1 = [];
Agg_Op_speed2_SCE1Route1 = [];
Agg_Op_speed3_SCE1Route1 = [];
Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0 = [];
Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm = [];
Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf = [];
Ice_Energy_consumed_SCE1Route1_Arctic_t_t0 = [];
Ice_Energy_consumed_SCE1Route1_Arctic_t_tm = [];
Ice_Energy_consumed_SCE1Route1_Arctic_t_tf = [];
SCE1_Ice_Route1_n_t0 = [];
SCE1_Ice_Route1_n_tm = [];
SCE1_Ice_Route1_n_tf = [];

%Route 2
Reshaped_Time_days_SCE1Route2_t0 = [];
Reshaped_Time_days_SCE1Route2_tm = [];
Reshaped_Time_days_SCE1Route2_tf = [];
IB_time_SCE1Route2_t0 = [];
IB_time_SCE1Route2_tm = [];
IB_time_SCE1Route2_tf = [];
Agg_Op_speed1_SCE1Route2 = [];
Agg_Op_speed2_SCE1Route2 = [];
Agg_Op_speed3_SCE1Route2 = [];
Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0 = [];
Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm = [];
Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf = [];
Ice_Energy_consumed_SCE1Route2_Arctic_t_t0 = [];
Ice_Energy_consumed_SCE1Route2_Arctic_t_tm = [];
Ice_Energy_consumed_SCE1Route2_Arctic_t_tf = [];
SCE1_Ice_Route2_n_t0 = [];
SCE1_Ice_Route2_n_tm = [];
SCE1_Ice_Route2_n_tf = [];

%Route 3
Reshaped_Time_days_SCE1Route3_t0 = [];
Reshaped_Time_days_SCE1Route3_tm = [];
Reshaped_Time_days_SCE1Route3_tf = [];
IB_time_SCE1Route3_t0 = [];
IB_time_SCE1Route3_tm = [];
IB_time_SCE1Route3_tf = [];
Agg_Op_speed1_SCE1Route3 = [];
Agg_Op_speed2_SCE1Route3 = [];
Agg_Op_speed3_SCE1Route3 = [];
Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0 = [];
Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm = [];
Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf = [];
Ice_Energy_consumed_SCE1Route3_Arctic_t_t0 = [];
Ice_Energy_consumed_SCE1Route3_Arctic_t_tm = [];
Ice_Energy_consumed_SCE1Route3_Arctic_t_tf = [];
SCE1_Ice_Route3_n_t0 = [];
SCE1_Ice_Route3_n_tm = [];
SCE1_Ice_Route3_n_tf = [];

%Do ice resistance calculations for each ship design
for j = 1:1:n_ships
    Phi_iter = Phi(1+((j-1).*Ship_design_speed_length));
    Alpha_iter = Alpha(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    Psi_iter = Psi(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    C_T_iter = C_T(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    S_iter = S(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    Beam_iter = Beam(1+((j-1).*Ship_design_speed_length));
    Length_iter = Length_WL(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    T_iter = T(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    v_iter = v(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    Ice_OW_Resistance_N_iter = Ice_OW_Resistance_N(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    IceStrengthOutput_power_kW_iter = IceStrengthOutput_power_kW(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    Ice_Installed_Power_kW_iter = Ice_Installed_Power_kW(1+((j-1).*Ship_design_speed_length):j.*Ship_design_speed_length);
    Icesfc_iter = Icesfc(1+((j-1).*Ship_design_speed_length):j.*Ship_design_speed_length);
    Des_v_iter = Des_v(1+((j-1).*Ship_design_speed_length):j.*Ship_design_speed_length);
    Arctic_OW_Route1_T_A_iter = Arctic_OW_Route1_T_A(1 + (j-1).*Ship_design_speed_length:j.*Ship_design_speed_length);
    
    IMO_type_iter = IMO_type(1+((j-1).*Ship_design_speed_length));
    Avg_Engine_Load_iter = Avg_Engine_Load(1+((j-1).*Ship_design_speed_length));
    
    Logic_mat_IceStrength_feasibility_Scenario1_iter = Logic_mat_IceStrength_feasibility_Scenario1(1+((j-1).*12):j*12);
    
    
    Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_t0_iter = Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_t0(1+((j-1).*length(SIT_Route1_t0)):(j*length(SIT_Route1_t0)),:);
    Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tm_iter = Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_tm(1+((j-1).*length(SIT_Route1_tm)):(j*length(SIT_Route1_tm)),:);
    Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tf_iter = Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario1_tf(1+((j-1).*length(SIT_Route1_tf)):(j*length(SIT_Route1_tf)),:);
    
    Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_t0_iter = Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_t0(1+((j-1).*length(SIT_Route2_t0)):(j*length(SIT_Route2_t0)),:);
    Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tm_iter = Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_tm(1+((j-1).*length(SIT_Route2_tm)):(j*length(SIT_Route2_tm)),:);
    Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tf_iter = Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario1_tf(1+((j-1).*length(SIT_Route2_tf)):(j*length(SIT_Route2_tf)),:);
    
    Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_t0_iter = Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_t0(1+((j-1).*length(SIT_Route3_t0)):(j*length(SIT_Route3_t0)),:);
    Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tm_iter = Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_tm(1+((j-1).*length(SIT_Route3_tm)):(j*length(SIT_Route3_tm)),:);
    Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tf_iter = Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario1_tf(1+((j-1).*length(SIT_Route3_tf)):(j*length(SIT_Route3_tf)),:);
    
    
    %Route1
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Annual_sea_ice_thickness_encountered_SCE1Route1_t0 = Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_t0_iter.*SIT_Route1_t0;
    Annual_sea_ice_thickness_encountered_SCE1Route1_t0 = [Annual_sea_ice_thickness_encountered_SCE1Route1_t0 Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_t0_iter];
    Annual_sea_ice_thickness_encountered_SCE1Route1_t0 = Annual_sea_ice_thickness_encountered_SCE1Route1_t0(Annual_sea_ice_thickness_encountered_SCE1Route1_t0(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE1Route1_tm = Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tm_iter.*SIT_Route1_tm;
    Annual_sea_ice_thickness_encountered_SCE1Route1_tm = [Annual_sea_ice_thickness_encountered_SCE1Route1_tm Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tm_iter];
    Annual_sea_ice_thickness_encountered_SCE1Route1_tm = Annual_sea_ice_thickness_encountered_SCE1Route1_tm(Annual_sea_ice_thickness_encountered_SCE1Route1_tm(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE1Route1_tf = Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tf_iter.*SIT_Route1_tf;
    Annual_sea_ice_thickness_encountered_SCE1Route1_tf = [Annual_sea_ice_thickness_encountered_SCE1Route1_tf Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tf_iter];
    Annual_sea_ice_thickness_encountered_SCE1Route1_tf = Annual_sea_ice_thickness_encountered_SCE1Route1_tf(Annual_sea_ice_thickness_encountered_SCE1Route1_tf(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE1Route1_t0 = Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_t0_iter.*SIC_Route1_t0;
    Annual_sea_ice_conc_encountered_SCE1Route1_t0 = [Annual_sea_ice_conc_encountered_SCE1Route1_t0 Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_t0_iter];
    Annual_sea_ice_conc_encountered_SCE1Route1_t0 = Annual_sea_ice_conc_encountered_SCE1Route1_t0(Annual_sea_ice_conc_encountered_SCE1Route1_t0(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE1Route1_tm = Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tm_iter.*SIC_Route1_tm;
    Annual_sea_ice_conc_encountered_SCE1Route1_tm = [Annual_sea_ice_conc_encountered_SCE1Route1_tm Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tm_iter];
    Annual_sea_ice_conc_encountered_SCE1Route1_tm = Annual_sea_ice_conc_encountered_SCE1Route1_tm(Annual_sea_ice_conc_encountered_SCE1Route1_tm(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE1Route1_tf = Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tf_iter.*SIC_Route1_tf;
    Annual_sea_ice_conc_encountered_SCE1Route1_tf = [Annual_sea_ice_conc_encountered_SCE1Route1_tf Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_tf_iter];
    Annual_sea_ice_conc_encountered_SCE1Route1_tf = Annual_sea_ice_conc_encountered_SCE1Route1_tf(Annual_sea_ice_conc_encountered_SCE1Route1_tf(:,2)>0);
    
    %Route2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Annual_sea_ice_thickness_encountered_SCE1Route2_t0 = Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_t0_iter.*SIT_Route2_t0;
    Annual_sea_ice_thickness_encountered_SCE1Route2_t0 = [Annual_sea_ice_thickness_encountered_SCE1Route2_t0 Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_t0_iter];
    Annual_sea_ice_thickness_encountered_SCE1Route2_t0 = Annual_sea_ice_thickness_encountered_SCE1Route2_t0(Annual_sea_ice_thickness_encountered_SCE1Route2_t0(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE1Route2_tm = Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tm_iter.*SIT_Route2_tm;
    Annual_sea_ice_thickness_encountered_SCE1Route2_tm = [Annual_sea_ice_thickness_encountered_SCE1Route2_tm Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tm_iter];
    Annual_sea_ice_thickness_encountered_SCE1Route2_tm = Annual_sea_ice_thickness_encountered_SCE1Route2_tm(Annual_sea_ice_thickness_encountered_SCE1Route2_tm(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE1Route2_tf = Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tf_iter.*SIT_Route2_tf;
    Annual_sea_ice_thickness_encountered_SCE1Route2_tf = [Annual_sea_ice_thickness_encountered_SCE1Route2_tf Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tf_iter];
    Annual_sea_ice_thickness_encountered_SCE1Route2_tf = Annual_sea_ice_thickness_encountered_SCE1Route2_tf(Annual_sea_ice_thickness_encountered_SCE1Route2_tf(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE1Route2_t0 = Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_t0_iter.*SIC_Route2_t0;
    Annual_sea_ice_conc_encountered_SCE1Route2_t0 = [Annual_sea_ice_conc_encountered_SCE1Route2_t0 Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_t0_iter];
    Annual_sea_ice_conc_encountered_SCE1Route2_t0 = Annual_sea_ice_conc_encountered_SCE1Route2_t0(Annual_sea_ice_conc_encountered_SCE1Route2_t0(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE1Route2_tm = Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tm_iter.*SIC_Route2_tm;
    Annual_sea_ice_conc_encountered_SCE1Route2_tm = [Annual_sea_ice_conc_encountered_SCE1Route2_tm Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tm_iter];
    Annual_sea_ice_conc_encountered_SCE1Route2_tm = Annual_sea_ice_conc_encountered_SCE1Route2_tm(Annual_sea_ice_conc_encountered_SCE1Route2_tm(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE1Route2_tf = Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tf_iter.*SIC_Route2_tf;
    Annual_sea_ice_conc_encountered_SCE1Route2_tf = [Annual_sea_ice_conc_encountered_SCE1Route2_tf Global_Logic_mat_Route_2_Ice_feasibility_Scenario1_tf_iter];
    Annual_sea_ice_conc_encountered_SCE1Route2_tf = Annual_sea_ice_conc_encountered_SCE1Route2_tf(Annual_sea_ice_conc_encountered_SCE1Route2_tf(:,2)>0);
    
    %Route3
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Annual_sea_ice_thickness_encountered_SCE1Route3_t0 = Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_t0_iter.*SIT_Route3_t0;
    Annual_sea_ice_thickness_encountered_SCE1Route3_t0 = [Annual_sea_ice_thickness_encountered_SCE1Route3_t0 Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_t0_iter];
    Annual_sea_ice_thickness_encountered_SCE1Route3_t0 = Annual_sea_ice_thickness_encountered_SCE1Route3_t0(Annual_sea_ice_thickness_encountered_SCE1Route3_t0(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE1Route3_tm = Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tm_iter.*SIT_Route3_tm;
    Annual_sea_ice_thickness_encountered_SCE1Route3_tm = [Annual_sea_ice_thickness_encountered_SCE1Route3_tm Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tm_iter];
    Annual_sea_ice_thickness_encountered_SCE1Route3_tm = Annual_sea_ice_thickness_encountered_SCE1Route3_tm(Annual_sea_ice_thickness_encountered_SCE1Route3_tm(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE1Route3_tf = Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tf_iter.*SIT_Route3_tf;
    Annual_sea_ice_thickness_encountered_SCE1Route3_tf = [Annual_sea_ice_thickness_encountered_SCE1Route3_tf Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tf_iter];
    Annual_sea_ice_thickness_encountered_SCE1Route3_tf = Annual_sea_ice_thickness_encountered_SCE1Route3_tf(Annual_sea_ice_thickness_encountered_SCE1Route3_tf(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE1Route3_t0 = Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_t0_iter.*SIC_Route3_t0;
    Annual_sea_ice_conc_encountered_SCE1Route3_t0 = [Annual_sea_ice_conc_encountered_SCE1Route3_t0 Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_t0_iter];
    Annual_sea_ice_conc_encountered_SCE1Route3_t0 = Annual_sea_ice_conc_encountered_SCE1Route3_t0(Annual_sea_ice_conc_encountered_SCE1Route3_t0(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE1Route3_tm = Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tm_iter.*SIC_Route3_tm;
    Annual_sea_ice_conc_encountered_SCE1Route3_tm = [Annual_sea_ice_conc_encountered_SCE1Route3_tm Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tm_iter];
    Annual_sea_ice_conc_encountered_SCE1Route3_tm = Annual_sea_ice_conc_encountered_SCE1Route3_tm(Annual_sea_ice_conc_encountered_SCE1Route3_tm(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE1Route3_tf = Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tf_iter.*SIC_Route3_tf;
    Annual_sea_ice_conc_encountered_SCE1Route3_tf = [Annual_sea_ice_conc_encountered_SCE1Route3_tf Global_Logic_mat_Route_3_Ice_feasibility_Scenario1_tf_iter];
    Annual_sea_ice_conc_encountered_SCE1Route3_tf = Annual_sea_ice_conc_encountered_SCE1Route3_tf(Annual_sea_ice_conc_encountered_SCE1Route3_tf(:,2)>0);
    
    Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0 = repmat(Annual_sea_ice_thickness_encountered_SCE1Route1_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm = repmat(Annual_sea_ice_thickness_encountered_SCE1Route1_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf = repmat(Annual_sea_ice_thickness_encountered_SCE1Route1_tf,Ship_design_speed_length,1);
    
    Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0 = repmat(Annual_sea_ice_thickness_encountered_SCE1Route2_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm = repmat(Annual_sea_ice_thickness_encountered_SCE1Route2_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf = repmat(Annual_sea_ice_thickness_encountered_SCE1Route2_tf,Ship_design_speed_length,1);
    
    Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0 = repmat(Annual_sea_ice_thickness_encountered_SCE1Route3_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm = repmat(Annual_sea_ice_thickness_encountered_SCE1Route3_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf = repmat(Annual_sea_ice_thickness_encountered_SCE1Route3_tf,Ship_design_speed_length,1);
    
    Agg_Annual_sea_ice_conc_encountered_SCE1Route1_t0 = repmat(Annual_sea_ice_conc_encountered_SCE1Route1_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE1Route1_tm = repmat(Annual_sea_ice_conc_encountered_SCE1Route1_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE1Route1_tf = repmat(Annual_sea_ice_conc_encountered_SCE1Route1_tf,Ship_design_speed_length,1);
    
    Agg_Annual_sea_ice_conc_encountered_SCE1Route2_t0 = repmat(Annual_sea_ice_conc_encountered_SCE1Route2_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE1Route2_tm = repmat(Annual_sea_ice_conc_encountered_SCE1Route2_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE1Route2_tf = repmat(Annual_sea_ice_conc_encountered_SCE1Route2_tf,Ship_design_speed_length,1);
    
    Agg_Annual_sea_ice_conc_encountered_SCE1Route3_t0 = repmat(Annual_sea_ice_conc_encountered_SCE1Route3_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE1Route3_tm = repmat(Annual_sea_ice_conc_encountered_SCE1Route3_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE1Route3_tf = repmat(Annual_sea_ice_conc_encountered_SCE1Route3_tf,Ship_design_speed_length,1);
    
    %t_0
    %%%%%%%%%%%
    Agg_Op_speed1_SCE1Route1_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed1_SCE1Route1_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        Agg_Op_speed1_SCE1Route1_iter = [Agg_Op_speed1_SCE1Route1_iter; Agg_Op_speed1_SCE1Route1_iter_iter];
    end
    
    Agg_Psi_iter = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        Agg_Psi_iter = [Agg_Psi_iter; Agg_Psi_iter_iter];
    end
    
    Agg_Alpha_iter = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        Agg_Alpha_iter = [Agg_Alpha_iter; Agg_Alpha_iter_iter];
    end
    
    Agg_length1_SCE1Route1 = [];
    for i = 1:1:length(Length_iter)
        Agg_length1_SCE1Route1_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        Agg_length1_SCE1Route1 = [Agg_length1_SCE1Route1; Agg_length1_SCE1Route1_iter];
    end
    
    Agg_draught1_SCE1Route1= [];
    for i = 1:1:length(T_iter)
        Agg_draught1_SCE1Route1_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        Agg_draught1_SCE1Route1 = [Agg_draught1_SCE1Route1; Agg_draught1_SCE1Route1_iter];
    end
    
    OW_Resistance_N_SCE1Route1_t0 = [];
    for i = 1:1:length(v_iter)
        OW_Resistance_N_SCE1Route1_t0_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        OW_Resistance_N_SCE1Route1_t0 = [OW_Resistance_N_SCE1Route1_t0; OW_Resistance_N_SCE1Route1_t0_iter];
    end
    
    C_T_SCE1Route1_t0 = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE1Route1_t0_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        C_T_SCE1Route1_t0 = [C_T_SCE1Route1_t0; C_T_SCE1Route1_t0_iter];
    end
    
    S_SCE1Route1_t0 = [];
    for i = 1:1:length(S_iter)
        S_SCE1Route1_t0_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        S_SCE1Route1_t0 = [S_SCE1Route1_t0; S_SCE1Route1_t0_iter];
    end
    
    %t_m
    %%%%%%%%%%%
    Agg_Op_speed2_SCE1Route1_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed2_SCE1Route1_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tm),1);
        Agg_Op_speed2_SCE1Route1_iter = [Agg_Op_speed2_SCE1Route1_iter; Agg_Op_speed2_SCE1Route1_iter_iter];
    end
    
    Agg_length2_SCE1Route1 = [];
    for i = 1:1:length(Length_iter)
        Agg_length2_SCE1Route1_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tm),1);
        Agg_length2_SCE1Route1 = [Agg_length2_SCE1Route1; Agg_length2_SCE1Route1_iter];
    end
    
    Agg_draught2_SCE1Route1= [];
    for i = 1:1:length(T_iter)
        Agg_draught2_SCE1Route1_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tm),1);
        Agg_draught2_SCE1Route1 = [Agg_draught2_SCE1Route1; Agg_draught2_SCE1Route1_iter];
    end
    
    OW_Resistance_N_SCE1Route1_tm = [];
    for i = 1:1:length(v_iter)
        OW_Resistance_N_SCE1Route1_tm_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tm),1);
        OW_Resistance_N_SCE1Route1_tm = [OW_Resistance_N_SCE1Route1_tm; OW_Resistance_N_SCE1Route1_tm_iter];
    end
    
    C_T_SCE1Route1_tm = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE1Route1_tm_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tm),1);
        C_T_SCE1Route1_tm = [C_T_SCE1Route1_tm; C_T_SCE1Route1_tm_iter];
    end
    
    S_SCE1Route1_tm = [];
    for i = 1:1:length(S_iter)
        S_SCE1Route1_tm_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tm),1);
        S_SCE1Route1_tm = [S_SCE1Route1_tm; S_SCE1Route1_tm_iter];
    end
    
    %t_f
    %%%%%%%%%%%
    Agg_Op_speed3_SCE1Route1_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed3_SCE1Route1_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tf),1);
        Agg_Op_speed3_SCE1Route1_iter = [Agg_Op_speed3_SCE1Route1_iter; Agg_Op_speed3_SCE1Route1_iter_iter];
    end
    
    Agg_length3_SCE1Route1 = [];
    for i = 1:1:length(Length_iter)
        Agg_length3_SCE1Route1_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tf),1);
        Agg_length3_SCE1Route1 = [Agg_length3_SCE1Route1; Agg_length3_SCE1Route1_iter];
    end
    
    Agg_draught3_SCE1Route1= [];
    for i = 1:1:length(T_iter)
        Agg_draught3_SCE1Route1_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tf),1);
        Agg_draught3_SCE1Route1 = [Agg_draught3_SCE1Route1; Agg_draught3_SCE1Route1_iter];
    end
    
    OW_Resistance_N_SCE1Route1_tf = [];
    for i = 1:1:length(v_iter)
        OW_Resistance_N_SCE1Route1_tf_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tf),1);
        OW_Resistance_N_SCE1Route1_tf = [OW_Resistance_N_SCE1Route1_tf; OW_Resistance_N_SCE1Route1_tf_iter];
    end
    
    C_T_SCE1Route1_tf = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE1Route1_tf_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tf),1);
        C_T_SCE1Route1_tf = [C_T_SCE1Route1_tf; C_T_SCE1Route1_tf_iter];
    end
    
    S_SCE1Route1_tf = [];
    for i = 1:1:length(S_iter)
        S_SCE1Route1_tf_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tf),1);
        S_SCE1Route1_tf = [S_SCE1Route1_tf; S_SCE1Route1_tf_iter];
    end
    
    
    Total_Resistance_SCE1Route1_t0 = [];
    Operating_speed_SCE1Route1_t0 = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_t0_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE1Route1_t0 = OW_Resistance_N_SCE1Route1_t0_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_t0_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE1Route1_t0 = OW_Resistance_N_SCE1Route1_t0_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_t0_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE1Route1_t0 = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_t0_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE1Route1_t0 = OW_Resistance_N_SCE1Route1_t0_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_t0_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE1Route1_t0 = OW_Resistance_N_SCE1Route1_t0_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0(i) > 0.3
            
            Vertical_force_SCE1Route1_t0 = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0(i)).^2;
            
            A_SCE1Route1 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE1Route1 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE1Route1_t0 = Vertical_force_SCE1Route1_t0.*(A_SCE1Route1./B_SCE1Route1);
            
            C1_SCE1Route1 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE1Route1 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE1Route1 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE1Route1_t0 = C1_SCE1Route1.*D_SCE1Route1.*E_SCE1Route1;
            
            F1_SCE1Route1 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0(i));
            G1_SCE1Route1 = Agg_draught1_SCE1Route1(i).*(Beam_iter+Agg_draught1_SCE1Route1(i))./(Beam_iter+(2*Agg_draught1_SCE1Route1(i)));
            H1_SCE1Route1 = 0.7.*Agg_length1_SCE1Route1(i); %70% assumed from Lindqvist
            I1_SCE1Route1 = Agg_draught1_SCE1Route1(i)./tan(Phi_iter);
            J1_SCE1Route1 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE1Route1 = Agg_draught1_SCE1Route1(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE1Route1  = 1./(sin(Phi_iter.^2));
            K_part2_SCE1Route1  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE1Route1 = (K_part1_SCE1Route1+K_part2_SCE1Route1).^0.5;
            
            Submersion_Resistance_component_SCE1Route1_t0 = F1_SCE1Route1.*Beam_iter.*(G1_SCE1Route1+Mu.*(H1_SCE1Route1-I1_SCE1Route1-J1_SCE1Route1+(K1_SCE1Route1.*K_part3_SCE1Route1)));
            Agg_Crushing_Resistance_component_SCE1Route1_t0 = Crushing_Resistance_component_SCE1Route1_t0;
            Agg_Bending_Resistance_component_SCE1Route1_t0 = Bending_Resistance_component_SCE1Route1_t0;
            
            L1_SCE1Route1 = (Agg_Crushing_Resistance_component_SCE1Route1_t0 + Agg_Bending_Resistance_component_SCE1Route1_t0);
            M1_SCE1Route1 = (1+((1.4*Op_speed_metrespersec1_SCE1Route1)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0(i)).^0.5)));
            N1_SCE1Route1 = Submersion_Resistance_component_SCE1Route1_t0.*(1+((9.4.*Op_speed_metrespersec1_SCE1Route1)./((g.*Agg_length1_SCE1Route1(i)).^0.5)));
            
            Total_Ice_Resistance_SCE1Route1_t0 = (L1_SCE1Route1.*M1_SCE1Route1)+N1_SCE1Route1;
            Total_Resistance_SCE1Route1_t0_iter = OW_Resistance_N_SCE1Route1_t0_iter + Total_Ice_Resistance_SCE1Route1_t0;
            
            Operating_speed_SCE1Route1_t0_iter = (Effective_power_SCE1Route1_t0./Total_Resistance_SCE1Route1_t0_iter);
            
        else %Ice floe resistance calculation
            
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0_abs = Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0(i)./Agg_Annual_sea_ice_conc_encountered_SCE1Route1_t0(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE1Route1./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route1_t0(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE1Route1_t0(i).^5.196);
            
            Total_Ice_Resistance_SCE1Route1_t0 = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route1_t0(i)).*(Op_speed_metrespersec1_SCE1Route1.^2);
            Total_Resistance_SCE1Route1_t0_iter = OW_Resistance_N_SCE1Route1_t0_iter + Total_Ice_Resistance_SCE1Route1_t0;
            
            Operating_speed_SCE1Route1_t0_iter = (Effective_power_SCE1Route1_t0./Total_Resistance_SCE1Route1_t0_iter);
            
        end
        Total_Resistance_SCE1Route1_t0 = [Total_Resistance_SCE1Route1_t0; Total_Resistance_SCE1Route1_t0_iter];
        Operating_speed_SCE1Route1_t0 = [Operating_speed_SCE1Route1_t0; Operating_speed_SCE1Route1_t0_iter];
    end
    
    Total_Resistance_SCE1Route1_tm = [];
    Operating_speed_SCE1Route1_tm = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_tm_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE1Route1_tm = OW_Resistance_N_SCE1Route1_tm_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_tm_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE1Route1_tm = OW_Resistance_N_SCE1Route1_tm_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_tm_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE1Route1_tm = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_tm_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE1Route1_tm = OW_Resistance_N_SCE1Route1_tm_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_tm_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE1Route1_tm = OW_Resistance_N_SCE1Route1_tm_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm(i) > 0.3
            
            Vertical_force_SCE1Route1_tm = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm(i)).^2;
            
            A_SCE1Route1 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE1Route1 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE1Route1_tm = Vertical_force_SCE1Route1_tm.*(A_SCE1Route1./B_SCE1Route1);
            
            C1_SCE1Route1 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE1Route1 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE1Route1 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE1Route1_tm = C1_SCE1Route1.*D_SCE1Route1.*E_SCE1Route1;
            
            F1_SCE1Route1 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm(i));
            G1_SCE1Route1 = Agg_draught1_SCE1Route1(i).*(Beam_iter+Agg_draught1_SCE1Route1(i))./(Beam_iter+(2*Agg_draught1_SCE1Route1(i)));
            H1_SCE1Route1 = 0.7.*Agg_length1_SCE1Route1(i); %70% assumed from Lindqvist
            I1_SCE1Route1 = Agg_draught1_SCE1Route1(i)./tan(Phi_iter);
            J1_SCE1Route1 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE1Route1 = Agg_draught1_SCE1Route1(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE1Route1  = 1./(sin(Phi_iter.^2));
            K_part2_SCE1Route1  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE1Route1 = (K_part1_SCE1Route1+K_part2_SCE1Route1).^0.5;
            
            Submersion_Resistance_component_SCE1Route1_tm = F1_SCE1Route1.*Beam_iter.*(G1_SCE1Route1+Mu.*(H1_SCE1Route1-I1_SCE1Route1-J1_SCE1Route1+(K1_SCE1Route1.*K_part3_SCE1Route1)));
            Agg_Crushing_Resistance_component_SCE1Route1_tm = Crushing_Resistance_component_SCE1Route1_tm;
            Agg_Bending_Resistance_component_SCE1Route1_tm = Bending_Resistance_component_SCE1Route1_tm;
            
            L1_SCE1Route1 = (Agg_Crushing_Resistance_component_SCE1Route1_tm + Agg_Bending_Resistance_component_SCE1Route1_tm);
            M1_SCE1Route1 = (1+((1.4*Op_speed_metrespersec1_SCE1Route1)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm(i)).^0.5)));
            N1_SCE1Route1 = Submersion_Resistance_component_SCE1Route1_tm.*(1+((9.4.*Op_speed_metrespersec1_SCE1Route1)./((g.*Agg_length1_SCE1Route1(i)).^0.5)));
            
            Total_Ice_Resistance_SCE1Route1_tm = (L1_SCE1Route1.*M1_SCE1Route1)+N1_SCE1Route1;
            Total_Resistance_SCE1Route1_tm_iter = OW_Resistance_N_SCE1Route1_tm_iter + Total_Ice_Resistance_SCE1Route1_tm;
            
            Operating_speed_SCE1Route1_tm_iter = (Effective_power_SCE1Route1_tm./Total_Resistance_SCE1Route1_tm_iter);
            
            
        else %Ice floe resistance calculation
            
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm_abs = Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm(i)./Agg_Annual_sea_ice_conc_encountered_SCE1Route1_tm(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE1Route1./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route1_tm(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE1Route1_tm(i).^5.196);
            
            Total_Ice_Resistance_SCE1Route1_tm = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route1_tm(i)).*(Op_speed_metrespersec1_SCE1Route1.^2);
            Total_Resistance_SCE1Route1_tm_iter = OW_Resistance_N_SCE1Route1_tm_iter + Total_Ice_Resistance_SCE1Route1_tm;
            
            Operating_speed_SCE1Route1_tm_iter = (Effective_power_SCE1Route1_tm./Total_Resistance_SCE1Route1_tm_iter);
            
        end
        Total_Resistance_SCE1Route1_tm = [Total_Resistance_SCE1Route1_tm; Total_Resistance_SCE1Route1_tm_iter];
        Operating_speed_SCE1Route1_tm = [Operating_speed_SCE1Route1_tm; Operating_speed_SCE1Route1_tm_iter];
    end
    
    Total_Resistance_SCE1Route1_tf = [];
    Operating_speed_SCE1Route1_tf = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_tf_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE1Route1_tf = OW_Resistance_N_SCE1Route1_tf_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_tf_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE1Route1_tf = OW_Resistance_N_SCE1Route1_tf_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_tf_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE1Route1_tf = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_tf_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE1Route1_tf = OW_Resistance_N_SCE1Route1_tf_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route1 = Agg_Op_speed1_SCE1Route1_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route1_tf_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE1Route1_tf = OW_Resistance_N_SCE1Route1_tf_iter.*Op_speed_metrespersec1_SCE1Route1;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf(i) > 0.3
            
            Vertical_force_SCE1Route1_tf = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf(i)).^2;
            
            A_SCE1Route1 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE1Route1 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE1Route1_tf = Vertical_force_SCE1Route1_tf.*(A_SCE1Route1./B_SCE1Route1);
            
            C1_SCE1Route1 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE1Route1 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE1Route1 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE1Route1_tf = C1_SCE1Route1.*D_SCE1Route1.*E_SCE1Route1;
            
            F1_SCE1Route1 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf(i));
            G1_SCE1Route1 = Agg_draught1_SCE1Route1(i).*(Beam_iter+Agg_draught1_SCE1Route1(i))./(Beam_iter+(2*Agg_draught1_SCE1Route1(i)));
            H1_SCE1Route1 = 0.7.*Agg_length1_SCE1Route1(i); %70% assumed from Lindqvist
            I1_SCE1Route1 = Agg_draught1_SCE1Route1(i)./tan(Phi_iter);
            J1_SCE1Route1 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE1Route1 = Agg_draught1_SCE1Route1(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE1Route1  = 1./(sin(Phi_iter.^2));
            K_part2_SCE1Route1  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE1Route1 = (K_part1_SCE1Route1+K_part2_SCE1Route1).^0.5;
            
            Submersion_Resistance_component_SCE1Route1_tf = F1_SCE1Route1.*Beam_iter.*(G1_SCE1Route1+Mu.*(H1_SCE1Route1-I1_SCE1Route1-J1_SCE1Route1+(K1_SCE1Route1.*K_part3_SCE1Route1)));
            Agg_Crushing_Resistance_component_SCE1Route1_tf = Crushing_Resistance_component_SCE1Route1_tf;
            Agg_Bending_Resistance_component_SCE1Route1_tf = Bending_Resistance_component_SCE1Route1_tf;
            
            L1_SCE1Route1 = (Agg_Crushing_Resistance_component_SCE1Route1_tf + Agg_Bending_Resistance_component_SCE1Route1_tf);
            M1_SCE1Route1 = (1+((1.4*Op_speed_metrespersec1_SCE1Route1)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf(i)).^0.5)));
            N1_SCE1Route1 = Submersion_Resistance_component_SCE1Route1_tf.*(1+((9.4.*Op_speed_metrespersec1_SCE1Route1)./((g.*Agg_length1_SCE1Route1(i)).^0.5)));
            
            Total_Ice_Resistance_SCE1Route1_tf = (L1_SCE1Route1.*M1_SCE1Route1)+N1_SCE1Route1;
            Total_Resistance_SCE1Route1_tf_iter = OW_Resistance_N_SCE1Route1_tf_iter + Total_Ice_Resistance_SCE1Route1_tf;
            
            Operating_speed_SCE1Route1_tf_iter = (Effective_power_SCE1Route1_tf./Total_Resistance_SCE1Route1_tf_iter);
            
            
        else %Ice floe resistance calculation
            
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf_abs = Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf(i)./Agg_Annual_sea_ice_conc_encountered_SCE1Route1_tf(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE1Route1./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route1_tf(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE1Route1_tf(i).^5.196);
            
            Total_Ice_Resistance_SCE1Route1_tf = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route1_tf(i)).*(Op_speed_metrespersec1_SCE1Route1.^2);
            Total_Resistance_SCE1Route1_tf_iter = OW_Resistance_N_SCE1Route1_tf_iter + Total_Ice_Resistance_SCE1Route1_tf;
            
            Operating_speed_SCE1Route1_tf_iter = (Effective_power_SCE1Route1_tf./Total_Resistance_SCE1Route1_tf_iter);
            
        end
        Total_Resistance_SCE1Route1_tf = [Total_Resistance_SCE1Route1_tf; Total_Resistance_SCE1Route1_tf_iter];
        Operating_speed_SCE1Route1_tf = [Operating_speed_SCE1Route1_tf; Operating_speed_SCE1Route1_tf_iter];
    end
    
    %Resize the variables to align with the shape of the other variables
    Operating_speed_SCE1Route1_t0 = Operating_speed_SCE1Route1_t0./0.514444444;
    Operating_speed_SCE1Route1_tm = Operating_speed_SCE1Route1_tm./0.514444444;
    Operating_speed_SCE1Route1_tf = Operating_speed_SCE1Route1_tf./0.514444444;
    
    %Where the ice is thicker than 0.8m it also needs an icebreaker...
    Ice_Logic_t0 = (Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_t0 > 0.7);
    Ice_Logic_tm = (Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tm > 0.7);
    Ice_Logic_tf = (Agg_Annual_sea_ice_thickness_encountered_SCE1Route1_tf > 0.7);
    
    Operating_speed_SCE1Route1_t0(Ice_Logic_t0) = 3;
    Operating_speed_SCE1Route1_tm(Ice_Logic_tm) = 3;
    Operating_speed_SCE1Route1_tf(Ice_Logic_tf) = 3;
    
    Global_IceStrengthOutput_SCE1Route1_power_kW_t0 = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE1Route1_power_kW_t0_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        Global_IceStrengthOutput_SCE1Route1_power_kW_t0 = [Global_IceStrengthOutput_SCE1Route1_power_kW_t0;Global_IceStrengthOutput_SCE1Route1_power_kW_t0_iter];
    end
    
    Global_IceStrengthOutput_SCE1Route1_power_kW_tm = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE1Route1_power_kW_tm_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tm),1);
        Global_IceStrengthOutput_SCE1Route1_power_kW_tm = [Global_IceStrengthOutput_SCE1Route1_power_kW_tm;Global_IceStrengthOutput_SCE1Route1_power_kW_tm_iter];
    end
    
    Global_IceStrengthOutput_SCE1Route1_power_kW_tf = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE1Route1_power_kW_tf_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tf),1);
        Global_IceStrengthOutput_SCE1Route1_power_kW_tf = [Global_IceStrengthOutput_SCE1Route1_power_kW_tf;Global_IceStrengthOutput_SCE1Route1_power_kW_tf_iter];
    end
    
    Global_SCE1Route1_sfc_t0 = [];
    
    for i = 1:1:length(Icesfc_iter)
        Global_SCE1Route1_sfc_t0_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        Global_SCE1Route1_sfc_t0  = [Global_SCE1Route1_sfc_t0; Global_SCE1Route1_sfc_t0_iter];
    end
    
    Global_SCE1Route1_sfc_tm = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE1Route1_sfc_tm_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tm),1);
        Global_SCE1Route1_sfc_tm  = [Global_SCE1Route1_sfc_tm; Global_SCE1Route1_sfc_tm_iter];
    end
    
    Global_SCE1Route1_sfc_tf = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE1Route1_sfc_tf_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tf),1);
        Global_SCE1Route1_sfc_tf  = [Global_SCE1Route1_sfc_tf; Global_SCE1Route1_sfc_tf_iter];
    end
    
    Operating_speed_index_SCE1Route1_t0 = find(Operating_speed_SCE1Route1_t0<3);
    for i = 1:1:length(Operating_speed_index_SCE1Route1_t0)
        Operating_speed_SCE1Route1_t0(Operating_speed_index_SCE1Route1_t0(i)) = 3;
    end
    
    Operating_speed_index_SCE1Route1_tm = find(Operating_speed_SCE1Route1_tm<3);
    for i = 1:1:length(Operating_speed_index_SCE1Route1_tm)
        Operating_speed_SCE1Route1_tm(Operating_speed_index_SCE1Route1_tm(i)) = 3;
    end
    
    Operating_speed_index_SCE1Route1_tf = find(Operating_speed_SCE1Route1_tf<3);
    for i = 1:1:length(Operating_speed_index_SCE1Route1_tf)
        Operating_speed_SCE1Route1_tf(Operating_speed_index_SCE1Route1_tf(i)) = 3;
    end
    
    % Des_v
    Global_SCE1Route1_Des_v_t0 = [];
    
    for i = 1:1:length(Des_v_iter)
        Global_SCE1Route1_Des_v_t0_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        Global_SCE1Route1_Des_v_t0  = [Global_SCE1Route1_Des_v_t0; Global_SCE1Route1_Des_v_t0_iter];
    end
    
    Global_SCE1Route1_Des_v_tm = [];
    
    for i = 1:1:length(Des_v_iter)
        Global_SCE1Route1_Des_v_tm_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tm),1);
        Global_SCE1Route1_Des_v_tm  = [Global_SCE1Route1_Des_v_tm; Global_SCE1Route1_Des_v_tm_iter];
    end
    
    Global_SCE1Route1_Des_v_tf = [];
    
    for i = 1:1:length(Des_v_iter)
        Global_SCE1Route1_Des_v_tf_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tf),1);
        Global_SCE1Route1_Des_v_tf  = [Global_SCE1Route1_Des_v_tf; Global_SCE1Route1_Des_v_tf_iter];
    end
    
    % Ice_Installed_Power_kW_iter
    Global_SCE1Route1_Ice_Installed_Power_kW_t0 = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE1Route1_Ice_Installed_Power_kW_t0_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_t0),1);
        Global_SCE1Route1_Ice_Installed_Power_kW_t0  = [Global_SCE1Route1_Ice_Installed_Power_kW_t0; Global_SCE1Route1_Ice_Installed_Power_kW_t0_iter];
    end
    
    Global_SCE1Route1_Ice_Installed_Power_kW_tm = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE1Route1_Ice_Installed_Power_kW_tm_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tm),1);
        Global_SCE1Route1_Ice_Installed_Power_kW_tm  = [Global_SCE1Route1_Ice_Installed_Power_kW_tm; Global_SCE1Route1_Ice_Installed_Power_kW_tm_iter];
    end
    
    Global_SCE1Route1_Ice_Installed_Power_kW_tf = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE1Route1_Ice_Installed_Power_kW_tf_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route1_tf),1);
        Global_SCE1Route1_Ice_Installed_Power_kW_tf  = [Global_SCE1Route1_Ice_Installed_Power_kW_tf; Global_SCE1Route1_Ice_Installed_Power_kW_tf_iter];
    end
    
    Total_Power_demand_SCE1Route1_t0 = Global_SCE1Route1_Ice_Installed_Power_kW_t0.*((Operating_speed_SCE1Route1_t0./Global_SCE1Route1_Des_v_t0).^3)./(Foul_coeff.*Weather_coeff);
    Total_Power_demand_SCE1Route1_tm = Global_SCE1Route1_Ice_Installed_Power_kW_tm.*((Operating_speed_SCE1Route1_tm./Global_SCE1Route1_Des_v_tm).^3)./(Foul_coeff.*Weather_coeff);
    Total_Power_demand_SCE1Route1_tf = Global_SCE1Route1_Ice_Installed_Power_kW_tf.*((Operating_speed_SCE1Route1_tf./Global_SCE1Route1_Des_v_tf).^3)./(Foul_coeff.*Weather_coeff);
    
    Agg_Engine_SCE1Route1_load_t0 = Total_Power_demand_SCE1Route1_t0./Global_SCE1Route1_Ice_Installed_Power_kW_t0;
    Agg_Engine_SCE1Route1_load_tm = Total_Power_demand_SCE1Route1_tm./Global_SCE1Route1_Ice_Installed_Power_kW_tm;
    Agg_Engine_SCE1Route1_load_tf = Total_Power_demand_SCE1Route1_tf./Global_SCE1Route1_Ice_Installed_Power_kW_tf;
    
    %Then I use the IMO 3rd ghg study equation to compute the different SFC,
    %but need to renumerate as the equation doesn't work for loads of 1
    Constant_SCE1Route1_t0 = (0.455.*(Agg_Engine_SCE1Route1_load_t0).^2)-(0.71.*Agg_Engine_SCE1Route1_load_t0)+1.28;
    Constant_SCE1Route1_tm = (0.455.*(Agg_Engine_SCE1Route1_load_tm).^2)-(0.71.*Agg_Engine_SCE1Route1_load_tm)+1.28;
    Constant_SCE1Route1_tf = (0.455.*(Agg_Engine_SCE1Route1_load_tf).^2)-(0.71.*Agg_Engine_SCE1Route1_load_tf)+1.28;
    
    Operating_SFC_SCE1Route1_t0 = Global_SCE1Route1_sfc_t0.*Constant_SCE1Route1_t0;
    Operating_SFC_SCE1Route1_tm = Global_SCE1Route1_sfc_tm.*Constant_SCE1Route1_tm;
    Operating_SFC_SCE1Route1_tf = Global_SCE1Route1_sfc_tf.*Constant_SCE1Route1_tf;
    
    SFC_index_SCE1Route1_t0 = find(Agg_Engine_SCE1Route1_load_t0==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE1Route1_t0)
        Operating_SFC_SCE1Route1_t0(SFC_index_SCE1Route1_t0(i)) = Global_SCE1Route1_sfc_t0(SFC_index_SCE1Route1_t0(i));
    end
    
    SFC_index_SCE1Route1_tm = find(Agg_Engine_SCE1Route1_load_tm==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE1Route1_tm)
        Operating_SFC_SCE1Route1_tm(SFC_index_SCE1Route1_tm(i)) = Global_SCE1Route1_sfc_tm(SFC_index_SCE1Route1_tm(i));
    end
    
    SFC_index_SCE1Route1_tf = find(Agg_Engine_SCE1Route1_load_tf==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE1Route1_tf)
        Operating_SFC_SCE1Route1_tf(SFC_index_SCE1Route1_tf(i)) = Global_SCE1Route1_sfc_tf(SFC_index_SCE1Route1_tf(i));
    end
    
    % %Aggregate the unit lengths together so I can then calculate the time it
    % %takes for the ship to traverse the route each year - MUST BE CAREFUL AS
    
    Array_Unit_length_Route_1 = [Unit_length_AB; Unit_length_BD;...
        Unit_length_DE; Unit_length_EF; Unit_length_FG; Unit_length_FG(3)]; %I assume that the last interval of the route is the same as the one previous for FG
    %Resize this to be compatible with the other variables then obtain the
    %energy demand
    
    Global_Array_Unit_length_SCE1Route_1_t0 = repmat(Array_Unit_length_Route_1,length(v_iter).*sum(Logic_mat_IceStrength_feasibility_Scenario1_iter),1); %12 months in a year
    Global_Array_Unit_length_SCE1Route_1_tm = repmat(Array_Unit_length_Route_1,length(v_iter).*sum(Logic_mat_IceStrength_feasibility_Scenario1_iter),1);
    Global_Array_Unit_length_SCE1Route_1_tf = repmat(Array_Unit_length_Route_1,length(v_iter).*sum(Logic_mat_IceStrength_feasibility_Scenario1_iter),1);
    
    Time_hrs_SCE1Route1_t0 = Global_Array_Unit_length_SCE1Route_1_t0./Operating_speed_SCE1Route1_t0;
    Time_hrs_SCE1Route1_tm = Global_Array_Unit_length_SCE1Route_1_tm./Operating_speed_SCE1Route1_tm;
    Time_hrs_SCE1Route1_tf = Global_Array_Unit_length_SCE1Route_1_tf./Operating_speed_SCE1Route1_tf;
    
    %Reshaping the time matrices to work out the number of days spent on the
    %NSR which can be used later in the commercial profile function
    Reshaped_Time_hrs_SCE1Route1_t0_iter = reshape(Time_hrs_SCE1Route1_t0,length(Global_Array_Unit_length_SCE1Route_1_t0(:,1))./(length(v_iter)),length(v_iter));
    Reshaped_Time_hrs_SCE1Route1_tm_iter = reshape(Time_hrs_SCE1Route1_tm,length(Global_Array_Unit_length_SCE1Route_1_tm(:,1))./(length(v_iter)),length(v_iter));
    Reshaped_Time_hrs_SCE1Route1_tf_iter = reshape(Time_hrs_SCE1Route1_tf,length(Global_Array_Unit_length_SCE1Route_1_tf(:,1))./(length(v_iter)),length(v_iter));
    
    Reshaped_Time_days_SCE1Route1_t0_iter = [];
    for i = 1:1:length(Reshaped_Time_hrs_SCE1Route1_t0_iter(:,1))./length(Array_Unit_length_Route_1(:,1))
        Part_Time_days_SCE1Route1_t0 = Reshaped_Time_hrs_SCE1Route1_t0_iter((i-1)*length(Array_Unit_length_Route_1(:,1))+1:i*length(Array_Unit_length_Route_1(:,1)),:);
        Reshaped_Time_days_SCE1Route1_t0_iter_iter = sum(Part_Time_days_SCE1Route1_t0);
        Reshaped_Time_days_SCE1Route1_t0_iter = [Reshaped_Time_days_SCE1Route1_t0_iter; Reshaped_Time_days_SCE1Route1_t0_iter_iter];
    end
    Reshaped_Time_days_SCE1Route1_t0_iter = Reshaped_Time_days_SCE1Route1_t0_iter'; Reshaped_Time_days_SCE1Route1_t0_iter = Reshaped_Time_days_SCE1Route1_t0_iter./24;
    
    %If the time takes longer than 31 days minus the open water time per month then don't consider
    for i = 1:1:Ship_design_speed_length
        Reshaped_Time_days_SCE1Route1_t0_iter_iter_iter = Reshaped_Time_days_SCE1Route1_t0_iter(i,:);
        Reshaped_Time_days_SCE1Route1_t0_iter_iter_iter(Reshaped_Time_days_SCE1Route1_t0_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
        Reshaped_Time_days_SCE1Route1_t0_iter(i,:) = Reshaped_Time_days_SCE1Route1_t0_iter_iter_iter;
    end
    
    Logic = Reshaped_Time_days_SCE1Route1_t0_iter > 0; Logic = Logic';
    Time = reshape(Time_hrs_SCE1Route1_t0,length(Global_Array_Unit_length_SCE1Route_1_t0(:,1))./(length(v_iter)),length(v_iter));
    
    Global_Logic = zeros(length(Reshaped_Time_hrs_SCE1Route1_t0_iter(:,1))./length(Array_Unit_length_Route_1(:,1)).*length(Array_Unit_length_Route_1(:,1)),length(Logic(1,:)));
    for i = 1:1:length(Logic(:,1))
        Global_Logic(length(Array_Unit_length_Route_1(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_1(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_1(:,1)),1);
    end
    Time_hrs_SCE1Route1_t0 = Time.*Global_Logic; Time_hrs_SCE1Route1_t0 = reshape(Time_hrs_SCE1Route1_t0,length(Global_Array_Unit_length_SCE1Route_1_t0(:,1)),1);
    
    clear Logic Time Global_Logic
    
    Reshaped_Time_days_SCE1Route1_tm_iter = [];
    for i = 1:1:length(Reshaped_Time_hrs_SCE1Route1_tm_iter(:,1))./length(Array_Unit_length_Route_1(:,1))
        Part_Time_days_SCE1Route1_tm = Reshaped_Time_hrs_SCE1Route1_tm_iter((i-1)*length(Array_Unit_length_Route_1(:,1))+1:i*length(Array_Unit_length_Route_1(:,1)),:);
        Reshaped_Time_days_SCE1Route1_tm_iter_iter = sum(Part_Time_days_SCE1Route1_tm);
        Reshaped_Time_days_SCE1Route1_tm_iter = [Reshaped_Time_days_SCE1Route1_tm_iter; Reshaped_Time_days_SCE1Route1_tm_iter_iter];
    end
    Reshaped_Time_days_SCE1Route1_tm_iter = Reshaped_Time_days_SCE1Route1_tm_iter'; Reshaped_Time_days_SCE1Route1_tm_iter = Reshaped_Time_days_SCE1Route1_tm_iter./24;
    
    for i = 1:1:Ship_design_speed_length
        Reshaped_Time_days_SCE1Route1_tm_iter_iter_iter = Reshaped_Time_days_SCE1Route1_tm_iter(i,:);
        Reshaped_Time_days_SCE1Route1_tm_iter_iter_iter(Reshaped_Time_days_SCE1Route1_tm_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
        Reshaped_Time_days_SCE1Route1_tm_iter(i,:) = Reshaped_Time_days_SCE1Route1_tm_iter_iter_iter;
    end
    
    Logic = Reshaped_Time_days_SCE1Route1_tm_iter > 0; Logic = Logic';
    Time = reshape(Time_hrs_SCE1Route1_tm,length(Global_Array_Unit_length_SCE1Route_1_tm(:,1))./(length(v_iter)),length(v_iter));
    Global_Logic = zeros(length(Reshaped_Time_hrs_SCE1Route1_tm_iter(:,1))./length(Array_Unit_length_Route_1(:,1)).*length(Array_Unit_length_Route_1(:,1)),length(Logic(1,:)));
    for i = 1:1:length(Logic(:,1))
        Global_Logic(length(Array_Unit_length_Route_1(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_1(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_1(:,1)),1);
    end
    Time_hrs_SCE1Route1_tm = Time.*Global_Logic; Time_hrs_SCE1Route1_tm = reshape(Time_hrs_SCE1Route1_tm,length(Global_Array_Unit_length_SCE1Route_1_tm(:,1)),1);
    
    clear Logic Time Global_Logic
    
    Reshaped_Time_days_SCE1Route1_tf_iter = [];
    for i = 1:1:length(Reshaped_Time_hrs_SCE1Route1_tf_iter(:,1))./length(Array_Unit_length_Route_1(:,1))
        Part_Time_days_SCE1Route1_tf = Reshaped_Time_hrs_SCE1Route1_tf_iter((i-1)*length(Array_Unit_length_Route_1(:,1))+1:i*length(Array_Unit_length_Route_1(:,1)),:);
        Reshaped_Time_days_SCE1Route1_tf_iter_iter = sum(Part_Time_days_SCE1Route1_tf);
        Reshaped_Time_days_SCE1Route1_tf_iter = [Reshaped_Time_days_SCE1Route1_tf_iter; Reshaped_Time_days_SCE1Route1_tf_iter_iter];
    end
    Reshaped_Time_days_SCE1Route1_tf_iter = Reshaped_Time_days_SCE1Route1_tf_iter'; Reshaped_Time_days_SCE1Route1_tf_iter = Reshaped_Time_days_SCE1Route1_tf_iter./24;
    
    for i = 1:1:Ship_design_speed_length
        Reshaped_Time_days_SCE1Route1_tf_iter_iter_iter = Reshaped_Time_days_SCE1Route1_tf_iter(i,:);
        Reshaped_Time_days_SCE1Route1_tf_iter_iter_iter(Reshaped_Time_days_SCE1Route1_tf_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
        Reshaped_Time_days_SCE1Route1_tf_iter(i,:) = Reshaped_Time_days_SCE1Route1_tf_iter_iter_iter;
    end
    
    Logic = Reshaped_Time_days_SCE1Route1_tf_iter > 0; Logic = Logic';
    Time = reshape(Time_hrs_SCE1Route1_tf,length(Global_Array_Unit_length_SCE1Route_1_tf(:,1))./(length(v_iter)),length(v_iter));
    Global_Logic = zeros(length(Reshaped_Time_hrs_SCE1Route1_tf_iter(:,1))./length(Array_Unit_length_Route_1(:,1)).*length(Array_Unit_length_Route_1(:,1)),length(Logic(1,:)));
    for i = 1:1:length(Logic(:,1))
        Global_Logic(length(Array_Unit_length_Route_1(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_1(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_1(:,1)),1);
    end
    Time_hrs_SCE1Route1_tf = Time.*Global_Logic; Time_hrs_SCE1Route1_tf = reshape(Time_hrs_SCE1Route1_tf,length(Global_Array_Unit_length_SCE1Route_1_tf(:,1)),1);
    
    clear Logic Time Global_Logic
    
    Energy_demand_SCE1Route1_t0_iter =  Total_Power_demand_SCE1Route1_t0.*Time_hrs_SCE1Route1_t0; %kWh
    Energy_demand_SCE1Route1_tm_iter =  Total_Power_demand_SCE1Route1_tm.*Time_hrs_SCE1Route1_tm;
    Energy_demand_SCE1Route1_tf_iter =  Total_Power_demand_SCE1Route1_tf.*Time_hrs_SCE1Route1_tf;
    
    %Fuel consumed
    Fuel_consumed_SCE1Route1_t0_iter = Energy_demand_SCE1Route1_t0_iter.*Operating_SFC_SCE1Route1_t0*10^-6; %Tonnes
    Fuel_consumed_SCE1Route1_tm_iter = Energy_demand_SCE1Route1_tm_iter.*Operating_SFC_SCE1Route1_tm*10^-6;
    Fuel_consumed_SCE1Route1_tf_iter = Energy_demand_SCE1Route1_tf_iter.*Operating_SFC_SCE1Route1_tf*10^-6;
    
    %Number of days requiring an icebreaker - I calculate it for each
    %individual ship design
    %t_0
    %%%%%%%%%%%%%%%
    Length_OP_Speed_SCE1Route1_t0 = length(Operating_speed_SCE1Route1_t0);
    Partitioned_length_OP_Speed_SCE1Route1_t0 = Length_OP_Speed_SCE1Route1_t0./length(v_iter);
    Reshaped_Operating_speed_SCE1Route1_t0 = reshape(Operating_speed_SCE1Route1_t0,[Partitioned_length_OP_Speed_SCE1Route1_t0,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Length_Time_hrs_SCE1Route1_t0 = length(Time_hrs_SCE1Route1_t0);
    Partitioned_length_Time_hrs_SCE1Route1_t0 = Length_Time_hrs_SCE1Route1_t0./length(v_iter);
    Reshaped_Time_hrs_SCE1Route1_t0_iter = reshape(Time_hrs_SCE1Route1_t0,[Partitioned_length_Time_hrs_SCE1Route1_t0,length(v_iter)]);
    
    Logic_Operating_speed_SCE1Route1_t0 = Reshaped_Operating_speed_SCE1Route1_t0;
    Logic_Operating_speed_SCE1Route1_t0(Logic_Operating_speed_SCE1Route1_t0 ==3) = 1;
    Logic_Operating_speed_SCE1Route1_t0(Logic_Operating_speed_SCE1Route1_t0 ~=1) = 0;
    
    IB_time_SCE1Route1_t0_iter = Logic_Operating_speed_SCE1Route1_t0.*Reshaped_Time_hrs_SCE1Route1_t0_iter;
    IB_time_SCE1Route1_t0_iter = sum(IB_time_SCE1Route1_t0_iter); IB_time_SCE1Route1_t0_iter = round(IB_time_SCE1Route1_t0_iter./24); IB_time_SCE1Route1_t0_iter =IB_time_SCE1Route1_t0_iter';
    
    %IB time work done proxy - It doesn't need to be aggregated because the IB
    %work is independent of design speed and dependent on the route %1NM =
    %1852m
    Array_Unit_length_Route_1 = repmat(Array_Unit_length_Route_1, sum(Logic_mat_IceStrength_feasibility_Scenario1_iter), 1);
    
    %t_m
    %%%%%%%%%%%%%%
    Length_OP_Speed_SCE1Route1_tm = length(Operating_speed_SCE1Route1_tm);
    Partitioned_length_OP_Speed_SCE1Route1_tm = Length_OP_Speed_SCE1Route1_tm./length(v_iter);
    Reshaped_Operating_speed_SCE1Route1_tm = reshape(Operating_speed_SCE1Route1_tm,[Partitioned_length_OP_Speed_SCE1Route1_tm,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Length_Time_hrs_SCE1Route1_tm = length(Time_hrs_SCE1Route1_tm);
    Partitioned_length_Time_hrs_SCE1Route1_tm = Length_Time_hrs_SCE1Route1_tm./length(v_iter);
    Reshaped_Time_hrs_SCE1Route1_tm_iter = reshape(Time_hrs_SCE1Route1_tm,[Partitioned_length_Time_hrs_SCE1Route1_tm,length(v_iter)]);
    
    Logic_Operating_speed_SCE1Route1_tm = Reshaped_Operating_speed_SCE1Route1_tm;
    Logic_Operating_speed_SCE1Route1_tm(Logic_Operating_speed_SCE1Route1_tm ==3) = 1;
    Logic_Operating_speed_SCE1Route1_tm(Logic_Operating_speed_SCE1Route1_tm ~=1) = 0;
    
    IB_time_SCE1Route1_tm_iter = Logic_Operating_speed_SCE1Route1_tm.*Reshaped_Time_hrs_SCE1Route1_tm_iter;
    IB_time_SCE1Route1_tm_iter = sum(IB_time_SCE1Route1_tm_iter); IB_time_SCE1Route1_tm_iter = round(IB_time_SCE1Route1_tm_iter./24); IB_time_SCE1Route1_tm_iter =IB_time_SCE1Route1_tm_iter';
    
    %t_f
    %%%%%%%%%%%
    Length_OP_Speed_SCE1Route1_tf = length(Operating_speed_SCE1Route1_tf);
    Partitioned_length_OP_Speed_SCE1Route1_tf = Length_OP_Speed_SCE1Route1_tf./length(v_iter);
    Reshaped_Operating_speed_SCE1Route1_tf = reshape(Operating_speed_SCE1Route1_tf,[Partitioned_length_OP_Speed_SCE1Route1_tf,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Length_Time_hrs_SCE1Route1_tf = length(Time_hrs_SCE1Route1_tf);
    Partitioned_length_Time_hrs_SCE1Route1_tf = Length_Time_hrs_SCE1Route1_tf./length(v_iter);
    Reshaped_Time_hrs_SCE1Route1_tf_iter = reshape(Time_hrs_SCE1Route1_tf,[Partitioned_length_Time_hrs_SCE1Route1_tf,length(v_iter)]);
    
    Logic_Operating_speed_SCE1Route1_tf = Reshaped_Operating_speed_SCE1Route1_tf;
    Logic_Operating_speed_SCE1Route1_tf(Logic_Operating_speed_SCE1Route1_tf ==3) = 1;
    Logic_Operating_speed_SCE1Route1_tf(Logic_Operating_speed_SCE1Route1_tf ~=1) = 0;
    
    IB_time_SCE1Route1_tf_iter = Logic_Operating_speed_SCE1Route1_tf.*Reshaped_Time_hrs_SCE1Route1_tf_iter;
    IB_time_SCE1Route1_tf_iter = sum(IB_time_SCE1Route1_tf_iter); IB_time_SCE1Route1_tf_iter = round(IB_time_SCE1Route1_tf_iter./24); IB_time_SCE1Route1_tf_iter =IB_time_SCE1Route1_tf_iter';
    
    %Table length
    Table_length_SCE1Route1_t0 = length(Agg_Op_speed1_SCE1Route1_iter(:));
    Table_length_SCE1Route1_tm = length(Agg_Op_speed2_SCE1Route1_iter(:));
    Table_length_SCE1Route1_tf = length(Agg_Op_speed3_SCE1Route1_iter(:));
    
    %Sum of the fuel and energy consumed
    Partitioned_length_SCE1Route1_t0 =  Table_length_SCE1Route1_t0./Ship_design_speed_length;
    Partitioned_length_SCE1Route1_tm =  Table_length_SCE1Route1_tm./Ship_design_speed_length;
    Partitioned_length_SCE1Route1_tf =  Table_length_SCE1Route1_tf./Ship_design_speed_length;
    
    %Annual fuel consumed
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0_iter = reshape(Fuel_consumed_SCE1Route1_t0_iter(:), Partitioned_length_SCE1Route1_t0, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0_iter = sum(Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0_iter); Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0_iter = Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0_iter';
    
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm_iter = reshape(Fuel_consumed_SCE1Route1_tm_iter(:), Partitioned_length_SCE1Route1_tm, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm_iter = sum(Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm_iter); Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm_iter = Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm_iter';
    
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf_iter = reshape(Fuel_consumed_SCE1Route1_tf_iter(:), Partitioned_length_SCE1Route1_tf, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf_iter = sum(Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf_iter); Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf_iter = Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf_iter';
    
    Ice_Energy_consumed_SCE1Route1_Arctic_t_t0_iter = reshape(Energy_demand_SCE1Route1_t0_iter(:), Partitioned_length_SCE1Route1_t0, Ship_design_speed_length);
    Ice_Energy_consumed_SCE1Route1_Arctic_t_t0_iter = sum(Ice_Energy_consumed_SCE1Route1_Arctic_t_t0_iter); Ice_Energy_consumed_SCE1Route1_Arctic_t_t0_iter = Ice_Energy_consumed_SCE1Route1_Arctic_t_t0_iter';
    
    Ice_Energy_consumed_SCE1Route1_Arctic_t_tm_iter = reshape(Energy_demand_SCE1Route1_tm_iter(:), Partitioned_length_SCE1Route1_tm, Ship_design_speed_length);
    Ice_Energy_consumed_SCE1Route1_Arctic_t_tm_iter = sum(Ice_Energy_consumed_SCE1Route1_Arctic_t_tm_iter); Ice_Energy_consumed_SCE1Route1_Arctic_t_tm_iter = Ice_Energy_consumed_SCE1Route1_Arctic_t_tm_iter';
    
    Ice_Energy_consumed_SCE1Route1_Arctic_t_tf_iter = reshape(Energy_demand_SCE1Route1_tf_iter(:), Partitioned_length_SCE1Route1_tf, Ship_design_speed_length);
    Ice_Energy_consumed_SCE1Route1_Arctic_t_tf_iter = sum(Ice_Energy_consumed_SCE1Route1_Arctic_t_tf_iter); Ice_Energy_consumed_SCE1Route1_Arctic_t_tf_iter = Ice_Energy_consumed_SCE1Route1_Arctic_t_tf_iter';
    %Have to sum each of the rows to make all dimensions align
    
    % Reshaped_Time_days_SCE1Route1_t0_iter = sum(Reshaped_Time_days_SCE1Route1_t0_iter,2);
    sx = size(Reshaped_Time_days_SCE1Route1_t0);
    sy = size(Reshaped_Time_days_SCE1Route1_t0_iter');
    a = max(sx(1),sy(1));
    Reshaped_Time_days_SCE1Route1_t0 = [[Reshaped_Time_days_SCE1Route1_t0;zeros(abs([a 0]-sx))],[Reshaped_Time_days_SCE1Route1_t0_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE1Route1_t0_iter = 30.*ones(length(Reshaped_Time_days_SCE1Route1_t0_iter(:,1)),length(Reshaped_Time_days_SCE1Route1_t0_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE1_Ice_Route1_n_t0_iter = Number_of_days_pm_SCE1Route1_t0_iter./Reshaped_Time_days_SCE1Route1_t0_iter;
    
    sx = size(SCE1_Ice_Route1_n_t0);
    sy = size(SCE1_Ice_Route1_n_t0_iter');
    a = max(sx(1),sy(1));
    SCE1_Ice_Route1_n_t0 = [[SCE1_Ice_Route1_n_t0;zeros(abs([a 0]-sx))],[SCE1_Ice_Route1_n_t0_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE1Route1_tm_iter = sum(Reshaped_Time_days_SCE1Route1_tm_iter,2);
    sx = size(Reshaped_Time_days_SCE1Route1_tm);
    sy = size(Reshaped_Time_days_SCE1Route1_tm_iter');
    a = max(sx(1),sy(1));
    Reshaped_Time_days_SCE1Route1_tm = [[Reshaped_Time_days_SCE1Route1_tm;zeros(abs([a 0]-sx))],[Reshaped_Time_days_SCE1Route1_tm_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE1Route1_tm_iter = 30.*ones(length(Reshaped_Time_days_SCE1Route1_tm_iter(:,1)),length(Reshaped_Time_days_SCE1Route1_tm_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE1_Ice_Route1_n_tm_iter = Number_of_days_pm_SCE1Route1_tm_iter./Reshaped_Time_days_SCE1Route1_tm_iter;
    
    sx = size(SCE1_Ice_Route1_n_tm);
    sy = size(SCE1_Ice_Route1_n_tm_iter');
    a = max(sx(1),sy(1));
    SCE1_Ice_Route1_n_tm = [[SCE1_Ice_Route1_n_tm;zeros(abs([a 0]-sx))],[SCE1_Ice_Route1_n_tm_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE1Route1_tf_iter = sum(Reshaped_Time_days_SCE1Route1_tf_iter,2);
    sx = size(Reshaped_Time_days_SCE1Route1_tf);
    sy = size(Reshaped_Time_days_SCE1Route1_tf_iter');
    a = max(sx(1),sy(1));
    Reshaped_Time_days_SCE1Route1_tf = [[Reshaped_Time_days_SCE1Route1_tf;zeros(abs([a 0]-sx))],[Reshaped_Time_days_SCE1Route1_tf_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE1Route1_tf_iter = 30.*ones(length(Reshaped_Time_days_SCE1Route1_tf_iter(:,1)),length(Reshaped_Time_days_SCE1Route1_tf_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE1_Ice_Route1_n_tf_iter = Number_of_days_pm_SCE1Route1_tf_iter./Reshaped_Time_days_SCE1Route1_tf_iter;
    
    sx = size(SCE1_Ice_Route1_n_tf);
    sy = size(SCE1_Ice_Route1_n_tf_iter');
    a = max(sx(1),sy(1));
    SCE1_Ice_Route1_n_tf = [[SCE1_Ice_Route1_n_tf;zeros(abs([a 0]-sx))],[SCE1_Ice_Route1_n_tf_iter';zeros(abs([a,0]-sy))]];
    
    
    IB_time_SCE1Route1_t0 = [IB_time_SCE1Route1_t0; IB_time_SCE1Route1_t0_iter];
    IB_time_SCE1Route1_tm = [IB_time_SCE1Route1_tm; IB_time_SCE1Route1_tm_iter];
    IB_time_SCE1Route1_tf = [IB_time_SCE1Route1_tf; IB_time_SCE1Route1_tf_iter];
    
    Agg_Op_speed1_SCE1Route1 = [Agg_Op_speed1_SCE1Route1; Agg_Op_speed1_SCE1Route1_iter];
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0 = [Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0; Ice_Fuel_consumed_SCE1Route1_Arctic_t_t0_iter];
    Ice_Energy_consumed_SCE1Route1_Arctic_t_t0 = [Ice_Energy_consumed_SCE1Route1_Arctic_t_t0; Ice_Energy_consumed_SCE1Route1_Arctic_t_t0_iter];
    
    Agg_Op_speed2_SCE1Route1 = [Agg_Op_speed2_SCE1Route1; Agg_Op_speed2_SCE1Route1_iter];
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm = [Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm; Ice_Fuel_consumed_SCE1Route1_Arctic_t_tm_iter];
    Ice_Energy_consumed_SCE1Route1_Arctic_t_tm = [Ice_Energy_consumed_SCE1Route1_Arctic_t_tm; Ice_Energy_consumed_SCE1Route1_Arctic_t_tm_iter];
    
    Agg_Op_speed3_SCE1Route1 = [Agg_Op_speed3_SCE1Route1; Agg_Op_speed3_SCE1Route1_iter];
    Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf = [Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf; Ice_Fuel_consumed_SCE1Route1_Arctic_t_tf_iter];
    Ice_Energy_consumed_SCE1Route1_Arctic_t_tf = [Ice_Energy_consumed_SCE1Route1_Arctic_t_tf; Ice_Energy_consumed_SCE1Route1_Arctic_t_tf_iter];
    
    %Route2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %t_0
    %%%%%%%%%%%
    Agg_Op_speed1_SCE1Route2_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed1_SCE1Route2_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        Agg_Op_speed1_SCE1Route2_iter = [Agg_Op_speed1_SCE1Route2_iter; Agg_Op_speed1_SCE1Route2_iter_iter];
    end
    
    Agg_Psi_iter = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        Agg_Psi_iter = [Agg_Psi_iter; Agg_Psi_iter_iter];
    end
    
    Agg_Alpha_iter = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        Agg_Alpha_iter = [Agg_Alpha_iter; Agg_Alpha_iter_iter];
    end
    
    Agg_length1_SCE1Route2 = [];
    for i = 1:1:length(Length_iter)
        Agg_length1_SCE1Route2_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        Agg_length1_SCE1Route2 = [Agg_length1_SCE1Route2; Agg_length1_SCE1Route2_iter];
    end
    
    Agg_draught1_SCE1Route2= [];
    for i = 1:1:length(T_iter)
        Agg_draught1_SCE1Route2_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        Agg_draught1_SCE1Route2 = [Agg_draught1_SCE1Route2; Agg_draught1_SCE1Route2_iter];
    end
    
    OW_Resistance_N_SCE1Route2_t0 = [];
    for i = 1:1:length(v_iter)
        OW_Resistance_N_SCE1Route2_t0_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        OW_Resistance_N_SCE1Route2_t0 = [OW_Resistance_N_SCE1Route2_t0; OW_Resistance_N_SCE1Route2_t0_iter];
    end
    
    C_T_SCE1Route2_t0 = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE1Route2_t0_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        C_T_SCE1Route2_t0 = [C_T_SCE1Route2_t0; C_T_SCE1Route2_t0_iter];
    end
    
    S_SCE1Route2_t0 = [];
    for i = 1:1:length(S_iter)
        S_SCE1Route2_t0_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        S_SCE1Route2_t0 = [S_SCE1Route2_t0; S_SCE1Route2_t0_iter];
    end
    
    %t_m
    %%%%%%%%%%%
    Agg_Op_speed2_SCE1Route2_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed2_SCE1Route2_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tm),1);
        Agg_Op_speed2_SCE1Route2_iter = [Agg_Op_speed2_SCE1Route2_iter; Agg_Op_speed2_SCE1Route2_iter_iter];
    end
    
    Agg_length2_SCE1Route2 = [];
    for i = 1:1:length(Length_iter)
        Agg_length2_SCE1Route2_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tm),1);
        Agg_length2_SCE1Route2 = [Agg_length2_SCE1Route2; Agg_length2_SCE1Route2_iter];
    end
    
    Agg_draught2_SCE1Route2= [];
    for i = 1:1:length(T_iter)
        Agg_draught2_SCE1Route2_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tm),1);
        Agg_draught2_SCE1Route2 = [Agg_draught2_SCE1Route2; Agg_draught2_SCE1Route2_iter];
    end
    
    OW_Resistance_N_SCE1Route2_tm = [];
    for i = 1:1:length(v_iter)
        OW_Resistance_N_SCE1Route2_tm_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tm),1);
        OW_Resistance_N_SCE1Route2_tm = [OW_Resistance_N_SCE1Route2_tm; OW_Resistance_N_SCE1Route2_tm_iter];
    end
    
    C_T_SCE1Route2_tm = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE1Route2_tm_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tm),1);
        C_T_SCE1Route2_tm = [C_T_SCE1Route2_tm; C_T_SCE1Route2_tm_iter];
    end
    
    S_SCE1Route2_tm = [];
    for i = 1:1:length(S_iter)
        S_SCE1Route2_tm_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tm),1);
        S_SCE1Route2_tm = [S_SCE1Route2_tm; S_SCE1Route2_tm_iter];
    end
    
    %t_f
    %%%%%%%%%%%
    Agg_Op_speed3_SCE1Route2_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed3_SCE1Route2_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tf),1);
        Agg_Op_speed3_SCE1Route2_iter = [Agg_Op_speed3_SCE1Route2_iter; Agg_Op_speed3_SCE1Route2_iter_iter];
    end
    
    Agg_length3_SCE1Route2 = [];
    for i = 1:1:length(Length_iter)
        Agg_length3_SCE1Route2_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tf),1);
        Agg_length3_SCE1Route2 = [Agg_length3_SCE1Route2; Agg_length3_SCE1Route2_iter];
    end
    
    Agg_draught3_SCE1Route2= [];
    for i = 1:1:length(T_iter)
        Agg_draught3_SCE1Route2_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tf),1);
        Agg_draught3_SCE1Route2 = [Agg_draught3_SCE1Route2; Agg_draught3_SCE1Route2_iter];
    end
    
    OW_Resistance_N_SCE1Route2_tf = [];
    for i = 1:1:length(v_iter)
        OW_Resistance_N_SCE1Route2_tf_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tf),1);
        OW_Resistance_N_SCE1Route2_tf = [OW_Resistance_N_SCE1Route2_tf; OW_Resistance_N_SCE1Route2_tf_iter];
    end
    
    C_T_SCE1Route2_tf = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE1Route2_tf_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tf),1);
        C_T_SCE1Route2_tf = [C_T_SCE1Route2_tf; C_T_SCE1Route2_tf_iter];
    end
    
    S_SCE1Route2_tf = [];
    for i = 1:1:length(S_iter)
        S_SCE1Route2_tf_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tf),1);
        S_SCE1Route2_tf = [S_SCE1Route2_tf; S_SCE1Route2_tf_iter];
    end
    
    Total_Resistance_SCE1Route2_t0 = [];
    Operating_speed_SCE1Route2_t0 = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_t0_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE1Route2_t0 = OW_Resistance_N_SCE1Route2_t0_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_t0_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE1Route2_t0 = OW_Resistance_N_SCE1Route2_t0_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_t0_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE1Route2_t0 = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_t0_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE1Route2_t0 = OW_Resistance_N_SCE1Route2_t0_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_t0_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE1Route2_t0 = OW_Resistance_N_SCE1Route2_t0_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0(i) > 0.3
            
            Vertical_force_SCE1Route2_t0 = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0(i)).^2;
            
            A_SCE1Route2 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE1Route2 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE1Route2_t0 = Vertical_force_SCE1Route2_t0.*(A_SCE1Route2./B_SCE1Route2);
            
            C1_SCE1Route2 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE1Route2 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE1Route2 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE1Route2_t0 = C1_SCE1Route2.*D_SCE1Route2.*E_SCE1Route2;
            
            F1_SCE1Route2 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0(i));
            G1_SCE1Route2 = Agg_draught1_SCE1Route2(i).*(Beam_iter+Agg_draught1_SCE1Route2(i))./(Beam_iter+(2*Agg_draught1_SCE1Route2(i)));
            H1_SCE1Route2 = 0.7.*Agg_length1_SCE1Route2(i); %70% assumed from Lindqvist
            I1_SCE1Route2 = Agg_draught1_SCE1Route2(i)./tan(Phi_iter);
            J1_SCE1Route2 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE1Route2 = Agg_draught1_SCE1Route2(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE1Route2  = 1./(sin(Phi_iter.^2));
            K_part2_SCE1Route2  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE1Route2 = (K_part1_SCE1Route2+K_part2_SCE1Route2).^0.5;
            
            Submersion_Resistance_component_SCE1Route2_t0 = F1_SCE1Route2.*Beam_iter.*(G1_SCE1Route2+Mu.*(H1_SCE1Route2-I1_SCE1Route2-J1_SCE1Route2+(K1_SCE1Route2.*K_part3_SCE1Route2)));
            Agg_Crushing_Resistance_component_SCE1Route2_t0 = Crushing_Resistance_component_SCE1Route2_t0;
            Agg_Bending_Resistance_component_SCE1Route2_t0 = Bending_Resistance_component_SCE1Route2_t0;
            
            L1_SCE1Route2 = (Agg_Crushing_Resistance_component_SCE1Route2_t0 + Agg_Bending_Resistance_component_SCE1Route2_t0);
            M1_SCE1Route2 = (1+((1.4*Op_speed_metrespersec1_SCE1Route2)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0(i)).^0.5)));
            N1_SCE1Route2 = Submersion_Resistance_component_SCE1Route2_t0.*(1+((9.4.*Op_speed_metrespersec1_SCE1Route2)./((g.*Agg_length1_SCE1Route2(i)).^0.5)));
            
            Total_Ice_Resistance_SCE1Route2_t0 = (L1_SCE1Route2.*M1_SCE1Route2)+N1_SCE1Route2;
            Total_Resistance_SCE1Route2_t0_iter = OW_Resistance_N_SCE1Route2_t0_iter + Total_Ice_Resistance_SCE1Route2_t0;
            
            Operating_speed_SCE1Route2_t0_iter = (Effective_power_SCE1Route2_t0./Total_Resistance_SCE1Route2_t0_iter);
            
            
        else %Ice floe resistance calculation
            
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0_abs = Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0(i)./Agg_Annual_sea_ice_conc_encountered_SCE1Route2_t0(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE1Route2./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route2_t0(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE1Route2_t0(i).^5.196);
            
            Total_Ice_Resistance_SCE1Route2_t0 = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route2_t0(i)).*(Op_speed_metrespersec1_SCE1Route2.^2);
            Total_Resistance_SCE1Route2_t0_iter = OW_Resistance_N_SCE1Route2_t0_iter + Total_Ice_Resistance_SCE1Route2_t0;
            
            Operating_speed_SCE1Route2_t0_iter = (Effective_power_SCE1Route2_t0./Total_Resistance_SCE1Route2_t0_iter);
            
        end
        Total_Resistance_SCE1Route2_t0 = [Total_Resistance_SCE1Route2_t0; Total_Resistance_SCE1Route2_t0_iter];
        Operating_speed_SCE1Route2_t0 = [Operating_speed_SCE1Route2_t0; Operating_speed_SCE1Route2_t0_iter];
    end
    
    Total_Resistance_SCE1Route2_tm = [];
    Operating_speed_SCE1Route2_tm = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_tm_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE1Route2_tm = OW_Resistance_N_SCE1Route2_tm_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_tm_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE1Route2_tm = OW_Resistance_N_SCE1Route2_tm_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_tm_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE1Route2_tm = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_tm_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE1Route2_tm = OW_Resistance_N_SCE1Route2_tm_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_tm_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE1Route2_tm = OW_Resistance_N_SCE1Route2_tm_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm(i) > 0.3
            
            Vertical_force_SCE1Route2_tm = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm(i)).^2;
            
            A_SCE1Route2 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE1Route2 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE1Route2_tm = Vertical_force_SCE1Route2_tm.*(A_SCE1Route2./B_SCE1Route2);
            
            C1_SCE1Route2 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE1Route2 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE1Route2 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE1Route2_tm = C1_SCE1Route2.*D_SCE1Route2.*E_SCE1Route2;
            
            F1_SCE1Route2 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm(i));
            G1_SCE1Route2 = Agg_draught1_SCE1Route2(i).*(Beam_iter+Agg_draught1_SCE1Route2(i))./(Beam_iter+(2*Agg_draught1_SCE1Route2(i)));
            H1_SCE1Route2 = 0.7.*Agg_length1_SCE1Route2(i); %70% assumed from Lindqvist
            I1_SCE1Route2 = Agg_draught1_SCE1Route2(i)./tan(Phi_iter);
            J1_SCE1Route2 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE1Route2 = Agg_draught1_SCE1Route2(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE1Route2  = 1./(sin(Phi_iter.^2));
            K_part2_SCE1Route2  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE1Route2 = (K_part1_SCE1Route2+K_part2_SCE1Route2).^0.5;
            
            Submersion_Resistance_component_SCE1Route2_tm = F1_SCE1Route2.*Beam_iter.*(G1_SCE1Route2+Mu.*(H1_SCE1Route2-I1_SCE1Route2-J1_SCE1Route2+(K1_SCE1Route2.*K_part3_SCE1Route2)));
            Agg_Crushing_Resistance_component_SCE1Route2_tm = Crushing_Resistance_component_SCE1Route2_tm;
            Agg_Bending_Resistance_component_SCE1Route2_tm = Bending_Resistance_component_SCE1Route2_tm;
            
            L1_SCE1Route2 = (Agg_Crushing_Resistance_component_SCE1Route2_tm + Agg_Bending_Resistance_component_SCE1Route2_tm);
            M1_SCE1Route2 = (1+((1.4*Op_speed_metrespersec1_SCE1Route2)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm(i)).^0.5)));
            N1_SCE1Route2 = Submersion_Resistance_component_SCE1Route2_tm.*(1+((9.4.*Op_speed_metrespersec1_SCE1Route2)./((g.*Agg_length1_SCE1Route2(i)).^0.5)));
            
            Total_Ice_Resistance_SCE1Route2_tm = (L1_SCE1Route2.*M1_SCE1Route2)+N1_SCE1Route2;
            Total_Resistance_SCE1Route2_tm_iter = OW_Resistance_N_SCE1Route2_tm_iter + Total_Ice_Resistance_SCE1Route2_tm;
            
            Operating_speed_SCE1Route2_tm_iter = (Effective_power_SCE1Route2_tm./Total_Resistance_SCE1Route2_tm_iter);
            
            
        else %Ice floe resistance calculation
            
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm_abs = Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm(i)./Agg_Annual_sea_ice_conc_encountered_SCE1Route2_tm(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE1Route2./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route2_tm(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE1Route2_tm(i).^5.196);
            
            Total_Ice_Resistance_SCE1Route2_tm = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route2_tm(i)).*(Op_speed_metrespersec1_SCE1Route2.^2);
            Total_Resistance_SCE1Route2_tm_iter = OW_Resistance_N_SCE1Route2_tm_iter + Total_Ice_Resistance_SCE1Route2_tm;
            
            Operating_speed_SCE1Route2_tm_iter = (Effective_power_SCE1Route2_tm./Total_Resistance_SCE1Route2_tm_iter);
            
        end
        Total_Resistance_SCE1Route2_tm = [Total_Resistance_SCE1Route2_tm; Total_Resistance_SCE1Route2_tm_iter];
        Operating_speed_SCE1Route2_tm = [Operating_speed_SCE1Route2_tm; Operating_speed_SCE1Route2_tm_iter];
    end
    
    Total_Resistance_SCE1Route2_tf = [];
    Operating_speed_SCE1Route2_tf = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_tf_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE1Route2_tf = OW_Resistance_N_SCE1Route2_tf_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_tf_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE1Route2_tf = OW_Resistance_N_SCE1Route2_tf_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_tf_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE1Route2_tf = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_tf_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE1Route2_tf = OW_Resistance_N_SCE1Route2_tf_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route2 = Agg_Op_speed1_SCE1Route2_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route2_tf_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE1Route2_tf = OW_Resistance_N_SCE1Route2_tf_iter.*Op_speed_metrespersec1_SCE1Route2;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf(i) > 0.3
            
            Vertical_force_SCE1Route2_tf = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf(i)).^2;
            
            A_SCE1Route2 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE1Route2 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE1Route2_tf = Vertical_force_SCE1Route2_tf.*(A_SCE1Route2./B_SCE1Route2);
            
            C1_SCE1Route2 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE1Route2 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE1Route2 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE1Route2_tf = C1_SCE1Route2.*D_SCE1Route2.*E_SCE1Route2;
            
            F1_SCE1Route2 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf(i));
            G1_SCE1Route2 = Agg_draught1_SCE1Route2(i).*(Beam_iter+Agg_draught1_SCE1Route2(i))./(Beam_iter+(2*Agg_draught1_SCE1Route2(i)));
            H1_SCE1Route2 = 0.7.*Agg_length1_SCE1Route2(i); %70% assumed from Lindqvist
            I1_SCE1Route2 = Agg_draught1_SCE1Route2(i)./tan(Phi_iter);
            J1_SCE1Route2 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE1Route2 = Agg_draught1_SCE1Route2(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE1Route2  = 1./(sin(Phi_iter.^2));
            K_part2_SCE1Route2  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE1Route2 = (K_part1_SCE1Route2+K_part2_SCE1Route2).^0.5;
            
            Submersion_Resistance_component_SCE1Route2_tf = F1_SCE1Route2.*Beam_iter.*(G1_SCE1Route2+Mu.*(H1_SCE1Route2-I1_SCE1Route2-J1_SCE1Route2+(K1_SCE1Route2.*K_part3_SCE1Route2)));
            Agg_Crushing_Resistance_component_SCE1Route2_tf = Crushing_Resistance_component_SCE1Route2_tf;
            Agg_Bending_Resistance_component_SCE1Route2_tf = Bending_Resistance_component_SCE1Route2_tf;
            
            L1_SCE1Route2 = (Agg_Crushing_Resistance_component_SCE1Route2_tf + Agg_Bending_Resistance_component_SCE1Route2_tf);
            M1_SCE1Route2 = (1+((1.4*Op_speed_metrespersec1_SCE1Route2)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf(i)).^0.5)));
            N1_SCE1Route2 = Submersion_Resistance_component_SCE1Route2_tf.*(1+((9.4.*Op_speed_metrespersec1_SCE1Route2)./((g.*Agg_length1_SCE1Route2(i)).^0.5)));
            
            Total_Ice_Resistance_SCE1Route2_tf = (L1_SCE1Route2.*M1_SCE1Route2)+N1_SCE1Route2;
            Total_Resistance_SCE1Route2_tf_iter = OW_Resistance_N_SCE1Route2_tf_iter + Total_Ice_Resistance_SCE1Route2_tf;
            
            Operating_speed_SCE1Route2_tf_iter = (Effective_power_SCE1Route2_tf./Total_Resistance_SCE1Route2_tf_iter);
            
            
        else %Ice floe resistance calculation
            
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf_abs = Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf(i)./Agg_Annual_sea_ice_conc_encountered_SCE1Route2_tf(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE1Route2./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route2_tf(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE1Route2_tf(i).^5.196);
            
            Total_Ice_Resistance_SCE1Route2_tf = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route2_tf(i)).*(Op_speed_metrespersec1_SCE1Route2.^2);
            Total_Resistance_SCE1Route2_tf_iter = OW_Resistance_N_SCE1Route2_tf_iter + Total_Ice_Resistance_SCE1Route2_tf;
            
            Operating_speed_SCE1Route2_tf_iter = (Effective_power_SCE1Route2_tf./Total_Resistance_SCE1Route2_tf_iter);
            
        end
        Total_Resistance_SCE1Route2_tf = [Total_Resistance_SCE1Route2_tf; Total_Resistance_SCE1Route2_tf_iter];
        Operating_speed_SCE1Route2_tf = [Operating_speed_SCE1Route2_tf; Operating_speed_SCE1Route2_tf_iter];
    end
    
    %Resize the variables to align with the shape of the other variables
    Operating_speed_SCE1Route2_t0 = Operating_speed_SCE1Route2_t0./0.514444444;
    Operating_speed_SCE1Route2_tm = Operating_speed_SCE1Route2_tm./0.514444444;
    Operating_speed_SCE1Route2_tf = Operating_speed_SCE1Route2_tf./0.514444444;
    
    %Where the ice is thicker than 0.8m it also needs an icebreaker...
    Ice_Logic_t0 = (Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_t0 > 0.7);
    Ice_Logic_tm = (Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tm > 0.7);
    Ice_Logic_tf = (Agg_Annual_sea_ice_thickness_encountered_SCE1Route2_tf > 0.7);
    
    Operating_speed_SCE1Route2_t0(Ice_Logic_t0) = 3;
    Operating_speed_SCE1Route2_tm(Ice_Logic_tm) = 3;
    Operating_speed_SCE1Route2_tf(Ice_Logic_tf) = 3;
    
    
    Global_IceStrengthOutput_SCE1Route2_power_kW_t0 = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE1Route2_power_kW_t0_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        Global_IceStrengthOutput_SCE1Route2_power_kW_t0 = [Global_IceStrengthOutput_SCE1Route2_power_kW_t0;Global_IceStrengthOutput_SCE1Route2_power_kW_t0_iter];
    end
    
    Global_IceStrengthOutput_SCE1Route2_power_kW_tm = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE1Route2_power_kW_tm_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tm),1);
        Global_IceStrengthOutput_SCE1Route2_power_kW_tm = [Global_IceStrengthOutput_SCE1Route2_power_kW_tm;Global_IceStrengthOutput_SCE1Route2_power_kW_tm_iter];
    end
    
    Global_IceStrengthOutput_SCE1Route2_power_kW_tf = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE1Route2_power_kW_tf_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tf),1);
        Global_IceStrengthOutput_SCE1Route2_power_kW_tf = [Global_IceStrengthOutput_SCE1Route2_power_kW_tf;Global_IceStrengthOutput_SCE1Route2_power_kW_tf_iter];
    end
    
    Global_SCE1Route2_sfc_t0 = [];
    
    for i = 1:1:length(Icesfc_iter)
        Global_SCE1Route2_sfc_t0_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        Global_SCE1Route2_sfc_t0  = [Global_SCE1Route2_sfc_t0; Global_SCE1Route2_sfc_t0_iter];
    end
    
    Global_SCE1Route2_sfc_tm = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE1Route2_sfc_tm_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tm),1);
        Global_SCE1Route2_sfc_tm  = [Global_SCE1Route2_sfc_tm; Global_SCE1Route2_sfc_tm_iter];
    end
    
    Global_SCE1Route2_sfc_tf = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE1Route2_sfc_tf_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tf),1);
        Global_SCE1Route2_sfc_tf  = [Global_SCE1Route2_sfc_tf; Global_SCE1Route2_sfc_tf_iter];
    end
    
    Operating_speed_index_SCE1Route2_t0 = find(Operating_speed_SCE1Route2_t0<3);
    for i = 1:1:length(Operating_speed_index_SCE1Route2_t0)
        Operating_speed_SCE1Route2_t0(Operating_speed_index_SCE1Route2_t0(i)) = 3;
    end
    
    Operating_speed_index_SCE1Route2_tm = find(Operating_speed_SCE1Route2_tm<3);
    for i = 1:1:length(Operating_speed_index_SCE1Route2_tm)
        Operating_speed_SCE1Route2_tm(Operating_speed_index_SCE1Route2_tm(i)) = 3;
    end
    
    Operating_speed_index_SCE1Route2_tf = find(Operating_speed_SCE1Route2_tf<3);
    for i = 1:1:length(Operating_speed_index_SCE1Route2_tf)
        Operating_speed_SCE1Route2_tf(Operating_speed_index_SCE1Route2_tf(i)) = 3;
    end
    
    % Des_v
    Global_SCE1Route2_Des_v_t0 = [];
    
    for i = 1:1:length(Des_v_iter)
        Global_SCE1Route2_Des_v_t0_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        Global_SCE1Route2_Des_v_t0  = [Global_SCE1Route2_Des_v_t0; Global_SCE1Route2_Des_v_t0_iter];
    end
    
    Global_SCE1Route2_Des_v_tm = [];
    
    for i = 1:1:length(Des_v_iter)
        Global_SCE1Route2_Des_v_tm_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tm),1);
        Global_SCE1Route2_Des_v_tm  = [Global_SCE1Route2_Des_v_tm; Global_SCE1Route2_Des_v_tm_iter];
    end
    
    Global_SCE1Route2_Des_v_tf = [];
    
    for i = 1:1:length(Des_v_iter)
        Global_SCE1Route2_Des_v_tf_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tf),1);
        Global_SCE1Route2_Des_v_tf  = [Global_SCE1Route2_Des_v_tf; Global_SCE1Route2_Des_v_tf_iter];
    end
    
    % Ice_Installed_Power_kW_iter
    Global_SCE1Route2_Ice_Installed_Power_kW_t0 = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE1Route2_Ice_Installed_Power_kW_t0_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_t0),1);
        Global_SCE1Route2_Ice_Installed_Power_kW_t0  = [Global_SCE1Route2_Ice_Installed_Power_kW_t0; Global_SCE1Route2_Ice_Installed_Power_kW_t0_iter];
    end
    
    Global_SCE1Route2_Ice_Installed_Power_kW_tm = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE1Route2_Ice_Installed_Power_kW_tm_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tm),1);
        Global_SCE1Route2_Ice_Installed_Power_kW_tm  = [Global_SCE1Route2_Ice_Installed_Power_kW_tm; Global_SCE1Route2_Ice_Installed_Power_kW_tm_iter];
    end
    
    Global_SCE1Route2_Ice_Installed_Power_kW_tf = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE1Route2_Ice_Installed_Power_kW_tf_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route2_tf),1);
        Global_SCE1Route2_Ice_Installed_Power_kW_tf  = [Global_SCE1Route2_Ice_Installed_Power_kW_tf; Global_SCE1Route2_Ice_Installed_Power_kW_tf_iter];
    end
    
    Total_Power_demand_SCE1Route2_t0 = Global_SCE1Route2_Ice_Installed_Power_kW_t0.*((Operating_speed_SCE1Route2_t0./Global_SCE1Route2_Des_v_t0).^3)./(Foul_coeff.*Weather_coeff);
    Total_Power_demand_SCE1Route2_tm = Global_SCE1Route2_Ice_Installed_Power_kW_tm.*((Operating_speed_SCE1Route2_tm./Global_SCE1Route2_Des_v_tm).^3)./(Foul_coeff.*Weather_coeff);
    Total_Power_demand_SCE1Route2_tf = Global_SCE1Route2_Ice_Installed_Power_kW_tf.*((Operating_speed_SCE1Route2_tf./Global_SCE1Route2_Des_v_tf).^3)./(Foul_coeff.*Weather_coeff);
    
    Agg_Engine_SCE1Route2_load_t0 = Total_Power_demand_SCE1Route2_t0./Global_SCE1Route2_Ice_Installed_Power_kW_t0;
    Agg_Engine_SCE1Route2_load_tm = Total_Power_demand_SCE1Route2_tm./Global_SCE1Route2_Ice_Installed_Power_kW_tm;
    Agg_Engine_SCE1Route2_load_tf = Total_Power_demand_SCE1Route2_tf./Global_SCE1Route2_Ice_Installed_Power_kW_tf;
    
    %Then I use the IMO 3rd ghg study equation to compute the different SFC,
    %but need to renumerate as the equation doesn't work for loads of 1
    Constant_SCE1Route2_t0 = (0.455.*(Agg_Engine_SCE1Route2_load_t0).^2)-(0.71.*Agg_Engine_SCE1Route2_load_t0)+1.28;
    Constant_SCE1Route2_tm = (0.455.*(Agg_Engine_SCE1Route2_load_tm).^2)-(0.71.*Agg_Engine_SCE1Route2_load_tm)+1.28;
    Constant_SCE1Route2_tf = (0.455.*(Agg_Engine_SCE1Route2_load_tf).^2)-(0.71.*Agg_Engine_SCE1Route2_load_tf)+1.28;
    
    Operating_SFC_SCE1Route2_t0 = Global_SCE1Route2_sfc_t0.*Constant_SCE1Route2_t0;
    Operating_SFC_SCE1Route2_tm = Global_SCE1Route2_sfc_tm.*Constant_SCE1Route2_tm;
    Operating_SFC_SCE1Route2_tf = Global_SCE1Route2_sfc_tf.*Constant_SCE1Route2_tf;
    
    SFC_index_SCE1Route2_t0 = find(Agg_Engine_SCE1Route2_load_t0==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE1Route2_t0)
        Operating_SFC_SCE1Route2_t0(SFC_index_SCE1Route2_t0(i)) = Global_SCE1Route2_sfc_t0(SFC_index_SCE1Route2_t0(i));
    end
    
    SFC_index_SCE1Route2_tm = find(Agg_Engine_SCE1Route2_load_tm==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE1Route2_tm)
        Operating_SFC_SCE1Route2_tm(SFC_index_SCE1Route2_tm(i)) = Global_SCE1Route2_sfc_tm(SFC_index_SCE1Route2_tm(i));
    end
    
    SFC_index_SCE1Route2_tf = find(Agg_Engine_SCE1Route2_load_tf==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE1Route2_tf)
        Operating_SFC_SCE1Route2_tf(SFC_index_SCE1Route2_tf(i)) = Global_SCE1Route2_sfc_tf(SFC_index_SCE1Route2_tf(i));
    end
    
    
    Array_Unit_length_Route_2 = [Unit_length_AG; Unit_length_GH;...
        Unit_length_HE; Unit_length_EF; Unit_length_FG; Unit_length_FG(3)]; %I assume that the last interval of the route is the same as the one previous for FG
    %Resize this to be compatible with the other variables then obtain the
    %energy demand
    
    Global_Array_Unit_length_SCE1Route_2_t0 = repmat(Array_Unit_length_Route_2,length(v_iter).*sum(Logic_mat_IceStrength_feasibility_Scenario1_iter),1); %12 months in a year
    Global_Array_Unit_length_SCE1Route_2_tm = repmat(Array_Unit_length_Route_2,length(v_iter).*sum(Logic_mat_IceStrength_feasibility_Scenario1_iter),1);
    Global_Array_Unit_length_SCE1Route_2_tf = repmat(Array_Unit_length_Route_2,length(v_iter).*sum(Logic_mat_IceStrength_feasibility_Scenario1_iter),1);
    
    Time_hrs_SCE1Route2_t0 = Global_Array_Unit_length_SCE1Route_2_t0./Operating_speed_SCE1Route2_t0;
    Time_hrs_SCE1Route2_tm = Global_Array_Unit_length_SCE1Route_2_tm./Operating_speed_SCE1Route2_tm;
    Time_hrs_SCE1Route2_tf = Global_Array_Unit_length_SCE1Route_2_tf./Operating_speed_SCE1Route2_tf;
    
    %Reshaping the time matrices to work out the number of days spent on the
    %NSR which can be used later in the commercial profile function
    Reshaped_Time_hrs_SCE1Route2_t0_iter = reshape(Time_hrs_SCE1Route2_t0,length(Array_Unit_length_Route_2(:,1)).*length(Global_Array_Unit_length_SCE1Route_2_t0(:,1))./(length(v_iter).*length(Array_Unit_length_Route_2(:,1))),length(v_iter));
    Reshaped_Time_hrs_SCE1Route2_tm_iter = reshape(Time_hrs_SCE1Route2_tm,length(Array_Unit_length_Route_2(:,1)).*length(Global_Array_Unit_length_SCE1Route_2_tm(:,1))./(length(v_iter).*length(Array_Unit_length_Route_2(:,1))),length(v_iter));
    Reshaped_Time_hrs_SCE1Route2_tf_iter = reshape(Time_hrs_SCE1Route2_tf,length(Array_Unit_length_Route_2(:,1)).*length(Global_Array_Unit_length_SCE1Route_2_tf(:,1))./(length(v_iter).*length(Array_Unit_length_Route_2(:,1))),length(v_iter));
    
    Reshaped_Time_days_SCE1Route2_t0_iter = [];
    for i = 1:1:length(Reshaped_Time_hrs_SCE1Route2_t0_iter(:,1))./length(Array_Unit_length_Route_2(:,1))
        Part_Time_days_SCE1Route2_t0 = Reshaped_Time_hrs_SCE1Route2_t0_iter((i-1)*length(Array_Unit_length_Route_2(:,1))+1:i*length(Array_Unit_length_Route_2(:,1)),:);
        Reshaped_Time_days_SCE1Route2_t0_iter_iter = sum(Part_Time_days_SCE1Route2_t0);
        Reshaped_Time_days_SCE1Route2_t0_iter = [Reshaped_Time_days_SCE1Route2_t0_iter; Reshaped_Time_days_SCE1Route2_t0_iter_iter];
    end
    Reshaped_Time_days_SCE1Route2_t0_iter = Reshaped_Time_days_SCE1Route2_t0_iter'; Reshaped_Time_days_SCE1Route2_t0_iter = Reshaped_Time_days_SCE1Route2_t0_iter./24;
    
    for i = 1:1:Ship_design_speed_length
        Reshaped_Time_days_SCE1Route2_t0_iter_iter_iter = Reshaped_Time_days_SCE1Route2_t0_iter(i,:);
        Reshaped_Time_days_SCE1Route2_t0_iter_iter_iter(Reshaped_Time_days_SCE1Route2_t0_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
        Reshaped_Time_days_SCE1Route2_t0_iter(i,:) = Reshaped_Time_days_SCE1Route2_t0_iter_iter_iter;
    end
    
    Logic = Reshaped_Time_days_SCE1Route2_t0_iter > 0; Logic = Logic';
    Time = reshape(Time_hrs_SCE1Route2_t0,length(Global_Array_Unit_length_SCE1Route_2_t0(:,1))./(length(v_iter)),length(v_iter));
    
    Global_Logic = zeros(length(Reshaped_Time_hrs_SCE1Route2_t0_iter(:,1))./length(Array_Unit_length_Route_2(:,1)).*length(Array_Unit_length_Route_2(:,1)),length(Logic(1,:)));
    for i = 1:1:length(Logic(:,1))
        Global_Logic(length(Array_Unit_length_Route_2(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_2(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_2(:,1)),1);
    end
    Time_hrs_SCE1Route2_t0 = Time.*Global_Logic; Time_hrs_SCE1Route2_t0 = reshape(Time_hrs_SCE1Route2_t0,length(Global_Array_Unit_length_SCE1Route_2_t0(:,1)),1);
    
    clear Logic Time Global_Logic
    
    Reshaped_Time_days_SCE1Route2_tm_iter = [];
    for i = 1:1:length(Reshaped_Time_hrs_SCE1Route2_tm_iter(:,1))./length(Array_Unit_length_Route_2(:,1))
        Part_Time_days_SCE1Route2_tm = Reshaped_Time_hrs_SCE1Route2_tm_iter((i-1)*length(Array_Unit_length_Route_2(:,1))+1:i*length(Array_Unit_length_Route_2(:,1)),:);
        Reshaped_Time_days_SCE1Route2_tm_iter_iter = sum(Part_Time_days_SCE1Route2_tm);
        Reshaped_Time_days_SCE1Route2_tm_iter = [Reshaped_Time_days_SCE1Route2_tm_iter; Reshaped_Time_days_SCE1Route2_tm_iter_iter];
    end
    Reshaped_Time_days_SCE1Route2_tm_iter = Reshaped_Time_days_SCE1Route2_tm_iter'; Reshaped_Time_days_SCE1Route2_tm_iter = Reshaped_Time_days_SCE1Route2_tm_iter./24;
    
    for i = 1:1:Ship_design_speed_length
        Reshaped_Time_days_SCE1Route2_tm_iter_iter_iter = Reshaped_Time_days_SCE1Route2_tm_iter(i,:);
        Reshaped_Time_days_SCE1Route2_tm_iter_iter_iter(Reshaped_Time_days_SCE1Route2_tm_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
        Reshaped_Time_days_SCE1Route2_tm_iter(i,:) = Reshaped_Time_days_SCE1Route2_tm_iter_iter_iter;
    end
    
    Logic = Reshaped_Time_days_SCE1Route2_tm_iter > 0; Logic = Logic';
    Time = reshape(Time_hrs_SCE1Route2_tm,length(Global_Array_Unit_length_SCE1Route_2_tm(:,1))./(length(v_iter)),length(v_iter));
    
    Global_Logic = zeros(length(Reshaped_Time_hrs_SCE1Route2_tm_iter(:,1))./length(Array_Unit_length_Route_2(:,1)).*length(Array_Unit_length_Route_2(:,1)),length(Logic(1,:)));
    for i = 1:1:length(Logic(:,1))
        Global_Logic(length(Array_Unit_length_Route_2(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_2(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_2(:,1)),1);
    end
    Time_hrs_SCE1Route2_tm = Time.*Global_Logic; Time_hrs_SCE1Route2_tm = reshape(Time_hrs_SCE1Route2_tm,length(Global_Array_Unit_length_SCE1Route_2_tm(:,1)),1);
    
    clear Logic Time Global_Logic
    
    Reshaped_Time_days_SCE1Route2_tf_iter = [];
    for i = 1:1:length(Reshaped_Time_hrs_SCE1Route2_tf_iter(:,1))./length(Array_Unit_length_Route_2(:,1))
        Part_Time_days_SCE1Route2_tf = Reshaped_Time_hrs_SCE1Route2_tf_iter((i-1)*length(Array_Unit_length_Route_2(:,1))+1:i*length(Array_Unit_length_Route_2(:,1)),:);
        Reshaped_Time_days_SCE1Route2_tf_iter_iter = sum(Part_Time_days_SCE1Route2_tf);
        Reshaped_Time_days_SCE1Route2_tf_iter = [Reshaped_Time_days_SCE1Route2_tf_iter; Reshaped_Time_days_SCE1Route2_tf_iter_iter];
    end
    Reshaped_Time_days_SCE1Route2_tf_iter = Reshaped_Time_days_SCE1Route2_tf_iter'; Reshaped_Time_days_SCE1Route2_tf_iter = Reshaped_Time_days_SCE1Route2_tf_iter./24;
    
    for i = 1:1:Ship_design_speed_length
        Reshaped_Time_days_SCE1Route2_tf_iter_iter_iter = Reshaped_Time_days_SCE1Route2_tf_iter(i,:);
        Reshaped_Time_days_SCE1Route2_tf_iter_iter_iter(Reshaped_Time_days_SCE1Route2_tf_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
        Reshaped_Time_days_SCE1Route2_tf_iter(i,:) = Reshaped_Time_days_SCE1Route2_tf_iter_iter_iter;
    end
    
    Logic = Reshaped_Time_days_SCE1Route2_tf_iter > 0; Logic = Logic';
    Time = reshape(Time_hrs_SCE1Route2_tf,length(Global_Array_Unit_length_SCE1Route_2_tf(:,1))./(length(v_iter)),length(v_iter));
    
    Global_Logic = zeros(length(Reshaped_Time_hrs_SCE1Route2_tf_iter(:,1))./length(Array_Unit_length_Route_2(:,1)).*length(Array_Unit_length_Route_2(:,1)),length(Logic(1,:)));
    for i = 1:1:length(Logic(:,1))
        Global_Logic(length(Array_Unit_length_Route_2(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_2(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_2(:,1)),1);
    end
    Time_hrs_SCE1Route2_tf = Time.*Global_Logic; Time_hrs_SCE1Route2_tf = reshape(Time_hrs_SCE1Route2_tf,length(Global_Array_Unit_length_SCE1Route_2_tf(:,1)),1);
    
    clear Logic Time Global_Logic
    
    Energy_demand_SCE1Route2_t0_iter =  Total_Power_demand_SCE1Route2_t0.*Time_hrs_SCE1Route2_t0; %kWh
    Energy_demand_SCE1Route2_tm_iter =  Total_Power_demand_SCE1Route2_tm.*Time_hrs_SCE1Route2_tm;
    Energy_demand_SCE1Route2_tf_iter =  Total_Power_demand_SCE1Route2_tf.*Time_hrs_SCE1Route2_tf;
    
    %Fuel consumed
    Fuel_consumed_SCE1Route2_t0_iter = Energy_demand_SCE1Route2_t0_iter.*Operating_SFC_SCE1Route2_t0*10^-6; %Tonnes
    Fuel_consumed_SCE1Route2_tm_iter = Energy_demand_SCE1Route2_tm_iter.*Operating_SFC_SCE1Route2_tm*10^-6;
    Fuel_consumed_SCE1Route2_tf_iter = Energy_demand_SCE1Route2_tf_iter.*Operating_SFC_SCE1Route2_tf*10^-6;
    
    %Number of days requiring an icebreaker - I calculate it for each
    %individual ship design
    %t_0
    %%%%%%%%%%%%%%%
    Length_OP_Speed_SCE1Route2_t0 = length(Operating_speed_SCE1Route2_t0);
    Partitioned_length_OP_Speed_SCE1Route2_t0 = Length_OP_Speed_SCE1Route2_t0./length(v_iter);
    Reshaped_Operating_speed_SCE1Route2_t0 = reshape(Operating_speed_SCE1Route2_t0,[Partitioned_length_OP_Speed_SCE1Route2_t0,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Length_Time_hrs_SCE1Route2_t0 = length(Time_hrs_SCE1Route2_t0);
    Partitioned_length_Time_hrs_SCE1Route2_t0 = Length_Time_hrs_SCE1Route2_t0./length(v_iter);
    Reshaped_Time_hrs_SCE1Route2_t0_iter = reshape(Time_hrs_SCE1Route2_t0,[Partitioned_length_Time_hrs_SCE1Route2_t0,length(v_iter)]);
    
    Logic_Operating_speed_SCE1Route2_t0 = Reshaped_Operating_speed_SCE1Route2_t0;
    Logic_Operating_speed_SCE1Route2_t0(Logic_Operating_speed_SCE1Route2_t0 ==3) = 1;
    Logic_Operating_speed_SCE1Route2_t0(Logic_Operating_speed_SCE1Route2_t0 ~=1) = 0;
    
    IB_time_SCE1Route2_t0_iter = Logic_Operating_speed_SCE1Route2_t0.*Reshaped_Time_hrs_SCE1Route2_t0_iter;
    IB_time_SCE1Route2_t0_iter = sum(IB_time_SCE1Route2_t0_iter); IB_time_SCE1Route2_t0_iter = round(IB_time_SCE1Route2_t0_iter./24); IB_time_SCE1Route2_t0_iter =IB_time_SCE1Route2_t0_iter';
    Array_Unit_length_Route_2 = repmat(Array_Unit_length_Route_2, sum(Logic_mat_IceStrength_feasibility_Scenario1_iter), 1);
    
    %t_m
    %%%%%%%%%%%%%%
    Length_OP_Speed_SCE1Route2_tm = length(Operating_speed_SCE1Route2_tm);
    Partitioned_length_OP_Speed_SCE1Route2_tm = Length_OP_Speed_SCE1Route2_tm./length(v_iter);
    Reshaped_Operating_speed_SCE1Route2_tm = reshape(Operating_speed_SCE1Route2_tm,[Partitioned_length_OP_Speed_SCE1Route2_tm,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Length_Time_hrs_SCE1Route2_tm = length(Time_hrs_SCE1Route2_tm);
    Partitioned_length_Time_hrs_SCE1Route2_tm = Length_Time_hrs_SCE1Route2_tm./length(v_iter);
    Reshaped_Time_hrs_SCE1Route2_tm_iter = reshape(Time_hrs_SCE1Route2_tm,[Partitioned_length_Time_hrs_SCE1Route2_tm,length(v_iter)]);
    
    Logic_Operating_speed_SCE1Route2_tm = Reshaped_Operating_speed_SCE1Route2_tm;
    Logic_Operating_speed_SCE1Route2_tm(Logic_Operating_speed_SCE1Route2_tm ==3) = 1;
    Logic_Operating_speed_SCE1Route2_tm(Logic_Operating_speed_SCE1Route2_tm ~=1) = 0;
    
    IB_time_SCE1Route2_tm_iter = Logic_Operating_speed_SCE1Route2_tm.*Reshaped_Time_hrs_SCE1Route2_tm_iter;
    IB_time_SCE1Route2_tm_iter = sum(IB_time_SCE1Route2_tm_iter); IB_time_SCE1Route2_tm_iter = round(IB_time_SCE1Route2_tm_iter./24); IB_time_SCE1Route2_tm_iter =IB_time_SCE1Route2_tm_iter';
    
    %t_f
    %%%%%%%%%%%
    Length_OP_Speed_SCE1Route2_tf = length(Operating_speed_SCE1Route2_tf);
    Partitioned_length_OP_Speed_SCE1Route2_tf = Length_OP_Speed_SCE1Route2_tf./length(v_iter);
    Reshaped_Operating_speed_SCE1Route2_tf = reshape(Operating_speed_SCE1Route2_tf,[Partitioned_length_OP_Speed_SCE1Route2_tf,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Length_Time_hrs_SCE1Route2_tf = length(Time_hrs_SCE1Route2_tf);
    Partitioned_length_Time_hrs_SCE1Route2_tf = Length_Time_hrs_SCE1Route2_tf./length(v_iter);
    Reshaped_Time_hrs_SCE1Route2_tf_iter = reshape(Time_hrs_SCE1Route2_tf,[Partitioned_length_Time_hrs_SCE1Route2_tf,length(v_iter)]);
    
    Logic_Operating_speed_SCE1Route2_tf = Reshaped_Operating_speed_SCE1Route2_tf;
    Logic_Operating_speed_SCE1Route2_tf(Logic_Operating_speed_SCE1Route2_tf ==3) = 1;
    Logic_Operating_speed_SCE1Route2_tf(Logic_Operating_speed_SCE1Route2_tf ~=1) = 0;
    
    IB_time_SCE1Route2_tf_iter = Logic_Operating_speed_SCE1Route2_tf.*Reshaped_Time_hrs_SCE1Route2_tf_iter;
    IB_time_SCE1Route2_tf_iter = sum(IB_time_SCE1Route2_tf_iter); IB_time_SCE1Route2_tf_iter = round(IB_time_SCE1Route2_tf_iter./24); IB_time_SCE1Route2_tf_iter =IB_time_SCE1Route2_tf_iter';
    
    %Table length
    Table_length_SCE1Route2_t0 = length(Agg_Op_speed1_SCE1Route2_iter(:));
    Table_length_SCE1Route2_tm = length(Agg_Op_speed2_SCE1Route2_iter(:));
    Table_length_SCE1Route2_tf = length(Agg_Op_speed3_SCE1Route2_iter(:));
    
    %Sum of the fuel and energy consumed
    Partitioned_length_SCE1Route2_t0 =  Table_length_SCE1Route2_t0./Ship_design_speed_length;
    Partitioned_length_SCE1Route2_tm =  Table_length_SCE1Route2_tm./Ship_design_speed_length;
    Partitioned_length_SCE1Route2_tf =  Table_length_SCE1Route2_tf./Ship_design_speed_length;
    
    %Annual fuel consumed
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0_iter = reshape(Fuel_consumed_SCE1Route2_t0_iter(:), Partitioned_length_SCE1Route2_t0, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0_iter = sum(Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0_iter); Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0_iter = Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0_iter';
    
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm_iter = reshape(Fuel_consumed_SCE1Route2_tm_iter(:), Partitioned_length_SCE1Route2_tm, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm_iter = sum(Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm_iter); Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm_iter = Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm_iter';
    
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf_iter = reshape(Fuel_consumed_SCE1Route2_tf_iter(:), Partitioned_length_SCE1Route2_tf, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf_iter = sum(Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf_iter); Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf_iter = Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf_iter';
    
    Ice_Energy_consumed_SCE1Route2_Arctic_t_t0_iter = reshape(Energy_demand_SCE1Route2_t0_iter(:), Partitioned_length_SCE1Route2_t0, Ship_design_speed_length);
    Ice_Energy_consumed_SCE1Route2_Arctic_t_t0_iter = sum(Ice_Energy_consumed_SCE1Route2_Arctic_t_t0_iter); Ice_Energy_consumed_SCE1Route2_Arctic_t_t0_iter = Ice_Energy_consumed_SCE1Route2_Arctic_t_t0_iter';
    
    Ice_Energy_consumed_SCE1Route2_Arctic_t_tm_iter = reshape(Energy_demand_SCE1Route2_tm_iter(:), Partitioned_length_SCE1Route2_tm, Ship_design_speed_length);
    Ice_Energy_consumed_SCE1Route2_Arctic_t_tm_iter = sum(Ice_Energy_consumed_SCE1Route2_Arctic_t_tm_iter); Ice_Energy_consumed_SCE1Route2_Arctic_t_tm_iter = Ice_Energy_consumed_SCE1Route2_Arctic_t_tm_iter';
    
    Ice_Energy_consumed_SCE1Route2_Arctic_t_tf_iter = reshape(Energy_demand_SCE1Route2_tf_iter(:), Partitioned_length_SCE1Route2_tf, Ship_design_speed_length);
    Ice_Energy_consumed_SCE1Route2_Arctic_t_tf_iter = sum(Ice_Energy_consumed_SCE1Route2_Arctic_t_tf_iter); Ice_Energy_consumed_SCE1Route2_Arctic_t_tf_iter = Ice_Energy_consumed_SCE1Route2_Arctic_t_tf_iter';
    %Have to sum each of the rows to make all dimensions align
    
    % Reshaped_Time_days_SCE1Route2_t0_iter = sum(Reshaped_Time_days_SCE1Route2_t0_iter,2);
    sx = size(Reshaped_Time_days_SCE1Route2_t0);
    sy = size(Reshaped_Time_days_SCE1Route2_t0_iter');
    a = max(sx(1),sy(1));
    Reshaped_Time_days_SCE1Route2_t0 = [[Reshaped_Time_days_SCE1Route2_t0;zeros(abs([a 0]-sx))],[Reshaped_Time_days_SCE1Route2_t0_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE1Route2_t0_iter = 30.*ones(length(Reshaped_Time_days_SCE1Route2_t0_iter(:,1)),length(Reshaped_Time_days_SCE1Route2_t0_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE1_Ice_Route2_n_t0_iter = Number_of_days_pm_SCE1Route2_t0_iter./Reshaped_Time_days_SCE1Route2_t0_iter;
    
    sx = size(SCE1_Ice_Route2_n_t0);
    sy = size(SCE1_Ice_Route2_n_t0_iter');
    a = max(sx(1),sy(1));
    SCE1_Ice_Route2_n_t0 = [[SCE1_Ice_Route2_n_t0;zeros(abs([a 0]-sx))],[SCE1_Ice_Route2_n_t0_iter';zeros(abs([a,0]-sy))]];
    
    %t_m
    %%%%%%%%%%%%%%%%
    sx = size(Reshaped_Time_days_SCE1Route2_tm);
    sy = size(Reshaped_Time_days_SCE1Route2_tm_iter');
    a = max(sx(1),sy(1));
    Reshaped_Time_days_SCE1Route2_tm = [[Reshaped_Time_days_SCE1Route2_tm;zeros(abs([a 0]-sx))],[Reshaped_Time_days_SCE1Route2_tm_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE1Route2_tm_iter = 30.*ones(length(Reshaped_Time_days_SCE1Route2_tm_iter(:,1)),length(Reshaped_Time_days_SCE1Route2_tm_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE1_Ice_Route2_n_tm_iter = Number_of_days_pm_SCE1Route2_tm_iter./Reshaped_Time_days_SCE1Route2_tm_iter;
    
    sx = size(SCE1_Ice_Route2_n_tm);
    sy = size(SCE1_Ice_Route2_n_tm_iter');
    a = max(sx(1),sy(1));
    SCE1_Ice_Route2_n_tm = [[SCE1_Ice_Route2_n_tm;zeros(abs([a 0]-sx))],[SCE1_Ice_Route2_n_tm_iter';zeros(abs([a,0]-sy))]];
    
    %t_f
    %%%%%%%%%%%%%%%%
    sx = size(Reshaped_Time_days_SCE1Route2_tf);
    sy = size(Reshaped_Time_days_SCE1Route2_tf_iter');
    a = max(sx(1),sy(1));
    Reshaped_Time_days_SCE1Route2_tf = [[Reshaped_Time_days_SCE1Route2_tf;zeros(abs([a 0]-sx))],[Reshaped_Time_days_SCE1Route2_tf_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE1Route2_tf_iter = 30.*ones(length(Reshaped_Time_days_SCE1Route2_tf_iter(:,1)),length(Reshaped_Time_days_SCE1Route2_tf_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE1_Ice_Route2_n_tf_iter = Number_of_days_pm_SCE1Route2_tf_iter./Reshaped_Time_days_SCE1Route2_tf_iter;
    
    sx = size(SCE1_Ice_Route2_n_tf);
    sy = size(SCE1_Ice_Route2_n_tf_iter');
    a = max(sx(1),sy(1));
    SCE1_Ice_Route2_n_tf = [[SCE1_Ice_Route2_n_tf;zeros(abs([a 0]-sx))],[SCE1_Ice_Route2_n_tf_iter';zeros(abs([a,0]-sy))]];
    
    IB_time_SCE1Route2_t0 = [IB_time_SCE1Route2_t0; IB_time_SCE1Route2_t0_iter];
    IB_time_SCE1Route2_tm = [IB_time_SCE1Route2_tm; IB_time_SCE1Route2_tm_iter];
    IB_time_SCE1Route2_tf = [IB_time_SCE1Route2_tf; IB_time_SCE1Route2_tf_iter];
    
    Agg_Op_speed1_SCE1Route2 = [Agg_Op_speed1_SCE1Route2; Agg_Op_speed1_SCE1Route2_iter];
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0 = [Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0; Ice_Fuel_consumed_SCE1Route2_Arctic_t_t0_iter];
    Ice_Energy_consumed_SCE1Route2_Arctic_t_t0 = [Ice_Energy_consumed_SCE1Route2_Arctic_t_t0; Ice_Energy_consumed_SCE1Route2_Arctic_t_t0_iter];
    
    Agg_Op_speed2_SCE1Route2 = [Agg_Op_speed2_SCE1Route2; Agg_Op_speed2_SCE1Route2_iter];
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm = [Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm; Ice_Fuel_consumed_SCE1Route2_Arctic_t_tm_iter];
    Ice_Energy_consumed_SCE1Route2_Arctic_t_tm = [Ice_Energy_consumed_SCE1Route2_Arctic_t_tm; Ice_Energy_consumed_SCE1Route2_Arctic_t_tm_iter];
    
    Agg_Op_speed3_SCE1Route2 = [Agg_Op_speed3_SCE1Route2; Agg_Op_speed3_SCE1Route2_iter];
    Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf = [Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf; Ice_Fuel_consumed_SCE1Route2_Arctic_t_tf_iter];
    Ice_Energy_consumed_SCE1Route2_Arctic_t_tf = [Ice_Energy_consumed_SCE1Route2_Arctic_t_tf; Ice_Energy_consumed_SCE1Route2_Arctic_t_tf_iter];
    
    %Route 3
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %t_0
    %%%%%%%%%%%
    Agg_Op_speed1_SCE1Route3_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed1_SCE1Route3_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        Agg_Op_speed1_SCE1Route3_iter = [Agg_Op_speed1_SCE1Route3_iter; Agg_Op_speed1_SCE1Route3_iter_iter];
    end
    
    Agg_Psi_iter = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        Agg_Psi_iter = [Agg_Psi_iter; Agg_Psi_iter_iter];
    end
    
    Agg_Alpha_iter = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        Agg_Alpha_iter = [Agg_Alpha_iter; Agg_Alpha_iter_iter];
    end
    
    Agg_length1_SCE1Route3 = [];
    for i = 1:1:length(Length_iter)
        Agg_length1_SCE1Route3_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        Agg_length1_SCE1Route3 = [Agg_length1_SCE1Route3; Agg_length1_SCE1Route3_iter];
    end
    
    Agg_draught1_SCE1Route3= [];
    for i = 1:1:length(T_iter)
        Agg_draught1_SCE1Route3_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        Agg_draught1_SCE1Route3 = [Agg_draught1_SCE1Route3; Agg_draught1_SCE1Route3_iter];
    end
    
    OW_Resistance_N_SCE1Route3_t0 = [];
    for i = 1:1:length(v_iter)
        OW_Resistance_N_SCE1Route3_t0_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        OW_Resistance_N_SCE1Route3_t0 = [OW_Resistance_N_SCE1Route3_t0; OW_Resistance_N_SCE1Route3_t0_iter];
    end
    
    C_T_SCE1Route3_t0 = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE1Route3_t0_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        C_T_SCE1Route3_t0 = [C_T_SCE1Route3_t0; C_T_SCE1Route3_t0_iter];
    end
    
    S_SCE1Route3_t0 = [];
    for i = 1:1:length(S_iter)
        S_SCE1Route3_t0_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        S_SCE1Route3_t0 = [S_SCE1Route3_t0; S_SCE1Route3_t0_iter];
    end
    
    %t_m
    %%%%%%%%%%%
    Agg_Op_speed2_SCE1Route3_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed2_SCE1Route3_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tm),1);
        Agg_Op_speed2_SCE1Route3_iter = [Agg_Op_speed2_SCE1Route3_iter; Agg_Op_speed2_SCE1Route3_iter_iter];
    end
    
    Agg_length2_SCE1Route3 = [];
    for i = 1:1:length(Length_iter)
        Agg_length2_SCE1Route3_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tm),1);
        Agg_length2_SCE1Route3 = [Agg_length2_SCE1Route3; Agg_length2_SCE1Route3_iter];
    end
    
    Agg_draught2_SCE1Route3= [];
    for i = 1:1:length(T_iter)
        Agg_draught2_SCE1Route3_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tm),1);
        Agg_draught2_SCE1Route3 = [Agg_draught2_SCE1Route3; Agg_draught2_SCE1Route3_iter];
    end
    
    OW_Resistance_N_SCE1Route3_tm = [];
    for i = 1:1:length(v_iter)
        OW_Resistance_N_SCE1Route3_tm_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tm),1);
        OW_Resistance_N_SCE1Route3_tm = [OW_Resistance_N_SCE1Route3_tm; OW_Resistance_N_SCE1Route3_tm_iter];
    end
    
    C_T_SCE1Route3_tm = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE1Route3_tm_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tm),1);
        C_T_SCE1Route3_tm = [C_T_SCE1Route3_tm; C_T_SCE1Route3_tm_iter];
    end
    
    S_SCE1Route3_tm = [];
    for i = 1:1:length(S_iter)
        S_SCE1Route3_tm_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tm),1);
        S_SCE1Route3_tm = [S_SCE1Route3_tm; S_SCE1Route3_tm_iter];
    end
    
    %t_f
    %%%%%%%%%%%
    Agg_Op_speed3_SCE1Route3_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed3_SCE1Route3_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tf),1);
        Agg_Op_speed3_SCE1Route3_iter = [Agg_Op_speed3_SCE1Route3_iter; Agg_Op_speed3_SCE1Route3_iter_iter];
    end
    
    Agg_length3_SCE1Route3 = [];
    for i = 1:1:length(Length_iter)
        Agg_length3_SCE1Route3_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tf),1);
        Agg_length3_SCE1Route3 = [Agg_length3_SCE1Route3; Agg_length3_SCE1Route3_iter];
    end
    
    Agg_draught3_SCE1Route3= [];
    for i = 1:1:length(T_iter)
        Agg_draught3_SCE1Route3_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tf),1);
        Agg_draught3_SCE1Route3 = [Agg_draught3_SCE1Route3; Agg_draught3_SCE1Route3_iter];
    end
    
    OW_Resistance_N_SCE1Route3_tf = [];
    for i = 1:1:length(v_iter)
        OW_Resistance_N_SCE1Route3_tf_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tf),1);
        OW_Resistance_N_SCE1Route3_tf = [OW_Resistance_N_SCE1Route3_tf; OW_Resistance_N_SCE1Route3_tf_iter];
    end
    
    C_T_SCE1Route3_tf = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE1Route3_tf_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tf),1);
        C_T_SCE1Route3_tf = [C_T_SCE1Route3_tf; C_T_SCE1Route3_tf_iter];
    end
    
    S_SCE1Route3_tf = [];
    for i = 1:1:length(S_iter)
        S_SCE1Route3_tf_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tf),1);
        S_SCE1Route3_tf = [S_SCE1Route3_tf; S_SCE1Route3_tf_iter];
    end
    
    Total_Resistance_SCE1Route3_t0 = [];
    Operating_speed_SCE1Route3_t0 = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_t0_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE1Route3_t0 = OW_Resistance_N_SCE1Route3_t0_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_t0_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE1Route3_t0 = OW_Resistance_N_SCE1Route3_t0_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_t0_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE1Route3_t0 = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_t0_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE1Route3_t0 = OW_Resistance_N_SCE1Route3_t0_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_t0_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE1Route3_t0 = OW_Resistance_N_SCE1Route3_t0_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0(i) > 0.3
            
            Vertical_force_SCE1Route3_t0 = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0(i)).^2;
            
            A_SCE1Route3 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE1Route3 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE1Route3_t0 = Vertical_force_SCE1Route3_t0.*(A_SCE1Route3./B_SCE1Route3);
            
            C1_SCE1Route3 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE1Route3 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE1Route3 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE1Route3_t0 = C1_SCE1Route3.*D_SCE1Route3.*E_SCE1Route3;
            
            F1_SCE1Route3 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0(i));
            G1_SCE1Route3 = Agg_draught1_SCE1Route3(i).*(Beam_iter+Agg_draught1_SCE1Route3(i))./(Beam_iter+(2*Agg_draught1_SCE1Route3(i)));
            H1_SCE1Route3 = 0.7.*Agg_length1_SCE1Route3(i); %70% assumed from Lindqvist
            I1_SCE1Route3 = Agg_draught1_SCE1Route3(i)./tan(Phi_iter);
            J1_SCE1Route3 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE1Route3 = Agg_draught1_SCE1Route3(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE1Route3  = 1./(sin(Phi_iter.^2));
            K_part2_SCE1Route3  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE1Route3 = (K_part1_SCE1Route3+K_part2_SCE1Route3).^0.5;
            
            Submersion_Resistance_component_SCE1Route3_t0 = F1_SCE1Route3.*Beam_iter.*(G1_SCE1Route3+Mu.*(H1_SCE1Route3-I1_SCE1Route3-J1_SCE1Route3+(K1_SCE1Route3.*K_part3_SCE1Route3)));
            Agg_Crushing_Resistance_component_SCE1Route3_t0 = Crushing_Resistance_component_SCE1Route3_t0;
            Agg_Bending_Resistance_component_SCE1Route3_t0 = Bending_Resistance_component_SCE1Route3_t0;
            
            L1_SCE1Route3 = (Agg_Crushing_Resistance_component_SCE1Route3_t0 + Agg_Bending_Resistance_component_SCE1Route3_t0);
            M1_SCE1Route3 = (1+((1.4*Op_speed_metrespersec1_SCE1Route3)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0(i)).^0.5)));
            N1_SCE1Route3 = Submersion_Resistance_component_SCE1Route3_t0.*(1+((9.4.*Op_speed_metrespersec1_SCE1Route3)./((g.*Agg_length1_SCE1Route3(i)).^0.5)));
            
            Total_Ice_Resistance_SCE1Route3_t0 = (L1_SCE1Route3.*M1_SCE1Route3)+N1_SCE1Route3;
            Total_Resistance_SCE1Route3_t0_iter = OW_Resistance_N_SCE1Route3_t0_iter + Total_Ice_Resistance_SCE1Route3_t0;
            
            Operating_speed_SCE1Route3_t0_iter = (Effective_power_SCE1Route3_t0./Total_Resistance_SCE1Route3_t0_iter);
            
            
        else %Ice floe resistance calculation
            
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0_abs = Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0(i)./Agg_Annual_sea_ice_conc_encountered_SCE1Route3_t0(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE1Route3./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route3_t0(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE1Route3_t0(i).^5.196);
            
            Total_Ice_Resistance_SCE1Route3_t0 = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route3_t0(i)).*(Op_speed_metrespersec1_SCE1Route3.^2);
            Total_Resistance_SCE1Route3_t0_iter = OW_Resistance_N_SCE1Route3_t0_iter + Total_Ice_Resistance_SCE1Route3_t0;
            
            Operating_speed_SCE1Route3_t0_iter = (Effective_power_SCE1Route3_t0./Total_Resistance_SCE1Route3_t0_iter);
            
        end
        Total_Resistance_SCE1Route3_t0 = [Total_Resistance_SCE1Route3_t0; Total_Resistance_SCE1Route3_t0_iter];
        Operating_speed_SCE1Route3_t0 = [Operating_speed_SCE1Route3_t0; Operating_speed_SCE1Route3_t0_iter];
    end
    
    Total_Resistance_SCE1Route3_tm = [];
    Operating_speed_SCE1Route3_tm = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_tm_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE1Route3_tm = OW_Resistance_N_SCE1Route3_tm_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_tm_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE1Route3_tm = OW_Resistance_N_SCE1Route3_tm_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_tm_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE1Route3_tm = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_tm_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE1Route3_tm = OW_Resistance_N_SCE1Route3_tm_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_tm_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE1Route3_tm = OW_Resistance_N_SCE1Route3_tm_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm(i) > 0.3
            
            Vertical_force_SCE1Route3_tm = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm(i)).^2;
            
            A_SCE1Route3 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE1Route3 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE1Route3_tm = Vertical_force_SCE1Route3_tm.*(A_SCE1Route3./B_SCE1Route3);
            
            C1_SCE1Route3 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE1Route3 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE1Route3 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE1Route3_tm = C1_SCE1Route3.*D_SCE1Route3.*E_SCE1Route3;
            
            F1_SCE1Route3 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm(i));
            G1_SCE1Route3 = Agg_draught1_SCE1Route3(i).*(Beam_iter+Agg_draught1_SCE1Route3(i))./(Beam_iter+(2*Agg_draught1_SCE1Route3(i)));
            H1_SCE1Route3 = 0.7.*Agg_length1_SCE1Route3(i); %70% assumed from Lindqvist
            I1_SCE1Route3 = Agg_draught1_SCE1Route3(i)./tan(Phi_iter);
            J1_SCE1Route3 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE1Route3 = Agg_draught1_SCE1Route3(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE1Route3  = 1./(sin(Phi_iter.^2));
            K_part2_SCE1Route3  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE1Route3 = (K_part1_SCE1Route3+K_part2_SCE1Route3).^0.5;
            
            Submersion_Resistance_component_SCE1Route3_tm = F1_SCE1Route3.*Beam_iter.*(G1_SCE1Route3+Mu.*(H1_SCE1Route3-I1_SCE1Route3-J1_SCE1Route3+(K1_SCE1Route3.*K_part3_SCE1Route3)));
            Agg_Crushing_Resistance_component_SCE1Route3_tm = Crushing_Resistance_component_SCE1Route3_tm;
            Agg_Bending_Resistance_component_SCE1Route3_tm = Bending_Resistance_component_SCE1Route3_tm;
            
            L1_SCE1Route3 = (Agg_Crushing_Resistance_component_SCE1Route3_tm + Agg_Bending_Resistance_component_SCE1Route3_tm);
            M1_SCE1Route3 = (1+((1.4*Op_speed_metrespersec1_SCE1Route3)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm(i)).^0.5)));
            N1_SCE1Route3 = Submersion_Resistance_component_SCE1Route3_tm.*(1+((9.4.*Op_speed_metrespersec1_SCE1Route3)./((g.*Agg_length1_SCE1Route3(i)).^0.5)));
            
            Total_Ice_Resistance_SCE1Route3_tm = (L1_SCE1Route3.*M1_SCE1Route3)+N1_SCE1Route3;
            Total_Resistance_SCE1Route3_tm_iter = OW_Resistance_N_SCE1Route3_tm_iter + Total_Ice_Resistance_SCE1Route3_tm;
            
            Operating_speed_SCE1Route3_tm_iter = (Effective_power_SCE1Route3_tm./Total_Resistance_SCE1Route3_tm_iter);
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm_abs = Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm(i)./Agg_Annual_sea_ice_conc_encountered_SCE1Route3_tm(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE1Route3./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route3_tm(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE1Route3_tm(i).^5.196);
            
            Total_Ice_Resistance_SCE1Route3_tm = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route3_tm(i)).*(Op_speed_metrespersec1_SCE1Route3.^2);
            Total_Resistance_SCE1Route3_tm_iter = OW_Resistance_N_SCE1Route3_tm_iter + Total_Ice_Resistance_SCE1Route3_tm;
            
            Operating_speed_SCE1Route3_tm_iter = (Effective_power_SCE1Route3_tm./Total_Resistance_SCE1Route3_tm_iter);
            
        end
        Total_Resistance_SCE1Route3_tm = [Total_Resistance_SCE1Route3_tm; Total_Resistance_SCE1Route3_tm_iter];
        Operating_speed_SCE1Route3_tm = [Operating_speed_SCE1Route3_tm; Operating_speed_SCE1Route3_tm_iter];
    end
    
    Total_Resistance_SCE1Route3_tf = [];
    Operating_speed_SCE1Route3_tf = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_tf_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE1Route3_tf = OW_Resistance_N_SCE1Route3_tf_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_tf_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE1Route3_tf = OW_Resistance_N_SCE1Route3_tf_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_tf_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE1Route3_tf = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_tf_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE1Route3_tf = OW_Resistance_N_SCE1Route3_tf_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE1Route3 = Agg_Op_speed1_SCE1Route3_iter(i).*0.514444444;
            OW_Resistance_N_SCE1Route3_tf_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE1Route3_tf = OW_Resistance_N_SCE1Route3_tf_iter.*Op_speed_metrespersec1_SCE1Route3;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf(i) > 0.3
            
            Vertical_force_SCE1Route3_tf = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf(i)).^2;
            
            A_SCE1Route3 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE1Route3 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE1Route3_tf = Vertical_force_SCE1Route3_tf.*(A_SCE1Route3./B_SCE1Route3);
            
            C1_SCE1Route3 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE1Route3 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE1Route3 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE1Route3_tf = C1_SCE1Route3.*D_SCE1Route3.*E_SCE1Route3;
            
            F1_SCE1Route3 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf(i));
            G1_SCE1Route3 = Agg_draught1_SCE1Route3(i).*(Beam_iter+Agg_draught1_SCE1Route3(i))./(Beam_iter+(2*Agg_draught1_SCE1Route3(i)));
            H1_SCE1Route3 = 0.7.*Agg_length1_SCE1Route3(i); %70% assumed from Lindqvist
            I1_SCE1Route3 = Agg_draught1_SCE1Route3(i)./tan(Phi_iter);
            J1_SCE1Route3 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE1Route3 = Agg_draught1_SCE1Route3(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE1Route3  = 1./(sin(Phi_iter.^2));
            K_part2_SCE1Route3  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE1Route3 = (K_part1_SCE1Route3+K_part2_SCE1Route3).^0.5;
            
            Submersion_Resistance_component_SCE1Route3_tf = F1_SCE1Route3.*Beam_iter.*(G1_SCE1Route3+Mu.*(H1_SCE1Route3-I1_SCE1Route3-J1_SCE1Route3+(K1_SCE1Route3.*K_part3_SCE1Route3)));
            Agg_Crushing_Resistance_component_SCE1Route3_tf = Crushing_Resistance_component_SCE1Route3_tf;
            Agg_Bending_Resistance_component_SCE1Route3_tf = Bending_Resistance_component_SCE1Route3_tf;
            
            L1_SCE1Route3 = (Agg_Crushing_Resistance_component_SCE1Route3_tf + Agg_Bending_Resistance_component_SCE1Route3_tf);
            M1_SCE1Route3 = (1+((1.4*Op_speed_metrespersec1_SCE1Route3)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf(i)).^0.5)));
            N1_SCE1Route3 = Submersion_Resistance_component_SCE1Route3_tf.*(1+((9.4.*Op_speed_metrespersec1_SCE1Route3)./((g.*Agg_length1_SCE1Route3(i)).^0.5)));
            
            Total_Ice_Resistance_SCE1Route3_tf = (L1_SCE1Route3.*M1_SCE1Route3)+N1_SCE1Route3;
            Total_Resistance_SCE1Route3_tf_iter = OW_Resistance_N_SCE1Route3_tf_iter + Total_Ice_Resistance_SCE1Route3_tf;
            
            Operating_speed_SCE1Route3_tf_iter = (Effective_power_SCE1Route3_tf./Total_Resistance_SCE1Route3_tf_iter);
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf_abs = Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf(i)./Agg_Annual_sea_ice_conc_encountered_SCE1Route3_tf(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE1Route3./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route3_tf(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE1Route3_tf(i).^5.196);
            
            Total_Ice_Resistance_SCE1Route3_tf = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE1Route3_tf(i)).*(Op_speed_metrespersec1_SCE1Route3.^2);
            Total_Resistance_SCE1Route3_tf_iter = OW_Resistance_N_SCE1Route3_tf_iter + Total_Ice_Resistance_SCE1Route3_tf;
            
            Operating_speed_SCE1Route3_tf_iter = (Effective_power_SCE1Route3_tf./Total_Resistance_SCE1Route3_tf_iter);
            
        end
        Total_Resistance_SCE1Route3_tf = [Total_Resistance_SCE1Route3_tf; Total_Resistance_SCE1Route3_tf_iter];
        Operating_speed_SCE1Route3_tf = [Operating_speed_SCE1Route3_tf; Operating_speed_SCE1Route3_tf_iter];
    end
    
    %Resize the variables to align with the shape of the other variables
    Operating_speed_SCE1Route3_t0 = Operating_speed_SCE1Route3_t0./0.514444444;
    Operating_speed_SCE1Route3_tm = Operating_speed_SCE1Route3_tm./0.514444444;
    Operating_speed_SCE1Route3_tf = Operating_speed_SCE1Route3_tf./0.514444444;
    
    %Where the ice is thicker than 0.8m it also needs an icebreaker...
    Ice_Logic_t0 = (Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_t0 > 0.7);
    Ice_Logic_tm = (Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tm > 0.7);
    Ice_Logic_tf = (Agg_Annual_sea_ice_thickness_encountered_SCE1Route3_tf > 0.7);
    
    Operating_speed_SCE1Route3_t0(Ice_Logic_t0) = 3;
    Operating_speed_SCE1Route3_tm(Ice_Logic_tm) = 3;
    Operating_speed_SCE1Route3_tf(Ice_Logic_tf) = 3;
    
    
    Global_IceStrengthOutput_SCE1Route3_power_kW_t0 = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE1Route3_power_kW_t0_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        Global_IceStrengthOutput_SCE1Route3_power_kW_t0 = [Global_IceStrengthOutput_SCE1Route3_power_kW_t0;Global_IceStrengthOutput_SCE1Route3_power_kW_t0_iter];
    end
    
    Global_IceStrengthOutput_SCE1Route3_power_kW_tm = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE1Route3_power_kW_tm_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tm),1);
        Global_IceStrengthOutput_SCE1Route3_power_kW_tm = [Global_IceStrengthOutput_SCE1Route3_power_kW_tm;Global_IceStrengthOutput_SCE1Route3_power_kW_tm_iter];
    end
    
    Global_IceStrengthOutput_SCE1Route3_power_kW_tf = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE1Route3_power_kW_tf_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tf),1);
        Global_IceStrengthOutput_SCE1Route3_power_kW_tf = [Global_IceStrengthOutput_SCE1Route3_power_kW_tf;Global_IceStrengthOutput_SCE1Route3_power_kW_tf_iter];
    end
    
    Global_SCE1Route3_sfc_t0 = [];
    
    for i = 1:1:length(Icesfc_iter)
        Global_SCE1Route3_sfc_t0_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        Global_SCE1Route3_sfc_t0  = [Global_SCE1Route3_sfc_t0; Global_SCE1Route3_sfc_t0_iter];
    end
    
    Global_SCE1Route3_sfc_tm = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE1Route3_sfc_tm_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tm),1);
        Global_SCE1Route3_sfc_tm  = [Global_SCE1Route3_sfc_tm; Global_SCE1Route3_sfc_tm_iter];
    end
    
    Global_SCE1Route3_sfc_tf = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE1Route3_sfc_tf_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tf),1);
        Global_SCE1Route3_sfc_tf  = [Global_SCE1Route3_sfc_tf; Global_SCE1Route3_sfc_tf_iter];
    end
    
    Operating_speed_index_SCE1Route3_t0 = find(Operating_speed_SCE1Route3_t0<3);
    for i = 1:1:length(Operating_speed_index_SCE1Route3_t0)
        Operating_speed_SCE1Route3_t0(Operating_speed_index_SCE1Route3_t0(i)) = 3;
    end
    
    Operating_speed_index_SCE1Route3_tm = find(Operating_speed_SCE1Route3_tm<3);
    for i = 1:1:length(Operating_speed_index_SCE1Route3_tm)
        Operating_speed_SCE1Route3_tm(Operating_speed_index_SCE1Route3_tm(i)) = 3;
    end
    
    Operating_speed_index_SCE1Route3_tf = find(Operating_speed_SCE1Route3_tf<3);
    for i = 1:1:length(Operating_speed_index_SCE1Route3_tf)
        Operating_speed_SCE1Route3_tf(Operating_speed_index_SCE1Route3_tf(i)) = 3;
    end
    
    % Des_v
    Global_SCE1Route3_Des_v_t0 = [];
    
    for i = 1:1:length(Des_v_iter)
        Global_SCE1Route3_Des_v_t0_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        Global_SCE1Route3_Des_v_t0  = [Global_SCE1Route3_Des_v_t0; Global_SCE1Route3_Des_v_t0_iter];
    end
    
    Global_SCE1Route3_Des_v_tm = [];
    
    for i = 1:1:length(Des_v_iter)
        Global_SCE1Route3_Des_v_tm_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tm),1);
        Global_SCE1Route3_Des_v_tm  = [Global_SCE1Route3_Des_v_tm; Global_SCE1Route3_Des_v_tm_iter];
    end
    
    Global_SCE1Route3_Des_v_tf = [];
    
    for i = 1:1:length(Des_v_iter)
        Global_SCE1Route3_Des_v_tf_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tf),1);
        Global_SCE1Route3_Des_v_tf  = [Global_SCE1Route3_Des_v_tf; Global_SCE1Route3_Des_v_tf_iter];
    end
    
    % Ice_Installed_Power_kW_iter
    Global_SCE1Route3_Ice_Installed_Power_kW_t0 = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE1Route3_Ice_Installed_Power_kW_t0_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_t0),1);
        Global_SCE1Route3_Ice_Installed_Power_kW_t0  = [Global_SCE1Route3_Ice_Installed_Power_kW_t0; Global_SCE1Route3_Ice_Installed_Power_kW_t0_iter];
    end
    
    Global_SCE1Route3_Ice_Installed_Power_kW_tm = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE1Route3_Ice_Installed_Power_kW_tm_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tm),1);
        Global_SCE1Route3_Ice_Installed_Power_kW_tm  = [Global_SCE1Route3_Ice_Installed_Power_kW_tm; Global_SCE1Route3_Ice_Installed_Power_kW_tm_iter];
    end
    
    Global_SCE1Route3_Ice_Installed_Power_kW_tf = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE1Route3_Ice_Installed_Power_kW_tf_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE1Route3_tf),1);
        Global_SCE1Route3_Ice_Installed_Power_kW_tf  = [Global_SCE1Route3_Ice_Installed_Power_kW_tf; Global_SCE1Route3_Ice_Installed_Power_kW_tf_iter];
    end
    
    Total_Power_demand_SCE1Route3_t0 = Global_SCE1Route3_Ice_Installed_Power_kW_t0.*((Operating_speed_SCE1Route3_t0./Global_SCE1Route3_Des_v_t0).^3)./(Foul_coeff.*Weather_coeff);
    Total_Power_demand_SCE1Route3_tm = Global_SCE1Route3_Ice_Installed_Power_kW_tm.*((Operating_speed_SCE1Route3_tm./Global_SCE1Route3_Des_v_tm).^3)./(Foul_coeff.*Weather_coeff);
    Total_Power_demand_SCE1Route3_tf = Global_SCE1Route3_Ice_Installed_Power_kW_tf.*((Operating_speed_SCE1Route3_tf./Global_SCE1Route3_Des_v_tf).^3)./(Foul_coeff.*Weather_coeff);
    
    Agg_Engine_SCE1Route3_load_t0 = Total_Power_demand_SCE1Route3_t0./Global_SCE1Route3_Ice_Installed_Power_kW_t0;
    Agg_Engine_SCE1Route3_load_tm = Total_Power_demand_SCE1Route3_tm./Global_SCE1Route3_Ice_Installed_Power_kW_tm;
    Agg_Engine_SCE1Route3_load_tf = Total_Power_demand_SCE1Route3_tf./Global_SCE1Route3_Ice_Installed_Power_kW_tf;
    
    %Then I use the IMO 3rd ghg study equation to compute the different SFC,
    %but need to renumerate as the equation doesn't work for loads of 1
    Constant_SCE1Route3_t0 = (0.455.*(Agg_Engine_SCE1Route3_load_t0).^2)-(0.71.*Agg_Engine_SCE1Route3_load_t0)+1.28;
    Constant_SCE1Route3_tm = (0.455.*(Agg_Engine_SCE1Route3_load_tm).^2)-(0.71.*Agg_Engine_SCE1Route3_load_tm)+1.28;
    Constant_SCE1Route3_tf = (0.455.*(Agg_Engine_SCE1Route3_load_tf).^2)-(0.71.*Agg_Engine_SCE1Route3_load_tf)+1.28;
    
    Operating_SFC_SCE1Route3_t0 = Global_SCE1Route3_sfc_t0.*Constant_SCE1Route3_t0;
    Operating_SFC_SCE1Route3_tm = Global_SCE1Route3_sfc_tm.*Constant_SCE1Route3_tm;
    Operating_SFC_SCE1Route3_tf = Global_SCE1Route3_sfc_tf.*Constant_SCE1Route3_tf;
    
    SFC_index_SCE1Route3_t0 = find(Agg_Engine_SCE1Route3_load_t0==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE1Route3_t0)
        Operating_SFC_SCE1Route3_t0(SFC_index_SCE1Route3_t0(i)) = Global_SCE1Route3_sfc_t0(SFC_index_SCE1Route3_t0(i));
    end
    
    SFC_index_SCE1Route3_tm = find(Agg_Engine_SCE1Route3_load_tm==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE1Route3_tm)
        Operating_SFC_SCE1Route3_tm(SFC_index_SCE1Route3_tm(i)) = Global_SCE1Route3_sfc_tm(SFC_index_SCE1Route3_tm(i));
    end
    
    SFC_index_SCE1Route3_tf = find(Agg_Engine_SCE1Route3_load_tf==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE1Route3_tf)
        Operating_SFC_SCE1Route3_tf(SFC_index_SCE1Route3_tf(i)) = Global_SCE1Route3_sfc_tf(SFC_index_SCE1Route3_tf(i));
    end
    
    % %Aggregate the unit lengths together so I can then calculate the time it
    % %takes for the ship to traverse the route each year - MUST BE CAREFUL AS
    Array_Unit_length_Route_3 = [Unit_length_AC; Unit_length_CE;...
        Unit_length_EF; Unit_length_FG; Unit_length_FG(3)]; %I assume that the last interval of the route is the same as the one previous for FG
    %Resize this to be compatible with the other variables then obtain the
    %energy demand
    
    Global_Array_Unit_length_SCE1Route_3_t0 = repmat(Array_Unit_length_Route_3,length(v_iter).*sum(Logic_mat_IceStrength_feasibility_Scenario1_iter),1); %12 months in a year
    Global_Array_Unit_length_SCE1Route_3_tm = repmat(Array_Unit_length_Route_3,length(v_iter).*sum(Logic_mat_IceStrength_feasibility_Scenario1_iter),1);
    Global_Array_Unit_length_SCE1Route_3_tf = repmat(Array_Unit_length_Route_3,length(v_iter).*sum(Logic_mat_IceStrength_feasibility_Scenario1_iter),1);
    
    Time_hrs_SCE1Route3_t0 = Global_Array_Unit_length_SCE1Route_3_t0./Operating_speed_SCE1Route3_t0;
    Time_hrs_SCE1Route3_tm = Global_Array_Unit_length_SCE1Route_3_tm./Operating_speed_SCE1Route3_tm;
    Time_hrs_SCE1Route3_tf = Global_Array_Unit_length_SCE1Route_3_tf./Operating_speed_SCE1Route3_tf;
    
    %Reshaping the time matrices to work out the number of days spent on the
    %NSR which can be used later in the commercial profile function
    Reshaped_Time_hrs_SCE1Route3_t0_iter = reshape(Time_hrs_SCE1Route3_t0,length(Array_Unit_length_Route_3(:,1)).*length(Global_Array_Unit_length_SCE1Route_3_t0(:,1))./(length(v_iter).*length(Array_Unit_length_Route_3(:,1))),length(v_iter));
    Reshaped_Time_hrs_SCE1Route3_tm_iter = reshape(Time_hrs_SCE1Route3_tm,length(Array_Unit_length_Route_3(:,1)).*length(Global_Array_Unit_length_SCE1Route_3_tm(:,1))./(length(v_iter).*length(Array_Unit_length_Route_3(:,1))),length(v_iter));
    Reshaped_Time_hrs_SCE1Route3_tf_iter = reshape(Time_hrs_SCE1Route3_tf,length(Array_Unit_length_Route_3(:,1)).*length(Global_Array_Unit_length_SCE1Route_3_tf(:,1))./(length(v_iter).*length(Array_Unit_length_Route_3(:,1))),length(v_iter));
    
    Reshaped_Time_days_SCE1Route3_t0_iter = [];
    for i = 1:1:length(Reshaped_Time_hrs_SCE1Route3_t0_iter(:,1))./length(Array_Unit_length_Route_3(:,1))
        Part_Time_days_SCE1Route3_t0 = Reshaped_Time_hrs_SCE1Route3_t0_iter((i-1)*length(Array_Unit_length_Route_3(:,1))+1:i*length(Array_Unit_length_Route_3(:,1)),:);
        Reshaped_Time_days_SCE1Route3_t0_iter_iter = sum(Part_Time_days_SCE1Route3_t0);
        Reshaped_Time_days_SCE1Route3_t0_iter = [Reshaped_Time_days_SCE1Route3_t0_iter; Reshaped_Time_days_SCE1Route3_t0_iter_iter];
    end
    Reshaped_Time_days_SCE1Route3_t0_iter = Reshaped_Time_days_SCE1Route3_t0_iter'; Reshaped_Time_days_SCE1Route3_t0_iter = Reshaped_Time_days_SCE1Route3_t0_iter./24;
    
    for i = 1:1:Ship_design_speed_length
        Reshaped_Time_days_SCE1Route3_t0_iter_iter_iter = Reshaped_Time_days_SCE1Route3_t0_iter(i,:);
        Reshaped_Time_days_SCE1Route3_t0_iter_iter_iter(Reshaped_Time_days_SCE1Route3_t0_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
        Reshaped_Time_days_SCE1Route3_t0_iter(i,:) = Reshaped_Time_days_SCE1Route3_t0_iter_iter_iter;
    end
    
    Logic = Reshaped_Time_days_SCE1Route3_t0_iter > 0; Logic = Logic';
    Time = reshape(Time_hrs_SCE1Route3_t0,length(Global_Array_Unit_length_SCE1Route_3_t0(:,1))./(length(v_iter)),length(v_iter));
    
    Global_Logic = zeros(length(Reshaped_Time_hrs_SCE1Route3_t0_iter(:,1))./length(Array_Unit_length_Route_3(:,1)).*length(Array_Unit_length_Route_3(:,1)),length(Logic(1,:)));
    for i = 1:1:length(Logic(:,1))
        Global_Logic(length(Array_Unit_length_Route_3(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_3(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_3(:,1)),1);
    end
    Time_hrs_SCE1Route3_t0 = Time.*Global_Logic; Time_hrs_SCE1Route3_t0 = reshape(Time_hrs_SCE1Route3_t0,length(Global_Array_Unit_length_SCE1Route_3_t0(:,1)),1);
    
    clear Logic Time Global_Logic
    
    Reshaped_Time_days_SCE1Route3_tm_iter = [];
    for i = 1:1:length(Reshaped_Time_hrs_SCE1Route3_tm_iter(:,1))./length(Array_Unit_length_Route_3(:,1))
        Part_Time_days_SCE1Route3_tm = Reshaped_Time_hrs_SCE1Route3_tm_iter((i-1)*length(Array_Unit_length_Route_3(:,1))+1:i*length(Array_Unit_length_Route_3(:,1)),:);
        Reshaped_Time_days_SCE1Route3_tm_iter_iter = sum(Part_Time_days_SCE1Route3_tm);
        Reshaped_Time_days_SCE1Route3_tm_iter = [Reshaped_Time_days_SCE1Route3_tm_iter; Reshaped_Time_days_SCE1Route3_tm_iter_iter];
    end
    Reshaped_Time_days_SCE1Route3_tm_iter = Reshaped_Time_days_SCE1Route3_tm_iter'; Reshaped_Time_days_SCE1Route3_tm_iter = Reshaped_Time_days_SCE1Route3_tm_iter./24;
    
    for i = 1:1:Ship_design_speed_length
        Reshaped_Time_days_SCE1Route3_tm_iter_iter_iter = Reshaped_Time_days_SCE1Route3_tm_iter(i,:);
        Reshaped_Time_days_SCE1Route3_tm_iter_iter_iter(Reshaped_Time_days_SCE1Route3_tm_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
        Reshaped_Time_days_SCE1Route3_tm_iter(i,:) = Reshaped_Time_days_SCE1Route3_tm_iter_iter_iter;
    end
    
    Logic = Reshaped_Time_days_SCE1Route3_tm_iter > 0; Logic = Logic';
    Time = reshape(Time_hrs_SCE1Route3_tm,length(Global_Array_Unit_length_SCE1Route_3_tm(:,1))./(length(v_iter)),length(v_iter));
    
    Global_Logic = zeros(length(Reshaped_Time_hrs_SCE1Route3_tm_iter(:,1))./length(Array_Unit_length_Route_3(:,1)).*length(Array_Unit_length_Route_3(:,1)),length(Logic(1,:)));
    for i = 1:1:length(Logic(:,1))
        Global_Logic(length(Array_Unit_length_Route_3(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_3(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_3(:,1)),1);
    end
    Time_hrs_SCE1Route3_tm = Time.*Global_Logic; Time_hrs_SCE1Route3_tm = reshape(Time_hrs_SCE1Route3_tm,length(Global_Array_Unit_length_SCE1Route_3_tm(:,1)),1);
    
    clear Logic Time Global_Logic
    
    Reshaped_Time_days_SCE1Route3_tf_iter = [];
    for i = 1:1:length(Reshaped_Time_hrs_SCE1Route3_tf_iter(:,1))./length(Array_Unit_length_Route_3(:,1))
        Part_Time_days_SCE1Route3_tf = Reshaped_Time_hrs_SCE1Route3_tf_iter((i-1)*length(Array_Unit_length_Route_3(:,1))+1:i*length(Array_Unit_length_Route_3(:,1)),:);
        Reshaped_Time_days_SCE1Route3_tf_iter_iter = sum(Part_Time_days_SCE1Route3_tf);
        Reshaped_Time_days_SCE1Route3_tf_iter = [Reshaped_Time_days_SCE1Route3_tf_iter; Reshaped_Time_days_SCE1Route3_tf_iter_iter];
    end
    Reshaped_Time_days_SCE1Route3_tf_iter = Reshaped_Time_days_SCE1Route3_tf_iter'; Reshaped_Time_days_SCE1Route3_tf_iter = Reshaped_Time_days_SCE1Route3_tf_iter./24;
    for i = 1:1:Ship_design_speed_length
        Reshaped_Time_days_SCE1Route3_tf_iter_iter_iter = Reshaped_Time_days_SCE1Route3_tf_iter(i,:);
        Reshaped_Time_days_SCE1Route3_tf_iter_iter_iter(Reshaped_Time_days_SCE1Route3_tf_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
        Reshaped_Time_days_SCE1Route3_tf_iter(i,:) = Reshaped_Time_days_SCE1Route3_tf_iter_iter_iter;
    end
    
    Logic = Reshaped_Time_days_SCE1Route3_tf_iter > 0; Logic = Logic';
    Time = reshape(Time_hrs_SCE1Route3_tf,length(Global_Array_Unit_length_SCE1Route_3_tf(:,1))./(length(v_iter)),length(v_iter));
    
    Global_Logic = zeros(length(Reshaped_Time_hrs_SCE1Route3_tf_iter(:,1))./length(Array_Unit_length_Route_3(:,1)).*length(Array_Unit_length_Route_3(:,1)),length(Logic(1,:)));
    for i = 1:1:length(Logic(:,1))
        Global_Logic(length(Array_Unit_length_Route_3(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_3(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_3(:,1)),1);
    end
    Time_hrs_SCE1Route3_tf = Time.*Global_Logic; Time_hrs_SCE1Route3_tf = reshape(Time_hrs_SCE1Route3_tf,length(Global_Array_Unit_length_SCE1Route_3_tf(:,1)),1);
    
    clear Logic Time Global_Logic
    
    Energy_demand_SCE1Route3_t0_iter =  Total_Power_demand_SCE1Route3_t0.*Time_hrs_SCE1Route3_t0; %kWh
    Energy_demand_SCE1Route3_tm_iter =  Total_Power_demand_SCE1Route3_tm.*Time_hrs_SCE1Route3_tm;
    Energy_demand_SCE1Route3_tf_iter =  Total_Power_demand_SCE1Route3_tf.*Time_hrs_SCE1Route3_tf;
    
    %Fuel consumed
    Fuel_consumed_SCE1Route3_t0_iter = Energy_demand_SCE1Route3_t0_iter.*Operating_SFC_SCE1Route3_t0*10^-6; %Tonnes
    Fuel_consumed_SCE1Route3_tm_iter = Energy_demand_SCE1Route3_tm_iter.*Operating_SFC_SCE1Route3_tm*10^-6;
    Fuel_consumed_SCE1Route3_tf_iter = Energy_demand_SCE1Route3_tf_iter.*Operating_SFC_SCE1Route3_tf*10^-6;
    
    %Number of days requiring an icebreaker - I calculate it for each
    %individual ship design
    %t_0
    %%%%%%%%%%%%%%%
    Length_OP_Speed_SCE1Route3_t0 = length(Operating_speed_SCE1Route3_t0);
    Partitioned_length_OP_Speed_SCE1Route3_t0 = Length_OP_Speed_SCE1Route3_t0./length(v_iter);
    Reshaped_Operating_speed_SCE1Route3_t0 = reshape(Operating_speed_SCE1Route3_t0,[Partitioned_length_OP_Speed_SCE1Route3_t0,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Length_Time_hrs_SCE1Route3_t0 = length(Time_hrs_SCE1Route3_t0);
    Partitioned_length_Time_hrs_SCE1Route3_t0 = Length_Time_hrs_SCE1Route3_t0./length(v_iter);
    Reshaped_Time_hrs_SCE1Route3_t0_iter = reshape(Time_hrs_SCE1Route3_t0,[Partitioned_length_Time_hrs_SCE1Route3_t0,length(v_iter)]);
    
    Logic_Operating_speed_SCE1Route3_t0 = Reshaped_Operating_speed_SCE1Route3_t0;
    Logic_Operating_speed_SCE1Route3_t0(Logic_Operating_speed_SCE1Route3_t0 ==3) = 1;
    Logic_Operating_speed_SCE1Route3_t0(Logic_Operating_speed_SCE1Route3_t0 ~=1) = 0;
    
    IB_time_SCE1Route3_t0_iter = Logic_Operating_speed_SCE1Route3_t0.*Reshaped_Time_hrs_SCE1Route3_t0_iter;
    IB_time_SCE1Route3_t0_iter = sum(IB_time_SCE1Route3_t0_iter); IB_time_SCE1Route3_t0_iter = round(IB_time_SCE1Route3_t0_iter./24); IB_time_SCE1Route3_t0_iter =IB_time_SCE1Route3_t0_iter';
    Array_Unit_length_Route_3 = repmat(Array_Unit_length_Route_3, sum(Logic_mat_IceStrength_feasibility_Scenario1_iter), 1);
    
    %t_m
    %%%%%%%%%%%%%%
    Length_OP_Speed_SCE1Route3_tm = length(Operating_speed_SCE1Route3_tm);
    Partitioned_length_OP_Speed_SCE1Route3_tm = Length_OP_Speed_SCE1Route3_tm./length(v_iter);
    Reshaped_Operating_speed_SCE1Route3_tm = reshape(Operating_speed_SCE1Route3_tm,[Partitioned_length_OP_Speed_SCE1Route3_tm,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Length_Time_hrs_SCE1Route3_tm = length(Time_hrs_SCE1Route3_tm);
    Partitioned_length_Time_hrs_SCE1Route3_tm = Length_Time_hrs_SCE1Route3_tm./length(v_iter);
    Reshaped_Time_hrs_SCE1Route3_tm_iter = reshape(Time_hrs_SCE1Route3_tm,[Partitioned_length_Time_hrs_SCE1Route3_tm,length(v_iter)]);
    
    Logic_Operating_speed_SCE1Route3_tm = Reshaped_Operating_speed_SCE1Route3_tm;
    Logic_Operating_speed_SCE1Route3_tm(Logic_Operating_speed_SCE1Route3_tm ==3) = 1;
    Logic_Operating_speed_SCE1Route3_tm(Logic_Operating_speed_SCE1Route3_tm ~=1) = 0;
    
    IB_time_SCE1Route3_tm_iter = Logic_Operating_speed_SCE1Route3_tm.*Reshaped_Time_hrs_SCE1Route3_tm_iter;
    IB_time_SCE1Route3_tm_iter = sum(IB_time_SCE1Route3_tm_iter); IB_time_SCE1Route3_tm_iter = round(IB_time_SCE1Route3_tm_iter./24); IB_time_SCE1Route3_tm_iter =IB_time_SCE1Route3_tm_iter';
    
    %t_f
    %%%%%%%%%%%
    Length_OP_Speed_SCE1Route3_tf = length(Operating_speed_SCE1Route3_tf);
    Partitioned_length_OP_Speed_SCE1Route3_tf = Length_OP_Speed_SCE1Route3_tf./length(v_iter);
    Reshaped_Operating_speed_SCE1Route3_tf = reshape(Operating_speed_SCE1Route3_tf,[Partitioned_length_OP_Speed_SCE1Route3_tf,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Length_Time_hrs_SCE1Route3_tf = length(Time_hrs_SCE1Route3_tf);
    Partitioned_length_Time_hrs_SCE1Route3_tf = Length_Time_hrs_SCE1Route3_tf./length(v_iter);
    Reshaped_Time_hrs_SCE1Route3_tf_iter = reshape(Time_hrs_SCE1Route3_tf,[Partitioned_length_Time_hrs_SCE1Route3_tf,length(v_iter)]);
    
    Logic_Operating_speed_SCE1Route3_tf = Reshaped_Operating_speed_SCE1Route3_tf;
    Logic_Operating_speed_SCE1Route3_tf(Logic_Operating_speed_SCE1Route3_tf ==3) = 1;
    Logic_Operating_speed_SCE1Route3_tf(Logic_Operating_speed_SCE1Route3_tf ~=1) = 0;
    
    IB_time_SCE1Route3_tf_iter = Logic_Operating_speed_SCE1Route3_tf.*Reshaped_Time_hrs_SCE1Route3_tf_iter;
    IB_time_SCE1Route3_tf_iter = sum(IB_time_SCE1Route3_tf_iter); IB_time_SCE1Route3_tf_iter = round(IB_time_SCE1Route3_tf_iter./24); IB_time_SCE1Route3_tf_iter =IB_time_SCE1Route3_tf_iter';
    
    %Table length
    Table_length_SCE1Route3_t0 = length(Agg_Op_speed1_SCE1Route3_iter(:));
    Table_length_SCE1Route3_tm = length(Agg_Op_speed2_SCE1Route3_iter(:));
    Table_length_SCE1Route3_tf = length(Agg_Op_speed3_SCE1Route3_iter(:));
    
    %Sum of the fuel and energy consumed
    Partitioned_length_SCE1Route3_t0 =  Table_length_SCE1Route3_t0./Ship_design_speed_length;
    Partitioned_length_SCE1Route3_tm =  Table_length_SCE1Route3_tm./Ship_design_speed_length;
    Partitioned_length_SCE1Route3_tf =  Table_length_SCE1Route3_tf./Ship_design_speed_length;
    
    %Annual fuel consumed
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0_iter = reshape(Fuel_consumed_SCE1Route3_t0_iter(:), Partitioned_length_SCE1Route3_t0, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0_iter = sum(Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0_iter); Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0_iter = Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0_iter';
    
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm_iter = reshape(Fuel_consumed_SCE1Route3_tm_iter(:), Partitioned_length_SCE1Route3_tm, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm_iter = sum(Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm_iter); Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm_iter = Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm_iter';
    
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf_iter = reshape(Fuel_consumed_SCE1Route3_tf_iter(:), Partitioned_length_SCE1Route3_tf, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf_iter = sum(Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf_iter); Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf_iter = Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf_iter';
    
    Ice_Energy_consumed_SCE1Route3_Arctic_t_t0_iter = reshape(Energy_demand_SCE1Route3_t0_iter(:), Partitioned_length_SCE1Route3_t0, Ship_design_speed_length);
    Ice_Energy_consumed_SCE1Route3_Arctic_t_t0_iter = sum(Ice_Energy_consumed_SCE1Route3_Arctic_t_t0_iter); Ice_Energy_consumed_SCE1Route3_Arctic_t_t0_iter = Ice_Energy_consumed_SCE1Route3_Arctic_t_t0_iter';
    
    Ice_Energy_consumed_SCE1Route3_Arctic_t_tm_iter = reshape(Energy_demand_SCE1Route3_tm_iter(:), Partitioned_length_SCE1Route3_tm, Ship_design_speed_length);
    Ice_Energy_consumed_SCE1Route3_Arctic_t_tm_iter = sum(Ice_Energy_consumed_SCE1Route3_Arctic_t_tm_iter); Ice_Energy_consumed_SCE1Route3_Arctic_t_tm_iter = Ice_Energy_consumed_SCE1Route3_Arctic_t_tm_iter';
    
    Ice_Energy_consumed_SCE1Route3_Arctic_t_tf_iter = reshape(Energy_demand_SCE1Route3_tf_iter(:), Partitioned_length_SCE1Route3_tf, Ship_design_speed_length);
    Ice_Energy_consumed_SCE1Route3_Arctic_t_tf_iter = sum(Ice_Energy_consumed_SCE1Route3_Arctic_t_tf_iter); Ice_Energy_consumed_SCE1Route3_Arctic_t_tf_iter = Ice_Energy_consumed_SCE1Route3_Arctic_t_tf_iter';
    %Have to sum each of the rows to make all dimensions align
    
    % Reshaped_Time_days_SCE1Route3_t0_iter = sum(Reshaped_Time_days_SCE1Route3_t0_iter,2);
    sx = size(Reshaped_Time_days_SCE1Route3_t0);
    sy = size(Reshaped_Time_days_SCE1Route3_t0_iter');
    a = max(sx(1),sy(1));
    Reshaped_Time_days_SCE1Route3_t0 = [[Reshaped_Time_days_SCE1Route3_t0;zeros(abs([a 0]-sx))],[Reshaped_Time_days_SCE1Route3_t0_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE1Route3_t0_iter = 30.*ones(length(Reshaped_Time_days_SCE1Route3_t0_iter(:,1)),length(Reshaped_Time_days_SCE1Route3_t0_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE1_Ice_Route3_n_t0_iter = Number_of_days_pm_SCE1Route3_t0_iter./Reshaped_Time_days_SCE1Route3_t0_iter;
    
    sx = size(SCE1_Ice_Route3_n_t0);
    sy = size(SCE1_Ice_Route3_n_t0_iter');
    a = max(sx(1),sy(1));
    SCE1_Ice_Route3_n_t0 = [[SCE1_Ice_Route3_n_t0;zeros(abs([a 0]-sx))],[SCE1_Ice_Route3_n_t0_iter';zeros(abs([a,0]-sy))]];
    
    %t_m
    %%%%%%%%%%%%%%%%
    sx = size(Reshaped_Time_days_SCE1Route3_tm);
    sy = size(Reshaped_Time_days_SCE1Route3_tm_iter');
    a = max(sx(1),sy(1));
    Reshaped_Time_days_SCE1Route3_tm = [[Reshaped_Time_days_SCE1Route3_tm;zeros(abs([a 0]-sx))],[Reshaped_Time_days_SCE1Route3_tm_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE1Route3_tm_iter = 30.*ones(length(Reshaped_Time_days_SCE1Route3_tm_iter(:,1)),length(Reshaped_Time_days_SCE1Route3_tm_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE1_Ice_Route3_n_tm_iter = Number_of_days_pm_SCE1Route3_tm_iter./Reshaped_Time_days_SCE1Route3_tm_iter;
    
    sx = size(SCE1_Ice_Route3_n_tm);
    sy = size(SCE1_Ice_Route3_n_tm_iter');
    a = max(sx(1),sy(1));
    SCE1_Ice_Route3_n_tm = [[SCE1_Ice_Route3_n_tm;zeros(abs([a 0]-sx))],[SCE1_Ice_Route3_n_tm_iter';zeros(abs([a,0]-sy))]];
    
    %t_f
    %%%%%%%%%%%%%%%%
    sx = size(Reshaped_Time_days_SCE1Route3_tf);
    sy = size(Reshaped_Time_days_SCE1Route3_tf_iter');
    a = max(sx(1),sy(1));
    Reshaped_Time_days_SCE1Route3_tf = [[Reshaped_Time_days_SCE1Route3_tf;zeros(abs([a 0]-sx))],[Reshaped_Time_days_SCE1Route3_tf_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE1Route3_tf_iter = 30.*ones(length(Reshaped_Time_days_SCE1Route3_tf_iter(:,1)),length(Reshaped_Time_days_SCE1Route3_tf_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE1_Ice_Route3_n_tf_iter = Number_of_days_pm_SCE1Route3_tf_iter./Reshaped_Time_days_SCE1Route3_tf_iter;
    
    sx = size(SCE1_Ice_Route3_n_tf);
    sy = size(SCE1_Ice_Route3_n_tf_iter');
    a = max(sx(1),sy(1));
    SCE1_Ice_Route3_n_tf = [[SCE1_Ice_Route3_n_tf;zeros(abs([a 0]-sx))],[SCE1_Ice_Route3_n_tf_iter';zeros(abs([a,0]-sy))]];
    
    IB_time_SCE1Route3_t0 = [IB_time_SCE1Route3_t0; IB_time_SCE1Route3_t0_iter];
    IB_time_SCE1Route3_tm = [IB_time_SCE1Route3_tm; IB_time_SCE1Route3_tm_iter];
    IB_time_SCE1Route3_tf = [IB_time_SCE1Route3_tf; IB_time_SCE1Route3_tf_iter];
    
    Agg_Op_speed1_SCE1Route3 = [Agg_Op_speed1_SCE1Route3; Agg_Op_speed1_SCE1Route3_iter];
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0 = [Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0; Ice_Fuel_consumed_SCE1Route3_Arctic_t_t0_iter];
    Ice_Energy_consumed_SCE1Route3_Arctic_t_t0 = [Ice_Energy_consumed_SCE1Route3_Arctic_t_t0; Ice_Energy_consumed_SCE1Route3_Arctic_t_t0_iter];
    
    Agg_Op_speed2_SCE1Route3 = [Agg_Op_speed2_SCE1Route3; Agg_Op_speed2_SCE1Route3_iter];
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm = [Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm; Ice_Fuel_consumed_SCE1Route3_Arctic_t_tm_iter];
    Ice_Energy_consumed_SCE1Route3_Arctic_t_tm = [Ice_Energy_consumed_SCE1Route3_Arctic_t_tm; Ice_Energy_consumed_SCE1Route3_Arctic_t_tm_iter];
    
    Agg_Op_speed3_SCE1Route3 = [Agg_Op_speed3_SCE1Route3; Agg_Op_speed3_SCE1Route3_iter];
    Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf = [Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf; Ice_Fuel_consumed_SCE1Route3_Arctic_t_tf_iter];
    Ice_Energy_consumed_SCE1Route3_Arctic_t_tf = [Ice_Energy_consumed_SCE1Route3_Arctic_t_tf; Ice_Energy_consumed_SCE1Route3_Arctic_t_tf_iter];
    
end
%%
%Scenario 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0 = repmat(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0,L1_SCE2Route1/12,1);
% Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm = repmat(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm,L1_SCE2Route1/12,1);
% Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf = repmat(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf,L1_SCE2Route1/12,1);
%
% Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0 = repmat(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0,L2_SCE2Route2/12,1);
% Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm = repmat(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm,L2_SCE2Route2/12,1);
% Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf = repmat(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf,L2_SCE2Route2/12,1);
%
% Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0 = repmat(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0,L3_SCE2Route3/12,1);
% Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm = repmat(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm,L3_SCE2Route3/12,1);
% Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf = repmat(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf,L3_SCE2Route3/12,1);
%
% Logic_mat_Route_1_OW_feasibility_Scenario2_t0 = Logic_mat_Route_1_OW_feasibility_Scenario2_t0(:,1);
% Logic_mat_Route_1_OW_feasibility_Scenario2_tm = Logic_mat_Route_1_OW_feasibility_Scenario2_tm(:,1);
% Logic_mat_Route_1_OW_feasibility_Scenario2_tf = Logic_mat_Route_1_OW_feasibility_Scenario2_tf(:,1);
%
% Logic_mat_Route_2_OW_feasibility_Scenario2_t0 = Logic_mat_Route_2_OW_feasibility_Scenario2_t0(:,1);
% Logic_mat_Route_2_OW_feasibility_Scenario2_tm = Logic_mat_Route_2_OW_feasibility_Scenario2_tm(:,1);
% Logic_mat_Route_2_OW_feasibility_Scenario2_tf = Logic_mat_Route_2_OW_feasibility_Scenario2_tf(:,1);
%
% Logic_mat_Route_3_OW_feasibility_Scenario2_t0 = Logic_mat_Route_3_OW_feasibility_Scenario2_t0(:,1);
% Logic_mat_Route_3_OW_feasibility_Scenario2_tm = Logic_mat_Route_3_OW_feasibility_Scenario2_tm(:,1);
% Logic_mat_Route_3_OW_feasibility_Scenario2_tf = Logic_mat_Route_3_OW_feasibility_Scenario2_tf(:,1);
%
% Global_Logic_mat_Route_1_OW_feasibility_Scenario2_t0 = repmat(Logic_mat_Route_1_OW_feasibility_Scenario2_t0,L1_SCE2Route1/12,1);
% Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tm = repmat(Logic_mat_Route_1_OW_feasibility_Scenario2_tm,L1_SCE2Route1/12,1);
% Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tf = repmat(Logic_mat_Route_1_OW_feasibility_Scenario2_tf,L1_SCE2Route1/12,1);
%
% Global_Logic_mat_Route_2_OW_feasibility_Scenario2_t0 = repmat(Logic_mat_Route_2_OW_feasibility_Scenario2_t0,L2_SCE2Route2/12,1);
% Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tm = repmat(Logic_mat_Route_2_OW_feasibility_Scenario2_tm,L2_SCE2Route2/12,1);
% Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tf = repmat(Logic_mat_Route_2_OW_feasibility_Scenario2_tf,L2_SCE2Route2/12,1);
%
% Global_Logic_mat_Route_3_OW_feasibility_Scenario2_t0 = repmat(Logic_mat_Route_3_OW_feasibility_Scenario2_t0,L3_SCE2Route3/12,1);
% Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tm = repmat(Logic_mat_Route_3_OW_feasibility_Scenario2_tm,L3_SCE2Route3/12,1);
% Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tf = repmat(Logic_mat_Route_3_OW_feasibility_Scenario2_tf,L3_SCE2Route3/12,1);

Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0 = [];
for j = 1:1:n_ships
    Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0_iter = Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0;
    for i = 1:1:length(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0_iter)
        Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_t0_iter = repmat(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0_iter(i),L1_SCE2Route1/12,1);
        Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0 = [Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0;Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_t0_iter];
    end
end

Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm = [];
for j = 1:1:n_ships
    Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm_iter = Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm;
    for i = 1:1:length(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm_iter)
        Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tm_iter = repmat(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm_iter(i),L1_SCE2Route1/12,1);
        Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm = [Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm;Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tm_iter];
    end
end

Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf = [];
for j = 1:1:n_ships
    Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf_iter = Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf;
    for i = 1:1:length(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf_iter)
        Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tf_iter = repmat(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf_iter(i),L1_SCE2Route1/12,1);
        Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf = [Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf;Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tf_iter];
    end
end

Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0 = [];
for j = 1:1:n_ships
    Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0_iter = Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0;
    for i = 1:1:length(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0_iter)
        Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_t0_iter = repmat(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0_iter(i),L2_SCE2Route2/12,1);
        Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0 = [Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0;Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_t0_iter];
    end
end

Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm = [];
for j = 1:1:n_ships
    Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm_iter = Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm;
    for i = 1:1:length(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm_iter)
        Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tm_iter = repmat(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm_iter(i),L2_SCE2Route2/12,1);
        Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm = [Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm;Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tm_iter];
    end
end

Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf = [];
for j = 1:1:n_ships
    Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf_iter = Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf;
    for i = 1:1:length(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf_iter)
        Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tf_iter = repmat(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf_iter(i),L2_SCE2Route2/12,1);
        Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf = [Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf;Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tf_iter];
    end
end

Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0 = [];
for j = 1:1:n_ships
    Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0_iter = Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0;
    for i = 1:1:length(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0_iter)
        Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_t0_iter = repmat(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0_iter(i),L3_SCE2Route3/12,1);
        Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0 = [Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0;Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_t0_iter];
    end
end

Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm = [];
for j = 1:1:n_ships
    Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm_iter = Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm;
    for i = 1:1:length(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm_iter)
        Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tm_iter = repmat(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm_iter(i),L3_SCE2Route3/12,1);
        Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm = [Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm;Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tm_iter];
    end
end

Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf = [];
for j = 1:1:n_ships
    Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf_iter = Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf;
    for i = 1:1:length(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf_iter)
        Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tf_iter = repmat(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf_iter(i),L3_SCE2Route3/12,1);
        Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf = [Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf;Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tf_iter];
    end
end

%Open water ships
Global_Logic_mat_Route_1_OW_feasibility_Scenario2_t0 = [];
for j = 1:1:n_ships
    Logic_mat_Route_1_OW_feasibility_Scenario2_t0_iter = Logic_mat_Route_1_OW_feasibility_Scenario2_t0;
    for i = 1:1:length(Logic_mat_Route_1_OW_feasibility_Scenario2_t0_iter)
        Global_Logic_mat_Route_1_OW_feasibility_Scenario2_t0_iter = repmat(Logic_mat_Route_1_OW_feasibility_Scenario2_t0_iter(i),L1_SCE2Route1/12,1);
        Global_Logic_mat_Route_1_OW_feasibility_Scenario2_t0 = [Global_Logic_mat_Route_1_OW_feasibility_Scenario2_t0;Global_Logic_mat_Route_1_OW_feasibility_Scenario2_t0_iter];
    end
end

Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tm = [];
for j = 1:1:n_ships
    Logic_mat_Route_1_OW_feasibility_Scenario2_tm_iter = Logic_mat_Route_1_OW_feasibility_Scenario2_tm;
    for i = 1:1:length(Logic_mat_Route_1_OW_feasibility_Scenario2_tm_iter)
        Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tm_iter = repmat(Logic_mat_Route_1_OW_feasibility_Scenario2_tm_iter(i),L1_SCE2Route1/12,1);
        Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tm = [Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tm;Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tm_iter];
    end
end

Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tf = [];
for j = 1:1:n_ships
    Logic_mat_Route_1_OW_feasibility_Scenario2_tf_iter = Logic_mat_Route_1_OW_feasibility_Scenario2_tf;
    for i = 1:1:length(Logic_mat_Route_1_OW_feasibility_Scenario2_tf_iter)
        Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tf_iter = repmat(Logic_mat_Route_1_OW_feasibility_Scenario2_tf_iter(i),L1_SCE2Route1/12,1);
        Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tf = [Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tf;Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tf_iter];
    end
end

Global_Logic_mat_Route_2_OW_feasibility_Scenario2_t0 = [];
for j = 1:1:n_ships
    Logic_mat_Route_2_OW_feasibility_Scenario2_t0_iter = Logic_mat_Route_2_OW_feasibility_Scenario2_t0;
    for i = 1:1:length(Logic_mat_Route_2_OW_feasibility_Scenario2_t0_iter)
        Global_Logic_mat_Route_2_OW_feasibility_Scenario2_t0_iter = repmat(Logic_mat_Route_2_OW_feasibility_Scenario2_t0_iter(i),L2_SCE2Route2/12,1);
        Global_Logic_mat_Route_2_OW_feasibility_Scenario2_t0 = [Global_Logic_mat_Route_2_OW_feasibility_Scenario2_t0;Global_Logic_mat_Route_2_OW_feasibility_Scenario2_t0_iter];
    end
end

Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tm = [];
for j = 1:1:n_ships
    Logic_mat_Route_2_OW_feasibility_Scenario2_tm_iter = Logic_mat_Route_2_OW_feasibility_Scenario2_tm;
    for i = 1:1:length(Logic_mat_Route_2_OW_feasibility_Scenario2_tm_iter)
        Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tm_iter = repmat(Logic_mat_Route_2_OW_feasibility_Scenario2_tm_iter(i),L2_SCE2Route2/12,1);
        Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tm = [Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tm;Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tm_iter];
    end
end

Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tf = [];
for j = 1:1:n_ships
    Logic_mat_Route_2_OW_feasibility_Scenario2_tf_iter = Logic_mat_Route_2_OW_feasibility_Scenario2_tf;
    for i = 1:1:length(Logic_mat_Route_2_OW_feasibility_Scenario2_tf_iter)
        Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tf_iter = repmat(Logic_mat_Route_2_OW_feasibility_Scenario2_tf_iter(i),L2_SCE2Route2/12,1);
        Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tf = [Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tf;Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tf_iter];
    end
end

Global_Logic_mat_Route_3_OW_feasibility_Scenario2_t0 = [];
for j = 1:1:n_ships
    Logic_mat_Route_3_OW_feasibility_Scenario2_t0_iter = Logic_mat_Route_3_OW_feasibility_Scenario2_t0;
    for i = 1:1:length(Logic_mat_Route_3_OW_feasibility_Scenario2_t0_iter)
        Global_Logic_mat_Route_3_OW_feasibility_Scenario2_t0_iter = repmat(Logic_mat_Route_3_OW_feasibility_Scenario2_t0_iter(i),L3_SCE2Route3/12,1);
        Global_Logic_mat_Route_3_OW_feasibility_Scenario2_t0 = [Global_Logic_mat_Route_3_OW_feasibility_Scenario2_t0;Global_Logic_mat_Route_3_OW_feasibility_Scenario2_t0_iter];
    end
end

Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tm = [];
for j = 1:1:n_ships
    Logic_mat_Route_3_OW_feasibility_Scenario2_tm_iter = Logic_mat_Route_3_OW_feasibility_Scenario2_tm;
    for i = 1:1:length(Logic_mat_Route_3_OW_feasibility_Scenario2_tm_iter)
        Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tm_iter = repmat(Logic_mat_Route_3_OW_feasibility_Scenario2_tm_iter(i),L3_SCE2Route3/12,1);
        Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tm = [Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tm;Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tm_iter];
    end
end

Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tf = [];
for j = 1:1:n_ships
    Logic_mat_Route_3_OW_feasibility_Scenario2_tf_iter = Logic_mat_Route_3_OW_feasibility_Scenario2_tf;
    for i = 1:1:length(Logic_mat_Route_3_OW_feasibility_Scenario2_tf_iter)
        Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tf_iter = repmat(Logic_mat_Route_3_OW_feasibility_Scenario2_tf_iter(i),L3_SCE2Route3/12,1);
        Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tf = [Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tf;Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tf_iter];
    end
end


%Route 1
Ice_Reshaped_Time_days_SCE2Route1_t0 = [];
Ice_Reshaped_Time_days_SCE2Route1_tm = [];
Ice_Reshaped_Time_days_SCE2Route1_tf = [];
IB_time_SCE2Route1_t0 = [];
IB_time_SCE2Route1_tm = [];
IB_time_SCE2Route1_tf = [];
Agg_Op_speed1_SCE2Route1 = [];
Agg_Op_speed2_SCE2Route1 = [];
Agg_Op_speed3_SCE2Route1 = [];
Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0 = [];
Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm = [];
Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf = [];
Ice_Energy_consumed_SCE2Route1_Arctic_t_t0 = [];
Ice_Energy_consumed_SCE2Route1_Arctic_t_tm = [];
Ice_Energy_consumed_SCE2Route1_Arctic_t_tf = [];
SCE2_Ice_Route1_n_t0 = [];
SCE2_Ice_Route1_n_tm = [];
SCE2_Ice_Route1_n_tf = [];

NonIce_Reshaped_Time_days_SCE2Route1_t0 = [];
NonIce_Reshaped_Time_days_SCE2Route1_tm = [];
NonIce_Reshaped_Time_days_SCE2Route1_tf = [];
NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0 = [];
NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm = [];
NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf = [];
NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0 = [];
NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm = [];
NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf = [];
SCE2_NonIce_Route1_n_t0 = [];
SCE2_NonIce_Route1_n_tm = [];
SCE2_NonIce_Route1_n_tf = [];

%Route 2
Ice_Reshaped_Time_days_SCE2Route2_t0 = [];
Ice_Reshaped_Time_days_SCE2Route2_tm = [];
Ice_Reshaped_Time_days_SCE2Route2_tf = [];
IB_time_SCE2Route2_t0 = [];
IB_time_SCE2Route2_tm = [];
IB_time_SCE2Route2_tf = [];
Agg_Op_speed1_SCE2Route2 = [];
Agg_Op_speed2_SCE2Route2 = [];
Agg_Op_speed3_SCE2Route2 = [];
Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0 = [];
Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm = [];
Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf = [];
Ice_Energy_consumed_SCE2Route2_Arctic_t_t0 = [];
Ice_Energy_consumed_SCE2Route2_Arctic_t_tm = [];
Ice_Energy_consumed_SCE2Route2_Arctic_t_tf = [];
SCE2_Ice_Route2_n_t0 = [];
SCE2_Ice_Route2_n_tm = [];
SCE2_Ice_Route2_n_tf = [];


NonIce_Reshaped_Time_days_SCE2Route2_t0 = [];
NonIce_Reshaped_Time_days_SCE2Route2_tm = [];
NonIce_Reshaped_Time_days_SCE2Route2_tf = [];
NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0 = [];
NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm = [];
NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf = [];
NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0 = [];
NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm = [];
NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf = [];
SCE2_NonIce_Route2_n_t0 = [];
SCE2_NonIce_Route2_n_tm = [];
SCE2_NonIce_Route2_n_tf = [];

%Route 3
Ice_Reshaped_Time_days_SCE2Route3_t0 = [];
Ice_Reshaped_Time_days_SCE2Route3_tm = [];
Ice_Reshaped_Time_days_SCE2Route3_tf = [];
IB_time_SCE2Route3_t0 = [];
IB_time_SCE2Route3_tm = [];
IB_time_SCE2Route3_tf = [];
Agg_Op_speed1_SCE2Route3 = [];
Agg_Op_speed2_SCE2Route3 = [];
Agg_Op_speed3_SCE2Route3 = [];
Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0 = [];
Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm = [];
Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf = [];
Ice_Energy_consumed_SCE2Route3_Arctic_t_t0 = [];
Ice_Energy_consumed_SCE2Route3_Arctic_t_tm = [];
Ice_Energy_consumed_SCE2Route3_Arctic_t_tf = [];
SCE2_Ice_Route3_n_t0 = [];
SCE2_Ice_Route3_n_tm = [];
SCE2_Ice_Route3_n_tf = [];

NonIce_Reshaped_Time_days_SCE2Route3_t0 = [];
NonIce_Reshaped_Time_days_SCE2Route3_tm = [];
NonIce_Reshaped_Time_days_SCE2Route3_tf = [];
NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0 = [];
NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm = [];
NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf = [];
NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0 = [];
NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm = [];
NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf = [];
SCE2_NonIce_Route3_n_t0 = [];
SCE2_NonIce_Route3_n_tm = [];
SCE2_NonIce_Route3_n_tf = [];


%Do ice resistance calculations for each ship design
for j = 1:1:n_ships
    Phi_iter = Phi(1+((j-1).*Ship_design_speed_length));
    Alpha_iter = Alpha(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    Psi_iter = Psi(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    C_T_iter = C_T(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    S_iter = S(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    Beam_iter = Beam(1+((j-1).*Ship_design_speed_length));
    Length_iter = Length_WL(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    T_iter = T(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    v_iter = v(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    Ice_OW_Resistance_N_iter = Ice_OW_Resistance_N(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    IceStrengthOutput_power_kW_iter = IceStrengthOutput_power_kW(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    Ice_Installed_Power_kW_iter = Ice_Installed_Power_kW(1+((j-1).*Ship_design_speed_length):j.*Ship_design_speed_length);
    Icesfc_iter = Icesfc(1+((j-1).*Ship_design_speed_length):j.*Ship_design_speed_length);
    
    NonIce_OW_Resistance_N_iter = NonIce_OW_Resistance_N(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    NonIceStrengthOutput_power_kW_iter = NonIceStrengthOutput_power_kW(1+((j-1).*Ship_design_speed_length):j*Ship_design_speed_length);
    NonIce_Installed_Power_kW_iter = NonIce_Installed_Power_kW(1+((j-1).*Ship_design_speed_length):j.*Ship_design_speed_length);
    NonIcesfc_iter = NonIcesfc(1+((j-1).*Ship_design_speed_length):j.*Ship_design_speed_length);
    
    Des_v_iter = Des_v(1+((j-1).*Ship_design_speed_length):j.*Ship_design_speed_length);
    IMO_type_iter = IMO_type(1+((j-1).*Ship_design_speed_length));
    
    Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0_iter = Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0;
    Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm_iter = Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm;
    Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf_iter = Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf;
    
    Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0_iter = Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0;
    Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm_iter = Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm;
    Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf_iter = Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf;
    
    Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0_iter = Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0;
    Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm_iter = Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm;
    Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf_iter = Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf;
    
    Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_t0_iter = Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0(1+((j-1).*length(SIT_Route1_t0)):(j*length(SIT_Route1_t0)),:);
    Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tm_iter = Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm(1+((j-1).*length(SIT_Route1_tm)):(j.*length(SIT_Route1_tm)),:);
    Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tf_iter = Global_Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf(1+((j-1).*length(SIT_Route1_tf)):(j.*length(SIT_Route1_tf)),:);
    
    Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_t0_iter = Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0(1+((j-1).*length(SIT_Route2_t0)):(j.*length(SIT_Route2_t0)),:);
    Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tm_iter = Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm(1+((j-1).*length(SIT_Route2_tm)):(j.*length(SIT_Route2_tm)),:);
    Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tf_iter = Global_Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf(1+((j-1).*length(SIT_Route2_tf)):(j.*length(SIT_Route2_tf)),:);
    
    Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_t0_iter = Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0(1+((j-1).*length(SIT_Route3_t0)):(j.*length(SIT_Route3_t0)),:);
    Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tm_iter = Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm(1+((j-1).*length(SIT_Route3_tm)):(j.*length(SIT_Route3_tm)),:);
    Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tf_iter = Global_Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf(1+((j-1).*length(SIT_Route3_tf)):(j.*length(SIT_Route3_tf)),:);
    
    Logic_mat_Route_1_OW_feasibility_Scenario2_t0_iter = Logic_mat_Route_1_OW_feasibility_Scenario2_t0;
    Logic_mat_Route_1_OW_feasibility_Scenario2_tm_iter = Logic_mat_Route_1_OW_feasibility_Scenario2_tm;
    Logic_mat_Route_1_OW_feasibility_Scenario2_tf_iter = Logic_mat_Route_1_OW_feasibility_Scenario2_tf;
    
    Logic_mat_Route_2_OW_feasibility_Scenario2_t0_iter = Logic_mat_Route_2_OW_feasibility_Scenario2_t0;
    Logic_mat_Route_2_OW_feasibility_Scenario2_tm_iter = Logic_mat_Route_2_OW_feasibility_Scenario2_tm;
    Logic_mat_Route_2_OW_feasibility_Scenario2_tf_iter = Logic_mat_Route_2_OW_feasibility_Scenario2_tf;
    
    Logic_mat_Route_3_OW_feasibility_Scenario2_t0_iter = Logic_mat_Route_3_OW_feasibility_Scenario2_t0;
    Logic_mat_Route_3_OW_feasibility_Scenario2_tm_iter = Logic_mat_Route_3_OW_feasibility_Scenario2_tm;
    Logic_mat_Route_3_OW_feasibility_Scenario2_tf_iter = Logic_mat_Route_3_OW_feasibility_Scenario2_tf;
    
    Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_t0_iter = Global_Logic_mat_Route_1_OW_feasibility_Scenario2_t0(1+((j-1).*length(SIT_Route1_t0)):(j.*length(SIT_Route1_t0)),:);
    Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_tm_iter = Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tm(1+((j-1).*length(SIT_Route1_tm)):(j.*length(SIT_Route1_tm)),:);
    Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_tf_iter = Global_Logic_mat_Route_1_OW_feasibility_Scenario2_tf(1+((j-1).*length(SIT_Route1_tf)):(j.*length(SIT_Route1_tf)),:);
    
    Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_t0_iter = Global_Logic_mat_Route_2_OW_feasibility_Scenario2_t0(1+((j-1).*length(SIT_Route2_t0)):(j.*length(SIT_Route2_t0)),:);
    Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_tm_iter = Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tm(1+((j-1).*length(SIT_Route2_tm)):(j.*length(SIT_Route2_tm)),:);
    Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_tf_iter = Global_Logic_mat_Route_2_OW_feasibility_Scenario2_tf(1+((j-1).*length(SIT_Route2_tf)):(j.*length(SIT_Route2_tf)),:);
    
    Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_t0_iter = Global_Logic_mat_Route_3_OW_feasibility_Scenario2_t0(1+((j-1).*length(SIT_Route3_t0)):(j.*length(SIT_Route3_t0)),:);
    Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_tm_iter = Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tm(1+((j-1).*length(SIT_Route3_tm)):(j.*length(SIT_Route3_tm)),:);
    Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_tf_iter = Global_Logic_mat_Route_3_OW_feasibility_Scenario2_tf(1+((j-1).*length(SIT_Route3_tf)):(j.*length(SIT_Route3_tf)),:);
    
    % Annual_sea_ice_thickness_encountered_SCE1Route1_t0 = Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_t0_iter.*SIT_Route1_t0;
    % Annual_sea_ice_thickness_encountered_SCE1Route1_t0 = [Annual_sea_ice_thickness_encountered_SCE1Route1_t0 Global_Logic_mat_Route_1_Ice_feasibility_Scenario1_t0_iter];
    % Annual_sea_ice_thickness_encountered_SCE1Route1_t0 = Annual_sea_ice_thickness_encountered_SCE1Route1_t0(Annual_sea_ice_thickness_encountered_SCE1Route1_t0(:,2)>0);
    
    %Route1
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Annual_sea_ice_thickness_encountered_SCE2Route1_t0 = Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_t0_iter.*SIT_Route1_t0;
    Annual_sea_ice_thickness_encountered_SCE2Route1_t0 = [Annual_sea_ice_thickness_encountered_SCE2Route1_t0 Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_t0_iter];
    Annual_sea_ice_thickness_encountered_SCE2Route1_t0 = Annual_sea_ice_thickness_encountered_SCE2Route1_t0(Annual_sea_ice_thickness_encountered_SCE2Route1_t0(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE2Route1_tm = Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tm_iter.*SIT_Route1_tm;
    Annual_sea_ice_thickness_encountered_SCE2Route1_tm = [Annual_sea_ice_thickness_encountered_SCE2Route1_tm Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tm_iter];
    Annual_sea_ice_thickness_encountered_SCE2Route1_tm = Annual_sea_ice_thickness_encountered_SCE2Route1_tm(Annual_sea_ice_thickness_encountered_SCE2Route1_tm(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE2Route1_tf = Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tf_iter.*SIT_Route1_tf;
    Annual_sea_ice_thickness_encountered_SCE2Route1_tf = [Annual_sea_ice_thickness_encountered_SCE2Route1_tf Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tf_iter];
    Annual_sea_ice_thickness_encountered_SCE2Route1_tf = Annual_sea_ice_thickness_encountered_SCE2Route1_tf(Annual_sea_ice_thickness_encountered_SCE2Route1_tf(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE2Route1_t0 = Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_t0_iter.*SIC_Route1_t0;
    Annual_sea_ice_conc_encountered_SCE2Route1_t0 = [Annual_sea_ice_conc_encountered_SCE2Route1_t0 Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_t0_iter];
    Annual_sea_ice_conc_encountered_SCE2Route1_t0 = Annual_sea_ice_conc_encountered_SCE2Route1_t0(Annual_sea_ice_conc_encountered_SCE2Route1_t0(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE2Route1_tm = Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tm_iter.*SIC_Route1_tm;
    Annual_sea_ice_conc_encountered_SCE2Route1_tm = [Annual_sea_ice_conc_encountered_SCE2Route1_tm Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tm_iter];
    Annual_sea_ice_conc_encountered_SCE2Route1_tm = Annual_sea_ice_conc_encountered_SCE2Route1_tm(Annual_sea_ice_conc_encountered_SCE2Route1_tm(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE2Route1_tf = Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tf_iter.*SIC_Route1_tf;
    Annual_sea_ice_conc_encountered_SCE2Route1_tf = [Annual_sea_ice_conc_encountered_SCE2Route1_tf Global_Logic_mat_Route_1_Ice_feasibility_Scenario2_tf_iter];
    Annual_sea_ice_conc_encountered_SCE2Route1_tf = Annual_sea_ice_conc_encountered_SCE2Route1_tf(Annual_sea_ice_conc_encountered_SCE2Route1_tf(:,2)>0);
    
    %Route2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Annual_sea_ice_thickness_encountered_SCE2Route2_t0 = Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_t0_iter.*SIT_Route2_t0;
    Annual_sea_ice_thickness_encountered_SCE2Route2_t0 = [Annual_sea_ice_thickness_encountered_SCE2Route2_t0 Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_t0_iter];
    Annual_sea_ice_thickness_encountered_SCE2Route2_t0 = Annual_sea_ice_thickness_encountered_SCE2Route2_t0(Annual_sea_ice_thickness_encountered_SCE2Route2_t0(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE2Route2_tm = Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tm_iter.*SIT_Route2_tm;
    Annual_sea_ice_thickness_encountered_SCE2Route2_tm = [Annual_sea_ice_thickness_encountered_SCE2Route2_tm Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tm_iter];
    Annual_sea_ice_thickness_encountered_SCE2Route2_tm = Annual_sea_ice_thickness_encountered_SCE2Route2_tm(Annual_sea_ice_thickness_encountered_SCE2Route2_tm(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE2Route2_tf = Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tf_iter.*SIT_Route2_tf;
    Annual_sea_ice_thickness_encountered_SCE2Route2_tf = [Annual_sea_ice_thickness_encountered_SCE2Route2_tf Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tf_iter];
    Annual_sea_ice_thickness_encountered_SCE2Route2_tf = Annual_sea_ice_thickness_encountered_SCE2Route2_tf(Annual_sea_ice_thickness_encountered_SCE2Route2_tf(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE2Route2_t0 = Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_t0_iter.*SIC_Route2_t0;
    Annual_sea_ice_conc_encountered_SCE2Route2_t0 = [Annual_sea_ice_conc_encountered_SCE2Route2_t0 Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_t0_iter];
    Annual_sea_ice_conc_encountered_SCE2Route2_t0 = Annual_sea_ice_conc_encountered_SCE2Route2_t0(Annual_sea_ice_conc_encountered_SCE2Route2_t0(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE2Route2_tm = Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tm_iter.*SIC_Route2_tm;
    Annual_sea_ice_conc_encountered_SCE2Route2_tm = [Annual_sea_ice_conc_encountered_SCE2Route2_tm Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tm_iter];
    Annual_sea_ice_conc_encountered_SCE2Route2_tm = Annual_sea_ice_conc_encountered_SCE2Route2_tm(Annual_sea_ice_conc_encountered_SCE2Route2_tm(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE2Route2_tf = Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tf_iter.*SIC_Route2_tf;
    Annual_sea_ice_conc_encountered_SCE2Route2_tf = [Annual_sea_ice_conc_encountered_SCE2Route2_tf Global_Logic_mat_Route_2_Ice_feasibility_Scenario2_tf_iter];
    Annual_sea_ice_conc_encountered_SCE2Route2_tf = Annual_sea_ice_conc_encountered_SCE2Route2_tf(Annual_sea_ice_conc_encountered_SCE2Route2_tf(:,2)>0);
    
    
    %Route3
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Annual_sea_ice_thickness_encountered_SCE2Route3_t0 = Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_t0_iter.*SIT_Route3_t0;
    Annual_sea_ice_thickness_encountered_SCE2Route3_t0 = [Annual_sea_ice_thickness_encountered_SCE2Route3_t0 Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_t0_iter];
    Annual_sea_ice_thickness_encountered_SCE2Route3_t0 = Annual_sea_ice_thickness_encountered_SCE2Route3_t0(Annual_sea_ice_thickness_encountered_SCE2Route3_t0(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE2Route3_tm = Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tm_iter.*SIT_Route3_tm;
    Annual_sea_ice_thickness_encountered_SCE2Route3_tm = [Annual_sea_ice_thickness_encountered_SCE2Route3_tm Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tm_iter];
    Annual_sea_ice_thickness_encountered_SCE2Route3_tm = Annual_sea_ice_thickness_encountered_SCE2Route3_tm(Annual_sea_ice_thickness_encountered_SCE2Route3_tm(:,2)>0);
    
    Annual_sea_ice_thickness_encountered_SCE2Route3_tf = Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tf_iter.*SIT_Route3_tf;
    Annual_sea_ice_thickness_encountered_SCE2Route3_tf = [Annual_sea_ice_thickness_encountered_SCE2Route3_tf Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tf_iter];
    Annual_sea_ice_thickness_encountered_SCE2Route3_tf = Annual_sea_ice_thickness_encountered_SCE2Route3_tf(Annual_sea_ice_thickness_encountered_SCE2Route3_tf(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE2Route3_t0 = Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_t0_iter.*SIC_Route3_t0;
    Annual_sea_ice_conc_encountered_SCE2Route3_t0 = [Annual_sea_ice_conc_encountered_SCE2Route3_t0 Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_t0_iter];
    Annual_sea_ice_conc_encountered_SCE2Route3_t0 = Annual_sea_ice_conc_encountered_SCE2Route3_t0(Annual_sea_ice_conc_encountered_SCE2Route3_t0(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE2Route3_tm = Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tm_iter.*SIC_Route3_tm;
    Annual_sea_ice_conc_encountered_SCE2Route3_tm = [Annual_sea_ice_conc_encountered_SCE2Route3_tm Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tm_iter];
    Annual_sea_ice_conc_encountered_SCE2Route3_tm = Annual_sea_ice_conc_encountered_SCE2Route3_tm(Annual_sea_ice_conc_encountered_SCE2Route3_tm(:,2)>0);
    
    Annual_sea_ice_conc_encountered_SCE2Route3_tf = Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tf_iter.*SIC_Route3_tf;
    Annual_sea_ice_conc_encountered_SCE2Route3_tf = [Annual_sea_ice_conc_encountered_SCE2Route3_tf Global_Logic_mat_Route_3_Ice_feasibility_Scenario2_tf_iter];
    Annual_sea_ice_conc_encountered_SCE2Route3_tf = Annual_sea_ice_conc_encountered_SCE2Route3_tf(Annual_sea_ice_conc_encountered_SCE2Route3_tf(:,2)>0);
    
    %NonIce
    %Route1
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0 = Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_t0_iter.*SIT_Route1_t0;
    OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0 = [OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0 Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_t0_iter];
    OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0 = OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0(:,2)>0);
    
    OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm = Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_tm_iter.*SIT_Route1_tm;
    OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm = [OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_tm_iter];
    OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm = OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm(:,2)>0);
    
    OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf = Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_tf_iter.*SIT_Route1_tf;
    OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf = [OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_tf_iter];
    OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf = OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf(:,2)>0);
    
    OW_Annual_sea_ice_conc_encountered_SCE2Route1_t0 = Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_t0_iter.*SIC_Route1_t0;
    OW_Annual_sea_ice_conc_encountered_SCE2Route1_t0 = [OW_Annual_sea_ice_conc_encountered_SCE2Route1_t0 Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_t0_iter];
    OW_Annual_sea_ice_conc_encountered_SCE2Route1_t0 = OW_Annual_sea_ice_conc_encountered_SCE2Route1_t0(OW_Annual_sea_ice_conc_encountered_SCE2Route1_t0(:,2)>0);
    
    OW_Annual_sea_ice_conc_encountered_SCE2Route1_tm = Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_tm_iter.*SIC_Route1_tm;
    OW_Annual_sea_ice_conc_encountered_SCE2Route1_tm = [OW_Annual_sea_ice_conc_encountered_SCE2Route1_tm Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_tm_iter];
    OW_Annual_sea_ice_conc_encountered_SCE2Route1_tm = OW_Annual_sea_ice_conc_encountered_SCE2Route1_tm(OW_Annual_sea_ice_conc_encountered_SCE2Route1_tm(:,2)>0);
    
    OW_Annual_sea_ice_conc_encountered_SCE2Route1_tf = Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_tf_iter.*SIC_Route1_tf;
    OW_Annual_sea_ice_conc_encountered_SCE2Route1_tf = [OW_Annual_sea_ice_conc_encountered_SCE2Route1_tf Global_Logic_mat_Route_1_NonIce_feasibility_Scenario2_tf_iter];
    OW_Annual_sea_ice_conc_encountered_SCE2Route1_tf = OW_Annual_sea_ice_conc_encountered_SCE2Route1_tf(OW_Annual_sea_ice_conc_encountered_SCE2Route1_tf(:,2)>0);
    
    %Route2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0 = Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_t0_iter.*SIT_Route2_t0;
    OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0 = [OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0 Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_t0_iter];
    OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0 = OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0(:,2)>0);
    
    OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm = Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_tm_iter.*SIT_Route2_tm;
    OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm = [OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_tm_iter];
    OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm = OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm(:,2)>0);
    
    OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf = Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_tf_iter.*SIT_Route2_tf;
    OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf = [OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_tf_iter];
    OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf = OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf(:,2)>0);
    
    OW_Annual_sea_ice_conc_encountered_SCE2Route2_t0 = Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_t0_iter.*SIC_Route2_t0;
    OW_Annual_sea_ice_conc_encountered_SCE2Route2_t0 = [OW_Annual_sea_ice_conc_encountered_SCE2Route2_t0 Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_t0_iter];
    OW_Annual_sea_ice_conc_encountered_SCE2Route2_t0 = OW_Annual_sea_ice_conc_encountered_SCE2Route2_t0(OW_Annual_sea_ice_conc_encountered_SCE2Route2_t0(:,2)>0);
    
    OW_Annual_sea_ice_conc_encountered_SCE2Route2_tm = Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_tm_iter.*SIC_Route2_tm;
    OW_Annual_sea_ice_conc_encountered_SCE2Route2_tm = [OW_Annual_sea_ice_conc_encountered_SCE2Route2_tm Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_tm_iter];
    OW_Annual_sea_ice_conc_encountered_SCE2Route2_tm = OW_Annual_sea_ice_conc_encountered_SCE2Route2_tm(OW_Annual_sea_ice_conc_encountered_SCE2Route2_tm(:,2)>0);
    
    OW_Annual_sea_ice_conc_encountered_SCE2Route2_tf = Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_tf_iter.*SIC_Route2_tf;
    OW_Annual_sea_ice_conc_encountered_SCE2Route2_tf = [OW_Annual_sea_ice_conc_encountered_SCE2Route2_tf Global_Logic_mat_Route_2_NonIce_feasibility_Scenario2_tf_iter];
    OW_Annual_sea_ice_conc_encountered_SCE2Route2_tf = OW_Annual_sea_ice_conc_encountered_SCE2Route2_tf(OW_Annual_sea_ice_conc_encountered_SCE2Route2_tf(:,2)>0);
    
    %Route3
    %%%%%%%%%%%%%%%%%%%%%%%%
    OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0 = Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_t0_iter.*SIT_Route3_t0;
    OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0 = [OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0 Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_t0_iter];
    OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0 = OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0(:,2)>0);
    
    OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm = Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_tm_iter.*SIT_Route3_tm;
    OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm = [OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_tm_iter];
    OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm = OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm(:,2)>0);
    
    OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf = Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_tf_iter.*SIT_Route3_tf;
    OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf = [OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_tf_iter];
    OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf = OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf(:,2)>0);
    
    OW_Annual_sea_ice_conc_encountered_SCE2Route3_t0 = Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_t0_iter.*SIC_Route3_t0;
    OW_Annual_sea_ice_conc_encountered_SCE2Route3_t0 = [OW_Annual_sea_ice_conc_encountered_SCE2Route3_t0 Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_t0_iter];
    OW_Annual_sea_ice_conc_encountered_SCE2Route3_t0 = OW_Annual_sea_ice_conc_encountered_SCE2Route3_t0(OW_Annual_sea_ice_conc_encountered_SCE2Route3_t0(:,2)>0);
    
    OW_Annual_sea_ice_conc_encountered_SCE2Route3_tm = Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_tm_iter.*SIC_Route3_tm;
    OW_Annual_sea_ice_conc_encountered_SCE2Route3_tm = [OW_Annual_sea_ice_conc_encountered_SCE2Route3_tm Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_tm_iter];
    OW_Annual_sea_ice_conc_encountered_SCE2Route3_tm = OW_Annual_sea_ice_conc_encountered_SCE2Route3_tm(OW_Annual_sea_ice_conc_encountered_SCE2Route3_tm(:,2)>0);
    
    OW_Annual_sea_ice_conc_encountered_SCE2Route3_tf = Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_tf_iter.*SIC_Route3_tf;
    OW_Annual_sea_ice_conc_encountered_SCE2Route3_tf = [OW_Annual_sea_ice_conc_encountered_SCE2Route3_tf Global_Logic_mat_Route_3_NonIce_feasibility_Scenario2_tf_iter];
    OW_Annual_sea_ice_conc_encountered_SCE2Route3_tf = OW_Annual_sea_ice_conc_encountered_SCE2Route3_tf(OW_Annual_sea_ice_conc_encountered_SCE2Route3_tf(:,2)>0);
    
    Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0 = repmat(Annual_sea_ice_thickness_encountered_SCE2Route1_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm = repmat(Annual_sea_ice_thickness_encountered_SCE2Route1_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf = repmat(Annual_sea_ice_thickness_encountered_SCE2Route1_tf,Ship_design_speed_length,1);
    
    Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0 = repmat(Annual_sea_ice_thickness_encountered_SCE2Route2_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm = repmat(Annual_sea_ice_thickness_encountered_SCE2Route2_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf = repmat(Annual_sea_ice_thickness_encountered_SCE2Route2_tf,Ship_design_speed_length,1);
    
    Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0 = repmat(Annual_sea_ice_thickness_encountered_SCE2Route3_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm = repmat(Annual_sea_ice_thickness_encountered_SCE2Route3_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf = repmat(Annual_sea_ice_thickness_encountered_SCE2Route3_tf,Ship_design_speed_length,1);
    
    Agg_Annual_sea_ice_conc_encountered_SCE2Route1_t0 = repmat(Annual_sea_ice_conc_encountered_SCE2Route1_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tm = repmat(Annual_sea_ice_conc_encountered_SCE2Route1_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tf = repmat(Annual_sea_ice_conc_encountered_SCE2Route1_tf,Ship_design_speed_length,1);
    
    Agg_Annual_sea_ice_conc_encountered_SCE2Route2_t0 = repmat(Annual_sea_ice_conc_encountered_SCE2Route2_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tm = repmat(Annual_sea_ice_conc_encountered_SCE2Route2_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tf = repmat(Annual_sea_ice_conc_encountered_SCE2Route2_tf,Ship_design_speed_length,1);
    
    Agg_Annual_sea_ice_conc_encountered_SCE2Route3_t0 = repmat(Annual_sea_ice_conc_encountered_SCE2Route3_t0,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tm = repmat(Annual_sea_ice_conc_encountered_SCE2Route3_tm,Ship_design_speed_length,1);
    Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tf = repmat(Annual_sea_ice_conc_encountered_SCE2Route3_tf,Ship_design_speed_length,1);
    
    %OW
    OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0 = repmat(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm = repmat(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf = repmat(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf,Ship_design_speed_length,1);
    
    OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0 = repmat(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm = repmat(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf = repmat(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf,Ship_design_speed_length,1);
    
    OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0 = repmat(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm = repmat(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf = repmat(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf,Ship_design_speed_length,1);
    
    OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_t0 = repmat(OW_Annual_sea_ice_conc_encountered_SCE2Route1_t0,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tm = repmat(OW_Annual_sea_ice_conc_encountered_SCE2Route1_tm,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tf = repmat(OW_Annual_sea_ice_conc_encountered_SCE2Route1_tf,Ship_design_speed_length,1);
    
    OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_t0 = repmat(OW_Annual_sea_ice_conc_encountered_SCE2Route2_t0,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tm = repmat(OW_Annual_sea_ice_conc_encountered_SCE2Route2_tm,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tf = repmat(OW_Annual_sea_ice_conc_encountered_SCE2Route2_tf,Ship_design_speed_length,1);
    
    OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_t0 = repmat(OW_Annual_sea_ice_conc_encountered_SCE2Route3_t0,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tm = repmat(OW_Annual_sea_ice_conc_encountered_SCE2Route3_tm,Ship_design_speed_length,1);
    OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tf = repmat(OW_Annual_sea_ice_conc_encountered_SCE2Route3_tf,Ship_design_speed_length,1);
    
    %Route1
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %t_0
    %%%%%%%%%%%
    Agg_Op_speed1_SCE2Route1_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed1_SCE2Route1_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Agg_Op_speed1_SCE2Route1_iter = [Agg_Op_speed1_SCE2Route1_iter; Agg_Op_speed1_SCE2Route1_iter_iter];
    end
    
    Agg_Psi_iter = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Agg_Psi_iter = [Agg_Psi_iter; Agg_Psi_iter_iter];
    end
    
    Agg_Alpha_iter = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Agg_Alpha_iter = [Agg_Alpha_iter; Agg_Alpha_iter_iter];
    end
    
    Agg_length1_SCE2Route1 = [];
    for i = 1:1:length(Length_iter)
        Agg_length1_SCE2Route1_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Agg_length1_SCE2Route1 = [Agg_length1_SCE2Route1; Agg_length1_SCE2Route1_iter];
    end
    
    Agg_draught1_SCE2Route1= [];
    for i = 1:1:length(T_iter)
        Agg_draught1_SCE2Route1_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Agg_draught1_SCE2Route1 = [Agg_draught1_SCE2Route1; Agg_draught1_SCE2Route1_iter];
    end
    
    Ice_OW_Resistance_N_SCE2Route1_t0 = [];
    for i = 1:1:length(v_iter)
        Ice_OW_Resistance_N_SCE2Route1_t0_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Ice_OW_Resistance_N_SCE2Route1_t0 = [Ice_OW_Resistance_N_SCE2Route1_t0; Ice_OW_Resistance_N_SCE2Route1_t0_iter];
    end
    
    C_T_SCE2Route1_t0 = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE2Route1_t0_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        C_T_SCE2Route1_t0 = [C_T_SCE2Route1_t0; C_T_SCE2Route1_t0_iter];
    end
    
    S_SCE2Route1_t0 = [];
    for i = 1:1:length(S_iter)
        S_SCE2Route1_t0_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        S_SCE2Route1_t0 = [S_SCE2Route1_t0; S_SCE2Route1_t0_iter];
    end
    
    %t_m
    %%%%%%%%%%%
    
    Agg_Op_speed2_SCE2Route1_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed2_SCE2Route1_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Agg_Op_speed2_SCE2Route1_iter = [Agg_Op_speed2_SCE2Route1_iter; Agg_Op_speed2_SCE2Route1_iter_iter];
    end
    
    Agg_length2_SCE2Route1 = [];
    for i = 1:1:length(Length_iter)
        Agg_length2_SCE2Route1_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Agg_length2_SCE2Route1 = [Agg_length2_SCE2Route1; Agg_length2_SCE2Route1_iter];
    end
    
    Agg_Psi_iter_tm = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter_tm = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Agg_Psi_iter_tm = [Agg_Psi_iter_tm; Agg_Psi_iter_iter_tm];
    end
    
    Agg_Alpha_iter_tm = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter_tm = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Agg_Alpha_iter_tm = [Agg_Alpha_iter_tm; Agg_Alpha_iter_iter_tm];
    end
    
    Agg_draught2_SCE2Route1= [];
    for i = 1:1:length(T_iter)
        Agg_draught2_SCE2Route1_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Agg_draught2_SCE2Route1 = [Agg_draught2_SCE2Route1; Agg_draught2_SCE2Route1_iter];
    end
    
    Ice_OW_Resistance_N_SCE2Route1_tm = [];
    for i = 1:1:length(v_iter)
        Ice_OW_Resistance_N_SCE2Route1_tm_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Ice_OW_Resistance_N_SCE2Route1_tm = [Ice_OW_Resistance_N_SCE2Route1_tm; Ice_OW_Resistance_N_SCE2Route1_tm_iter];
    end
    
    C_T_SCE2Route1_tm = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE2Route1_tm_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        C_T_SCE2Route1_tm = [C_T_SCE2Route1_tm; C_T_SCE2Route1_tm_iter];
    end
    
    S_SCE2Route1_tm = [];
    for i = 1:1:length(S_iter)
        S_SCE2Route1_tm_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        S_SCE2Route1_tm = [S_SCE2Route1_tm; S_SCE2Route1_tm_iter];
    end
    
    %t_f
    %%%%%%%%%%%
    Agg_Op_speed3_SCE2Route1_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed3_SCE2Route1_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Agg_Op_speed3_SCE2Route1_iter = [Agg_Op_speed3_SCE2Route1_iter; Agg_Op_speed3_SCE2Route1_iter_iter];
    end
    
    Agg_length3_SCE2Route1 = [];
    for i = 1:1:length(Length_iter)
        Agg_length3_SCE2Route1_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Agg_length3_SCE2Route1 = [Agg_length3_SCE2Route1; Agg_length3_SCE2Route1_iter];
    end
    
    Agg_Psi_iter_tf = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter_tf = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Agg_Psi_iter_tf = [Agg_Psi_iter_tf; Agg_Psi_iter_iter_tf];
    end
    
    Agg_Alpha_iter_tf = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter_tf = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Agg_Alpha_iter_tf = [Agg_Alpha_iter_tf; Agg_Alpha_iter_iter_tf];
    end
    
    Agg_draught3_SCE2Route1= [];
    for i = 1:1:length(T_iter)
        Agg_draught3_SCE2Route1_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Agg_draught3_SCE2Route1 = [Agg_draught3_SCE2Route1; Agg_draught3_SCE2Route1_iter];
    end
    
    Ice_OW_Resistance_N_SCE2Route1_tf = [];
    for i = 1:1:length(v_iter)
        Ice_OW_Resistance_N_SCE2Route1_tf_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Ice_OW_Resistance_N_SCE2Route1_tf = [Ice_OW_Resistance_N_SCE2Route1_tf; Ice_OW_Resistance_N_SCE2Route1_tf_iter];
    end
    
    C_T_SCE2Route1_tf = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE2Route1_tf_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        C_T_SCE2Route1_tf = [C_T_SCE2Route1_tf; C_T_SCE2Route1_tf_iter];
    end
    
    S_SCE2Route1_tf = [];
    for i = 1:1:length(S_iter)
        S_SCE2Route1_tf_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        S_SCE2Route1_tf = [S_SCE2Route1_tf; S_SCE2Route1_tf_iter];
    end
    
    %OW Resistance
    %Route1
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %t_0
    %%%%%%%%%%%
    OW_Agg_Op_speed1_SCE2Route1_iter = [];
    for i = 1:1:length(v_iter)
        OW_Agg_Op_speed1_SCE2Route1_iter_iter = repmat(v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        OW_Agg_Op_speed1_SCE2Route1_iter = [OW_Agg_Op_speed1_SCE2Route1_iter; OW_Agg_Op_speed1_SCE2Route1_iter_iter];
    end
    
    OW_Agg_Psi_iter = [];
    for i = 1:1:length(Psi_iter)
        OW_Agg_Psi_iter_iter = repmat(Psi_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        OW_Agg_Psi_iter = [OW_Agg_Psi_iter; OW_Agg_Psi_iter_iter];
    end
    
    OW_Agg_Alpha_iter = [];
    for i = 1:1:length(Alpha_iter)
        OW_Agg_Alpha_iter_iter = repmat(Alpha_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        OW_Agg_Alpha_iter = [OW_Agg_Alpha_iter; OW_Agg_Alpha_iter_iter];
    end
    
    OW_Agg_length1_SCE2Route1 = [];
    for i = 1:1:length(Length_iter)
        OW_Agg_length1_SCE2Route1_iter = repmat(Length_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        OW_Agg_length1_SCE2Route1 = [OW_Agg_length1_SCE2Route1; OW_Agg_length1_SCE2Route1_iter];
    end
    
    OW_Agg_draught1_SCE2Route1= [];
    for i = 1:1:length(T_iter)
        OW_Agg_draught1_SCE2Route1_iter = repmat(T_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        OW_Agg_draught1_SCE2Route1 = [OW_Agg_draught1_SCE2Route1; OW_Agg_draught1_SCE2Route1_iter];
    end
    
    NonIce_OW_Resistance_N_SCE2Route1_t0 = [];
    for i = 1:1:length(v_iter)
        NonIce_OW_Resistance_N_SCE2Route1_t0_iter = repmat(NonIce_OW_Resistance_N_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        NonIce_OW_Resistance_N_SCE2Route1_t0 = [NonIce_OW_Resistance_N_SCE2Route1_t0; NonIce_OW_Resistance_N_SCE2Route1_t0_iter];
    end
    
    
    %t_m
    %%%%%%%%%%%
    
    OW_Agg_Op_speed2_SCE2Route1_iter = [];
    for i = 1:1:length(v_iter)
        OW_Agg_Op_speed2_SCE2Route1_iter_iter = repmat(v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        OW_Agg_Op_speed2_SCE2Route1_iter = [OW_Agg_Op_speed2_SCE2Route1_iter; OW_Agg_Op_speed2_SCE2Route1_iter_iter];
    end
    
    OW_Agg_length2_SCE2Route1 = [];
    for i = 1:1:length(Length_iter)
        OW_Agg_length2_SCE2Route1_iter = repmat(Length_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        OW_Agg_length2_SCE2Route1 = [OW_Agg_length2_SCE2Route1; OW_Agg_length2_SCE2Route1_iter];
    end
    
    OW_Agg_Psi_iter_tm = [];
    for i = 1:1:length(Psi_iter)
        OW_Agg_Psi_iter_iter_tm = repmat(Psi_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        OW_Agg_Psi_iter_tm = [OW_Agg_Psi_iter_tm; OW_Agg_Psi_iter_iter_tm];
    end
    
    OW_Agg_Alpha_iter_tm = [];
    for i = 1:1:length(Alpha_iter)
        OW_Agg_Alpha_iter_iter_tm = repmat(Alpha_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        OW_Agg_Alpha_iter_tm = [OW_Agg_Alpha_iter_tm; OW_Agg_Alpha_iter_iter_tm];
    end
    
    OW_Agg_draught2_SCE2Route1= [];
    for i = 1:1:length(T_iter)
        OW_Agg_draught2_SCE2Route1_iter = repmat(T_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        OW_Agg_draught2_SCE2Route1 = [OW_Agg_draught2_SCE2Route1; OW_Agg_draught2_SCE2Route1_iter];
    end
    
    NonIce_OW_Resistance_N_SCE2Route1_tm = [];
    for i = 1:1:length(v_iter)
        NonIce_OW_Resistance_N_SCE2Route1_tm_iter = repmat(NonIce_OW_Resistance_N_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        NonIce_OW_Resistance_N_SCE2Route1_tm = [NonIce_OW_Resistance_N_SCE2Route1_tm; NonIce_OW_Resistance_N_SCE2Route1_tm_iter];
    end
    
    
    %t_f
    %%%%%%%%%%%
    OW_Agg_Op_speed3_SCE2Route1_iter = [];
    for i = 1:1:length(v_iter)
        OW_Agg_Op_speed3_SCE2Route1_iter_iter = repmat(v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        OW_Agg_Op_speed3_SCE2Route1_iter = [OW_Agg_Op_speed3_SCE2Route1_iter; OW_Agg_Op_speed3_SCE2Route1_iter_iter];
    end
    
    OW_Agg_length3_SCE2Route1 = [];
    for i = 1:1:length(Length_iter)
        OW_Agg_length3_SCE2Route1_iter = repmat(Length_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        OW_Agg_length3_SCE2Route1 = [OW_Agg_length3_SCE2Route1; OW_Agg_length3_SCE2Route1_iter];
    end
    
    OW_Agg_Psi_iter_tf = [];
    for i = 1:1:length(Psi_iter)
        OW_Agg_Psi_iter_iter_tf = repmat(Psi_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        OW_Agg_Psi_iter_tf = [OW_Agg_Psi_iter_tf; OW_Agg_Psi_iter_iter_tf];
    end
    
    OW_Agg_Alpha_iter_tf = [];
    for i = 1:1:length(Alpha_iter)
        OW_Agg_Alpha_iter_iter_tf = repmat(Alpha_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        OW_Agg_Alpha_iter_tf = [OW_Agg_Alpha_iter_tf; OW_Agg_Alpha_iter_iter_tf];
    end
    
    OW_Agg_draught3_SCE2Route1= [];
    for i = 1:1:length(T_iter)
        OW_Agg_draught3_SCE2Route1_iter = repmat(T_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        OW_Agg_draught3_SCE2Route1 = [OW_Agg_draught3_SCE2Route1; OW_Agg_draught3_SCE2Route1_iter];
    end
    
    NonIce_OW_Resistance_N_SCE2Route1_tf = [];
    for i = 1:1:length(v_iter)
        NonIce_OW_Resistance_N_SCE2Route1_tf_iter = repmat(NonIce_OW_Resistance_N_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        NonIce_OW_Resistance_N_SCE2Route1_tf = [NonIce_OW_Resistance_N_SCE2Route1_tf; NonIce_OW_Resistance_N_SCE2Route1_tf_iter];
    end
    
    Ice_Total_Resistance_SCE2Route1_kN_t0 = [];
    Ice_Operating_speed_SCE2Route1_t0 = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route1 = Agg_Op_speed1_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_t0_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE2Route1_t0 = Ice_OW_Resistance_N_SCE2Route1_t0_iter.*Op_speed_metrespersec1_SCE2Route1;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route1 = Agg_Op_speed1_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_t0_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE2Route1_t0 = Ice_OW_Resistance_N_SCE2Route1_t0_iter.*Op_speed_metrespersec1_SCE2Route1;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route1 = Agg_Op_speed1_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_t0_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE2Route1_t0 = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE2Route1;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route1 = Agg_Op_speed1_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_t0_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE2Route1_t0 = Ice_OW_Resistance_N_SCE2Route1_t0_iter.*Op_speed_metrespersec1_SCE2Route1;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route1 = Agg_Op_speed1_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_t0_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE2Route1_t0 = Ice_OW_Resistance_N_SCE2Route1_t0_iter.*Op_speed_metrespersec1_SCE2Route1;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0(i) > 0.3
            
            Vertical_force_SCE2Route1_t0 = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0(i)).^2;
            
            A_SCE2Route1 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE2Route1 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE2Route1_t0 = Vertical_force_SCE2Route1_t0.*(A_SCE2Route1./B_SCE2Route1);
            
            C1_SCE2Route1 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE2Route1 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE2Route1 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE2Route1_t0 = C1_SCE2Route1.*D_SCE2Route1.*E_SCE2Route1;
            
            F1_SCE2Route1 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0(i));
            G1_SCE2Route1 = Agg_draught1_SCE2Route1(i).*(Beam_iter+Agg_draught1_SCE2Route1(i))./(Beam_iter+(2*Agg_draught1_SCE2Route1(i)));
            H1_SCE2Route1 = 0.7.*Agg_length1_SCE2Route1(i); %70% assumed from Lindqvist
            I1_SCE2Route1 = Agg_draught1_SCE2Route1(i)./tan(Phi_iter);
            J1_SCE2Route1 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE2Route1 = Agg_draught1_SCE2Route1(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE2Route1  = 1./(sin(Phi_iter.^2));
            K_part2_SCE2Route1  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE2Route1 = (K_part1_SCE2Route1+K_part2_SCE2Route1).^0.5;
            
            Submersion_Resistance_component_SCE2Route1_t0 = F1_SCE2Route1.*Beam_iter.*(G1_SCE2Route1+Mu.*(H1_SCE2Route1-I1_SCE2Route1-J1_SCE2Route1+(K1_SCE2Route1.*K_part3_SCE2Route1)));
            Agg_Crushing_Resistance_component_SCE2Route1_t0 = Crushing_Resistance_component_SCE2Route1_t0;
            Agg_Bending_Resistance_component_SCE2Route1_t0 = Bending_Resistance_component_SCE2Route1_t0;
            
            L1_SCE2Route1 = (Agg_Crushing_Resistance_component_SCE2Route1_t0 + Agg_Bending_Resistance_component_SCE2Route1_t0);
            M1_SCE2Route1 = (1+((1.4*Op_speed_metrespersec1_SCE2Route1)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0(i)).^0.5)));
            N1_SCE2Route1 = Submersion_Resistance_component_SCE2Route1_t0.*(1+((9.4.*Op_speed_metrespersec1_SCE2Route1)./((g.*Agg_length1_SCE2Route1(i)).^0.5)));
            
            Total_Ice_Resistance_SCE2Route1_t0 = (L1_SCE2Route1.*M1_SCE2Route1)+N1_SCE2Route1;
            Total_Resistance_SCE2Route1_t0_iter = Ice_OW_Resistance_N_SCE2Route1_t0_iter + Total_Ice_Resistance_SCE2Route1_t0;
            
            Operating_speed_SCE2Route1_t0_iter = (Effective_power_SCE2Route1_t0./Total_Resistance_SCE2Route1_t0_iter);
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs = Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0(i)./Agg_Annual_sea_ice_conc_encountered_SCE2Route1_t0(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE2Route1./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route1_t0(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE2Route1_t0(i).^5.196);
            
            Total_Ice_Resistance_SCE2Route1_t0 = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route1_t0(i)).*(Op_speed_metrespersec1_SCE2Route1.^2);
            Total_Resistance_SCE2Route1_t0_iter = Ice_OW_Resistance_N_SCE2Route1_t0_iter + Total_Ice_Resistance_SCE2Route1_t0;
            
            Operating_speed_SCE2Route1_t0_iter = (Effective_power_SCE2Route1_t0./Total_Resistance_SCE2Route1_t0_iter);
            
        end
        Ice_Total_Resistance_SCE2Route1_kN_t0 = [Ice_Total_Resistance_SCE2Route1_kN_t0; Total_Resistance_SCE2Route1_t0_iter];
        Ice_Operating_speed_SCE2Route1_t0 = [Ice_Operating_speed_SCE2Route1_t0; Operating_speed_SCE2Route1_t0_iter];
    end
    
    %OW
    NonIce_Total_Resistance_SCE2Route1_kN_t0 = [];
    NonIce_Operating_speed_SCE2Route1_t0 = [];
    for i = 1:1:length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)
        
        if i <= length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route1 = OW_Agg_Op_speed1_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_t0_iter = NonIce_OW_Resistance_N_iter(1);
            OW_Effective_power_SCE2Route1_t0 = NonIce_OW_Resistance_N_SCE2Route1_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route1;
            
        elseif i <= 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length && i > length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route1 = OW_Agg_Op_speed1_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_t0_iter = NonIce_OW_Resistance_N_iter(2);
            OW_Effective_power_SCE2Route1_t0 = NonIce_OW_Resistance_N_SCE2Route1_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route1;
            
        elseif i <= 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length && i > 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route1 = OW_Agg_Op_speed1_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_t0_iter = NonIce_OW_Resistance_N_iter(3);
            OW_Effective_power_SCE2Route1_t0 = NonIce_OW_Resistance_N_iter(3).*OW_Op_speed_metrespersec1_SCE2Route1;
            
        elseif i <= 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length && i > 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route1 = OW_Agg_Op_speed1_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_t0_iter = NonIce_OW_Resistance_N_iter(4);
            OW_Effective_power_SCE2Route1_t0 = NonIce_OW_Resistance_N_SCE2Route1_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route1;
            
        elseif i <= 5.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length && i > 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route1 = OW_Agg_Op_speed1_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_t0_iter = NonIce_OW_Resistance_N_iter(5);
            OW_Effective_power_SCE2Route1_t0 = NonIce_OW_Resistance_N_SCE2Route1_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route1;
            
        end
        
        %Ice floe resistance calculation
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs = OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0(i)./OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_t0(i);
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs(isnan(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs)) = 0;
        
        Pack_Ice_Floe_Froude_number = OW_Op_speed_metrespersec1_SCE2Route1./((9.81.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_t0(i)).^0.5);
        Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
        
        C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs)./Beam_iter).^1.019).*(OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_t0(i).^5.196);
        
        Total_Ice_Resistance_SCE2Route1_t0 = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_t0(i)).*(OW_Op_speed_metrespersec1_SCE2Route1.^2);
        Total_Resistance_SCE2Route1_t0_iter = NonIce_OW_Resistance_N_SCE2Route1_t0_iter + Total_Ice_Resistance_SCE2Route1_t0;
        
        OW_Operating_speed_SCE2Route1_t0_iter = (OW_Effective_power_SCE2Route1_t0./Total_Resistance_SCE2Route1_t0_iter);
        
        
        NonIce_Total_Resistance_SCE2Route1_kN_t0 = [NonIce_Total_Resistance_SCE2Route1_kN_t0; Total_Resistance_SCE2Route1_t0_iter];
        NonIce_Operating_speed_SCE2Route1_t0 = [NonIce_Operating_speed_SCE2Route1_t0; OW_Operating_speed_SCE2Route1_t0_iter];
    end
    
    Total_Resistance_SCE2Route1_tm = [];
    Ice_Operating_speed_SCE2Route1_tm = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route1 = Agg_Op_speed2_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_tm_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE2Route1_tm = Ice_OW_Resistance_N_SCE2Route1_tm_iter.*Op_speed_metrespersec2_SCE2Route1;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route1 = Agg_Op_speed2_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_tm_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE2Route1_tm = Ice_OW_Resistance_N_SCE2Route1_tm_iter.*Op_speed_metrespersec2_SCE2Route1;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route1 = Agg_Op_speed2_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_tm_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE2Route1_tm = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec2_SCE2Route1;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route1 = Agg_Op_speed2_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_tm_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE2Route1_tm = Ice_OW_Resistance_N_SCE2Route1_tm_iter.*Op_speed_metrespersec2_SCE2Route1;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route1 = Agg_Op_speed2_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_tm_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE2Route1_tm = Ice_OW_Resistance_N_SCE2Route1_tm_iter.*Op_speed_metrespersec2_SCE2Route1;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm(i) > 0.3
            
            Vertical_force_SCE2Route1_tm = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm(i)).^2;
            
            A_SCE2Route1 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter_tm(i)));
            B_SCE2Route1 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter_tm(i)));
            
            Crushing_Resistance_component_SCE2Route1_tm = Vertical_force_SCE2Route1_tm.*(A_SCE2Route1./B_SCE2Route1);
            
            C1_SCE2Route1 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE2Route1 = tan(Agg_Psi_iter_tm(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter_tm(i)).*cos(Agg_Psi_iter_tm(i))));
            E_SCE2Route1 = (1+(1./cos(Agg_Psi_iter_tm(i))));
            
            Bending_Resistance_component_SCE2Route1_tm = C1_SCE2Route1.*D_SCE2Route1.*E_SCE2Route1;
            
            F1_SCE2Route1 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm(i));
            G1_SCE2Route1 = Agg_draught2_SCE2Route1(i).*(Beam_iter+Agg_draught2_SCE2Route1(i))./(Beam_iter+(2*Agg_draught2_SCE2Route1(i)));
            H1_SCE2Route1 = 0.7.*Agg_length2_SCE2Route1(i); %70% assumed from Lindqvist
            I1_SCE2Route1 = Agg_draught2_SCE2Route1(i)./tan(Phi_iter);
            J1_SCE2Route1 = Beam_iter./(4.*tan(Agg_Alpha_iter_tm(i)));
            K1_SCE2Route1 = Agg_draught2_SCE2Route1(i).*cos(Phi_iter).*cos(Agg_Psi_iter_tm(i));
            K_part1_SCE2Route1  = 1./(sin(Phi_iter.^2));
            K_part2_SCE2Route1  = 1./(tan(Agg_Alpha_iter_tm(i).^2));
            K_part3_SCE2Route1 = (K_part1_SCE2Route1+K_part2_SCE2Route1).^0.5;
            
            Submersion_Resistance_component_SCE2Route1_tm = F1_SCE2Route1.*Beam_iter.*(G1_SCE2Route1+Mu.*(H1_SCE2Route1-I1_SCE2Route1-J1_SCE2Route1+(K1_SCE2Route1.*K_part3_SCE2Route1)));
            Agg_Crushing_Resistance_component_SCE2Route1_tm = Crushing_Resistance_component_SCE2Route1_tm;
            Agg_Bending_Resistance_component_SCE2Route1_tm = Bending_Resistance_component_SCE2Route1_tm;
            
            L1_SCE2Route1 = (Agg_Crushing_Resistance_component_SCE2Route1_tm + Agg_Bending_Resistance_component_SCE2Route1_tm);
            M1_SCE2Route1 = (1+((1.4*Op_speed_metrespersec2_SCE2Route1)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm(i)).^0.5)));
            N1_SCE2Route1 = Submersion_Resistance_component_SCE2Route1_tm.*(1+((9.4.*Op_speed_metrespersec2_SCE2Route1)./((g.*Agg_length2_SCE2Route1(i)).^0.5)));
            
            Total_Ice_Resistance_SCE2Route1_tm = (L1_SCE2Route1.*M1_SCE2Route1)+N1_SCE2Route1;
            Total_Resistance_SCE2Route1_tm_iter = Ice_OW_Resistance_N_SCE2Route1_tm_iter + Total_Ice_Resistance_SCE2Route1_tm;
            
            Operating_speed_SCE2Route1_tm_iter = (Effective_power_SCE2Route1_tm./Total_Resistance_SCE2Route1_tm_iter);
            
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs = Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm(i)./Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tm(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec2_SCE2Route1./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tm(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tm(i).^5.196);
            
            Total_Ice_Resistance_SCE2Route1_tm = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tm(i)).*(Op_speed_metrespersec2_SCE2Route1.^2);
            Total_Resistance_SCE2Route1_tm_iter = Ice_OW_Resistance_N_SCE2Route1_tm_iter + Total_Ice_Resistance_SCE2Route1_tm;
            
            Operating_speed_SCE2Route1_tm_iter = (Effective_power_SCE2Route1_tm./Total_Resistance_SCE2Route1_tm_iter);
            
        end
        Total_Resistance_SCE2Route1_tm = [Total_Resistance_SCE2Route1_tm; Total_Resistance_SCE2Route1_tm_iter];
        Ice_Operating_speed_SCE2Route1_tm = [Ice_Operating_speed_SCE2Route1_tm; Operating_speed_SCE2Route1_tm_iter];
    end
    
    NonIce_Total_Resistance_SCE2Route1_kN_tm = [];
    NonIce_Operating_speed_SCE2Route1_tm = [];
    for i = 1:1:length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)
        
        if i <= length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route1 = OW_Agg_Op_speed2_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_tm_iter = NonIce_OW_Resistance_N_iter(1);
            OW_Effective_power_SCE2Route1_tm = NonIce_OW_Resistance_N_SCE2Route1_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route1;
            
        elseif i <= 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length && i > length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route1 = OW_Agg_Op_speed2_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_tm_iter = NonIce_OW_Resistance_N_iter(2);
            OW_Effective_power_SCE2Route1_tm = NonIce_OW_Resistance_N_SCE2Route1_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route1;
            
        elseif i <= 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length && i > 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route1 = OW_Agg_Op_speed2_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_tm_iter = NonIce_OW_Resistance_N_iter(3);
            OW_Effective_power_SCE2Route1_tm = NonIce_OW_Resistance_N_iter(3).*OW_Op_speed_metrespersec2_SCE2Route1;
            
        elseif i <= 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length && i > 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route1 = OW_Agg_Op_speed2_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_tm_iter = NonIce_OW_Resistance_N_iter(4);
            OW_Effective_power_SCE2Route1_tm = NonIce_OW_Resistance_N_SCE2Route1_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route1;
            
        elseif i <= 5.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length && i > 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route1 = OW_Agg_Op_speed2_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_tm_iter = NonIce_OW_Resistance_N_iter(5);
            OW_Effective_power_SCE2Route1_tm = NonIce_OW_Resistance_N_SCE2Route1_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route1;
            
        end
        
        %Ice floe resistance calculation
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs = OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm(i)./OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tm(i);
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs(isnan(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs)) = 0;
        
        Pack_Ice_Floe_Froude_number = OW_Op_speed_metrespersec2_SCE2Route1./((9.81.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tm(i)).^0.5);
        Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
        
        C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs)./Beam_iter).^1.019).*(OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tm(i).^5.196);
        
        Total_Ice_Resistance_SCE2Route1_tm = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tm(i)).*(OW_Op_speed_metrespersec2_SCE2Route1.^2);
        Total_Resistance_SCE2Route1_tm_iter = NonIce_OW_Resistance_N_SCE2Route1_tm_iter + Total_Ice_Resistance_SCE2Route1_tm;
        
        OW_Operating_speed_SCE2Route1_tm_iter = (OW_Effective_power_SCE2Route1_tm./Total_Resistance_SCE2Route1_tm_iter);
        
        
        NonIce_Total_Resistance_SCE2Route1_kN_tm = [NonIce_Total_Resistance_SCE2Route1_kN_tm; Total_Resistance_SCE2Route1_tm_iter];
        NonIce_Operating_speed_SCE2Route1_tm = [NonIce_Operating_speed_SCE2Route1_tm; OW_Operating_speed_SCE2Route1_tm_iter];
    end
    
    
    Total_Resistance_SCE2Route1_tf = [];
    Ice_Operating_speed_SCE2Route1_tf = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route1 = Agg_Op_speed3_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_tf_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE2Route1_tf = Ice_OW_Resistance_N_SCE2Route1_tf_iter.*Op_speed_metrespersec3_SCE2Route1;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route1 = Agg_Op_speed3_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_tf_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE2Route1_tf = Ice_OW_Resistance_N_SCE2Route1_tf_iter.*Op_speed_metrespersec3_SCE2Route1;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route1 = Agg_Op_speed3_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_tf_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE2Route1_tf = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec3_SCE2Route1;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route1 = Agg_Op_speed3_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_tf_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE2Route1_tf = Ice_OW_Resistance_N_SCE2Route1_tf_iter.*Op_speed_metrespersec3_SCE2Route1;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route1 = Agg_Op_speed3_SCE2Route1_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route1_tf_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE2Route1_tf = Ice_OW_Resistance_N_SCE2Route1_tf_iter.*Op_speed_metrespersec3_SCE2Route1;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf(i) > 0.3
            
            Vertical_force_SCE2Route1_tf = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf(i)).^2;
            
            A_SCE2Route1 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter_tf(i)));
            B_SCE2Route1 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter_tf(i)));
            
            Crushing_Resistance_component_SCE2Route1_tf = Vertical_force_SCE2Route1_tf.*(A_SCE2Route1./B_SCE2Route1);
            
            C1_SCE2Route1 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE2Route1 = tan(Agg_Psi_iter_tf(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter_tf(i)).*cos(Agg_Psi_iter_tf(i))));
            E_SCE2Route1 = (1+(1./cos(Agg_Psi_iter_tf(i))));
            
            Bending_Resistance_component_SCE2Route1_tf = C1_SCE2Route1.*D_SCE2Route1.*E_SCE2Route1;
            
            F1_SCE2Route1 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf(i));
            G1_SCE2Route1 = Agg_draught3_SCE2Route1(i).*(Beam_iter+Agg_draught3_SCE2Route1(i))./(Beam_iter+(2*Agg_draught3_SCE2Route1(i)));
            H1_SCE2Route1 = 0.7.*Agg_length3_SCE2Route1(i); %70% assumed from Lindqvist
            I1_SCE2Route1 = Agg_draught3_SCE2Route1(i)./tan(Phi_iter);
            J1_SCE2Route1 = Beam_iter./(4.*tan(Agg_Alpha_iter_tf(i)));
            K1_SCE2Route1 = Agg_draught3_SCE2Route1(i).*cos(Phi_iter).*cos(Agg_Psi_iter_tf(i));
            K_part1_SCE2Route1  = 1./(sin(Phi_iter.^2));
            K_part2_SCE2Route1  = 1./(tan(Agg_Alpha_iter_tf(i).^2));
            K_part3_SCE2Route1 = (K_part1_SCE2Route1+K_part2_SCE2Route1).^0.5;
            
            Submersion_Resistance_component_SCE2Route1_tf = F1_SCE2Route1.*Beam_iter.*(G1_SCE2Route1+Mu.*(H1_SCE2Route1-I1_SCE2Route1-J1_SCE2Route1+(K1_SCE2Route1.*K_part3_SCE2Route1)));
            Agg_Crushing_Resistance_component_SCE2Route1_tf = Crushing_Resistance_component_SCE2Route1_tf;
            Agg_Bending_Resistance_component_SCE2Route1_tf = Bending_Resistance_component_SCE2Route1_tf;
            
            L1_SCE2Route1 = (Agg_Crushing_Resistance_component_SCE2Route1_tf + Agg_Bending_Resistance_component_SCE2Route1_tf);
            M1_SCE2Route1 = (1+((1.4*Op_speed_metrespersec3_SCE2Route1)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf(i)).^0.5)));
            N1_SCE2Route1 = Submersion_Resistance_component_SCE2Route1_tf.*(1+((9.4.*Op_speed_metrespersec3_SCE2Route1)./((g.*Agg_length3_SCE2Route1(i)).^0.5)));
            
            Total_Ice_Resistance_SCE2Route1_tf = (L1_SCE2Route1.*M1_SCE2Route1)+N1_SCE2Route1;
            Total_Resistance_SCE2Route1_tf_iter = Ice_OW_Resistance_N_SCE2Route1_tf_iter + Total_Ice_Resistance_SCE2Route1_tf;
            
            Operating_speed_SCE2Route1_tf_iter = (Effective_power_SCE2Route1_tf./Total_Resistance_SCE2Route1_tf_iter);
            
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs = Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf(i)./Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tf(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec3_SCE2Route1./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tf(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tf(i).^5.196);
            
            Total_Ice_Resistance_SCE2Route1_tf = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tf(i)).*(Op_speed_metrespersec3_SCE2Route1.^2);
            Total_Resistance_SCE2Route1_tf_iter = Ice_OW_Resistance_N_SCE2Route1_tf_iter + Total_Ice_Resistance_SCE2Route1_tf;
            
            Operating_speed_SCE2Route1_tf_iter = (Effective_power_SCE2Route1_tf./Total_Resistance_SCE2Route1_tf_iter);
        end
        Total_Resistance_SCE2Route1_tf = [Total_Resistance_SCE2Route1_tf; Total_Resistance_SCE2Route1_tf_iter];
        Ice_Operating_speed_SCE2Route1_tf = [Ice_Operating_speed_SCE2Route1_tf; Operating_speed_SCE2Route1_tf_iter];
    end
    
    NonIce_Total_Resistance_SCE2Route1_kN_tf = [];
    NonIce_Operating_speed_SCE2Route1_tf = [];
    for i = 1:1:length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)
        
        if i <= length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route1 = OW_Agg_Op_speed3_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_tf_iter = NonIce_OW_Resistance_N_iter(1);
            OW_Effective_power_SCE2Route1_tf = NonIce_OW_Resistance_N_SCE2Route1_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route1;
            
        elseif i <= 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length && i > length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route1 = OW_Agg_Op_speed3_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_tf_iter = NonIce_OW_Resistance_N_iter(2);
            OW_Effective_power_SCE2Route1_tf = NonIce_OW_Resistance_N_SCE2Route1_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route1;
            
        elseif i <= 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length && i > 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route1 = OW_Agg_Op_speed3_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_tf_iter = NonIce_OW_Resistance_N_iter(3);
            OW_Effective_power_SCE2Route1_tf = NonIce_OW_Resistance_N_iter(3).*OW_Op_speed_metrespersec3_SCE2Route1;
            
        elseif i <= 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length && i > 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route1 = OW_Agg_Op_speed3_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_tf_iter = NonIce_OW_Resistance_N_iter(4);
            OW_Effective_power_SCE2Route1_tf = NonIce_OW_Resistance_N_SCE2Route1_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route1;
            
        elseif i <= 5.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length && i > 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route1 = OW_Agg_Op_speed3_SCE2Route1_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route1_tf_iter = NonIce_OW_Resistance_N_iter(5);
            OW_Effective_power_SCE2Route1_tf = NonIce_OW_Resistance_N_SCE2Route1_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route1;
            
        end
        
        %Ice floe resistance calculation
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs = OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf(i)./OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tf(i);
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs(isnan(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs)) = 0;
        
        Pack_Ice_Floe_Froude_number = OW_Op_speed_metrespersec3_SCE2Route1./((9.81.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tf(i)).^0.5);
        Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
        
        C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs)./Beam_iter).^1.019).*(OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tf(i).^5.196);
        
        Total_Ice_Resistance_SCE2Route1_tf = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route1_tf(i)).*(OW_Op_speed_metrespersec3_SCE2Route1.^2);
        Total_Resistance_SCE2Route1_tf_iter = NonIce_OW_Resistance_N_SCE2Route1_tf_iter + Total_Ice_Resistance_SCE2Route1_tf;
        
        OW_Operating_speed_SCE2Route1_tf_iter = (OW_Effective_power_SCE2Route1_tf./Total_Resistance_SCE2Route1_tf_iter);
        
        
        NonIce_Total_Resistance_SCE2Route1_kN_tf = [NonIce_Total_Resistance_SCE2Route1_kN_tf; Total_Resistance_SCE2Route1_tf_iter];
        NonIce_Operating_speed_SCE2Route1_tf = [NonIce_Operating_speed_SCE2Route1_tf; OW_Operating_speed_SCE2Route1_tf_iter];
    end
    
    %Resize the variables to align with the shape of the other variables
    Ice_Operating_speed_SCE2Route1_t0 = Ice_Operating_speed_SCE2Route1_t0./0.514444444;
    Ice_Operating_speed_SCE2Route1_tm = Ice_Operating_speed_SCE2Route1_tm./0.514444444;
    Ice_Operating_speed_SCE2Route1_tf = Ice_Operating_speed_SCE2Route1_tf./0.514444444;
    
    %Where the ice is thicker than 0.8m it also needs an icebreaker...
    Ice_Logic_t0 = (Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_t0 > 0.7);
    Ice_Logic_tm = (Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tm > 0.7);
    Ice_Logic_tf = (Agg_Annual_sea_ice_thickness_encountered_SCE2Route1_tf > 0.7);
    
    Ice_Operating_speed_SCE2Route1_t0(Ice_Logic_t0) = 3;
    Ice_Operating_speed_SCE2Route1_tm(Ice_Logic_tm) = 3;
    Ice_Operating_speed_SCE2Route1_tf(Ice_Logic_tf) = 3;
    
    %Resize the variables to align with the shape of the other variables
    NonIce_Operating_speed_SCE2Route1_t0 = NonIce_Operating_speed_SCE2Route1_t0./0.514444444;
    NonIce_Operating_speed_SCE2Route1_tm = NonIce_Operating_speed_SCE2Route1_tm./0.514444444;
    NonIce_Operating_speed_SCE2Route1_tf = NonIce_Operating_speed_SCE2Route1_tf./0.514444444;
    
    
    Global_IceStrengthOutput_SCE2Route1_power_kW_t0 = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE2Route1_power_kW_t0_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Global_IceStrengthOutput_SCE2Route1_power_kW_t0 = [Global_IceStrengthOutput_SCE2Route1_power_kW_t0;Global_IceStrengthOutput_SCE2Route1_power_kW_t0_iter];
    end
    
    Global_IceStrengthOutput_SCE2Route1_power_kW_tm = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE2Route1_power_kW_tm_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Global_IceStrengthOutput_SCE2Route1_power_kW_tm = [Global_IceStrengthOutput_SCE2Route1_power_kW_tm;Global_IceStrengthOutput_SCE2Route1_power_kW_tm_iter];
    end
    
    Global_IceStrengthOutput_SCE2Route1_power_kW_tf = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE2Route1_power_kW_tf_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Global_IceStrengthOutput_SCE2Route1_power_kW_tf = [Global_IceStrengthOutput_SCE2Route1_power_kW_tf;Global_IceStrengthOutput_SCE2Route1_power_kW_tf_iter];
    end
    
    Global_NonIceStrengthOutput_SCE2Route1_power_kW_t0 = [];
    for i = 1:1:length(NonIceStrengthOutput_power_kW_iter)
        Global_NonIceStrengthOutput_SCE2Route1_power_kW_t0_iter = repmat(NonIceStrengthOutput_power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Global_NonIceStrengthOutput_SCE2Route1_power_kW_t0 = [Global_NonIceStrengthOutput_SCE2Route1_power_kW_t0;Global_NonIceStrengthOutput_SCE2Route1_power_kW_t0_iter];
    end
    
    Global_NonIceStrengthOutput_SCE2Route1_power_kW_tm = [];
    for i = 1:1:length(NonIceStrengthOutput_power_kW_iter)
        Global_NonIceStrengthOutput_SCE2Route1_power_kW_tm_iter = repmat(NonIceStrengthOutput_power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Global_NonIceStrengthOutput_SCE2Route1_power_kW_tm = [Global_NonIceStrengthOutput_SCE2Route1_power_kW_tm;Global_NonIceStrengthOutput_SCE2Route1_power_kW_tm_iter];
    end
    
    Global_NonIceStrengthOutput_SCE2Route1_power_kW_tf = [];
    for i = 1:1:length(NonIceStrengthOutput_power_kW_iter)
        Global_NonIceStrengthOutput_SCE2Route1_power_kW_tf_iter = repmat(NonIceStrengthOutput_power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Global_NonIceStrengthOutput_SCE2Route1_power_kW_tf = [Global_NonIceStrengthOutput_SCE2Route1_power_kW_tf;Global_NonIceStrengthOutput_SCE2Route1_power_kW_tf_iter];
    end
    
    Global_SCE2Route1_Ice_sfc_t0 = [];
    
    for i = 1:1:length(Icesfc_iter)
        Global_SCE2Route1_Ice_sfc_t0_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Global_SCE2Route1_Ice_sfc_t0  = [Global_SCE2Route1_Ice_sfc_t0; Global_SCE2Route1_Ice_sfc_t0_iter];
    end
    
    Global_SCE2Route1_Ice_sfc_tm = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE2Route1_Ice_sfc_tm_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Global_SCE2Route1_Ice_sfc_tm  = [Global_SCE2Route1_Ice_sfc_tm; Global_SCE2Route1_Ice_sfc_tm_iter];
    end
    
    Global_SCE2Route1_Ice_sfc_tf = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE2Route1_Ice_sfc_tf_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Global_SCE2Route1_Ice_sfc_tf  = [Global_SCE2Route1_Ice_sfc_tf; Global_SCE2Route1_Ice_sfc_tf_iter];
    end
    
    Global_SCE2Route1_NonIce_sfc_t0 = [];
    
    for i = 1:1:length(NonIcesfc_iter)
        Global_SCE2Route1_NonIce_sfc_t0_iter = repmat(NonIcesfc_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Global_SCE2Route1_NonIce_sfc_t0  = [Global_SCE2Route1_NonIce_sfc_t0; Global_SCE2Route1_NonIce_sfc_t0_iter];
    end
    
    Global_SCE2Route1_NonIce_sfc_tm = [];
    for i = 1:1:length(NonIcesfc_iter)
        Global_SCE2Route1_NonIce_sfc_tm_iter = repmat(NonIcesfc_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Global_SCE2Route1_NonIce_sfc_tm  = [Global_SCE2Route1_NonIce_sfc_tm; Global_SCE2Route1_NonIce_sfc_tm_iter];
    end
    
    Global_SCE2Route1_NonIce_sfc_tf = [];
    for i = 1:1:length(NonIcesfc_iter)
        Global_SCE2Route1_NonIce_sfc_tf_iter = repmat(NonIcesfc_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Global_SCE2Route1_NonIce_sfc_tf  = [Global_SCE2Route1_NonIce_sfc_tf; Global_SCE2Route1_NonIce_sfc_tf_iter];
    end
    
    %Correct the operating speed to be in line with IMO and RMS regulations
    
    Operating_speed_index_SCE2Route1_t0 = find(Ice_Operating_speed_SCE2Route1_t0<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route1_t0)
        Ice_Operating_speed_SCE2Route1_t0(Operating_speed_index_SCE2Route1_t0(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route1_tm = find(Ice_Operating_speed_SCE2Route1_tm<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route1_tm)
        Ice_Operating_speed_SCE2Route1_tm(Operating_speed_index_SCE2Route1_tm(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route1_tf = find(Ice_Operating_speed_SCE2Route1_tf<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route1_tf)
        Ice_Operating_speed_SCE2Route1_tf(Operating_speed_index_SCE2Route1_tf(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route1_t0 = find(NonIce_Operating_speed_SCE2Route1_t0<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route1_t0)
        NonIce_Operating_speed_SCE2Route1_t0(Operating_speed_index_SCE2Route1_t0(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route1_tm = find(NonIce_Operating_speed_SCE2Route1_tm<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route1_tm)
        NonIce_Operating_speed_SCE2Route1_tm(Operating_speed_index_SCE2Route1_tm(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route1_tf = find(NonIce_Operating_speed_SCE2Route1_tf<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route1_tf)
        NonIce_Operating_speed_SCE2Route1_tf(Operating_speed_index_SCE2Route1_tf(i)) = 3;
    end
    
    % Des_v
    Ice_Global_SCE2Route1_Des_v_t0 = [];
    
    for i = 1:1:length(Des_v_iter)
        Ice_Global_SCE2Route1_Des_v_t0_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Ice_Global_SCE2Route1_Des_v_t0  = [Ice_Global_SCE2Route1_Des_v_t0; Ice_Global_SCE2Route1_Des_v_t0_iter];
    end
    
    Ice_Global_SCE2Route1_Des_v_tm = [];
    
    for i = 1:1:length(Des_v_iter)
        Ice_Global_SCE2Route1_Des_v_tm_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Ice_Global_SCE2Route1_Des_v_tm  = [Ice_Global_SCE2Route1_Des_v_tm; Ice_Global_SCE2Route1_Des_v_tm_iter];
    end
    
    Ice_Global_SCE2Route1_Des_v_tf = [];
    
    for i = 1:1:length(Des_v_iter)
        Ice_Global_SCE2Route1_Des_v_tf_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Ice_Global_SCE2Route1_Des_v_tf  = [Ice_Global_SCE2Route1_Des_v_tf; Ice_Global_SCE2Route1_Des_v_tf_iter];
    end
    
    NonIce_Global_SCE2Route1_Des_v_t0 = [];
    
    for i = 1:1:length(Des_v_iter)
        NonIce_Global_SCE2Route1_Des_v_t0_iter = repmat(Des_v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        NonIce_Global_SCE2Route1_Des_v_t0  = [NonIce_Global_SCE2Route1_Des_v_t0; NonIce_Global_SCE2Route1_Des_v_t0_iter];
    end
    
    NonIce_Global_SCE2Route1_Des_v_tm = [];
    
    for i = 1:1:length(Des_v_iter)
        NonIce_Global_SCE2Route1_Des_v_tm_iter = repmat(Des_v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        NonIce_Global_SCE2Route1_Des_v_tm  = [NonIce_Global_SCE2Route1_Des_v_tm; NonIce_Global_SCE2Route1_Des_v_tm_iter];
    end
    
    NonIce_Global_SCE2Route1_Des_v_tf = [];
    
    for i = 1:1:length(Des_v_iter)
        NonIce_Global_SCE2Route1_Des_v_tf_iter = repmat(Des_v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        NonIce_Global_SCE2Route1_Des_v_tf  = [NonIce_Global_SCE2Route1_Des_v_tf; NonIce_Global_SCE2Route1_Des_v_tf_iter];
    end
    
    % Ice_Installed_Power_kW_iter
    Global_SCE2Route1_Ice_Installed_Power_kW_t0 = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE2Route1_Ice_Installed_Power_kW_t0_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Global_SCE2Route1_Ice_Installed_Power_kW_t0  = [Global_SCE2Route1_Ice_Installed_Power_kW_t0; Global_SCE2Route1_Ice_Installed_Power_kW_t0_iter];
    end
    
    Global_SCE2Route1_Ice_Installed_Power_kW_tm = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE2Route1_Ice_Installed_Power_kW_tm_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Global_SCE2Route1_Ice_Installed_Power_kW_tm  = [Global_SCE2Route1_Ice_Installed_Power_kW_tm; Global_SCE2Route1_Ice_Installed_Power_kW_tm_iter];
    end
    
    Global_SCE2Route1_Ice_Installed_Power_kW_tf = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE2Route1_Ice_Installed_Power_kW_tf_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Global_SCE2Route1_Ice_Installed_Power_kW_tf  = [Global_SCE2Route1_Ice_Installed_Power_kW_tf; Global_SCE2Route1_Ice_Installed_Power_kW_tf_iter];
    end
    
    Global_SCE2Route1_NonIce_Installed_Power_kW_t0 = [];
    
    for i = 1:1:length(NonIce_Installed_Power_kW_iter)
        Global_SCE2Route1_NonIce_Installed_Power_kW_t0_iter = repmat(NonIce_Installed_Power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_t0),1);
        Global_SCE2Route1_NonIce_Installed_Power_kW_t0  = [Global_SCE2Route1_NonIce_Installed_Power_kW_t0; Global_SCE2Route1_NonIce_Installed_Power_kW_t0_iter];
    end
    
    Global_SCE2Route1_NonIce_Installed_Power_kW_tm = [];
    
    for i = 1:1:length(NonIce_Installed_Power_kW_iter)
        Global_SCE2Route1_NonIce_Installed_Power_kW_tm_iter = repmat(NonIce_Installed_Power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tm),1);
        Global_SCE2Route1_NonIce_Installed_Power_kW_tm  = [Global_SCE2Route1_NonIce_Installed_Power_kW_tm; Global_SCE2Route1_NonIce_Installed_Power_kW_tm_iter];
    end
    
    Global_SCE2Route1_NonIce_Installed_Power_kW_tf = [];
    
    for i = 1:1:length(NonIce_Installed_Power_kW_iter)
        Global_SCE2Route1_NonIce_Installed_Power_kW_tf_iter = repmat(NonIce_Installed_Power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route1_tf),1);
        Global_SCE2Route1_NonIce_Installed_Power_kW_tf  = [Global_SCE2Route1_NonIce_Installed_Power_kW_tf; Global_SCE2Route1_NonIce_Installed_Power_kW_tf_iter];
    end
    
    Ice_Total_Power_demand_SCE2Route1_t0 = Global_SCE2Route1_Ice_Installed_Power_kW_t0.*((Ice_Operating_speed_SCE2Route1_t0./Ice_Global_SCE2Route1_Des_v_t0).^3)./(Foul_coeff.*Weather_coeff);
    Ice_Total_Power_demand_SCE2Route1_tm = Global_SCE2Route1_Ice_Installed_Power_kW_tm.*((Ice_Operating_speed_SCE2Route1_tm./Ice_Global_SCE2Route1_Des_v_tm).^3)./(Foul_coeff.*Weather_coeff);
    Ice_Total_Power_demand_SCE2Route1_tf = Global_SCE2Route1_Ice_Installed_Power_kW_tf.*((Ice_Operating_speed_SCE2Route1_tf./Ice_Global_SCE2Route1_Des_v_tf).^3)./(Foul_coeff.*Weather_coeff);
    
    Ice_Agg_Engine_SCE2Route1_load_t0 = Ice_Total_Power_demand_SCE2Route1_t0./Global_SCE2Route1_Ice_Installed_Power_kW_t0;
    Ice_Agg_Engine_SCE2Route1_load_tm = Ice_Total_Power_demand_SCE2Route1_tm./Global_SCE2Route1_Ice_Installed_Power_kW_tm;
    Ice_Agg_Engine_SCE2Route1_load_tf = Ice_Total_Power_demand_SCE2Route1_tf./Global_SCE2Route1_Ice_Installed_Power_kW_tf;
    
    %Then I use the IMO 3rd ghg study equation to compute the different SFC,
    %but need to renumerate as the equation doesn't work for loads of 1
    Ice_Constant_SCE2Route1_t0 = (0.455.*(Ice_Agg_Engine_SCE2Route1_load_t0).^2)-(0.71.*Ice_Agg_Engine_SCE2Route1_load_t0)+1.28;
    Ice_Constant_SCE2Route1_tm = (0.455.*(Ice_Agg_Engine_SCE2Route1_load_tm).^2)-(0.71.*Ice_Agg_Engine_SCE2Route1_load_tm)+1.28;
    Ice_Constant_SCE2Route1_tf = (0.455.*(Ice_Agg_Engine_SCE2Route1_load_tf).^2)-(0.71.*Ice_Agg_Engine_SCE2Route1_load_tf)+1.28;
    
    Ice_Operating_SFC_SCE2Route1_t0 = Global_SCE2Route1_Ice_sfc_t0.*Ice_Constant_SCE2Route1_t0;
    Ice_Operating_SFC_SCE2Route1_tm = Global_SCE2Route1_Ice_sfc_tm.*Ice_Constant_SCE2Route1_tm;
    Ice_Operating_SFC_SCE2Route1_tf = Global_SCE2Route1_Ice_sfc_tf.*Ice_Constant_SCE2Route1_tf;
    
    SFC_index_SCE2Route1_t0 = find(Ice_Agg_Engine_SCE2Route1_load_t0==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route1_t0)
        Ice_Operating_SFC_SCE2Route1_t0(SFC_index_SCE2Route1_t0(i)) = Global_SCE2Route1_Ice_sfc_t0(SFC_index_SCE2Route1_t0(i));
    end
    
    SFC_index_SCE2Route1_tm = find(Ice_Agg_Engine_SCE2Route1_load_tm==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route1_tm)
        Ice_Operating_SFC_SCE2Route1_tm(SFC_index_SCE2Route1_tm(i)) = Global_SCE2Route1_Ice_sfc_tm(SFC_index_SCE2Route1_tm(i));
    end
    
    SFC_index_SCE2Route1_tf = find(Ice_Agg_Engine_SCE2Route1_load_tf==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route1_tf)
        Ice_Operating_SFC_SCE2Route1_tf(SFC_index_SCE2Route1_tf(i)) = Global_SCE2Route1_Ice_sfc_tf(SFC_index_SCE2Route1_tf(i));
    end
    
    %NonIce
    NonIce_Total_Power_demand_SCE2Route1_t0 = Global_SCE2Route1_NonIce_Installed_Power_kW_t0.*((NonIce_Operating_speed_SCE2Route1_t0./NonIce_Global_SCE2Route1_Des_v_t0).^3)./(Foul_coeff.*Weather_coeff);
    NonIce_Total_Power_demand_SCE2Route1_tm = Global_SCE2Route1_NonIce_Installed_Power_kW_tm.*((NonIce_Operating_speed_SCE2Route1_tm./NonIce_Global_SCE2Route1_Des_v_tm).^3)./(Foul_coeff.*Weather_coeff);
    NonIce_Total_Power_demand_SCE2Route1_tf = Global_SCE2Route1_NonIce_Installed_Power_kW_tf.*((NonIce_Operating_speed_SCE2Route1_tf./NonIce_Global_SCE2Route1_Des_v_tf).^3)./(Foul_coeff.*Weather_coeff);
    
    NonIce_Agg_Engine_SCE2Route1_load_t0 = NonIce_Total_Power_demand_SCE2Route1_t0./Global_SCE2Route1_NonIce_Installed_Power_kW_t0;
    NonIce_Agg_Engine_SCE2Route1_load_tm = NonIce_Total_Power_demand_SCE2Route1_tm./Global_SCE2Route1_NonIce_Installed_Power_kW_tm;
    NonIce_Agg_Engine_SCE2Route1_load_tf = NonIce_Total_Power_demand_SCE2Route1_tf./Global_SCE2Route1_NonIce_Installed_Power_kW_tf;
    
    %Then I use the IMO 3rd ghg study equation to compute the different SFC,
    %but need to renumerate as the equation doesn't work for loads of 1
    NonIce_Constant_SCE2Route1_t0 = (0.455.*(NonIce_Agg_Engine_SCE2Route1_load_t0).^2)-(0.71.*NonIce_Agg_Engine_SCE2Route1_load_t0)+1.28;
    NonIce_Constant_SCE2Route1_tm = (0.455.*(NonIce_Agg_Engine_SCE2Route1_load_tm).^2)-(0.71.*NonIce_Agg_Engine_SCE2Route1_load_tm)+1.28;
    NonIce_Constant_SCE2Route1_tf = (0.455.*(NonIce_Agg_Engine_SCE2Route1_load_tf).^2)-(0.71.*NonIce_Agg_Engine_SCE2Route1_load_tf)+1.28;
    
    NonIce_Operating_SFC_SCE2Route1_t0 = Global_SCE2Route1_NonIce_sfc_t0.*NonIce_Constant_SCE2Route1_t0;
    NonIce_Operating_SFC_SCE2Route1_tm = Global_SCE2Route1_NonIce_sfc_tm.*NonIce_Constant_SCE2Route1_tm;
    NonIce_Operating_SFC_SCE2Route1_tf = Global_SCE2Route1_NonIce_sfc_tf.*NonIce_Constant_SCE2Route1_tf;
    
    SFC_index_SCE2Route1_t0 = find(NonIce_Agg_Engine_SCE2Route1_load_t0==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route1_t0)
        NonIce_Operating_SFC_SCE2Route1_t0(SFC_index_SCE2Route1_t0(i)) = Global_SCE2Route1_NonIce_sfc_t0(SFC_index_SCE2Route1_t0(i));
    end
    
    SFC_index_SCE2Route1_tm = find(NonIce_Agg_Engine_SCE2Route1_load_tm==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route1_tm)
        NonIce_Operating_SFC_SCE2Route1_tm(SFC_index_SCE2Route1_tm(i)) = Global_SCE2Route1_NonIce_sfc_tm(SFC_index_SCE2Route1_tm(i));
    end
    
    SFC_index_SCE2Route1_tf = find(NonIce_Agg_Engine_SCE2Route1_load_tf==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route1_tf)
        NonIce_Operating_SFC_SCE2Route1_tf(SFC_index_SCE2Route1_tf(i)) = Global_SCE2Route1_NonIce_sfc_tf(SFC_index_SCE2Route1_tf(i));
    end
    
    % %Aggregate the unit lengths together so I can then calculate the time it
    % %takes for the ship to traverse the route each year - MUST BE CAREFUL AS
    % %THE NUMBERS ARE INPUT MANUALLY
    
    Array_Unit_length_Route_1 = [Unit_length_AB; Unit_length_BD;...
        Unit_length_DE; Unit_length_EF; Unit_length_FG; Unit_length_FG(3)]; %I assume that the last interval of the route is the same as the one previous for FG
    %Resize this to be compatible with the other variables then obtain the
    %energy demand
    
    Ice_Global_Array_Unit_length_SCE2Route_1_t0 = repmat(Array_Unit_length_Route_1,length(v_iter).*sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0_iter),1); %12 months in a year
    Ice_Global_Array_Unit_length_SCE2Route_1_tm = repmat(Array_Unit_length_Route_1,length(v_iter).*sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm_iter),1);
    Ice_Global_Array_Unit_length_SCE2Route_1_tf = repmat(Array_Unit_length_Route_1,length(v_iter).*sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf_iter),1);
    
    Ice_Time_hrs_SCE2Route1_t0 = Ice_Global_Array_Unit_length_SCE2Route_1_t0./Ice_Operating_speed_SCE2Route1_t0;
    Ice_Time_hrs_SCE2Route1_tm = Ice_Global_Array_Unit_length_SCE2Route_1_tm./Ice_Operating_speed_SCE2Route1_tm;
    Ice_Time_hrs_SCE2Route1_tf = Ice_Global_Array_Unit_length_SCE2Route_1_tf./Ice_Operating_speed_SCE2Route1_tf;
    
    %Reshaping the time matrices to work out the number of days spent on the
    %NSR which can be used later in the commercial profile function
    Ice_Reshaped_Time_hrs_SCE2Route1_t0_iter = reshape(Ice_Time_hrs_SCE2Route1_t0,length(Array_Unit_length_Route_1(:,1)).*length(Ice_Global_Array_Unit_length_SCE2Route_1_t0(:,1))./(length(v_iter).*length(Array_Unit_length_Route_1(:,1))),length(v_iter));
    Ice_Reshaped_Time_hrs_SCE2Route1_tm_iter = reshape(Ice_Time_hrs_SCE2Route1_tm,length(Array_Unit_length_Route_1(:,1)).*length(Ice_Global_Array_Unit_length_SCE2Route_1_tm(:,1))./(length(v_iter).*length(Array_Unit_length_Route_1(:,1))),length(v_iter));
    Ice_Reshaped_Time_hrs_SCE2Route1_tf_iter = reshape(Ice_Time_hrs_SCE2Route1_tf,length(Array_Unit_length_Route_1(:,1)).*length(Ice_Global_Array_Unit_length_SCE2Route_1_tf(:,1))./(length(v_iter).*length(Array_Unit_length_Route_1(:,1))),length(v_iter));
    
    Ice_Reshaped_Time_days_SCE2Route1_t0_iter = [];
    for i = 1:1:length(Ice_Reshaped_Time_hrs_SCE2Route1_t0_iter(:,1))./length(Array_Unit_length_Route_1(:,1))
        Part_Time_days_SCE2Route1_t0 = Ice_Reshaped_Time_hrs_SCE2Route1_t0_iter((i-1)*length(Array_Unit_length_Route_1(:,1))+1:i*length(Array_Unit_length_Route_1(:,1)),:);
        Ice_Reshaped_Time_days_SCE2Route1_t0_iter_iter = sum(Part_Time_days_SCE2Route1_t0);
        Ice_Reshaped_Time_days_SCE2Route1_t0_iter = [Ice_Reshaped_Time_days_SCE2Route1_t0_iter; Ice_Reshaped_Time_days_SCE2Route1_t0_iter_iter];
    end
    Ice_Reshaped_Time_days_SCE2Route1_t0_iter = Ice_Reshaped_Time_days_SCE2Route1_t0_iter'; Ice_Reshaped_Time_days_SCE2Route1_t0_iter = Ice_Reshaped_Time_days_SCE2Route1_t0_iter./24;
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route1_t0_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            Ice_Reshaped_Time_days_SCE2Route1_t0_iter_iter_iter = Ice_Reshaped_Time_days_SCE2Route1_t0_iter(i,:);
            Ice_Reshaped_Time_days_SCE2Route1_t0_iter_iter_iter(Ice_Reshaped_Time_days_SCE2Route1_t0_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            Ice_Reshaped_Time_days_SCE2Route1_t0_iter(i,:) = Ice_Reshaped_Time_days_SCE2Route1_t0_iter_iter_iter;
        end
        
        Logic = Ice_Reshaped_Time_days_SCE2Route1_t0_iter > 0; Logic = Logic';
        Time = reshape(Ice_Time_hrs_SCE2Route1_t0,length(Ice_Global_Array_Unit_length_SCE2Route_1_t0(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(Ice_Reshaped_Time_hrs_SCE2Route1_t0_iter(:,1))./length(Array_Unit_length_Route_1(:,1)).*length(Array_Unit_length_Route_1(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_1(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_1(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_1(:,1)),1);
        end
        Ice_Time_hrs_SCE2Route1_t0 = Time.*Global_Logic; Ice_Time_hrs_SCE2Route1_t0 = reshape(Ice_Time_hrs_SCE2Route1_t0,length(Ice_Global_Array_Unit_length_SCE2Route_1_t0(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    Ice_Reshaped_Time_days_SCE2Route1_tm_iter = [];
    for i = 1:1:length(Ice_Reshaped_Time_hrs_SCE2Route1_tm_iter(:,1))./length(Array_Unit_length_Route_1(:,1))
        Part_Time_days_SCE2Route1_tm = Ice_Reshaped_Time_hrs_SCE2Route1_tm_iter((i-1)*length(Array_Unit_length_Route_1(:,1))+1:i*length(Array_Unit_length_Route_1(:,1)),:);
        Ice_Reshaped_Time_days_SCE2Route1_tm_iter_iter = sum(Part_Time_days_SCE2Route1_tm);
        Ice_Reshaped_Time_days_SCE2Route1_tm_iter = [Ice_Reshaped_Time_days_SCE2Route1_tm_iter; Ice_Reshaped_Time_days_SCE2Route1_tm_iter_iter];
    end
    Ice_Reshaped_Time_days_SCE2Route1_tm_iter = Ice_Reshaped_Time_days_SCE2Route1_tm_iter'; Ice_Reshaped_Time_days_SCE2Route1_tm_iter = Ice_Reshaped_Time_days_SCE2Route1_tm_iter./24;
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route1_tm_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            Ice_Reshaped_Time_days_SCE2Route1_tm_iter_iter_iter = Ice_Reshaped_Time_days_SCE2Route1_tm_iter(i,:);
            Ice_Reshaped_Time_days_SCE2Route1_tm_iter_iter_iter(Ice_Reshaped_Time_days_SCE2Route1_tm_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            Ice_Reshaped_Time_days_SCE2Route1_tm_iter(i,:) = Ice_Reshaped_Time_days_SCE2Route1_tm_iter_iter_iter;
        end
        
        Logic = Ice_Reshaped_Time_days_SCE2Route1_tm_iter > 0; Logic = Logic';
        Time = reshape(Ice_Time_hrs_SCE2Route1_tm,length(Ice_Global_Array_Unit_length_SCE2Route_1_tm(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(Ice_Reshaped_Time_hrs_SCE2Route1_tm_iter(:,1))./length(Array_Unit_length_Route_1(:,1)).*length(Array_Unit_length_Route_1(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_1(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_1(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_1(:,1)),1);
        end
        Ice_Time_hrs_SCE2Route1_tm = Time.*Global_Logic; Ice_Time_hrs_SCE2Route1_tm = reshape(Ice_Time_hrs_SCE2Route1_tm,length(Ice_Global_Array_Unit_length_SCE2Route_1_tm(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    Ice_Reshaped_Time_days_SCE2Route1_tf_iter = [];
    for i = 1:1:length(Ice_Reshaped_Time_hrs_SCE2Route1_tf_iter(:,1))./length(Array_Unit_length_Route_1(:,1))
        Part_Time_days_SCE2Route1_tf = Ice_Reshaped_Time_hrs_SCE2Route1_tf_iter((i-1)*length(Array_Unit_length_Route_1(:,1))+1:i*length(Array_Unit_length_Route_1(:,1)),:);
        Ice_Reshaped_Time_days_SCE2Route1_tf_iter_iter = sum(Part_Time_days_SCE2Route1_tf);
        Ice_Reshaped_Time_days_SCE2Route1_tf_iter = [Ice_Reshaped_Time_days_SCE2Route1_tf_iter; Ice_Reshaped_Time_days_SCE2Route1_tf_iter_iter];
    end
    Ice_Reshaped_Time_days_SCE2Route1_tf_iter = Ice_Reshaped_Time_days_SCE2Route1_tf_iter'; Ice_Reshaped_Time_days_SCE2Route1_tf_iter = Ice_Reshaped_Time_days_SCE2Route1_tf_iter./24;
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route1_tf_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            Ice_Reshaped_Time_days_SCE2Route1_tf_iter_iter_iter = Ice_Reshaped_Time_days_SCE2Route1_tf_iter(i,:);
            Ice_Reshaped_Time_days_SCE2Route1_tf_iter_iter_iter(Ice_Reshaped_Time_days_SCE2Route1_tf_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            Ice_Reshaped_Time_days_SCE2Route1_tf_iter(i,:) = Ice_Reshaped_Time_days_SCE2Route1_tf_iter_iter_iter;
        end
        
        Ice_Reshaped_Time_days_SCE2Route1_tf_iter(Ice_Reshaped_Time_days_SCE2Route1_tf_iter > 31) = 0;
        
        Logic = Ice_Reshaped_Time_days_SCE2Route1_tf_iter > 0; Logic = Logic';
        Time = reshape(Ice_Time_hrs_SCE2Route1_tf,length(Ice_Global_Array_Unit_length_SCE2Route_1_tf(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(Ice_Reshaped_Time_hrs_SCE2Route1_tf_iter(:,1))./length(Array_Unit_length_Route_1(:,1)).*length(Array_Unit_length_Route_1(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_1(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_1(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_1(:,1)),1);
        end
        Ice_Time_hrs_SCE2Route1_tf = Time.*Global_Logic; Ice_Time_hrs_SCE2Route1_tf = reshape(Ice_Time_hrs_SCE2Route1_tf,length(Ice_Global_Array_Unit_length_SCE2Route_1_tf(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    Ice_Energy_demand_SCE2Route1_t0_iter =  Ice_Total_Power_demand_SCE2Route1_t0.*Ice_Time_hrs_SCE2Route1_t0; %kWh
    Ice_Energy_demand_SCE2Route1_tm_iter =  Ice_Total_Power_demand_SCE2Route1_tm.*Ice_Time_hrs_SCE2Route1_tm;
    Ice_Energy_demand_SCE2Route1_tf_iter =  Ice_Total_Power_demand_SCE2Route1_tf.*Ice_Time_hrs_SCE2Route1_tf;
    
    %Fuel consumed
    Ice_Fuel_consumed_SCE2Route1_t0_iter = Ice_Energy_demand_SCE2Route1_t0_iter.*Ice_Operating_SFC_SCE2Route1_t0*10^-6; %Tonnes
    Ice_Fuel_consumed_SCE2Route1_tm_iter = Ice_Energy_demand_SCE2Route1_tm_iter.*Ice_Operating_SFC_SCE2Route1_tm*10^-6;
    Ice_Fuel_consumed_SCE2Route1_tf_iter = Ice_Energy_demand_SCE2Route1_tf_iter.*Ice_Operating_SFC_SCE2Route1_tf*10^-6;
    
    %Number of days requiring an icebreaker - I calculate it for each
    %individual ship design
    %t_0
    %%%%%%%%%%%%%%%
    Ice_Length_OP_Speed_SCE2Route1_t0 = length(Ice_Operating_speed_SCE2Route1_t0);
    Ice_Partitioned_length_OP_Speed_SCE2Route1_t0 = Ice_Length_OP_Speed_SCE2Route1_t0./length(v_iter);
    Ice_Reshaped_Operating_speed_SCE2Route1_t0 = reshape(Ice_Operating_speed_SCE2Route1_t0,[Ice_Partitioned_length_OP_Speed_SCE2Route1_t0,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Ice_Length_Time_hrs_SCE2Route1_t0 = length(Ice_Time_hrs_SCE2Route1_t0);
    Ice_Partitioned_length_Time_hrs_SCE2Route1_t0 = Ice_Length_Time_hrs_SCE2Route1_t0./length(v_iter);
    Ice_Reshaped_Time_hrs_SCE2Route1_t0_iter = reshape(Ice_Time_hrs_SCE2Route1_t0,[Ice_Partitioned_length_Time_hrs_SCE2Route1_t0,length(v_iter)]);
    
    Ice_Logic_Operating_speed_SCE2Route1_t0 = Ice_Reshaped_Operating_speed_SCE2Route1_t0;
    Ice_Logic_Operating_speed_SCE2Route1_t0(Ice_Logic_Operating_speed_SCE2Route1_t0 ==3) = 1;
    Ice_Logic_Operating_speed_SCE2Route1_t0(Ice_Logic_Operating_speed_SCE2Route1_t0 ~=1) = 0;
    
    Ice_IB_time_SCE2Route1_t0_iter = Ice_Logic_Operating_speed_SCE2Route1_t0.*Ice_Reshaped_Time_hrs_SCE2Route1_t0_iter;
    Ice_IB_time_SCE2Route1_t0_iter = sum(Ice_IB_time_SCE2Route1_t0_iter); Ice_IB_time_SCE2Route1_t0_iter = round(Ice_IB_time_SCE2Route1_t0_iter./24); Ice_IB_time_SCE2Route1_t0_iter =Ice_IB_time_SCE2Route1_t0_iter';
    
    Array_Unit_length_Route_1_t0 = repmat(Array_Unit_length_Route_1,sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_t0_iter),1);
    
    %t_m
    %%%%%%%%%%%%%%
    Ice_Length_OP_Speed_SCE2Route1_tm = length(Ice_Operating_speed_SCE2Route1_tm);
    Ice_Partitioned_length_OP_Speed_SCE2Route1_tm = Ice_Length_OP_Speed_SCE2Route1_tm./length(v_iter);
    Ice_Reshaped_Operating_speed_SCE2Route1_tm = reshape(Ice_Operating_speed_SCE2Route1_tm,[Ice_Partitioned_length_OP_Speed_SCE2Route1_tm,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Ice_Length_Time_hrs_SCE2Route1_tm = length(Ice_Time_hrs_SCE2Route1_tm);
    Ice_Partitioned_length_Time_hrs_SCE2Route1_tm = Ice_Length_Time_hrs_SCE2Route1_tm./length(v_iter);
    Ice_Reshaped_Time_hrs_SCE2Route1_tm_iter = reshape(Ice_Time_hrs_SCE2Route1_tm,[Ice_Partitioned_length_Time_hrs_SCE2Route1_tm,length(v_iter)]);
    
    Ice_Logic_Operating_speed_SCE2Route1_tm = Ice_Reshaped_Operating_speed_SCE2Route1_tm;
    Ice_Logic_Operating_speed_SCE2Route1_tm(Ice_Logic_Operating_speed_SCE2Route1_tm ==3) = 1;
    Ice_Logic_Operating_speed_SCE2Route1_tm(Ice_Logic_Operating_speed_SCE2Route1_tm ~=1) = 0;
    
    Ice_IB_time_SCE2Route1_tm_iter = Ice_Logic_Operating_speed_SCE2Route1_tm.*Ice_Reshaped_Time_hrs_SCE2Route1_tm_iter;
    Ice_IB_time_SCE2Route1_tm_iter = sum(Ice_IB_time_SCE2Route1_tm_iter); Ice_IB_time_SCE2Route1_tm_iter = round(Ice_IB_time_SCE2Route1_tm_iter./24); Ice_IB_time_SCE2Route1_tm_iter =Ice_IB_time_SCE2Route1_tm_iter';
    
    Array_Unit_length_Route_1_tm = repmat(Array_Unit_length_Route_1,sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tm_iter),1);
    
    %t_f
    %%%%%%%%%%%
    Ice_Length_OP_Speed_SCE2Route1_tf = length(Ice_Operating_speed_SCE2Route1_tf);
    Ice_Partitioned_length_OP_Speed_SCE2Route1_tf = Ice_Length_OP_Speed_SCE2Route1_tf./length(v_iter);
    Ice_Reshaped_Operating_speed_SCE2Route1_tf = reshape(Ice_Operating_speed_SCE2Route1_tf,[Ice_Partitioned_length_OP_Speed_SCE2Route1_tf,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Ice_Length_Time_hrs_SCE2Route1_tf = length(Ice_Time_hrs_SCE2Route1_tf);
    Ice_Partitioned_length_Time_hrs_SCE2Route1_tf = Ice_Length_Time_hrs_SCE2Route1_tf./length(v_iter);
    Ice_Reshaped_Time_hrs_SCE2Route1_tf_iter = reshape(Ice_Time_hrs_SCE2Route1_tf,[Ice_Partitioned_length_Time_hrs_SCE2Route1_tf,length(v_iter)]);
    
    Ice_Logic_Operating_speed_SCE2Route1_tf = Ice_Reshaped_Operating_speed_SCE2Route1_tf;
    Ice_Logic_Operating_speed_SCE2Route1_tf(Ice_Logic_Operating_speed_SCE2Route1_tf ==3) = 1;
    Ice_Logic_Operating_speed_SCE2Route1_tf(Ice_Logic_Operating_speed_SCE2Route1_tf ~=1) = 0;
    
    Ice_IB_time_SCE2Route1_tf_iter = Ice_Logic_Operating_speed_SCE2Route1_tf.*Ice_Reshaped_Time_hrs_SCE2Route1_tf_iter;
    Ice_IB_time_SCE2Route1_tf_iter = sum(Ice_IB_time_SCE2Route1_tf_iter); Ice_IB_time_SCE2Route1_tf_iter = round(Ice_IB_time_SCE2Route1_tf_iter./24); Ice_IB_time_SCE2Route1_tf_iter =Ice_IB_time_SCE2Route1_tf_iter';
    
    Ice_Array_Unit_length_Route_1_tf = repmat(Array_Unit_length_Route_1,sum(Logic_mat_Route_1_IceStrength_feasibility_Scenario2_tf_iter),1);
    
    %Table length
    Ice_Table_length_SCE2Route1_t0 = length(Agg_Op_speed1_SCE2Route1_iter(:));
    Ice_Table_length_SCE2Route1_tm = length(Agg_Op_speed2_SCE2Route1_iter(:));
    Ice_Table_length_SCE2Route1_tf = length(Agg_Op_speed3_SCE2Route1_iter(:));
    
    %Sum of the fuel and energy consumed
    Ice_Partitioned_length_SCE2Route1_t0 =  Ice_Table_length_SCE2Route1_t0./Ship_design_speed_length;
    Ice_Partitioned_length_SCE2Route1_tm =  Ice_Table_length_SCE2Route1_tm./Ship_design_speed_length;
    Ice_Partitioned_length_SCE2Route1_tf =  Ice_Table_length_SCE2Route1_tf./Ship_design_speed_length;
    
    %Annual fuel consumed
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter = reshape(Ice_Fuel_consumed_SCE2Route1_t0_iter(:), Ice_Partitioned_length_SCE2Route1_t0, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter = sum(Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter); Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter = Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter';
    
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter = reshape(Ice_Fuel_consumed_SCE2Route1_tm_iter(:), Ice_Partitioned_length_SCE2Route1_tm, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter = sum(Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter); Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter = Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter';
    
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter = reshape(Ice_Fuel_consumed_SCE2Route1_tf_iter(:), Ice_Partitioned_length_SCE2Route1_tf, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter = sum(Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter); Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter = Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter';
    
    Ice_Energy_consumed_SCE2Route1_Arctic_t_t0_iter = reshape(Ice_Energy_demand_SCE2Route1_t0_iter(:), Ice_Partitioned_length_SCE2Route1_t0, Ship_design_speed_length);
    Ice_Energy_consumed_SCE2Route1_Arctic_t_t0_iter = sum(Ice_Energy_consumed_SCE2Route1_Arctic_t_t0_iter); Ice_Energy_consumed_SCE2Route1_Arctic_t_t0_iter = Ice_Energy_consumed_SCE2Route1_Arctic_t_t0_iter';
    
    Ice_Energy_consumed_SCE2Route1_Arctic_t_tm_iter = reshape(Ice_Energy_demand_SCE2Route1_tm_iter(:), Ice_Partitioned_length_SCE2Route1_tm, Ship_design_speed_length);
    Ice_Energy_consumed_SCE2Route1_Arctic_t_tm_iter = sum(Ice_Energy_consumed_SCE2Route1_Arctic_t_tm_iter); Ice_Energy_consumed_SCE2Route1_Arctic_t_tm_iter = Ice_Energy_consumed_SCE2Route1_Arctic_t_tm_iter';
    
    Ice_Energy_consumed_SCE2Route1_Arctic_t_tf_iter = reshape(Ice_Energy_demand_SCE2Route1_tf_iter(:), Ice_Partitioned_length_SCE2Route1_tf, Ship_design_speed_length);
    Ice_Energy_consumed_SCE2Route1_Arctic_t_tf_iter = sum(Ice_Energy_consumed_SCE2Route1_Arctic_t_tf_iter); Ice_Energy_consumed_SCE2Route1_Arctic_t_tf_iter = Ice_Energy_consumed_SCE2Route1_Arctic_t_tf_iter';
    %Have to sum each of the rows to make all dimensions align
    
    % Reshaped_Time_days_SCE2Route1_t0_iter = sum(Reshaped_Time_days_SCE2Route1_t0_iter,2);
    sx = size(Ice_Reshaped_Time_days_SCE2Route1_t0);
    sy = size(Ice_Reshaped_Time_days_SCE2Route1_t0_iter');
    a = max(sx(1),sy(1));
    Ice_Reshaped_Time_days_SCE2Route1_t0 = [[Ice_Reshaped_Time_days_SCE2Route1_t0;zeros(abs([a 0]-sx))],[Ice_Reshaped_Time_days_SCE2Route1_t0_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route1_t0_iter) == 1
        Number_of_days_pm_SCE2Route1_t0_iter = 0;
        SCE2_Ice_Route1_n_t0_iter = 0;
    else
        Number_of_days_pm_SCE2Route1_t0_iter = 30.*ones(length(Ice_Reshaped_Time_days_SCE2Route1_t0_iter(:,1)),length(Ice_Reshaped_Time_days_SCE2Route1_t0_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_Ice_Route1_n_t0_iter = Number_of_days_pm_SCE2Route1_t0_iter./Ice_Reshaped_Time_days_SCE2Route1_t0_iter;
    end
    
    sx = size(SCE2_Ice_Route1_n_t0);
    sy = size(SCE2_Ice_Route1_n_t0_iter');
    a = max(sx(1),sy(1));
    SCE2_Ice_Route1_n_t0 = [[SCE2_Ice_Route1_n_t0;zeros(abs([a 0]-sx))],[SCE2_Ice_Route1_n_t0_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route1_tm_iter = sum(Reshaped_Time_days_SCE2Route1_tm_iter,2);
    sx = size(Ice_Reshaped_Time_days_SCE2Route1_tm);
    sy = size(Ice_Reshaped_Time_days_SCE2Route1_tm_iter');
    a = max(sx(1),sy(1));
    Ice_Reshaped_Time_days_SCE2Route1_tm = [[Ice_Reshaped_Time_days_SCE2Route1_tm;zeros(abs([a 0]-sx))],[Ice_Reshaped_Time_days_SCE2Route1_tm_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route1_tm_iter) == 1
        Number_of_days_pm_SCE2Route1_tm_iter = 0;
        SCE2_Ice_Route1_n_tm_iter = 0;
    else
        Number_of_days_pm_SCE2Route1_tm_iter = 30.*ones(length(Ice_Reshaped_Time_days_SCE2Route1_tm_iter(:,1)),length(Ice_Reshaped_Time_days_SCE2Route1_tm_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_Ice_Route1_n_tm_iter = Number_of_days_pm_SCE2Route1_tm_iter./Ice_Reshaped_Time_days_SCE2Route1_tm_iter;
    end
    
    sx = size(SCE2_Ice_Route1_n_tm);
    sy = size(SCE2_Ice_Route1_n_tm_iter');
    a = max(sx(1),sy(1));
    SCE2_Ice_Route1_n_tm = [[SCE2_Ice_Route1_n_tm;zeros(abs([a 0]-sx))],[SCE2_Ice_Route1_n_tm_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route1_tf_iter = sum(Reshaped_Time_days_SCE2Route1_tf_iter,2);
    sx = size(Ice_Reshaped_Time_days_SCE2Route1_tf);
    sy = size(Ice_Reshaped_Time_days_SCE2Route1_tf_iter');
    a = max(sx(1),sy(1));
    Ice_Reshaped_Time_days_SCE2Route1_tf = [[Ice_Reshaped_Time_days_SCE2Route1_tf;zeros(abs([a 0]-sx))],[Ice_Reshaped_Time_days_SCE2Route1_tf_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE2Route1_tf_iter = 30.*ones(length(Ice_Reshaped_Time_days_SCE2Route1_tf_iter(:,1)),length(Ice_Reshaped_Time_days_SCE2Route1_tf_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE2_Ice_Route1_n_tf_iter = Number_of_days_pm_SCE2Route1_tf_iter./Ice_Reshaped_Time_days_SCE2Route1_tf_iter;
    
    sx = size(SCE2_Ice_Route1_n_tf);
    sy = size(SCE2_Ice_Route1_n_tf_iter');
    a = max(sx(1),sy(1));
    SCE2_Ice_Route1_n_tf = [[SCE2_Ice_Route1_n_tf;zeros(abs([a 0]-sx))],[SCE2_Ice_Route1_n_tf_iter';zeros(abs([a,0]-sy))]];
    
    %OW
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    NonIce_Global_Array_Unit_length_SCE2Route_1_t0 = repmat(Array_Unit_length_Route_1,length(v_iter).*sum(Logic_mat_Route_1_OW_feasibility_Scenario2_t0_iter),1); %12 months in a year
    NonIce_Global_Array_Unit_length_SCE2Route_1_tm = repmat(Array_Unit_length_Route_1,length(v_iter).*sum(Logic_mat_Route_1_OW_feasibility_Scenario2_tm_iter),1);
    NonIce_Global_Array_Unit_length_SCE2Route_1_tf = repmat(Array_Unit_length_Route_1,length(v_iter).*sum(Logic_mat_Route_1_OW_feasibility_Scenario2_tf_iter),1);
    
    NonIce_Time_hrs_SCE2Route1_t0 = NonIce_Global_Array_Unit_length_SCE2Route_1_t0./NonIce_Operating_speed_SCE2Route1_t0;
    NonIce_Time_hrs_SCE2Route1_tm = NonIce_Global_Array_Unit_length_SCE2Route_1_tm./NonIce_Operating_speed_SCE2Route1_tm;
    NonIce_Time_hrs_SCE2Route1_tf = NonIce_Global_Array_Unit_length_SCE2Route_1_tf./NonIce_Operating_speed_SCE2Route1_tf;
    
    %Reshaping the time matrices to work out the number of days spent on the
    %NSR which can be used later in the commercial profile function
    NonIce_Reshaped_Time_hrs_SCE2Route1_t0_iter = reshape(NonIce_Time_hrs_SCE2Route1_t0,length(Array_Unit_length_Route_1(:,1)).*length(NonIce_Global_Array_Unit_length_SCE2Route_1_t0(:,1))./(length(v_iter).*length(Array_Unit_length_Route_1(:,1))),length(v_iter));
    NonIce_Reshaped_Time_hrs_SCE2Route1_tm_iter = reshape(NonIce_Time_hrs_SCE2Route1_tm,length(Array_Unit_length_Route_1(:,1)).*length(NonIce_Global_Array_Unit_length_SCE2Route_1_tm(:,1))./(length(v_iter).*length(Array_Unit_length_Route_1(:,1))),length(v_iter));
    NonIce_Reshaped_Time_hrs_SCE2Route1_tf_iter = reshape(NonIce_Time_hrs_SCE2Route1_tf,length(Array_Unit_length_Route_1(:,1)).*length(NonIce_Global_Array_Unit_length_SCE2Route_1_tf(:,1))./(length(v_iter).*length(Array_Unit_length_Route_1(:,1))),length(v_iter));
    
    NonIce_Reshaped_Time_days_SCE2Route1_t0_iter = [];
    for i = 1:1:length(NonIce_Reshaped_Time_hrs_SCE2Route1_t0_iter(:,1))./length(Array_Unit_length_Route_1(:,1))
        Part_Time_days_SCE2Route1_t0 = NonIce_Reshaped_Time_hrs_SCE2Route1_t0_iter((i-1)*length(Array_Unit_length_Route_1(:,1))+1:i*length(Array_Unit_length_Route_1(:,1)),:);
        NonIce_Reshaped_Time_days_SCE2Route1_t0_iter_iter = sum(Part_Time_days_SCE2Route1_t0);
        NonIce_Reshaped_Time_days_SCE2Route1_t0_iter = [NonIce_Reshaped_Time_days_SCE2Route1_t0_iter; NonIce_Reshaped_Time_days_SCE2Route1_t0_iter_iter];
    end
    NonIce_Reshaped_Time_days_SCE2Route1_t0_iter = NonIce_Reshaped_Time_days_SCE2Route1_t0_iter'; NonIce_Reshaped_Time_days_SCE2Route1_t0_iter = NonIce_Reshaped_Time_days_SCE2Route1_t0_iter./24;
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route1_t0_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            NonIce_Reshaped_Time_days_SCE2Route1_t0_iter_iter_iter = NonIce_Reshaped_Time_days_SCE2Route1_t0_iter(i,:);
            NonIce_Reshaped_Time_days_SCE2Route1_t0_iter_iter_iter(NonIce_Reshaped_Time_days_SCE2Route1_t0_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            NonIce_Reshaped_Time_days_SCE2Route1_t0_iter(i,:) = NonIce_Reshaped_Time_days_SCE2Route1_t0_iter_iter_iter;
        end
        
        Logic = NonIce_Reshaped_Time_days_SCE2Route1_t0_iter > 0; Logic = Logic';
        Time = reshape(NonIce_Time_hrs_SCE2Route1_t0,length(NonIce_Global_Array_Unit_length_SCE2Route_1_t0(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(NonIce_Reshaped_Time_hrs_SCE2Route1_t0_iter(:,1))./length(Array_Unit_length_Route_1(:,1)).*length(Array_Unit_length_Route_1(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_1(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_1(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_1(:,1)),1);
        end
        NonIce_Time_hrs_SCE2Route1_t0 = Time.*Global_Logic; NonIce_Time_hrs_SCE2Route1_t0 = reshape(NonIce_Time_hrs_SCE2Route1_t0,length(NonIce_Global_Array_Unit_length_SCE2Route_1_t0(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    NonIce_Reshaped_Time_days_SCE2Route1_tm_iter = [];
    for i = 1:1:length(NonIce_Reshaped_Time_hrs_SCE2Route1_tm_iter(:,1))./length(Array_Unit_length_Route_1(:,1))
        Part_Time_days_SCE2Route1_tm = NonIce_Reshaped_Time_hrs_SCE2Route1_tm_iter((i-1)*length(Array_Unit_length_Route_1(:,1))+1:i*length(Array_Unit_length_Route_1(:,1)),:);
        NonIce_Reshaped_Time_days_SCE2Route1_tm_iter_iter = sum(Part_Time_days_SCE2Route1_tm);
        NonIce_Reshaped_Time_days_SCE2Route1_tm_iter = [NonIce_Reshaped_Time_days_SCE2Route1_tm_iter; NonIce_Reshaped_Time_days_SCE2Route1_tm_iter_iter];
    end
    NonIce_Reshaped_Time_days_SCE2Route1_tm_iter = NonIce_Reshaped_Time_days_SCE2Route1_tm_iter'; NonIce_Reshaped_Time_days_SCE2Route1_tm_iter = NonIce_Reshaped_Time_days_SCE2Route1_tm_iter./24;
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route1_tm_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            NonIce_Reshaped_Time_days_SCE2Route1_tm_iter_iter_iter = NonIce_Reshaped_Time_days_SCE2Route1_tm_iter(i,:);
            NonIce_Reshaped_Time_days_SCE2Route1_tm_iter_iter_iter(NonIce_Reshaped_Time_days_SCE2Route1_tm_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            NonIce_Reshaped_Time_days_SCE2Route1_tm_iter(i,:) = NonIce_Reshaped_Time_days_SCE2Route1_tm_iter_iter_iter;
        end
        
        Logic = NonIce_Reshaped_Time_days_SCE2Route1_tm_iter > 0; Logic = Logic';
        Time = reshape(NonIce_Time_hrs_SCE2Route1_tm,length(NonIce_Global_Array_Unit_length_SCE2Route_1_tm(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(NonIce_Reshaped_Time_hrs_SCE2Route1_tm_iter(:,1))./length(Array_Unit_length_Route_1(:,1)).*length(Array_Unit_length_Route_1(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_1(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_1(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_1(:,1)),1);
        end
        NonIce_Time_hrs_SCE2Route1_tm = Time.*Global_Logic; NonIce_Time_hrs_SCE2Route1_tm = reshape(NonIce_Time_hrs_SCE2Route1_tm,length(NonIce_Global_Array_Unit_length_SCE2Route_1_tm(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    NonIce_Reshaped_Time_days_SCE2Route1_tf_iter = [];
    for i = 1:1:length(NonIce_Reshaped_Time_hrs_SCE2Route1_tf_iter(:,1))./length(Array_Unit_length_Route_1(:,1))
        Part_Time_days_SCE2Route1_tf = NonIce_Reshaped_Time_hrs_SCE2Route1_tf_iter((i-1)*length(Array_Unit_length_Route_1(:,1))+1:i*length(Array_Unit_length_Route_1(:,1)),:);
        NonIce_Reshaped_Time_days_SCE2Route1_tf_iter_iter = sum(Part_Time_days_SCE2Route1_tf);
        NonIce_Reshaped_Time_days_SCE2Route1_tf_iter = [NonIce_Reshaped_Time_days_SCE2Route1_tf_iter; NonIce_Reshaped_Time_days_SCE2Route1_tf_iter_iter];
    end
    NonIce_Reshaped_Time_days_SCE2Route1_tf_iter = NonIce_Reshaped_Time_days_SCE2Route1_tf_iter'; NonIce_Reshaped_Time_days_SCE2Route1_tf_iter = NonIce_Reshaped_Time_days_SCE2Route1_tf_iter./24;
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route1_tf_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            NonIce_Reshaped_Time_days_SCE2Route1_tf_iter_iter_iter = NonIce_Reshaped_Time_days_SCE2Route1_tf_iter(i,:);
            NonIce_Reshaped_Time_days_SCE2Route1_tf_iter_iter_iter(NonIce_Reshaped_Time_days_SCE2Route1_tf_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            NonIce_Reshaped_Time_days_SCE2Route1_tf_iter(i,:) = NonIce_Reshaped_Time_days_SCE2Route1_tf_iter_iter_iter;
        end
        
        NonIce_Reshaped_Time_days_SCE2Route1_tf_iter(NonIce_Reshaped_Time_days_SCE2Route1_tf_iter > 31) = 0;
        
        Logic = NonIce_Reshaped_Time_days_SCE2Route1_tf_iter > 0; Logic = Logic';
        Time = reshape(NonIce_Time_hrs_SCE2Route1_tf,length(NonIce_Global_Array_Unit_length_SCE2Route_1_tf(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(NonIce_Reshaped_Time_hrs_SCE2Route1_tf_iter(:,1))./length(Array_Unit_length_Route_1(:,1)).*length(Array_Unit_length_Route_1(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_1(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_1(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_1(:,1)),1);
        end
        NonIce_Time_hrs_SCE2Route1_tf = Time.*Global_Logic; NonIce_Time_hrs_SCE2Route1_tf = reshape(NonIce_Time_hrs_SCE2Route1_tf,length(NonIce_Global_Array_Unit_length_SCE2Route_1_tf(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    NonIce_Energy_demand_SCE2Route1_t0_iter =  NonIce_Total_Power_demand_SCE2Route1_t0.*NonIce_Time_hrs_SCE2Route1_t0; %kWh
    NonIce_Energy_demand_SCE2Route1_tm_iter =  NonIce_Total_Power_demand_SCE2Route1_tm.*NonIce_Time_hrs_SCE2Route1_tm;
    NonIce_Energy_demand_SCE2Route1_tf_iter =  NonIce_Total_Power_demand_SCE2Route1_tf.*NonIce_Time_hrs_SCE2Route1_tf;
    
    %Fuel consumed
    NonIce_Fuel_consumed_SCE2Route1_t0_iter = NonIce_Energy_demand_SCE2Route1_t0_iter.*NonIce_Operating_SFC_SCE2Route1_t0*10^-6; %Tonnes
    NonIce_Fuel_consumed_SCE2Route1_tm_iter = NonIce_Energy_demand_SCE2Route1_tm_iter.*NonIce_Operating_SFC_SCE2Route1_tm*10^-6;
    NonIce_Fuel_consumed_SCE2Route1_tf_iter = NonIce_Energy_demand_SCE2Route1_tf_iter.*NonIce_Operating_SFC_SCE2Route1_tf*10^-6;
    
    %Number of days requiring an icebreaker - I calculate it for each
    %individual ship design
    %t_0
    %%%%%%%%%%%%%%%
    NonIce_Length_OP_Speed_SCE2Route1_t0 = length(NonIce_Operating_speed_SCE2Route1_t0);
    NonIce_Partitioned_length_OP_Speed_SCE2Route1_t0 = NonIce_Length_OP_Speed_SCE2Route1_t0./length(v_iter);
    NonIce_Reshaped_Operating_speed_SCE2Route1_t0 = reshape(NonIce_Operating_speed_SCE2Route1_t0,[NonIce_Partitioned_length_OP_Speed_SCE2Route1_t0,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    NonIce_Length_Time_hrs_SCE2Route1_t0 = length(NonIce_Time_hrs_SCE2Route1_t0);
    NonIce_Partitioned_length_Time_hrs_SCE2Route1_t0 = NonIce_Length_Time_hrs_SCE2Route1_t0./length(v_iter);
    NonIce_Reshaped_Time_hrs_SCE2Route1_t0_iter = reshape(NonIce_Time_hrs_SCE2Route1_t0,[NonIce_Partitioned_length_Time_hrs_SCE2Route1_t0,length(v_iter)]);
    
    NonIce_Logic_Operating_speed_SCE2Route1_t0 = NonIce_Reshaped_Operating_speed_SCE2Route1_t0;
    NonIce_Logic_Operating_speed_SCE2Route1_t0(NonIce_Logic_Operating_speed_SCE2Route1_t0 ==3) = 1;
    NonIce_Logic_Operating_speed_SCE2Route1_t0(NonIce_Logic_Operating_speed_SCE2Route1_t0 ~=1) = 0;
    
    NonIce_IB_time_SCE2Route1_t0_iter = NonIce_Logic_Operating_speed_SCE2Route1_t0.*NonIce_Reshaped_Time_hrs_SCE2Route1_t0_iter;
    NonIce_IB_time_SCE2Route1_t0_iter = sum(NonIce_IB_time_SCE2Route1_t0_iter); NonIce_IB_time_SCE2Route1_t0_iter = round(NonIce_IB_time_SCE2Route1_t0_iter./24); NonIce_IB_time_SCE2Route1_t0_iter =NonIce_IB_time_SCE2Route1_t0_iter';
    
    Array_Unit_length_Route_1_t0 = repmat(Array_Unit_length_Route_1,sum(Logic_mat_Route_1_OW_feasibility_Scenario2_t0_iter),1);
    
    %t_m
    %%%%%%%%%%%%%%
    NonIce_Length_OP_Speed_SCE2Route1_tm = length(NonIce_Operating_speed_SCE2Route1_tm);
    NonIce_Partitioned_length_OP_Speed_SCE2Route1_tm = NonIce_Length_OP_Speed_SCE2Route1_tm./length(v_iter);
    NonIce_Reshaped_Operating_speed_SCE2Route1_tm = reshape(NonIce_Operating_speed_SCE2Route1_tm,[NonIce_Partitioned_length_OP_Speed_SCE2Route1_tm,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    NonIce_Length_Time_hrs_SCE2Route1_tm = length(NonIce_Time_hrs_SCE2Route1_tm);
    NonIce_Partitioned_length_Time_hrs_SCE2Route1_tm = NonIce_Length_Time_hrs_SCE2Route1_tm./length(v_iter);
    NonIce_Reshaped_Time_hrs_SCE2Route1_tm_iter = reshape(NonIce_Time_hrs_SCE2Route1_tm,[NonIce_Partitioned_length_Time_hrs_SCE2Route1_tm,length(v_iter)]);
    
    NonIce_Logic_Operating_speed_SCE2Route1_tm = NonIce_Reshaped_Operating_speed_SCE2Route1_tm;
    NonIce_Logic_Operating_speed_SCE2Route1_tm(NonIce_Logic_Operating_speed_SCE2Route1_tm ==3) = 1;
    NonIce_Logic_Operating_speed_SCE2Route1_tm(NonIce_Logic_Operating_speed_SCE2Route1_tm ~=1) = 0;
    
    NonIce_IB_time_SCE2Route1_tm_iter = NonIce_Logic_Operating_speed_SCE2Route1_tm.*NonIce_Reshaped_Time_hrs_SCE2Route1_tm_iter;
    NonIce_IB_time_SCE2Route1_tm_iter = sum(NonIce_IB_time_SCE2Route1_tm_iter); NonIce_IB_time_SCE2Route1_tm_iter = round(NonIce_IB_time_SCE2Route1_tm_iter./24); NonIce_IB_time_SCE2Route1_tm_iter =NonIce_IB_time_SCE2Route1_tm_iter';
    
    Array_Unit_length_Route_1_tm = repmat(Array_Unit_length_Route_1,sum(Logic_mat_Route_1_OW_feasibility_Scenario2_tm_iter),1);
    
    %t_f
    %%%%%%%%%%%
    NonIce_Length_OP_Speed_SCE2Route1_tf = length(NonIce_Operating_speed_SCE2Route1_tf);
    NonIce_Partitioned_length_OP_Speed_SCE2Route1_tf = NonIce_Length_OP_Speed_SCE2Route1_tf./length(v_iter);
    NonIce_Reshaped_Operating_speed_SCE2Route1_tf = reshape(NonIce_Operating_speed_SCE2Route1_tf,[NonIce_Partitioned_length_OP_Speed_SCE2Route1_tf,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    NonIce_Length_Time_hrs_SCE2Route1_tf = length(NonIce_Time_hrs_SCE2Route1_tf);
    NonIce_Partitioned_length_Time_hrs_SCE2Route1_tf = NonIce_Length_Time_hrs_SCE2Route1_tf./length(v_iter);
    NonIce_Reshaped_Time_hrs_SCE2Route1_tf_iter = reshape(NonIce_Time_hrs_SCE2Route1_tf,[NonIce_Partitioned_length_Time_hrs_SCE2Route1_tf,length(v_iter)]);
    
    NonIce_Logic_Operating_speed_SCE2Route1_tf = NonIce_Reshaped_Operating_speed_SCE2Route1_tf;
    NonIce_Logic_Operating_speed_SCE2Route1_tf(NonIce_Logic_Operating_speed_SCE2Route1_tf ==3) = 1;
    NonIce_Logic_Operating_speed_SCE2Route1_tf(NonIce_Logic_Operating_speed_SCE2Route1_tf ~=1) = 0;
    
    NonIce_IB_time_SCE2Route1_tf_iter = NonIce_Logic_Operating_speed_SCE2Route1_tf.*NonIce_Reshaped_Time_hrs_SCE2Route1_tf_iter;
    NonIce_IB_time_SCE2Route1_tf_iter = sum(NonIce_IB_time_SCE2Route1_tf_iter); NonIce_IB_time_SCE2Route1_tf_iter = round(NonIce_IB_time_SCE2Route1_tf_iter./24); NonIce_IB_time_SCE2Route1_tf_iter =NonIce_IB_time_SCE2Route1_tf_iter';
    
    NonIce_Array_Unit_length_Route_1_tf = repmat(Array_Unit_length_Route_1,sum(Logic_mat_Route_1_OW_feasibility_Scenario2_tf_iter),1);
    
    %Table length
    NonIce_Table_length_SCE2Route1_t0 = length(OW_Agg_Op_speed1_SCE2Route1_iter(:));
    NonIce_Table_length_SCE2Route1_tm = length(OW_Agg_Op_speed2_SCE2Route1_iter(:));
    NonIce_Table_length_SCE2Route1_tf = length(OW_Agg_Op_speed3_SCE2Route1_iter(:));
    
    %Sum of the fuel and energy consumed
    NonIce_Partitioned_length_SCE2Route1_t0 =  NonIce_Table_length_SCE2Route1_t0./Ship_design_speed_length;
    NonIce_Partitioned_length_SCE2Route1_tm =  NonIce_Table_length_SCE2Route1_tm./Ship_design_speed_length;
    NonIce_Partitioned_length_SCE2Route1_tf =  NonIce_Table_length_SCE2Route1_tf./Ship_design_speed_length;
    
    %Annual fuel consumed
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter = reshape(NonIce_Fuel_consumed_SCE2Route1_t0_iter(:), NonIce_Partitioned_length_SCE2Route1_t0, Ship_design_speed_length);
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter = sum(NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter); NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter = NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter';
    
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter = reshape(NonIce_Fuel_consumed_SCE2Route1_tm_iter(:), NonIce_Partitioned_length_SCE2Route1_tm, Ship_design_speed_length);
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter = sum(NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter); NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter = NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter';
    
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter = reshape(NonIce_Fuel_consumed_SCE2Route1_tf_iter(:), NonIce_Partitioned_length_SCE2Route1_tf, Ship_design_speed_length);
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter = sum(NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter); NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter = NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter';
    
    NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0_iter = reshape(NonIce_Energy_demand_SCE2Route1_t0_iter(:), NonIce_Partitioned_length_SCE2Route1_t0, Ship_design_speed_length);
    NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0_iter = sum(NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0_iter); NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0_iter = NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0_iter';
    
    NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm_iter = reshape(NonIce_Energy_demand_SCE2Route1_tm_iter(:), NonIce_Partitioned_length_SCE2Route1_tm, Ship_design_speed_length);
    NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm_iter = sum(NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm_iter); NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm_iter = NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm_iter';
    
    NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf_iter = reshape(NonIce_Energy_demand_SCE2Route1_tf_iter(:), NonIce_Partitioned_length_SCE2Route1_tf, Ship_design_speed_length);
    NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf_iter = sum(NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf_iter); NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf_iter = NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf_iter';
    %Have to sum each of the rows to make all dimensions align
    
    % Reshaped_Time_days_SCE2Route1_t0_iter = sum(Reshaped_Time_days_SCE2Route1_t0_iter,2);
    sx = size(NonIce_Reshaped_Time_days_SCE2Route1_t0);
    sy = size(NonIce_Reshaped_Time_days_SCE2Route1_t0_iter');
    a = max(sx(1),sy(1));
    NonIce_Reshaped_Time_days_SCE2Route1_t0 = [[NonIce_Reshaped_Time_days_SCE2Route1_t0;zeros(abs([a 0]-sx))],[NonIce_Reshaped_Time_days_SCE2Route1_t0_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route1_t0_iter) == 1
        Number_of_days_pm_SCE2Route1_t0_iter = 0;
        SCE2_NonIce_Route1_n_t0_iter = 0;
    else
        Number_of_days_pm_SCE2Route1_t0_iter = 30.*ones(length(NonIce_Reshaped_Time_days_SCE2Route1_t0_iter(:,1)),length(NonIce_Reshaped_Time_days_SCE2Route1_t0_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_NonIce_Route1_n_t0_iter = Number_of_days_pm_SCE2Route1_t0_iter./NonIce_Reshaped_Time_days_SCE2Route1_t0_iter;
    end
    
    sx = size(SCE2_NonIce_Route1_n_t0);
    sy = size(SCE2_NonIce_Route1_n_t0_iter');
    a = max(sx(1),sy(1));
    SCE2_NonIce_Route1_n_t0 = [[SCE2_NonIce_Route1_n_t0;zeros(abs([a 0]-sx))],[SCE2_NonIce_Route1_n_t0_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route1_tm_iter = sum(Reshaped_Time_days_SCE2Route1_tm_iter,2);
    sx = size(NonIce_Reshaped_Time_days_SCE2Route1_tm);
    sy = size(NonIce_Reshaped_Time_days_SCE2Route1_tm_iter');
    a = max(sx(1),sy(1));
    NonIce_Reshaped_Time_days_SCE2Route1_tm = [[NonIce_Reshaped_Time_days_SCE2Route1_tm;zeros(abs([a 0]-sx))],[NonIce_Reshaped_Time_days_SCE2Route1_tm_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route1_tm_iter) == 1
        Number_of_days_pm_SCE2Route1_tm_iter = 0;
        SCE2_NonIce_Route1_n_tm_iter = 0;
    else
        Number_of_days_pm_SCE2Route1_tm_iter = 30.*ones(length(NonIce_Reshaped_Time_days_SCE2Route1_tm_iter(:,1)),length(NonIce_Reshaped_Time_days_SCE2Route1_tm_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_NonIce_Route1_n_tm_iter = Number_of_days_pm_SCE2Route1_tm_iter./NonIce_Reshaped_Time_days_SCE2Route1_tm_iter;
    end
    
    sx = size(SCE2_NonIce_Route1_n_tm);
    sy = size(SCE2_NonIce_Route1_n_tm_iter');
    a = max(sx(1),sy(1));
    SCE2_NonIce_Route1_n_tm = [[SCE2_NonIce_Route1_n_tm;zeros(abs([a 0]-sx))],[SCE2_NonIce_Route1_n_tm_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route1_tf_iter = sum(Reshaped_Time_days_SCE2Route1_tf_iter,2);
    sx = size(NonIce_Reshaped_Time_days_SCE2Route1_tf);
    sy = size(NonIce_Reshaped_Time_days_SCE2Route1_tf_iter');
    a = max(sx(1),sy(1));
    NonIce_Reshaped_Time_days_SCE2Route1_tf = [[NonIce_Reshaped_Time_days_SCE2Route1_tf;zeros(abs([a 0]-sx))],[NonIce_Reshaped_Time_days_SCE2Route1_tf_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    Number_of_days_pm_SCE2Route1_tf_iter = 30.*ones(length(NonIce_Reshaped_Time_days_SCE2Route1_tf_iter(:,1)),length(NonIce_Reshaped_Time_days_SCE2Route1_tf_iter(1,:))); %I need to figure out how long it takes to transit through per month because
    %each month varies
    SCE2_NonIce_Route1_n_tf_iter = Number_of_days_pm_SCE2Route1_tf_iter./NonIce_Reshaped_Time_days_SCE2Route1_tf_iter;
    
    sx = size(SCE2_NonIce_Route1_n_tf);
    sy = size(SCE2_NonIce_Route1_n_tf_iter');
    a = max(sx(1),sy(1));
    SCE2_NonIce_Route1_n_tf = [[SCE2_NonIce_Route1_n_tf;zeros(abs([a 0]-sx))],[SCE2_NonIce_Route1_n_tf_iter';zeros(abs([a,0]-sy))]];
    
    
    IB_time_SCE2Route1_t0 = [IB_time_SCE2Route1_t0; Ice_IB_time_SCE2Route1_t0_iter];
    IB_time_SCE2Route1_tm = [IB_time_SCE2Route1_tm; Ice_IB_time_SCE2Route1_tm_iter];
    IB_time_SCE2Route1_tf = [IB_time_SCE2Route1_tf; Ice_IB_time_SCE2Route1_tf_iter];
    
    Agg_Op_speed1_SCE2Route1 = [Agg_Op_speed1_SCE2Route1; Agg_Op_speed1_SCE2Route1_iter];
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0 = [Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0; Ice_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter];
    Ice_Energy_consumed_SCE2Route1_Arctic_t_t0 = [Ice_Energy_consumed_SCE2Route1_Arctic_t_t0; Ice_Energy_consumed_SCE2Route1_Arctic_t_t0_iter];
    
    Agg_Op_speed2_SCE2Route1 = [Agg_Op_speed2_SCE2Route1; Agg_Op_speed2_SCE2Route1_iter];
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm = [Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm; Ice_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter];
    Ice_Energy_consumed_SCE2Route1_Arctic_t_tm = [Ice_Energy_consumed_SCE2Route1_Arctic_t_tm; Ice_Energy_consumed_SCE2Route1_Arctic_t_tm_iter];
    
    Agg_Op_speed3_SCE2Route1 = [Agg_Op_speed3_SCE2Route1; Agg_Op_speed3_SCE2Route1_iter];
    Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf = [Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf; Ice_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter];
    Ice_Energy_consumed_SCE2Route1_Arctic_t_tf = [Ice_Energy_consumed_SCE2Route1_Arctic_t_tf; Ice_Energy_consumed_SCE2Route1_Arctic_t_tf_iter];
    
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0 = [NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0; NonIce_Fuel_consumed_SCE2Route1_Arctic_t_t0_iter];
    NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0 = [NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0; NonIce_Energy_consumed_SCE2Route1_Arctic_t_t0_iter];
    
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm = [NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm; NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tm_iter];
    NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm = [NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm; NonIce_Energy_consumed_SCE2Route1_Arctic_t_tm_iter];
    
    NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf = [NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf; NonIce_Fuel_consumed_SCE2Route1_Arctic_t_tf_iter];
    NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf = [NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf; NonIce_Energy_consumed_SCE2Route1_Arctic_t_tf_iter];
    
    %Route2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %t_0
    %%%%%%%%%%%
    Agg_Op_speed1_SCE2Route2_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed1_SCE2Route2_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Agg_Op_speed1_SCE2Route2_iter = [Agg_Op_speed1_SCE2Route2_iter; Agg_Op_speed1_SCE2Route2_iter_iter];
    end
    
    Agg_Psi_iter = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Agg_Psi_iter = [Agg_Psi_iter; Agg_Psi_iter_iter];
    end
    
    Agg_Alpha_iter = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Agg_Alpha_iter = [Agg_Alpha_iter; Agg_Alpha_iter_iter];
    end
    
    Agg_length1_SCE2Route2 = [];
    for i = 1:1:length(Length_iter)
        Agg_length1_SCE2Route2_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Agg_length1_SCE2Route2 = [Agg_length1_SCE2Route2; Agg_length1_SCE2Route2_iter];
    end
    
    Agg_draught1_SCE2Route2= [];
    for i = 1:1:length(T_iter)
        Agg_draught1_SCE2Route2_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Agg_draught1_SCE2Route2 = [Agg_draught1_SCE2Route2; Agg_draught1_SCE2Route2_iter];
    end
    
    Ice_OW_Resistance_N_SCE2Route2_t0 = [];
    for i = 1:1:length(v_iter)
        Ice_OW_Resistance_N_SCE2Route2_t0_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Ice_OW_Resistance_N_SCE2Route2_t0 = [Ice_OW_Resistance_N_SCE2Route2_t0; Ice_OW_Resistance_N_SCE2Route2_t0_iter];
    end
    
    C_T_SCE2Route2_t0 = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE2Route2_t0_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        C_T_SCE2Route2_t0 = [C_T_SCE2Route2_t0; C_T_SCE2Route2_t0_iter];
    end
    
    S_SCE2Route2_t0 = [];
    for i = 1:1:length(S_iter)
        S_SCE2Route2_t0_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        S_SCE2Route2_t0 = [S_SCE2Route2_t0; S_SCE2Route2_t0_iter];
    end
    
    %t_m
    %%%%%%%%%%%
    
    Agg_Op_speed2_SCE2Route2_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed2_SCE2Route2_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Agg_Op_speed2_SCE2Route2_iter = [Agg_Op_speed2_SCE2Route2_iter; Agg_Op_speed2_SCE2Route2_iter_iter];
    end
    
    Agg_length2_SCE2Route2 = [];
    for i = 1:1:length(Length_iter)
        Agg_length2_SCE2Route2_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Agg_length2_SCE2Route2 = [Agg_length2_SCE2Route2; Agg_length2_SCE2Route2_iter];
    end
    
    Agg_Psi_iter_tm = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter_tm = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Agg_Psi_iter_tm = [Agg_Psi_iter_tm; Agg_Psi_iter_iter_tm];
    end
    
    Agg_Alpha_iter_tm = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter_tm = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Agg_Alpha_iter_tm = [Agg_Alpha_iter_tm; Agg_Alpha_iter_iter_tm];
    end
    
    Agg_draught2_SCE2Route2= [];
    for i = 1:1:length(T_iter)
        Agg_draught2_SCE2Route2_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Agg_draught2_SCE2Route2 = [Agg_draught2_SCE2Route2; Agg_draught2_SCE2Route2_iter];
    end
    
    Ice_OW_Resistance_N_SCE2Route2_tm = [];
    for i = 1:1:length(v_iter)
        Ice_OW_Resistance_N_SCE2Route2_tm_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Ice_OW_Resistance_N_SCE2Route2_tm = [Ice_OW_Resistance_N_SCE2Route2_tm; Ice_OW_Resistance_N_SCE2Route2_tm_iter];
    end
    
    C_T_SCE2Route2_tm = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE2Route2_tm_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        C_T_SCE2Route2_tm = [C_T_SCE2Route2_tm; C_T_SCE2Route2_tm_iter];
    end
    
    S_SCE2Route2_tm = [];
    for i = 1:1:length(S_iter)
        S_SCE2Route2_tm_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        S_SCE2Route2_tm = [S_SCE2Route2_tm; S_SCE2Route2_tm_iter];
    end
    
    %t_f
    %%%%%%%%%%%
    Agg_Op_speed3_SCE2Route2_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed3_SCE2Route2_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Agg_Op_speed3_SCE2Route2_iter = [Agg_Op_speed3_SCE2Route2_iter; Agg_Op_speed3_SCE2Route2_iter_iter];
    end
    
    Agg_length3_SCE2Route2 = [];
    for i = 1:1:length(Length_iter)
        Agg_length3_SCE2Route2_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Agg_length3_SCE2Route2 = [Agg_length3_SCE2Route2; Agg_length3_SCE2Route2_iter];
    end
    
    Agg_Psi_iter_tf = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter_tf = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Agg_Psi_iter_tf = [Agg_Psi_iter_tf; Agg_Psi_iter_iter_tf];
    end
    
    Agg_Alpha_iter_tf = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter_tf = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Agg_Alpha_iter_tf = [Agg_Alpha_iter_tf; Agg_Alpha_iter_iter_tf];
    end
    
    Agg_draught3_SCE2Route2= [];
    for i = 1:1:length(T_iter)
        Agg_draught3_SCE2Route2_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Agg_draught3_SCE2Route2 = [Agg_draught3_SCE2Route2; Agg_draught3_SCE2Route2_iter];
    end
    
    Ice_OW_Resistance_N_SCE2Route2_tf = [];
    for i = 1:1:length(v_iter)
        Ice_OW_Resistance_N_SCE2Route2_tf_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Ice_OW_Resistance_N_SCE2Route2_tf = [Ice_OW_Resistance_N_SCE2Route2_tf; Ice_OW_Resistance_N_SCE2Route2_tf_iter];
    end
    
    C_T_SCE2Route2_tf = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE2Route2_tf_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        C_T_SCE2Route2_tf = [C_T_SCE2Route2_tf; C_T_SCE2Route2_tf_iter];
    end
    
    S_SCE2Route2_tf = [];
    for i = 1:1:length(S_iter)
        S_SCE2Route2_tf_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        S_SCE2Route2_tf = [S_SCE2Route2_tf; S_SCE2Route2_tf_iter];
    end
    
    %t_0
    %%%%%%%%%%%
    OW_Agg_Op_speed1_SCE2Route2_iter = [];
    for i = 1:1:length(v_iter)
        OW_Agg_Op_speed1_SCE2Route2_iter_iter = repmat(v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        OW_Agg_Op_speed1_SCE2Route2_iter = [OW_Agg_Op_speed1_SCE2Route2_iter; OW_Agg_Op_speed1_SCE2Route2_iter_iter];
    end
    
    OW_Agg_Psi_iter = [];
    for i = 1:1:length(Psi_iter)
        OW_Agg_Psi_iter_iter = repmat(Psi_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        OW_Agg_Psi_iter = [OW_Agg_Psi_iter; OW_Agg_Psi_iter_iter];
    end
    
    OW_Agg_Alpha_iter = [];
    for i = 1:1:length(Alpha_iter)
        OW_Agg_Alpha_iter_iter = repmat(Alpha_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        OW_Agg_Alpha_iter = [OW_Agg_Alpha_iter; OW_Agg_Alpha_iter_iter];
    end
    
    OW_Agg_length1_SCE2Route2 = [];
    for i = 1:1:length(Length_iter)
        OW_Agg_length1_SCE2Route2_iter = repmat(Length_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        OW_Agg_length1_SCE2Route2 = [OW_Agg_length1_SCE2Route2; OW_Agg_length1_SCE2Route2_iter];
    end
    
    OW_Agg_draught1_SCE2Route2= [];
    for i = 1:1:length(T_iter)
        OW_Agg_draught1_SCE2Route2_iter = repmat(T_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        OW_Agg_draught1_SCE2Route2 = [OW_Agg_draught1_SCE2Route2; OW_Agg_draught1_SCE2Route2_iter];
    end
    
    NonIce_OW_Resistance_N_SCE2Route2_t0 = [];
    for i = 1:1:length(v_iter)
        NonIce_OW_Resistance_N_SCE2Route2_t0_iter = repmat(NonIce_OW_Resistance_N_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        NonIce_OW_Resistance_N_SCE2Route2_t0 = [NonIce_OW_Resistance_N_SCE2Route2_t0; NonIce_OW_Resistance_N_SCE2Route2_t0_iter];
    end
    
    
    %t_m
    %%%%%%%%%%%
    
    OW_Agg_Op_speed2_SCE2Route2_iter = [];
    for i = 1:1:length(v_iter)
        OW_Agg_Op_speed2_SCE2Route2_iter_iter = repmat(v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        OW_Agg_Op_speed2_SCE2Route2_iter = [OW_Agg_Op_speed2_SCE2Route2_iter; OW_Agg_Op_speed2_SCE2Route2_iter_iter];
    end
    
    OW_Agg_length2_SCE2Route2 = [];
    for i = 1:1:length(Length_iter)
        OW_Agg_length2_SCE2Route2_iter = repmat(Length_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        OW_Agg_length2_SCE2Route2 = [OW_Agg_length2_SCE2Route2; OW_Agg_length2_SCE2Route2_iter];
    end
    
    OW_Agg_Psi_iter_tm = [];
    for i = 1:1:length(Psi_iter)
        OW_Agg_Psi_iter_iter_tm = repmat(Psi_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        OW_Agg_Psi_iter_tm = [OW_Agg_Psi_iter_tm; OW_Agg_Psi_iter_iter_tm];
    end
    
    OW_Agg_Alpha_iter_tm = [];
    for i = 1:1:length(Alpha_iter)
        OW_Agg_Alpha_iter_iter_tm = repmat(Alpha_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        OW_Agg_Alpha_iter_tm = [OW_Agg_Alpha_iter_tm; OW_Agg_Alpha_iter_iter_tm];
    end
    
    OW_Agg_draught2_SCE2Route2= [];
    for i = 1:1:length(T_iter)
        OW_Agg_draught2_SCE2Route2_iter = repmat(T_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        OW_Agg_draught2_SCE2Route2 = [OW_Agg_draught2_SCE2Route2; OW_Agg_draught2_SCE2Route2_iter];
    end
    
    NonIce_OW_Resistance_N_SCE2Route2_tm = [];
    for i = 1:1:length(v_iter)
        NonIce_OW_Resistance_N_SCE2Route2_tm_iter = repmat(NonIce_OW_Resistance_N_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        NonIce_OW_Resistance_N_SCE2Route2_tm = [NonIce_OW_Resistance_N_SCE2Route2_tm; NonIce_OW_Resistance_N_SCE2Route2_tm_iter];
    end
    
    
    %t_f
    %%%%%%%%%%%
    OW_Agg_Op_speed3_SCE2Route2_iter = [];
    for i = 1:1:length(v_iter)
        OW_Agg_Op_speed3_SCE2Route2_iter_iter = repmat(v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        OW_Agg_Op_speed3_SCE2Route2_iter = [OW_Agg_Op_speed3_SCE2Route2_iter; OW_Agg_Op_speed3_SCE2Route2_iter_iter];
    end
    
    OW_Agg_length3_SCE2Route2 = [];
    for i = 1:1:length(Length_iter)
        OW_Agg_length3_SCE2Route2_iter = repmat(Length_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        OW_Agg_length3_SCE2Route2 = [OW_Agg_length3_SCE2Route2; OW_Agg_length3_SCE2Route2_iter];
    end
    
    OW_Agg_Psi_iter_tf = [];
    for i = 1:1:length(Psi_iter)
        OW_Agg_Psi_iter_iter_tf = repmat(Psi_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        OW_Agg_Psi_iter_tf = [OW_Agg_Psi_iter_tf; OW_Agg_Psi_iter_iter_tf];
    end
    
    OW_Agg_Alpha_iter_tf = [];
    for i = 1:1:length(Alpha_iter)
        OW_Agg_Alpha_iter_iter_tf = repmat(Alpha_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        OW_Agg_Alpha_iter_tf = [OW_Agg_Alpha_iter_tf; OW_Agg_Alpha_iter_iter_tf];
    end
    
    OW_Agg_draught3_SCE2Route2= [];
    for i = 1:1:length(T_iter)
        OW_Agg_draught3_SCE2Route2_iter = repmat(T_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        OW_Agg_draught3_SCE2Route2 = [OW_Agg_draught3_SCE2Route2; OW_Agg_draught3_SCE2Route2_iter];
    end
    
    NonIce_OW_Resistance_N_SCE2Route2_tf = [];
    for i = 1:1:length(v_iter)
        NonIce_OW_Resistance_N_SCE2Route2_tf_iter = repmat(NonIce_OW_Resistance_N_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        NonIce_OW_Resistance_N_SCE2Route2_tf = [NonIce_OW_Resistance_N_SCE2Route2_tf; NonIce_OW_Resistance_N_SCE2Route2_tf_iter];
    end
    
    Ice_Total_Resistance_SCE2Route2_kN_t0 = [];
    Ice_Operating_speed_SCE2Route2_t0 = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route2 = Agg_Op_speed1_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_t0_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE2Route2_t0 = Ice_OW_Resistance_N_SCE2Route2_t0_iter.*Op_speed_metrespersec1_SCE2Route2;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route2 = Agg_Op_speed1_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_t0_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE2Route2_t0 = Ice_OW_Resistance_N_SCE2Route2_t0_iter.*Op_speed_metrespersec1_SCE2Route2;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route2 = Agg_Op_speed1_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_t0_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE2Route2_t0 = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE2Route2;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route2 = Agg_Op_speed1_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_t0_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE2Route2_t0 = Ice_OW_Resistance_N_SCE2Route2_t0_iter.*Op_speed_metrespersec1_SCE2Route2;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route2 = Agg_Op_speed1_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_t0_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE2Route2_t0 = Ice_OW_Resistance_N_SCE2Route2_t0_iter.*Op_speed_metrespersec1_SCE2Route2;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0(i) > 0.3
            
            Vertical_force_SCE2Route2_t0 = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0(i)).^2;
            
            A_SCE2Route2 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE2Route2 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE2Route2_t0 = Vertical_force_SCE2Route2_t0.*(A_SCE2Route2./B_SCE2Route2);
            
            C1_SCE2Route2 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE2Route2 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE2Route2 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE2Route2_t0 = C1_SCE2Route2.*D_SCE2Route2.*E_SCE2Route2;
            
            F1_SCE2Route2 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0(i));
            G1_SCE2Route2 = Agg_draught1_SCE2Route2(i).*(Beam_iter+Agg_draught1_SCE2Route2(i))./(Beam_iter+(2*Agg_draught1_SCE2Route2(i)));
            H1_SCE2Route2 = 0.7.*Agg_length1_SCE2Route2(i); %70% assumed from Lindqvist
            I1_SCE2Route2 = Agg_draught1_SCE2Route2(i)./tan(Phi_iter);
            J1_SCE2Route2 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE2Route2 = Agg_draught1_SCE2Route2(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE2Route2  = 1./(sin(Phi_iter.^2));
            K_part2_SCE2Route2  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE2Route2 = (K_part1_SCE2Route2+K_part2_SCE2Route2).^0.5;
            
            Submersion_Resistance_component_SCE2Route2_t0 = F1_SCE2Route2.*Beam_iter.*(G1_SCE2Route2+Mu.*(H1_SCE2Route2-I1_SCE2Route2-J1_SCE2Route2+(K1_SCE2Route2.*K_part3_SCE2Route2)));
            Agg_Crushing_Resistance_component_SCE2Route2_t0 = Crushing_Resistance_component_SCE2Route2_t0;
            Agg_Bending_Resistance_component_SCE2Route2_t0 = Bending_Resistance_component_SCE2Route2_t0;
            
            L1_SCE2Route2 = (Agg_Crushing_Resistance_component_SCE2Route2_t0 + Agg_Bending_Resistance_component_SCE2Route2_t0);
            M1_SCE2Route2 = (1+((1.4*Op_speed_metrespersec1_SCE2Route2)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0(i)).^0.5)));
            N1_SCE2Route2 = Submersion_Resistance_component_SCE2Route2_t0.*(1+((9.4.*Op_speed_metrespersec1_SCE2Route2)./((g.*Agg_length1_SCE2Route2(i)).^0.5)));
            
            Total_Ice_Resistance_SCE2Route2_t0 = (L1_SCE2Route2.*M1_SCE2Route2)+N1_SCE2Route2;
            Total_Resistance_SCE2Route2_t0_iter = Ice_OW_Resistance_N_SCE2Route2_t0_iter + Total_Ice_Resistance_SCE2Route2_t0;
            
            Operating_speed_SCE2Route2_t0_iter = (Effective_power_SCE2Route2_t0./Total_Resistance_SCE2Route2_t0_iter);
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs = Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0(i)./Agg_Annual_sea_ice_conc_encountered_SCE2Route2_t0(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE2Route2./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route2_t0(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE2Route2_t0(i).^5.196);
            
            Total_Ice_Resistance_SCE2Route2_t0 = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route2_t0(i)).*(Op_speed_metrespersec1_SCE2Route2.^2);
            Total_Resistance_SCE2Route2_t0_iter = Ice_OW_Resistance_N_SCE2Route2_t0_iter + Total_Ice_Resistance_SCE2Route2_t0;
            
            Operating_speed_SCE2Route2_t0_iter = (Effective_power_SCE2Route2_t0./Total_Resistance_SCE2Route2_t0_iter);
            
        end
        Ice_Total_Resistance_SCE2Route2_kN_t0 = [Ice_Total_Resistance_SCE2Route2_kN_t0; Total_Resistance_SCE2Route2_t0_iter];
        Ice_Operating_speed_SCE2Route2_t0 = [Ice_Operating_speed_SCE2Route2_t0; Operating_speed_SCE2Route2_t0_iter];
    end
    
    %OW
    NonIce_Total_Resistance_SCE2Route2_kN_t0 = [];
    NonIce_Operating_speed_SCE2Route2_t0 = [];
    for i = 1:1:length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)
        
        if i <= length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route2 = OW_Agg_Op_speed1_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_t0_iter = NonIce_OW_Resistance_N_iter(1);
            OW_Effective_power_SCE2Route2_t0 = NonIce_OW_Resistance_N_SCE2Route2_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route2;
            
        elseif i <= 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length && i > length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route2 = OW_Agg_Op_speed1_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_t0_iter = NonIce_OW_Resistance_N_iter(2);
            OW_Effective_power_SCE2Route2_t0 = NonIce_OW_Resistance_N_SCE2Route2_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route2;
            
        elseif i <= 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length && i > 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route2 = OW_Agg_Op_speed1_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_t0_iter = NonIce_OW_Resistance_N_iter(3);
            OW_Effective_power_SCE2Route2_t0 = NonIce_OW_Resistance_N_iter(3).*OW_Op_speed_metrespersec1_SCE2Route2;
            
        elseif i <= 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length && i > 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route2 = OW_Agg_Op_speed1_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_t0_iter = NonIce_OW_Resistance_N_iter(4);
            OW_Effective_power_SCE2Route2_t0 = NonIce_OW_Resistance_N_SCE2Route2_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route2;
            
        elseif i <= 5.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length && i > 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route2 = OW_Agg_Op_speed1_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_t0_iter = NonIce_OW_Resistance_N_iter(5);
            OW_Effective_power_SCE2Route2_t0 = NonIce_OW_Resistance_N_SCE2Route2_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route2;
            
        end
        
        %Ice floe resistance calculation
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs = OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0(i)./OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_t0(i);
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs(isnan(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs)) = 0;
        
        Pack_Ice_Floe_Froude_number = OW_Op_speed_metrespersec1_SCE2Route2./((9.81.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_t0(i)).^0.5);
        Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
        
        C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs)./Beam_iter).^1.019).*(OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_t0(i).^5.196);
        
        Total_Ice_Resistance_SCE2Route2_t0 = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_t0(i)).*(OW_Op_speed_metrespersec1_SCE2Route2.^2);
        Total_Resistance_SCE2Route2_t0_iter = NonIce_OW_Resistance_N_SCE2Route2_t0_iter + Total_Ice_Resistance_SCE2Route2_t0;
        
        OW_Operating_speed_SCE2Route2_t0_iter = (OW_Effective_power_SCE2Route2_t0./Total_Resistance_SCE2Route2_t0_iter);
        
        
        NonIce_Total_Resistance_SCE2Route2_kN_t0 = [NonIce_Total_Resistance_SCE2Route2_kN_t0; Total_Resistance_SCE2Route2_t0_iter];
        NonIce_Operating_speed_SCE2Route2_t0 = [NonIce_Operating_speed_SCE2Route2_t0; OW_Operating_speed_SCE2Route2_t0_iter];
    end
    
    Total_Resistance_SCE2Route2_tm = [];
    Ice_Operating_speed_SCE2Route2_tm = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route2 = Agg_Op_speed2_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_tm_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE2Route2_tm = Ice_OW_Resistance_N_SCE2Route2_tm_iter.*Op_speed_metrespersec2_SCE2Route2;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route2 = Agg_Op_speed2_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_tm_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE2Route2_tm = Ice_OW_Resistance_N_SCE2Route2_tm_iter.*Op_speed_metrespersec2_SCE2Route2;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route2 = Agg_Op_speed2_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_tm_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE2Route2_tm = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec2_SCE2Route2;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route2 = Agg_Op_speed2_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_tm_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE2Route2_tm = Ice_OW_Resistance_N_SCE2Route2_tm_iter.*Op_speed_metrespersec2_SCE2Route2;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route2 = Agg_Op_speed2_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_tm_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE2Route2_tm = Ice_OW_Resistance_N_SCE2Route2_tm_iter.*Op_speed_metrespersec2_SCE2Route2;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm(i) > 0.3
            
            Vertical_force_SCE2Route2_tm = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm(i)).^2;
            
            A_SCE2Route2 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter_tm(i)));
            B_SCE2Route2 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter_tm(i)));
            
            Crushing_Resistance_component_SCE2Route2_tm = Vertical_force_SCE2Route2_tm.*(A_SCE2Route2./B_SCE2Route2);
            
            C1_SCE2Route2 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE2Route2 = tan(Agg_Psi_iter_tm(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter_tm(i)).*cos(Agg_Psi_iter_tm(i))));
            E_SCE2Route2 = (1+(1./cos(Agg_Psi_iter_tm(i))));
            
            Bending_Resistance_component_SCE2Route2_tm = C1_SCE2Route2.*D_SCE2Route2.*E_SCE2Route2;
            
            F1_SCE2Route2 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm(i));
            G1_SCE2Route2 = Agg_draught2_SCE2Route2(i).*(Beam_iter+Agg_draught2_SCE2Route2(i))./(Beam_iter+(2*Agg_draught2_SCE2Route2(i)));
            H1_SCE2Route2 = 0.7.*Agg_length2_SCE2Route2(i); %70% assumed from Lindqvist
            I1_SCE2Route2 = Agg_draught2_SCE2Route2(i)./tan(Phi_iter);
            J1_SCE2Route2 = Beam_iter./(4.*tan(Agg_Alpha_iter_tm(i)));
            K1_SCE2Route2 = Agg_draught2_SCE2Route2(i).*cos(Phi_iter).*cos(Agg_Psi_iter_tm(i));
            K_part1_SCE2Route2  = 1./(sin(Phi_iter.^2));
            K_part2_SCE2Route2  = 1./(tan(Agg_Alpha_iter_tm(i).^2));
            K_part3_SCE2Route2 = (K_part1_SCE2Route2+K_part2_SCE2Route2).^0.5;
            
            Submersion_Resistance_component_SCE2Route2_tm = F1_SCE2Route2.*Beam_iter.*(G1_SCE2Route2+Mu.*(H1_SCE2Route2-I1_SCE2Route2-J1_SCE2Route2+(K1_SCE2Route2.*K_part3_SCE2Route2)));
            Agg_Crushing_Resistance_component_SCE2Route2_tm = Crushing_Resistance_component_SCE2Route2_tm;
            Agg_Bending_Resistance_component_SCE2Route2_tm = Bending_Resistance_component_SCE2Route2_tm;
            
            L1_SCE2Route2 = (Agg_Crushing_Resistance_component_SCE2Route2_tm + Agg_Bending_Resistance_component_SCE2Route2_tm);
            M1_SCE2Route2 = (1+((1.4*Op_speed_metrespersec2_SCE2Route2)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm(i)).^0.5)));
            N1_SCE2Route2 = Submersion_Resistance_component_SCE2Route2_tm.*(1+((9.4.*Op_speed_metrespersec2_SCE2Route2)./((g.*Agg_length2_SCE2Route2(i)).^0.5)));
            
            Total_Ice_Resistance_SCE2Route2_tm = (L1_SCE2Route2.*M1_SCE2Route2)+N1_SCE2Route2;
            Total_Resistance_SCE2Route2_tm_iter = Ice_OW_Resistance_N_SCE2Route2_tm_iter + Total_Ice_Resistance_SCE2Route2_tm;
            
            Operating_speed_SCE2Route2_tm_iter = (Effective_power_SCE2Route2_tm./Total_Resistance_SCE2Route2_tm_iter);
            
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs = Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm(i)./Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tm(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec2_SCE2Route2./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tm(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tm(i).^5.196);
            
            Total_Ice_Resistance_SCE2Route2_tm = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tm(i)).*(Op_speed_metrespersec2_SCE2Route2.^2);
            Total_Resistance_SCE2Route2_tm_iter = Ice_OW_Resistance_N_SCE2Route2_tm_iter + Total_Ice_Resistance_SCE2Route2_tm;
            
            Operating_speed_SCE2Route2_tm_iter = (Effective_power_SCE2Route2_tm./Total_Resistance_SCE2Route2_tm_iter);
            
        end
        Total_Resistance_SCE2Route2_tm = [Total_Resistance_SCE2Route2_tm; Total_Resistance_SCE2Route2_tm_iter];
        Ice_Operating_speed_SCE2Route2_tm = [Ice_Operating_speed_SCE2Route2_tm; Operating_speed_SCE2Route2_tm_iter];
    end
    
    NonIce_Total_Resistance_SCE2Route2_kN_tm = [];
    NonIce_Operating_speed_SCE2Route2_tm = [];
    for i = 1:1:length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)
        
        if i <= length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route2 = OW_Agg_Op_speed2_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_tm_iter = NonIce_OW_Resistance_N_iter(1);
            OW_Effective_power_SCE2Route2_tm = NonIce_OW_Resistance_N_SCE2Route2_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route2;
            
        elseif i <= 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length && i > length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route2 = OW_Agg_Op_speed2_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_tm_iter = NonIce_OW_Resistance_N_iter(2);
            OW_Effective_power_SCE2Route2_tm = NonIce_OW_Resistance_N_SCE2Route2_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route2;
            
        elseif i <= 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length && i > 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route2 = OW_Agg_Op_speed2_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_tm_iter = NonIce_OW_Resistance_N_iter(3);
            OW_Effective_power_SCE2Route2_tm = NonIce_OW_Resistance_N_iter(3).*OW_Op_speed_metrespersec2_SCE2Route2;
            
        elseif i <= 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length && i > 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route2 = OW_Agg_Op_speed2_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_tm_iter = NonIce_OW_Resistance_N_iter(4);
            OW_Effective_power_SCE2Route2_tm = NonIce_OW_Resistance_N_SCE2Route2_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route2;
            
        elseif i <= 5.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length && i > 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route2 = OW_Agg_Op_speed2_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_tm_iter = NonIce_OW_Resistance_N_iter(5);
            OW_Effective_power_SCE2Route2_tm = NonIce_OW_Resistance_N_SCE2Route2_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route2;
            
        end
        
        %Ice floe resistance calculation
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs = OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm(i)./OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tm(i);
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs(isnan(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs)) = 0;
        
        Pack_Ice_Floe_Froude_number = OW_Op_speed_metrespersec2_SCE2Route2./((9.81.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tm(i)).^0.5);
        Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
        
        C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs)./Beam_iter).^1.019).*(OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tm(i).^5.196);
        
        Total_Ice_Resistance_SCE2Route2_tm = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tm(i)).*(OW_Op_speed_metrespersec2_SCE2Route2.^2);
        Total_Resistance_SCE2Route2_tm_iter = NonIce_OW_Resistance_N_SCE2Route2_tm_iter + Total_Ice_Resistance_SCE2Route2_tm;
        
        OW_Operating_speed_SCE2Route2_tm_iter = (OW_Effective_power_SCE2Route2_tm./Total_Resistance_SCE2Route2_tm_iter);
        
        
        NonIce_Total_Resistance_SCE2Route2_kN_tm = [NonIce_Total_Resistance_SCE2Route2_kN_tm; Total_Resistance_SCE2Route2_tm_iter];
        NonIce_Operating_speed_SCE2Route2_tm = [NonIce_Operating_speed_SCE2Route2_tm; OW_Operating_speed_SCE2Route2_tm_iter];
    end
    
    
    Total_Resistance_SCE2Route2_tf = [];
    Ice_Operating_speed_SCE2Route2_tf = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route2 = Agg_Op_speed3_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_tf_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE2Route2_tf = Ice_OW_Resistance_N_SCE2Route2_tf_iter.*Op_speed_metrespersec3_SCE2Route2;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route2 = Agg_Op_speed3_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_tf_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE2Route2_tf = Ice_OW_Resistance_N_SCE2Route2_tf_iter.*Op_speed_metrespersec3_SCE2Route2;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route2 = Agg_Op_speed3_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_tf_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE2Route2_tf = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec3_SCE2Route2;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route2 = Agg_Op_speed3_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_tf_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE2Route2_tf = Ice_OW_Resistance_N_SCE2Route2_tf_iter.*Op_speed_metrespersec3_SCE2Route2;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route2 = Agg_Op_speed3_SCE2Route2_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route2_tf_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE2Route2_tf = Ice_OW_Resistance_N_SCE2Route2_tf_iter.*Op_speed_metrespersec3_SCE2Route2;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf(i) > 0.3
            
            Vertical_force_SCE2Route2_tf = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf(i)).^2;
            
            A_SCE2Route2 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter_tf(i)));
            B_SCE2Route2 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter_tf(i)));
            
            Crushing_Resistance_component_SCE2Route2_tf = Vertical_force_SCE2Route2_tf.*(A_SCE2Route2./B_SCE2Route2);
            
            C1_SCE2Route2 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE2Route2 = tan(Agg_Psi_iter_tf(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter_tf(i)).*cos(Agg_Psi_iter_tf(i))));
            E_SCE2Route2 = (1+(1./cos(Agg_Psi_iter_tf(i))));
            
            Bending_Resistance_component_SCE2Route2_tf = C1_SCE2Route2.*D_SCE2Route2.*E_SCE2Route2;
            
            F1_SCE2Route2 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf(i));
            G1_SCE2Route2 = Agg_draught3_SCE2Route2(i).*(Beam_iter+Agg_draught3_SCE2Route2(i))./(Beam_iter+(2*Agg_draught3_SCE2Route2(i)));
            H1_SCE2Route2 = 0.7.*Agg_length3_SCE2Route2(i); %70% assumed from Lindqvist
            I1_SCE2Route2 = Agg_draught3_SCE2Route2(i)./tan(Phi_iter);
            J1_SCE2Route2 = Beam_iter./(4.*tan(Agg_Alpha_iter_tf(i)));
            K1_SCE2Route2 = Agg_draught3_SCE2Route2(i).*cos(Phi_iter).*cos(Agg_Psi_iter_tf(i));
            K_part1_SCE2Route2  = 1./(sin(Phi_iter.^2));
            K_part2_SCE2Route2  = 1./(tan(Agg_Alpha_iter_tf(i).^2));
            K_part3_SCE2Route2 = (K_part1_SCE2Route2+K_part2_SCE2Route2).^0.5;
            
            Submersion_Resistance_component_SCE2Route2_tf = F1_SCE2Route2.*Beam_iter.*(G1_SCE2Route2+Mu.*(H1_SCE2Route2-I1_SCE2Route2-J1_SCE2Route2+(K1_SCE2Route2.*K_part3_SCE2Route2)));
            Agg_Crushing_Resistance_component_SCE2Route2_tf = Crushing_Resistance_component_SCE2Route2_tf;
            Agg_Bending_Resistance_component_SCE2Route2_tf = Bending_Resistance_component_SCE2Route2_tf;
            
            L1_SCE2Route2 = (Agg_Crushing_Resistance_component_SCE2Route2_tf + Agg_Bending_Resistance_component_SCE2Route2_tf);
            M1_SCE2Route2 = (1+((1.4*Op_speed_metrespersec3_SCE2Route2)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf(i)).^0.5)));
            N1_SCE2Route2 = Submersion_Resistance_component_SCE2Route2_tf.*(1+((9.4.*Op_speed_metrespersec3_SCE2Route2)./((g.*Agg_length3_SCE2Route2(i)).^0.5)));
            
            Total_Ice_Resistance_SCE2Route2_tf = (L1_SCE2Route2.*M1_SCE2Route2)+N1_SCE2Route2;
            Total_Resistance_SCE2Route2_tf_iter = Ice_OW_Resistance_N_SCE2Route2_tf_iter + Total_Ice_Resistance_SCE2Route2_tf;
            
            Operating_speed_SCE2Route2_tf_iter = (Effective_power_SCE2Route2_tf./Total_Resistance_SCE2Route2_tf_iter);
            
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs = Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf(i)./Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tf(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec3_SCE2Route2./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tf(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tf(i).^5.196);
            
            Total_Ice_Resistance_SCE2Route2_tf = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tf(i)).*(Op_speed_metrespersec3_SCE2Route2.^2);
            Total_Resistance_SCE2Route2_tf_iter = Ice_OW_Resistance_N_SCE2Route2_tf_iter + Total_Ice_Resistance_SCE2Route2_tf;
            
            Operating_speed_SCE2Route2_tf_iter = (Effective_power_SCE2Route2_tf./Total_Resistance_SCE2Route2_tf_iter);
        end
        Total_Resistance_SCE2Route2_tf = [Total_Resistance_SCE2Route2_tf; Total_Resistance_SCE2Route2_tf_iter];
        Ice_Operating_speed_SCE2Route2_tf = [Ice_Operating_speed_SCE2Route2_tf; Operating_speed_SCE2Route2_tf_iter];
    end
    
    NonIce_Total_Resistance_SCE2Route2_kN_tf = [];
    NonIce_Operating_speed_SCE2Route2_tf = [];
    for i = 1:1:length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)
        
        if i <= length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route2 = OW_Agg_Op_speed3_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_tf_iter = NonIce_OW_Resistance_N_iter(1);
            OW_Effective_power_SCE2Route2_tf = NonIce_OW_Resistance_N_SCE2Route2_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route2;
            
        elseif i <= 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length && i > length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route2 = OW_Agg_Op_speed3_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_tf_iter = NonIce_OW_Resistance_N_iter(2);
            OW_Effective_power_SCE2Route2_tf = NonIce_OW_Resistance_N_SCE2Route2_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route2;
            
        elseif i <= 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length && i > 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route2 = OW_Agg_Op_speed3_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_tf_iter = NonIce_OW_Resistance_N_iter(3);
            OW_Effective_power_SCE2Route2_tf = NonIce_OW_Resistance_N_iter(3).*OW_Op_speed_metrespersec3_SCE2Route2;
            
        elseif i <= 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length && i > 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route2 = OW_Agg_Op_speed3_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_tf_iter = NonIce_OW_Resistance_N_iter(4);
            OW_Effective_power_SCE2Route2_tf = NonIce_OW_Resistance_N_SCE2Route2_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route2;
            
        elseif i <= 5.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length && i > 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route2 = OW_Agg_Op_speed3_SCE2Route2_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route2_tf_iter = NonIce_OW_Resistance_N_iter(5);
            OW_Effective_power_SCE2Route2_tf = NonIce_OW_Resistance_N_SCE2Route2_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route2;
            
        end
        
        %Ice floe resistance calculation
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs = OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf(i)./OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tf(i);
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs(isnan(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs)) = 0;
        
        Pack_Ice_Floe_Froude_number = OW_Op_speed_metrespersec3_SCE2Route2./((9.81.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tf(i)).^0.5);
        Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
        
        C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs)./Beam_iter).^1.019).*(OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tf(i).^5.196);
        
        Total_Ice_Resistance_SCE2Route2_tf = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route2_tf(i)).*(OW_Op_speed_metrespersec3_SCE2Route2.^2);
        Total_Resistance_SCE2Route2_tf_iter = NonIce_OW_Resistance_N_SCE2Route2_tf_iter + Total_Ice_Resistance_SCE2Route2_tf;
        
        OW_Operating_speed_SCE2Route2_tf_iter = (OW_Effective_power_SCE2Route2_tf./Total_Resistance_SCE2Route2_tf_iter);
        
        
        NonIce_Total_Resistance_SCE2Route2_kN_tf = [NonIce_Total_Resistance_SCE2Route2_kN_tf; Total_Resistance_SCE2Route2_tf_iter];
        NonIce_Operating_speed_SCE2Route2_tf = [NonIce_Operating_speed_SCE2Route2_tf; OW_Operating_speed_SCE2Route2_tf_iter];
    end
    
    %Resize the variables to align with the shape of the other variables
    Ice_Operating_speed_SCE2Route2_t0 = Ice_Operating_speed_SCE2Route2_t0./0.514444444;
    Ice_Operating_speed_SCE2Route2_tm = Ice_Operating_speed_SCE2Route2_tm./0.514444444;
    Ice_Operating_speed_SCE2Route2_tf = Ice_Operating_speed_SCE2Route2_tf./0.514444444;
    
    %Where the ice is thicker than 0.8m it also needs an icebreaker...
    Ice_Logic_t0 = (Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_t0 > 0.7);
    Ice_Logic_tm = (Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tm > 0.7);
    Ice_Logic_tf = (Agg_Annual_sea_ice_thickness_encountered_SCE2Route2_tf > 0.7);
    
    Ice_Operating_speed_SCE2Route2_t0(Ice_Logic_t0) = 3;
    Ice_Operating_speed_SCE2Route2_tm(Ice_Logic_tm) = 3;
    Ice_Operating_speed_SCE2Route2_tf(Ice_Logic_tf) = 3;
    
    %Resize the variables to align with the shape of the other variables
    NonIce_Operating_speed_SCE2Route2_t0 = NonIce_Operating_speed_SCE2Route2_t0./0.514444444;
    NonIce_Operating_speed_SCE2Route2_tm = NonIce_Operating_speed_SCE2Route2_tm./0.514444444;
    NonIce_Operating_speed_SCE2Route2_tf = NonIce_Operating_speed_SCE2Route2_tf./0.514444444;
    
    
    Global_IceStrengthOutput_SCE2Route2_power_kW_t0 = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE2Route2_power_kW_t0_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Global_IceStrengthOutput_SCE2Route2_power_kW_t0 = [Global_IceStrengthOutput_SCE2Route2_power_kW_t0;Global_IceStrengthOutput_SCE2Route2_power_kW_t0_iter];
    end
    
    Global_IceStrengthOutput_SCE2Route2_power_kW_tm = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE2Route2_power_kW_tm_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Global_IceStrengthOutput_SCE2Route2_power_kW_tm = [Global_IceStrengthOutput_SCE2Route2_power_kW_tm;Global_IceStrengthOutput_SCE2Route2_power_kW_tm_iter];
    end
    
    Global_IceStrengthOutput_SCE2Route2_power_kW_tf = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE2Route2_power_kW_tf_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Global_IceStrengthOutput_SCE2Route2_power_kW_tf = [Global_IceStrengthOutput_SCE2Route2_power_kW_tf;Global_IceStrengthOutput_SCE2Route2_power_kW_tf_iter];
    end
    
    Global_NonIceStrengthOutput_SCE2Route2_power_kW_t0 = [];
    for i = 1:1:length(NonIceStrengthOutput_power_kW_iter)
        Global_NonIceStrengthOutput_SCE2Route2_power_kW_t0_iter = repmat(NonIceStrengthOutput_power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Global_NonIceStrengthOutput_SCE2Route2_power_kW_t0 = [Global_NonIceStrengthOutput_SCE2Route2_power_kW_t0;Global_NonIceStrengthOutput_SCE2Route2_power_kW_t0_iter];
    end
    
    Global_NonIceStrengthOutput_SCE2Route2_power_kW_tm = [];
    for i = 1:1:length(NonIceStrengthOutput_power_kW_iter)
        Global_NonIceStrengthOutput_SCE2Route2_power_kW_tm_iter = repmat(NonIceStrengthOutput_power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Global_NonIceStrengthOutput_SCE2Route2_power_kW_tm = [Global_NonIceStrengthOutput_SCE2Route2_power_kW_tm;Global_NonIceStrengthOutput_SCE2Route2_power_kW_tm_iter];
    end
    
    Global_NonIceStrengthOutput_SCE2Route2_power_kW_tf = [];
    for i = 1:1:length(NonIceStrengthOutput_power_kW_iter)
        Global_NonIceStrengthOutput_SCE2Route2_power_kW_tf_iter = repmat(NonIceStrengthOutput_power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Global_NonIceStrengthOutput_SCE2Route2_power_kW_tf = [Global_NonIceStrengthOutput_SCE2Route2_power_kW_tf;Global_NonIceStrengthOutput_SCE2Route2_power_kW_tf_iter];
    end
    
    Global_SCE2Route2_Ice_sfc_t0 = [];
    
    for i = 1:1:length(Icesfc_iter)
        Global_SCE2Route2_Ice_sfc_t0_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Global_SCE2Route2_Ice_sfc_t0  = [Global_SCE2Route2_Ice_sfc_t0; Global_SCE2Route2_Ice_sfc_t0_iter];
    end
    
    Global_SCE2Route2_Ice_sfc_tm = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE2Route2_Ice_sfc_tm_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Global_SCE2Route2_Ice_sfc_tm  = [Global_SCE2Route2_Ice_sfc_tm; Global_SCE2Route2_Ice_sfc_tm_iter];
    end
    
    Global_SCE2Route2_Ice_sfc_tf = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE2Route2_Ice_sfc_tf_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Global_SCE2Route2_Ice_sfc_tf  = [Global_SCE2Route2_Ice_sfc_tf; Global_SCE2Route2_Ice_sfc_tf_iter];
    end
    
    Global_SCE2Route2_NonIce_sfc_t0 = [];
    
    for i = 1:1:length(NonIcesfc_iter)
        Global_SCE2Route2_NonIce_sfc_t0_iter = repmat(NonIcesfc_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Global_SCE2Route2_NonIce_sfc_t0  = [Global_SCE2Route2_NonIce_sfc_t0; Global_SCE2Route2_NonIce_sfc_t0_iter];
    end
    
    Global_SCE2Route2_NonIce_sfc_tm = [];
    for i = 1:1:length(NonIcesfc_iter)
        Global_SCE2Route2_NonIce_sfc_tm_iter = repmat(NonIcesfc_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Global_SCE2Route2_NonIce_sfc_tm  = [Global_SCE2Route2_NonIce_sfc_tm; Global_SCE2Route2_NonIce_sfc_tm_iter];
    end
    
    Global_SCE2Route2_NonIce_sfc_tf = [];
    for i = 1:1:length(NonIcesfc_iter)
        Global_SCE2Route2_NonIce_sfc_tf_iter = repmat(NonIcesfc_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Global_SCE2Route2_NonIce_sfc_tf  = [Global_SCE2Route2_NonIce_sfc_tf; Global_SCE2Route2_NonIce_sfc_tf_iter];
    end
    
    %Correct the operating speed to be in line with IMO and RMS regulations
    
    Operating_speed_index_SCE2Route2_t0 = find(Ice_Operating_speed_SCE2Route2_t0<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route2_t0)
        Ice_Operating_speed_SCE2Route2_t0(Operating_speed_index_SCE2Route2_t0(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route2_tm = find(Ice_Operating_speed_SCE2Route2_tm<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route2_tm)
        Ice_Operating_speed_SCE2Route2_tm(Operating_speed_index_SCE2Route2_tm(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route2_tf = find(Ice_Operating_speed_SCE2Route2_tf<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route2_tf)
        Ice_Operating_speed_SCE2Route2_tf(Operating_speed_index_SCE2Route2_tf(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route2_t0 = find(NonIce_Operating_speed_SCE2Route2_t0<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route2_t0)
        NonIce_Operating_speed_SCE2Route2_t0(Operating_speed_index_SCE2Route2_t0(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route2_tm = find(NonIce_Operating_speed_SCE2Route2_tm<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route2_tm)
        NonIce_Operating_speed_SCE2Route2_tm(Operating_speed_index_SCE2Route2_tm(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route2_tf = find(NonIce_Operating_speed_SCE2Route2_tf<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route2_tf)
        NonIce_Operating_speed_SCE2Route2_tf(Operating_speed_index_SCE2Route2_tf(i)) = 3;
    end
    
    % Des_v
    Ice_Global_SCE2Route2_Des_v_t0 = [];
    
    for i = 1:1:length(Des_v_iter)
        Ice_Global_SCE2Route2_Des_v_t0_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Ice_Global_SCE2Route2_Des_v_t0  = [Ice_Global_SCE2Route2_Des_v_t0; Ice_Global_SCE2Route2_Des_v_t0_iter];
    end
    
    Ice_Global_SCE2Route2_Des_v_tm = [];
    
    for i = 1:1:length(Des_v_iter)
        Ice_Global_SCE2Route2_Des_v_tm_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Ice_Global_SCE2Route2_Des_v_tm  = [Ice_Global_SCE2Route2_Des_v_tm; Ice_Global_SCE2Route2_Des_v_tm_iter];
    end
    
    Ice_Global_SCE2Route2_Des_v_tf = [];
    
    for i = 1:1:length(Des_v_iter)
        Ice_Global_SCE2Route2_Des_v_tf_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Ice_Global_SCE2Route2_Des_v_tf  = [Ice_Global_SCE2Route2_Des_v_tf; Ice_Global_SCE2Route2_Des_v_tf_iter];
    end
    
    NonIce_Global_SCE2Route2_Des_v_t0 = [];
    
    for i = 1:1:length(Des_v_iter)
        NonIce_Global_SCE2Route2_Des_v_t0_iter = repmat(Des_v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        NonIce_Global_SCE2Route2_Des_v_t0  = [NonIce_Global_SCE2Route2_Des_v_t0; NonIce_Global_SCE2Route2_Des_v_t0_iter];
    end
    
    NonIce_Global_SCE2Route2_Des_v_tm = [];
    
    for i = 1:1:length(Des_v_iter)
        NonIce_Global_SCE2Route2_Des_v_tm_iter = repmat(Des_v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        NonIce_Global_SCE2Route2_Des_v_tm  = [NonIce_Global_SCE2Route2_Des_v_tm; NonIce_Global_SCE2Route2_Des_v_tm_iter];
    end
    
    NonIce_Global_SCE2Route2_Des_v_tf = [];
    
    for i = 1:1:length(Des_v_iter)
        NonIce_Global_SCE2Route2_Des_v_tf_iter = repmat(Des_v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        NonIce_Global_SCE2Route2_Des_v_tf  = [NonIce_Global_SCE2Route2_Des_v_tf; NonIce_Global_SCE2Route2_Des_v_tf_iter];
    end
    
    % Ice_Installed_Power_kW_iter
    Global_SCE2Route2_Ice_Installed_Power_kW_t0 = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE2Route2_Ice_Installed_Power_kW_t0_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Global_SCE2Route2_Ice_Installed_Power_kW_t0  = [Global_SCE2Route2_Ice_Installed_Power_kW_t0; Global_SCE2Route2_Ice_Installed_Power_kW_t0_iter];
    end
    
    Global_SCE2Route2_Ice_Installed_Power_kW_tm = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE2Route2_Ice_Installed_Power_kW_tm_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Global_SCE2Route2_Ice_Installed_Power_kW_tm  = [Global_SCE2Route2_Ice_Installed_Power_kW_tm; Global_SCE2Route2_Ice_Installed_Power_kW_tm_iter];
    end
    
    Global_SCE2Route2_Ice_Installed_Power_kW_tf = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE2Route2_Ice_Installed_Power_kW_tf_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Global_SCE2Route2_Ice_Installed_Power_kW_tf  = [Global_SCE2Route2_Ice_Installed_Power_kW_tf; Global_SCE2Route2_Ice_Installed_Power_kW_tf_iter];
    end
    
    Global_SCE2Route2_NonIce_Installed_Power_kW_t0 = [];
    
    for i = 1:1:length(NonIce_Installed_Power_kW_iter)
        Global_SCE2Route2_NonIce_Installed_Power_kW_t0_iter = repmat(NonIce_Installed_Power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_t0),1);
        Global_SCE2Route2_NonIce_Installed_Power_kW_t0  = [Global_SCE2Route2_NonIce_Installed_Power_kW_t0; Global_SCE2Route2_NonIce_Installed_Power_kW_t0_iter];
    end
    
    Global_SCE2Route2_NonIce_Installed_Power_kW_tm = [];
    
    for i = 1:1:length(NonIce_Installed_Power_kW_iter)
        Global_SCE2Route2_NonIce_Installed_Power_kW_tm_iter = repmat(NonIce_Installed_Power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tm),1);
        Global_SCE2Route2_NonIce_Installed_Power_kW_tm  = [Global_SCE2Route2_NonIce_Installed_Power_kW_tm; Global_SCE2Route2_NonIce_Installed_Power_kW_tm_iter];
    end
    
    Global_SCE2Route2_NonIce_Installed_Power_kW_tf = [];
    
    for i = 1:1:length(NonIce_Installed_Power_kW_iter)
        Global_SCE2Route2_NonIce_Installed_Power_kW_tf_iter = repmat(NonIce_Installed_Power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route2_tf),1);
        Global_SCE2Route2_NonIce_Installed_Power_kW_tf  = [Global_SCE2Route2_NonIce_Installed_Power_kW_tf; Global_SCE2Route2_NonIce_Installed_Power_kW_tf_iter];
    end
    
    Ice_Total_Power_demand_SCE2Route2_t0 = Global_SCE2Route2_Ice_Installed_Power_kW_t0.*((Ice_Operating_speed_SCE2Route2_t0./Ice_Global_SCE2Route2_Des_v_t0).^3)./(Foul_coeff.*Weather_coeff);
    Ice_Total_Power_demand_SCE2Route2_tm = Global_SCE2Route2_Ice_Installed_Power_kW_tm.*((Ice_Operating_speed_SCE2Route2_tm./Ice_Global_SCE2Route2_Des_v_tm).^3)./(Foul_coeff.*Weather_coeff);
    Ice_Total_Power_demand_SCE2Route2_tf = Global_SCE2Route2_Ice_Installed_Power_kW_tf.*((Ice_Operating_speed_SCE2Route2_tf./Ice_Global_SCE2Route2_Des_v_tf).^3)./(Foul_coeff.*Weather_coeff);
    
    Ice_Agg_Engine_SCE2Route2_load_t0 = Ice_Total_Power_demand_SCE2Route2_t0./Global_SCE2Route2_Ice_Installed_Power_kW_t0;
    Ice_Agg_Engine_SCE2Route2_load_tm = Ice_Total_Power_demand_SCE2Route2_tm./Global_SCE2Route2_Ice_Installed_Power_kW_tm;
    Ice_Agg_Engine_SCE2Route2_load_tf = Ice_Total_Power_demand_SCE2Route2_tf./Global_SCE2Route2_Ice_Installed_Power_kW_tf;
    
    %Then I use the IMO 3rd ghg study equation to compute the different SFC,
    %but need to renumerate as the equation doesn't work for loads of 1
    Ice_Constant_SCE2Route2_t0 = (0.455.*(Ice_Agg_Engine_SCE2Route2_load_t0).^2)-(0.71.*Ice_Agg_Engine_SCE2Route2_load_t0)+1.28;
    Ice_Constant_SCE2Route2_tm = (0.455.*(Ice_Agg_Engine_SCE2Route2_load_tm).^2)-(0.71.*Ice_Agg_Engine_SCE2Route2_load_tm)+1.28;
    Ice_Constant_SCE2Route2_tf = (0.455.*(Ice_Agg_Engine_SCE2Route2_load_tf).^2)-(0.71.*Ice_Agg_Engine_SCE2Route2_load_tf)+1.28;
    
    Ice_Operating_SFC_SCE2Route2_t0 = Global_SCE2Route2_Ice_sfc_t0.*Ice_Constant_SCE2Route2_t0;
    Ice_Operating_SFC_SCE2Route2_tm = Global_SCE2Route2_Ice_sfc_tm.*Ice_Constant_SCE2Route2_tm;
    Ice_Operating_SFC_SCE2Route2_tf = Global_SCE2Route2_Ice_sfc_tf.*Ice_Constant_SCE2Route2_tf;
    
    SFC_index_SCE2Route2_t0 = find(Ice_Agg_Engine_SCE2Route2_load_t0==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route2_t0)
        Ice_Operating_SFC_SCE2Route2_t0(SFC_index_SCE2Route2_t0(i)) = Global_SCE2Route2_Ice_sfc_t0(SFC_index_SCE2Route2_t0(i));
    end
    
    SFC_index_SCE2Route2_tm = find(Ice_Agg_Engine_SCE2Route2_load_tm==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route2_tm)
        Ice_Operating_SFC_SCE2Route2_tm(SFC_index_SCE2Route2_tm(i)) = Global_SCE2Route2_Ice_sfc_tm(SFC_index_SCE2Route2_tm(i));
    end
    
    SFC_index_SCE2Route2_tf = find(Ice_Agg_Engine_SCE2Route2_load_tf==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route2_tf)
        Ice_Operating_SFC_SCE2Route2_tf(SFC_index_SCE2Route2_tf(i)) = Global_SCE2Route2_Ice_sfc_tf(SFC_index_SCE2Route2_tf(i));
    end
    
    %NonIce
    NonIce_Total_Power_demand_SCE2Route2_t0 = Global_SCE2Route2_NonIce_Installed_Power_kW_t0.*((NonIce_Operating_speed_SCE2Route2_t0./NonIce_Global_SCE2Route2_Des_v_t0).^3)./(Foul_coeff.*Weather_coeff);
    NonIce_Total_Power_demand_SCE2Route2_tm = Global_SCE2Route2_NonIce_Installed_Power_kW_tm.*((NonIce_Operating_speed_SCE2Route2_tm./NonIce_Global_SCE2Route2_Des_v_tm).^3)./(Foul_coeff.*Weather_coeff);
    NonIce_Total_Power_demand_SCE2Route2_tf = Global_SCE2Route2_NonIce_Installed_Power_kW_tf.*((NonIce_Operating_speed_SCE2Route2_tf./NonIce_Global_SCE2Route2_Des_v_tf).^3)./(Foul_coeff.*Weather_coeff);
    
    NonIce_Agg_Engine_SCE2Route2_load_t0 = NonIce_Total_Power_demand_SCE2Route2_t0./Global_SCE2Route2_NonIce_Installed_Power_kW_t0;
    NonIce_Agg_Engine_SCE2Route2_load_tm = NonIce_Total_Power_demand_SCE2Route2_tm./Global_SCE2Route2_NonIce_Installed_Power_kW_tm;
    NonIce_Agg_Engine_SCE2Route2_load_tf = NonIce_Total_Power_demand_SCE2Route2_tf./Global_SCE2Route2_NonIce_Installed_Power_kW_tf;
    
    %Then I use the IMO 3rd ghg study equation to compute the different SFC,
    %but need to renumerate as the equation doesn't work for loads of 1
    NonIce_Constant_SCE2Route2_t0 = (0.455.*(NonIce_Agg_Engine_SCE2Route2_load_t0).^2)-(0.71.*NonIce_Agg_Engine_SCE2Route2_load_t0)+1.28;
    NonIce_Constant_SCE2Route2_tm = (0.455.*(NonIce_Agg_Engine_SCE2Route2_load_tm).^2)-(0.71.*NonIce_Agg_Engine_SCE2Route2_load_tm)+1.28;
    NonIce_Constant_SCE2Route2_tf = (0.455.*(NonIce_Agg_Engine_SCE2Route2_load_tf).^2)-(0.71.*NonIce_Agg_Engine_SCE2Route2_load_tf)+1.28;
    
    NonIce_Operating_SFC_SCE2Route2_t0 = Global_SCE2Route2_NonIce_sfc_t0.*NonIce_Constant_SCE2Route2_t0;
    NonIce_Operating_SFC_SCE2Route2_tm = Global_SCE2Route2_NonIce_sfc_tm.*NonIce_Constant_SCE2Route2_tm;
    NonIce_Operating_SFC_SCE2Route2_tf = Global_SCE2Route2_NonIce_sfc_tf.*NonIce_Constant_SCE2Route2_tf;
    
    SFC_index_SCE2Route2_t0 = find(NonIce_Agg_Engine_SCE2Route2_load_t0==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route2_t0)
        NonIce_Operating_SFC_SCE2Route2_t0(SFC_index_SCE2Route2_t0(i)) = Global_SCE2Route2_NonIce_sfc_t0(SFC_index_SCE2Route2_t0(i));
    end
    
    SFC_index_SCE2Route2_tm = find(NonIce_Agg_Engine_SCE2Route2_load_tm==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route2_tm)
        NonIce_Operating_SFC_SCE2Route2_tm(SFC_index_SCE2Route2_tm(i)) = Global_SCE2Route2_NonIce_sfc_tm(SFC_index_SCE2Route2_tm(i));
    end
    
    SFC_index_SCE2Route2_tf = find(NonIce_Agg_Engine_SCE2Route2_load_tf==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route2_tf)
        NonIce_Operating_SFC_SCE2Route2_tf(SFC_index_SCE2Route2_tf(i)) = Global_SCE2Route2_NonIce_sfc_tf(SFC_index_SCE2Route2_tf(i));
    end
    
    % %Aggregate the unit lengths together so I can then calculate the time it
    % %takes for the ship to traverse the route each year - MUST BE CAREFUL AS
    % %THE NUMBERS ARE INPUT MANUALLY
    
    Array_Unit_length_Route_2 = [Unit_length_AG; Unit_length_GH;...
        Unit_length_HE; Unit_length_EF; Unit_length_FG; Unit_length_FG(3)]; %I assume that the last interval of the route is the same as the one previous for FG
    %Resize this to be compatible with the other variables then obtain the
    %energy demand
    
    Ice_Global_Array_Unit_length_SCE2Route_2_t0 = repmat(Array_Unit_length_Route_2,length(v_iter).*sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0_iter),1); %12 months in a year
    Ice_Global_Array_Unit_length_SCE2Route_2_tm = repmat(Array_Unit_length_Route_2,length(v_iter).*sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm_iter),1);
    Ice_Global_Array_Unit_length_SCE2Route_2_tf = repmat(Array_Unit_length_Route_2,length(v_iter).*sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf_iter),1);
    
    Ice_Time_hrs_SCE2Route2_t0 = Ice_Global_Array_Unit_length_SCE2Route_2_t0./Ice_Operating_speed_SCE2Route2_t0;
    Ice_Time_hrs_SCE2Route2_tm = Ice_Global_Array_Unit_length_SCE2Route_2_tm./Ice_Operating_speed_SCE2Route2_tm;
    Ice_Time_hrs_SCE2Route2_tf = Ice_Global_Array_Unit_length_SCE2Route_2_tf./Ice_Operating_speed_SCE2Route2_tf;
    
    %Reshaping the time matrices to work out the number of days spent on the
    %NSR which can be used later in the commercial profile function
    Ice_Reshaped_Time_hrs_SCE2Route2_t0_iter = reshape(Ice_Time_hrs_SCE2Route2_t0,length(Array_Unit_length_Route_2(:,1)).*length(Ice_Global_Array_Unit_length_SCE2Route_2_t0(:,1))./(length(v_iter).*length(Array_Unit_length_Route_2(:,1))),length(v_iter));
    Ice_Reshaped_Time_hrs_SCE2Route2_tm_iter = reshape(Ice_Time_hrs_SCE2Route2_tm,length(Array_Unit_length_Route_2(:,1)).*length(Ice_Global_Array_Unit_length_SCE2Route_2_tm(:,1))./(length(v_iter).*length(Array_Unit_length_Route_2(:,1))),length(v_iter));
    Ice_Reshaped_Time_hrs_SCE2Route2_tf_iter = reshape(Ice_Time_hrs_SCE2Route2_tf,length(Array_Unit_length_Route_2(:,1)).*length(Ice_Global_Array_Unit_length_SCE2Route_2_tf(:,1))./(length(v_iter).*length(Array_Unit_length_Route_2(:,1))),length(v_iter));
    
    Ice_Reshaped_Time_days_SCE2Route2_t0_iter = [];
    for i = 1:1:length(Ice_Reshaped_Time_hrs_SCE2Route2_t0_iter(:,1))./length(Array_Unit_length_Route_2(:,1))
        Part_Time_days_SCE2Route2_t0 = Ice_Reshaped_Time_hrs_SCE2Route2_t0_iter((i-1)*length(Array_Unit_length_Route_2(:,1))+1:i*length(Array_Unit_length_Route_2(:,1)),:);
        Ice_Reshaped_Time_days_SCE2Route2_t0_iter_iter = sum(Part_Time_days_SCE2Route2_t0);
        Ice_Reshaped_Time_days_SCE2Route2_t0_iter = [Ice_Reshaped_Time_days_SCE2Route2_t0_iter; Ice_Reshaped_Time_days_SCE2Route2_t0_iter_iter];
    end
    Ice_Reshaped_Time_days_SCE2Route2_t0_iter = Ice_Reshaped_Time_days_SCE2Route2_t0_iter'; Ice_Reshaped_Time_days_SCE2Route2_t0_iter = Ice_Reshaped_Time_days_SCE2Route2_t0_iter./24;
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route2_t0_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            Ice_Reshaped_Time_days_SCE2Route2_t0_iter_iter_iter = Ice_Reshaped_Time_days_SCE2Route2_t0_iter(i,:);
            Ice_Reshaped_Time_days_SCE2Route2_t0_iter_iter_iter(Ice_Reshaped_Time_days_SCE2Route2_t0_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            Ice_Reshaped_Time_days_SCE2Route2_t0_iter(i,:) = Ice_Reshaped_Time_days_SCE2Route2_t0_iter_iter_iter;
        end
        
        Logic = Ice_Reshaped_Time_days_SCE2Route2_t0_iter > 0; Logic = Logic';
        Time = reshape(Ice_Time_hrs_SCE2Route2_t0,length(Ice_Global_Array_Unit_length_SCE2Route_2_t0(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(Ice_Reshaped_Time_hrs_SCE2Route2_t0_iter(:,1))./length(Array_Unit_length_Route_2(:,1)).*length(Array_Unit_length_Route_2(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_2(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_2(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_2(:,1)),1);
        end
        Ice_Time_hrs_SCE2Route2_t0 = Time.*Global_Logic; Ice_Time_hrs_SCE2Route2_t0 = reshape(Ice_Time_hrs_SCE2Route2_t0,length(Ice_Global_Array_Unit_length_SCE2Route_2_t0(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    Ice_Reshaped_Time_days_SCE2Route2_tm_iter = [];
    for i = 1:1:length(Ice_Reshaped_Time_hrs_SCE2Route2_tm_iter(:,1))./length(Array_Unit_length_Route_2(:,1))
        Part_Time_days_SCE2Route2_tm = Ice_Reshaped_Time_hrs_SCE2Route2_tm_iter((i-1)*length(Array_Unit_length_Route_2(:,1))+1:i*length(Array_Unit_length_Route_2(:,1)),:);
        Ice_Reshaped_Time_days_SCE2Route2_tm_iter_iter = sum(Part_Time_days_SCE2Route2_tm);
        Ice_Reshaped_Time_days_SCE2Route2_tm_iter = [Ice_Reshaped_Time_days_SCE2Route2_tm_iter; Ice_Reshaped_Time_days_SCE2Route2_tm_iter_iter];
    end
    Ice_Reshaped_Time_days_SCE2Route2_tm_iter = Ice_Reshaped_Time_days_SCE2Route2_tm_iter'; Ice_Reshaped_Time_days_SCE2Route2_tm_iter = Ice_Reshaped_Time_days_SCE2Route2_tm_iter./24;
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route2_tm_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            Ice_Reshaped_Time_days_SCE2Route2_tm_iter_iter_iter = Ice_Reshaped_Time_days_SCE2Route2_tm_iter(i,:);
            Ice_Reshaped_Time_days_SCE2Route2_tm_iter_iter_iter(Ice_Reshaped_Time_days_SCE2Route2_tm_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            Ice_Reshaped_Time_days_SCE2Route2_tm_iter(i,:) = Ice_Reshaped_Time_days_SCE2Route2_tm_iter_iter_iter;
        end
        
        Logic = Ice_Reshaped_Time_days_SCE2Route2_tm_iter > 0; Logic = Logic';
        Time = reshape(Ice_Time_hrs_SCE2Route2_tm,length(Ice_Global_Array_Unit_length_SCE2Route_2_tm(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(Ice_Reshaped_Time_hrs_SCE2Route2_tm_iter(:,1))./length(Array_Unit_length_Route_2(:,1)).*length(Array_Unit_length_Route_2(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_2(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_2(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_2(:,1)),1);
        end
        Ice_Time_hrs_SCE2Route2_tm = Time.*Global_Logic; Ice_Time_hrs_SCE2Route2_tm = reshape(Ice_Time_hrs_SCE2Route2_tm,length(Ice_Global_Array_Unit_length_SCE2Route_2_tm(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    Ice_Reshaped_Time_days_SCE2Route2_tf_iter = [];
    for i = 1:1:length(Ice_Reshaped_Time_hrs_SCE2Route2_tf_iter(:,1))./length(Array_Unit_length_Route_2(:,1))
        Part_Time_days_SCE2Route2_tf = Ice_Reshaped_Time_hrs_SCE2Route2_tf_iter((i-1)*length(Array_Unit_length_Route_2(:,1))+1:i*length(Array_Unit_length_Route_2(:,1)),:);
        Ice_Reshaped_Time_days_SCE2Route2_tf_iter_iter = sum(Part_Time_days_SCE2Route2_tf);
        Ice_Reshaped_Time_days_SCE2Route2_tf_iter = [Ice_Reshaped_Time_days_SCE2Route2_tf_iter; Ice_Reshaped_Time_days_SCE2Route2_tf_iter_iter];
    end
    Ice_Reshaped_Time_days_SCE2Route2_tf_iter = Ice_Reshaped_Time_days_SCE2Route2_tf_iter'; Ice_Reshaped_Time_days_SCE2Route2_tf_iter = Ice_Reshaped_Time_days_SCE2Route2_tf_iter./24;
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route2_tf_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            Ice_Reshaped_Time_days_SCE2Route2_tf_iter_iter_iter = Ice_Reshaped_Time_days_SCE2Route2_tf_iter(i,:);
            Ice_Reshaped_Time_days_SCE2Route2_tf_iter_iter_iter(Ice_Reshaped_Time_days_SCE2Route2_tf_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            Ice_Reshaped_Time_days_SCE2Route2_tf_iter(i,:) = Ice_Reshaped_Time_days_SCE2Route2_tf_iter_iter_iter;
        end
        
        Ice_Reshaped_Time_days_SCE2Route2_tf_iter(Ice_Reshaped_Time_days_SCE2Route2_tf_iter > 31) = 0;
        
        Logic = Ice_Reshaped_Time_days_SCE2Route2_tf_iter > 0; Logic = Logic';
        Time = reshape(Ice_Time_hrs_SCE2Route2_tf,length(Ice_Global_Array_Unit_length_SCE2Route_2_tf(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(Ice_Reshaped_Time_hrs_SCE2Route2_tf_iter(:,1))./length(Array_Unit_length_Route_2(:,1)).*length(Array_Unit_length_Route_2(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_2(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_2(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_2(:,1)),1);
        end
        Ice_Time_hrs_SCE2Route2_tf = Time.*Global_Logic; Ice_Time_hrs_SCE2Route2_tf = reshape(Ice_Time_hrs_SCE2Route2_tf,length(Ice_Global_Array_Unit_length_SCE2Route_2_tf(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    Ice_Energy_demand_SCE2Route2_t0_iter =  Ice_Total_Power_demand_SCE2Route2_t0.*Ice_Time_hrs_SCE2Route2_t0; %kWh
    Ice_Energy_demand_SCE2Route2_tm_iter =  Ice_Total_Power_demand_SCE2Route2_tm.*Ice_Time_hrs_SCE2Route2_tm;
    Ice_Energy_demand_SCE2Route2_tf_iter =  Ice_Total_Power_demand_SCE2Route2_tf.*Ice_Time_hrs_SCE2Route2_tf;
    
    %Fuel consumed
    Ice_Fuel_consumed_SCE2Route2_t0_iter = Ice_Energy_demand_SCE2Route2_t0_iter.*Ice_Operating_SFC_SCE2Route2_t0*10^-6; %Tonnes
    Ice_Fuel_consumed_SCE2Route2_tm_iter = Ice_Energy_demand_SCE2Route2_tm_iter.*Ice_Operating_SFC_SCE2Route2_tm*10^-6;
    Ice_Fuel_consumed_SCE2Route2_tf_iter = Ice_Energy_demand_SCE2Route2_tf_iter.*Ice_Operating_SFC_SCE2Route2_tf*10^-6;
    
    %Number of days requiring an icebreaker - I calculate it for each
    %individual ship design
    %t_0
    %%%%%%%%%%%%%%%
    Ice_Length_OP_Speed_SCE2Route2_t0 = length(Ice_Operating_speed_SCE2Route2_t0);
    Ice_Partitioned_length_OP_Speed_SCE2Route2_t0 = Ice_Length_OP_Speed_SCE2Route2_t0./length(v_iter);
    Ice_Reshaped_Operating_speed_SCE2Route2_t0 = reshape(Ice_Operating_speed_SCE2Route2_t0,[Ice_Partitioned_length_OP_Speed_SCE2Route2_t0,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Ice_Length_Time_hrs_SCE2Route2_t0 = length(Ice_Time_hrs_SCE2Route2_t0);
    Ice_Partitioned_length_Time_hrs_SCE2Route2_t0 = Ice_Length_Time_hrs_SCE2Route2_t0./length(v_iter);
    Ice_Reshaped_Time_hrs_SCE2Route2_t0_iter = reshape(Ice_Time_hrs_SCE2Route2_t0,[Ice_Partitioned_length_Time_hrs_SCE2Route2_t0,length(v_iter)]);
    
    Ice_Logic_Operating_speed_SCE2Route2_t0 = Ice_Reshaped_Operating_speed_SCE2Route2_t0;
    Ice_Logic_Operating_speed_SCE2Route2_t0(Ice_Logic_Operating_speed_SCE2Route2_t0 ==3) = 1;
    Ice_Logic_Operating_speed_SCE2Route2_t0(Ice_Logic_Operating_speed_SCE2Route2_t0 ~=1) = 0;
    
    Ice_IB_time_SCE2Route2_t0_iter = Ice_Logic_Operating_speed_SCE2Route2_t0.*Ice_Reshaped_Time_hrs_SCE2Route2_t0_iter;
    Ice_IB_time_SCE2Route2_t0_iter = sum(Ice_IB_time_SCE2Route2_t0_iter); Ice_IB_time_SCE2Route2_t0_iter = round(Ice_IB_time_SCE2Route2_t0_iter./24); Ice_IB_time_SCE2Route2_t0_iter =Ice_IB_time_SCE2Route2_t0_iter';
    
    Array_Unit_length_Route_2_t0 = repmat(Array_Unit_length_Route_2,sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_t0_iter),1);
    
    %t_m
    %%%%%%%%%%%%%%
    Ice_Length_OP_Speed_SCE2Route2_tm = length(Ice_Operating_speed_SCE2Route2_tm);
    Ice_Partitioned_length_OP_Speed_SCE2Route2_tm = Ice_Length_OP_Speed_SCE2Route2_tm./length(v_iter);
    Ice_Reshaped_Operating_speed_SCE2Route2_tm = reshape(Ice_Operating_speed_SCE2Route2_tm,[Ice_Partitioned_length_OP_Speed_SCE2Route2_tm,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Ice_Length_Time_hrs_SCE2Route2_tm = length(Ice_Time_hrs_SCE2Route2_tm);
    Ice_Partitioned_length_Time_hrs_SCE2Route2_tm = Ice_Length_Time_hrs_SCE2Route2_tm./length(v_iter);
    Ice_Reshaped_Time_hrs_SCE2Route2_tm_iter = reshape(Ice_Time_hrs_SCE2Route2_tm,[Ice_Partitioned_length_Time_hrs_SCE2Route2_tm,length(v_iter)]);
    
    Ice_Logic_Operating_speed_SCE2Route2_tm = Ice_Reshaped_Operating_speed_SCE2Route2_tm;
    Ice_Logic_Operating_speed_SCE2Route2_tm(Ice_Logic_Operating_speed_SCE2Route2_tm ==3) = 1;
    Ice_Logic_Operating_speed_SCE2Route2_tm(Ice_Logic_Operating_speed_SCE2Route2_tm ~=1) = 0;
    
    Ice_IB_time_SCE2Route2_tm_iter = Ice_Logic_Operating_speed_SCE2Route2_tm.*Ice_Reshaped_Time_hrs_SCE2Route2_tm_iter;
    Ice_IB_time_SCE2Route2_tm_iter = sum(Ice_IB_time_SCE2Route2_tm_iter); Ice_IB_time_SCE2Route2_tm_iter = round(Ice_IB_time_SCE2Route2_tm_iter./24); Ice_IB_time_SCE2Route2_tm_iter =Ice_IB_time_SCE2Route2_tm_iter';
    
    Array_Unit_length_Route_2_tm = repmat(Array_Unit_length_Route_2,sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tm_iter),1);
    
    %t_f
    %%%%%%%%%%%
    Ice_Length_OP_Speed_SCE2Route2_tf = length(Ice_Operating_speed_SCE2Route2_tf);
    Ice_Partitioned_length_OP_Speed_SCE2Route2_tf = Ice_Length_OP_Speed_SCE2Route2_tf./length(v_iter);
    Ice_Reshaped_Operating_speed_SCE2Route2_tf = reshape(Ice_Operating_speed_SCE2Route2_tf,[Ice_Partitioned_length_OP_Speed_SCE2Route2_tf,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Ice_Length_Time_hrs_SCE2Route2_tf = length(Ice_Time_hrs_SCE2Route2_tf);
    Ice_Partitioned_length_Time_hrs_SCE2Route2_tf = Ice_Length_Time_hrs_SCE2Route2_tf./length(v_iter);
    Ice_Reshaped_Time_hrs_SCE2Route2_tf_iter = reshape(Ice_Time_hrs_SCE2Route2_tf,[Ice_Partitioned_length_Time_hrs_SCE2Route2_tf,length(v_iter)]);
    
    Ice_Logic_Operating_speed_SCE2Route2_tf = Ice_Reshaped_Operating_speed_SCE2Route2_tf;
    Ice_Logic_Operating_speed_SCE2Route2_tf(Ice_Logic_Operating_speed_SCE2Route2_tf ==3) = 1;
    Ice_Logic_Operating_speed_SCE2Route2_tf(Ice_Logic_Operating_speed_SCE2Route2_tf ~=1) = 0;
    
    Ice_IB_time_SCE2Route2_tf_iter = Ice_Logic_Operating_speed_SCE2Route2_tf.*Ice_Reshaped_Time_hrs_SCE2Route2_tf_iter;
    Ice_IB_time_SCE2Route2_tf_iter = sum(Ice_IB_time_SCE2Route2_tf_iter); Ice_IB_time_SCE2Route2_tf_iter = round(Ice_IB_time_SCE2Route2_tf_iter./24); Ice_IB_time_SCE2Route2_tf_iter =Ice_IB_time_SCE2Route2_tf_iter';
    
    Ice_Array_Unit_length_Route_2_tf = repmat(Array_Unit_length_Route_2,sum(Logic_mat_Route_2_IceStrength_feasibility_Scenario2_tf_iter),1);
    
    %Table length
    Ice_Table_length_SCE2Route2_t0 = length(Agg_Op_speed1_SCE2Route2_iter(:));
    Ice_Table_length_SCE2Route2_tm = length(Agg_Op_speed2_SCE2Route2_iter(:));
    Ice_Table_length_SCE2Route2_tf = length(Agg_Op_speed3_SCE2Route2_iter(:));
    
    %Sum of the fuel and energy consumed
    Ice_Partitioned_length_SCE2Route2_t0 =  Ice_Table_length_SCE2Route2_t0./Ship_design_speed_length;
    Ice_Partitioned_length_SCE2Route2_tm =  Ice_Table_length_SCE2Route2_tm./Ship_design_speed_length;
    Ice_Partitioned_length_SCE2Route2_tf =  Ice_Table_length_SCE2Route2_tf./Ship_design_speed_length;
    
    %Annual fuel consumed
    Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter = reshape(Ice_Fuel_consumed_SCE2Route2_t0_iter(:), Ice_Partitioned_length_SCE2Route2_t0, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter = sum(Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter); Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter = Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter';
    
    Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter = reshape(Ice_Fuel_consumed_SCE2Route2_tm_iter(:), Ice_Partitioned_length_SCE2Route2_tm, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter = sum(Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter); Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter = Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter';
    
    Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter = reshape(Ice_Fuel_consumed_SCE2Route2_tf_iter(:), Ice_Partitioned_length_SCE2Route2_tf, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter = sum(Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter); Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter = Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter';
    
    Ice_Energy_consumed_SCE2Route2_Arctic_t_t0_iter = reshape(Ice_Energy_demand_SCE2Route2_t0_iter(:), Ice_Partitioned_length_SCE2Route2_t0, Ship_design_speed_length);
    Ice_Energy_consumed_SCE2Route2_Arctic_t_t0_iter = sum(Ice_Energy_consumed_SCE2Route2_Arctic_t_t0_iter); Ice_Energy_consumed_SCE2Route2_Arctic_t_t0_iter = Ice_Energy_consumed_SCE2Route2_Arctic_t_t0_iter';
    
    Ice_Energy_consumed_SCE2Route2_Arctic_t_tm_iter = reshape(Ice_Energy_demand_SCE2Route2_tm_iter(:), Ice_Partitioned_length_SCE2Route2_tm, Ship_design_speed_length);
    Ice_Energy_consumed_SCE2Route2_Arctic_t_tm_iter = sum(Ice_Energy_consumed_SCE2Route2_Arctic_t_tm_iter); Ice_Energy_consumed_SCE2Route2_Arctic_t_tm_iter = Ice_Energy_consumed_SCE2Route2_Arctic_t_tm_iter';
    
    Ice_Energy_consumed_SCE2Route2_Arctic_t_tf_iter = reshape(Ice_Energy_demand_SCE2Route2_tf_iter(:), Ice_Partitioned_length_SCE2Route2_tf, Ship_design_speed_length);
    Ice_Energy_consumed_SCE2Route2_Arctic_t_tf_iter = sum(Ice_Energy_consumed_SCE2Route2_Arctic_t_tf_iter); Ice_Energy_consumed_SCE2Route2_Arctic_t_tf_iter = Ice_Energy_consumed_SCE2Route2_Arctic_t_tf_iter';
    %Have to sum each of the rows to make all dimensions align
    
    % Reshaped_Time_days_SCE2Route2_t0_iter = sum(Reshaped_Time_days_SCE2Route2_t0_iter,2);
    sx = size(Ice_Reshaped_Time_days_SCE2Route2_t0);
    sy = size(Ice_Reshaped_Time_days_SCE2Route2_t0_iter');
    a = max(sx(1),sy(1));
    Ice_Reshaped_Time_days_SCE2Route2_t0 = [[Ice_Reshaped_Time_days_SCE2Route2_t0;zeros(abs([a 0]-sx))],[Ice_Reshaped_Time_days_SCE2Route2_t0_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route2_t0_iter) == 1
        Number_of_days_pm_SCE2Route2_t0_iter = 0;
        SCE2_Ice_Route2_n_t0_iter = 0;
    else
        Number_of_days_pm_SCE2Route2_t0_iter = 30.*ones(length(Ice_Reshaped_Time_days_SCE2Route2_t0_iter(:,1)),length(Ice_Reshaped_Time_days_SCE2Route2_t0_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_Ice_Route2_n_t0_iter = Number_of_days_pm_SCE2Route2_t0_iter./Ice_Reshaped_Time_days_SCE2Route2_t0_iter;
    end
    
    sx = size(SCE2_Ice_Route2_n_t0);
    sy = size(SCE2_Ice_Route2_n_t0_iter');
    a = max(sx(1),sy(1));
    SCE2_Ice_Route2_n_t0 = [[SCE2_Ice_Route2_n_t0;zeros(abs([a 0]-sx))],[SCE2_Ice_Route2_n_t0_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route2_tm_iter = sum(Reshaped_Time_days_SCE2Route2_tm_iter,2);
    sx = size(Ice_Reshaped_Time_days_SCE2Route2_tm);
    sy = size(Ice_Reshaped_Time_days_SCE2Route2_tm_iter');
    a = max(sx(1),sy(1));
    Ice_Reshaped_Time_days_SCE2Route2_tm = [[Ice_Reshaped_Time_days_SCE2Route2_tm;zeros(abs([a 0]-sx))],[Ice_Reshaped_Time_days_SCE2Route2_tm_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route2_tm_iter) == 1
        Number_of_days_pm_SCE2Route2_tm_iter = 0;
        SCE2_Ice_Route2_n_tm_iter = 0;
    else
        Number_of_days_pm_SCE2Route2_tm_iter = 30.*ones(length(Ice_Reshaped_Time_days_SCE2Route2_tm_iter(:,1)),length(Ice_Reshaped_Time_days_SCE2Route2_tm_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_Ice_Route2_n_tm_iter = Number_of_days_pm_SCE2Route2_tm_iter./Ice_Reshaped_Time_days_SCE2Route2_tm_iter;
    end
    
    sx = size(SCE2_Ice_Route2_n_tm);
    sy = size(SCE2_Ice_Route2_n_tm_iter');
    a = max(sx(1),sy(1));
    SCE2_Ice_Route2_n_tm = [[SCE2_Ice_Route2_n_tm;zeros(abs([a 0]-sx))],[SCE2_Ice_Route2_n_tm_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route2_tm_iter = sum(Reshaped_Time_days_SCE2Route2_tm_iter,2);
    sx = size(Ice_Reshaped_Time_days_SCE2Route2_tf);
    sy = size(Ice_Reshaped_Time_days_SCE2Route2_tf_iter');
    a = max(sx(1),sy(1));
    Ice_Reshaped_Time_days_SCE2Route2_tf = [[Ice_Reshaped_Time_days_SCE2Route2_tf;zeros(abs([a 0]-sx))],[Ice_Reshaped_Time_days_SCE2Route2_tf_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route2_tf_iter) == 1
        Number_of_days_pm_SCE2Route2_tf_iter = 0;
        SCE2_Ice_Route2_n_tf_iter = 0;
    else
        Number_of_days_pm_SCE2Route2_tf_iter = 30.*ones(length(Ice_Reshaped_Time_days_SCE2Route2_tf_iter(:,1)),length(Ice_Reshaped_Time_days_SCE2Route2_tf_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_Ice_Route2_n_tf_iter = Number_of_days_pm_SCE2Route2_tf_iter./Ice_Reshaped_Time_days_SCE2Route2_tf_iter;
    end
    
    sx = size(SCE2_Ice_Route2_n_tf);
    sy = size(SCE2_Ice_Route2_n_tf_iter');
    a = max(sx(1),sy(1));
    SCE2_Ice_Route2_n_tf = [[SCE2_Ice_Route2_n_tf;zeros(abs([a 0]-sx))],[SCE2_Ice_Route2_n_tf_iter';zeros(abs([a,0]-sy))]];
    
    %OW
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    NonIce_Global_Array_Unit_length_SCE2Route_2_t0 = repmat(Array_Unit_length_Route_2,length(v_iter).*sum(Logic_mat_Route_2_OW_feasibility_Scenario2_t0_iter),1); %12 months in a year
    NonIce_Global_Array_Unit_length_SCE2Route_2_tm = repmat(Array_Unit_length_Route_2,length(v_iter).*sum(Logic_mat_Route_2_OW_feasibility_Scenario2_tm_iter),1);
    NonIce_Global_Array_Unit_length_SCE2Route_2_tf = repmat(Array_Unit_length_Route_2,length(v_iter).*sum(Logic_mat_Route_2_OW_feasibility_Scenario2_tf_iter),1);
    
    NonIce_Time_hrs_SCE2Route2_t0 = NonIce_Global_Array_Unit_length_SCE2Route_2_t0./NonIce_Operating_speed_SCE2Route2_t0;
    NonIce_Time_hrs_SCE2Route2_tm = NonIce_Global_Array_Unit_length_SCE2Route_2_tm./NonIce_Operating_speed_SCE2Route2_tm;
    NonIce_Time_hrs_SCE2Route2_tf = NonIce_Global_Array_Unit_length_SCE2Route_2_tf./NonIce_Operating_speed_SCE2Route2_tf;
    
    %Reshaping the time matrices to work out the number of days spent on the
    %NSR which can be used later in the commercial profile function
    NonIce_Reshaped_Time_hrs_SCE2Route2_t0_iter = reshape(NonIce_Time_hrs_SCE2Route2_t0,length(Array_Unit_length_Route_2(:,1)).*length(NonIce_Global_Array_Unit_length_SCE2Route_2_t0(:,1))./(length(v_iter).*length(Array_Unit_length_Route_2(:,1))),length(v_iter));
    NonIce_Reshaped_Time_hrs_SCE2Route2_tm_iter = reshape(NonIce_Time_hrs_SCE2Route2_tm,length(Array_Unit_length_Route_2(:,1)).*length(NonIce_Global_Array_Unit_length_SCE2Route_2_tm(:,1))./(length(v_iter).*length(Array_Unit_length_Route_2(:,1))),length(v_iter));
    NonIce_Reshaped_Time_hrs_SCE2Route2_tf_iter = reshape(NonIce_Time_hrs_SCE2Route2_tf,length(Array_Unit_length_Route_2(:,1)).*length(NonIce_Global_Array_Unit_length_SCE2Route_2_tf(:,1))./(length(v_iter).*length(Array_Unit_length_Route_2(:,1))),length(v_iter));
    
    NonIce_Reshaped_Time_days_SCE2Route2_t0_iter = [];
    for i = 1:1:length(NonIce_Reshaped_Time_hrs_SCE2Route2_t0_iter(:,1))./length(Array_Unit_length_Route_2(:,1))
        Part_Time_days_SCE2Route2_t0 = NonIce_Reshaped_Time_hrs_SCE2Route2_t0_iter((i-1)*length(Array_Unit_length_Route_2(:,1))+1:i*length(Array_Unit_length_Route_2(:,1)),:);
        NonIce_Reshaped_Time_days_SCE2Route2_t0_iter_iter = sum(Part_Time_days_SCE2Route2_t0);
        NonIce_Reshaped_Time_days_SCE2Route2_t0_iter = [NonIce_Reshaped_Time_days_SCE2Route2_t0_iter; NonIce_Reshaped_Time_days_SCE2Route2_t0_iter_iter];
    end
    NonIce_Reshaped_Time_days_SCE2Route2_t0_iter = NonIce_Reshaped_Time_days_SCE2Route2_t0_iter'; NonIce_Reshaped_Time_days_SCE2Route2_t0_iter = NonIce_Reshaped_Time_days_SCE2Route2_t0_iter./24;
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route2_t0_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            NonIce_Reshaped_Time_days_SCE2Route2_t0_iter_iter_iter = NonIce_Reshaped_Time_days_SCE2Route2_t0_iter(i,:);
            NonIce_Reshaped_Time_days_SCE2Route2_t0_iter_iter_iter(NonIce_Reshaped_Time_days_SCE2Route2_t0_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            NonIce_Reshaped_Time_days_SCE2Route2_t0_iter(i,:) = NonIce_Reshaped_Time_days_SCE2Route2_t0_iter_iter_iter;
        end
        
        Logic = NonIce_Reshaped_Time_days_SCE2Route2_t0_iter > 0; Logic = Logic';
        Time = reshape(NonIce_Time_hrs_SCE2Route2_t0,length(NonIce_Global_Array_Unit_length_SCE2Route_2_t0(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(NonIce_Reshaped_Time_hrs_SCE2Route2_t0_iter(:,1))./length(Array_Unit_length_Route_2(:,1)).*length(Array_Unit_length_Route_2(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_2(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_2(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_2(:,1)),1);
        end
        NonIce_Time_hrs_SCE2Route2_t0 = Time.*Global_Logic; NonIce_Time_hrs_SCE2Route2_t0 = reshape(NonIce_Time_hrs_SCE2Route2_t0,length(NonIce_Global_Array_Unit_length_SCE2Route_2_t0(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    NonIce_Reshaped_Time_days_SCE2Route2_tm_iter = [];
    for i = 1:1:length(NonIce_Reshaped_Time_hrs_SCE2Route2_tm_iter(:,1))./length(Array_Unit_length_Route_2(:,1))
        Part_Time_days_SCE2Route2_tm = NonIce_Reshaped_Time_hrs_SCE2Route2_tm_iter((i-1)*length(Array_Unit_length_Route_2(:,1))+1:i*length(Array_Unit_length_Route_2(:,1)),:);
        NonIce_Reshaped_Time_days_SCE2Route2_tm_iter_iter = sum(Part_Time_days_SCE2Route2_tm);
        NonIce_Reshaped_Time_days_SCE2Route2_tm_iter = [NonIce_Reshaped_Time_days_SCE2Route2_tm_iter; NonIce_Reshaped_Time_days_SCE2Route2_tm_iter_iter];
    end
    NonIce_Reshaped_Time_days_SCE2Route2_tm_iter = NonIce_Reshaped_Time_days_SCE2Route2_tm_iter'; NonIce_Reshaped_Time_days_SCE2Route2_tm_iter = NonIce_Reshaped_Time_days_SCE2Route2_tm_iter./24;
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route2_tm_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            NonIce_Reshaped_Time_days_SCE2Route2_tm_iter_iter_iter = NonIce_Reshaped_Time_days_SCE2Route2_tm_iter(i,:);
            NonIce_Reshaped_Time_days_SCE2Route2_tm_iter_iter_iter(NonIce_Reshaped_Time_days_SCE2Route2_tm_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            NonIce_Reshaped_Time_days_SCE2Route2_tm_iter(i,:) = NonIce_Reshaped_Time_days_SCE2Route2_tm_iter_iter_iter;
        end
        
        Logic = NonIce_Reshaped_Time_days_SCE2Route2_tm_iter > 0; Logic = Logic';
        Time = reshape(NonIce_Time_hrs_SCE2Route2_tm,length(NonIce_Global_Array_Unit_length_SCE2Route_2_tm(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(NonIce_Reshaped_Time_hrs_SCE2Route2_tm_iter(:,1))./length(Array_Unit_length_Route_2(:,1)).*length(Array_Unit_length_Route_2(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_2(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_2(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_2(:,1)),1);
        end
        NonIce_Time_hrs_SCE2Route2_tm = Time.*Global_Logic; NonIce_Time_hrs_SCE2Route2_tm = reshape(NonIce_Time_hrs_SCE2Route2_tm,length(NonIce_Global_Array_Unit_length_SCE2Route_2_tm(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    NonIce_Reshaped_Time_days_SCE2Route2_tf_iter = [];
    for i = 1:1:length(NonIce_Reshaped_Time_hrs_SCE2Route2_tf_iter(:,1))./length(Array_Unit_length_Route_2(:,1))
        Part_Time_days_SCE2Route2_tf = NonIce_Reshaped_Time_hrs_SCE2Route2_tf_iter((i-1)*length(Array_Unit_length_Route_2(:,1))+1:i*length(Array_Unit_length_Route_2(:,1)),:);
        NonIce_Reshaped_Time_days_SCE2Route2_tf_iter_iter = sum(Part_Time_days_SCE2Route2_tf);
        NonIce_Reshaped_Time_days_SCE2Route2_tf_iter = [NonIce_Reshaped_Time_days_SCE2Route2_tf_iter; NonIce_Reshaped_Time_days_SCE2Route2_tf_iter_iter];
    end
    NonIce_Reshaped_Time_days_SCE2Route2_tf_iter = NonIce_Reshaped_Time_days_SCE2Route2_tf_iter'; NonIce_Reshaped_Time_days_SCE2Route2_tf_iter = NonIce_Reshaped_Time_days_SCE2Route2_tf_iter./24;
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route2_tf_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            NonIce_Reshaped_Time_days_SCE2Route2_tf_iter_iter_iter = NonIce_Reshaped_Time_days_SCE2Route2_tf_iter(i,:);
            NonIce_Reshaped_Time_days_SCE2Route2_tf_iter_iter_iter(NonIce_Reshaped_Time_days_SCE2Route2_tf_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            NonIce_Reshaped_Time_days_SCE2Route2_tf_iter(i,:) = NonIce_Reshaped_Time_days_SCE2Route2_tf_iter_iter_iter;
        end
        
        NonIce_Reshaped_Time_days_SCE2Route2_tf_iter(NonIce_Reshaped_Time_days_SCE2Route2_tf_iter > 31) = 0;
        
        Logic = NonIce_Reshaped_Time_days_SCE2Route2_tf_iter > 0; Logic = Logic';
        Time = reshape(NonIce_Time_hrs_SCE2Route2_tf,length(NonIce_Global_Array_Unit_length_SCE2Route_2_tf(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(NonIce_Reshaped_Time_hrs_SCE2Route2_tf_iter(:,1))./length(Array_Unit_length_Route_2(:,1)).*length(Array_Unit_length_Route_2(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_2(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_2(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_2(:,1)),1);
        end
        NonIce_Time_hrs_SCE2Route2_tf = Time.*Global_Logic; NonIce_Time_hrs_SCE2Route2_tf = reshape(NonIce_Time_hrs_SCE2Route2_tf,length(NonIce_Global_Array_Unit_length_SCE2Route_2_tf(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    NonIce_Energy_demand_SCE2Route2_t0_iter =  NonIce_Total_Power_demand_SCE2Route2_t0.*NonIce_Time_hrs_SCE2Route2_t0; %kWh
    NonIce_Energy_demand_SCE2Route2_tm_iter =  NonIce_Total_Power_demand_SCE2Route2_tm.*NonIce_Time_hrs_SCE2Route2_tm;
    NonIce_Energy_demand_SCE2Route2_tf_iter =  NonIce_Total_Power_demand_SCE2Route2_tf.*NonIce_Time_hrs_SCE2Route2_tf;
    
    %Fuel consumed
    NonIce_Fuel_consumed_SCE2Route2_t0_iter = NonIce_Energy_demand_SCE2Route2_t0_iter.*NonIce_Operating_SFC_SCE2Route2_t0*10^-6; %Tonnes
    NonIce_Fuel_consumed_SCE2Route2_tm_iter = NonIce_Energy_demand_SCE2Route2_tm_iter.*NonIce_Operating_SFC_SCE2Route2_tm*10^-6;
    NonIce_Fuel_consumed_SCE2Route2_tf_iter = NonIce_Energy_demand_SCE2Route2_tf_iter.*NonIce_Operating_SFC_SCE2Route2_tf*10^-6;
    
    %Number of days requiring an icebreaker - I calculate it for each
    %individual ship design
    %t_0
    %%%%%%%%%%%%%%%
    NonIce_Length_OP_Speed_SCE2Route2_t0 = length(NonIce_Operating_speed_SCE2Route2_t0);
    NonIce_Partitioned_length_OP_Speed_SCE2Route2_t0 = NonIce_Length_OP_Speed_SCE2Route2_t0./length(v_iter);
    NonIce_Reshaped_Operating_speed_SCE2Route2_t0 = reshape(NonIce_Operating_speed_SCE2Route2_t0,[NonIce_Partitioned_length_OP_Speed_SCE2Route2_t0,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    NonIce_Length_Time_hrs_SCE2Route2_t0 = length(NonIce_Time_hrs_SCE2Route2_t0);
    NonIce_Partitioned_length_Time_hrs_SCE2Route2_t0 = NonIce_Length_Time_hrs_SCE2Route2_t0./length(v_iter);
    NonIce_Reshaped_Time_hrs_SCE2Route2_t0_iter = reshape(NonIce_Time_hrs_SCE2Route2_t0,[NonIce_Partitioned_length_Time_hrs_SCE2Route2_t0,length(v_iter)]);
    
    NonIce_Logic_Operating_speed_SCE2Route2_t0 = NonIce_Reshaped_Operating_speed_SCE2Route2_t0;
    NonIce_Logic_Operating_speed_SCE2Route2_t0(NonIce_Logic_Operating_speed_SCE2Route2_t0 ==3) = 1;
    NonIce_Logic_Operating_speed_SCE2Route2_t0(NonIce_Logic_Operating_speed_SCE2Route2_t0 ~=1) = 0;
    
    NonIce_IB_time_SCE2Route2_t0_iter = NonIce_Logic_Operating_speed_SCE2Route2_t0.*NonIce_Reshaped_Time_hrs_SCE2Route2_t0_iter;
    NonIce_IB_time_SCE2Route2_t0_iter = sum(NonIce_IB_time_SCE2Route2_t0_iter); NonIce_IB_time_SCE2Route2_t0_iter = round(NonIce_IB_time_SCE2Route2_t0_iter./24); NonIce_IB_time_SCE2Route2_t0_iter =NonIce_IB_time_SCE2Route2_t0_iter';
    
    Array_Unit_length_Route_2_t0 = repmat(Array_Unit_length_Route_2,sum(Logic_mat_Route_2_OW_feasibility_Scenario2_t0_iter),1);
    
    %t_m
    %%%%%%%%%%%%%%
    NonIce_Length_OP_Speed_SCE2Route2_tm = length(NonIce_Operating_speed_SCE2Route2_tm);
    NonIce_Partitioned_length_OP_Speed_SCE2Route2_tm = NonIce_Length_OP_Speed_SCE2Route2_tm./length(v_iter);
    NonIce_Reshaped_Operating_speed_SCE2Route2_tm = reshape(NonIce_Operating_speed_SCE2Route2_tm,[NonIce_Partitioned_length_OP_Speed_SCE2Route2_tm,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    NonIce_Length_Time_hrs_SCE2Route2_tm = length(NonIce_Time_hrs_SCE2Route2_tm);
    NonIce_Partitioned_length_Time_hrs_SCE2Route2_tm = NonIce_Length_Time_hrs_SCE2Route2_tm./length(v_iter);
    NonIce_Reshaped_Time_hrs_SCE2Route2_tm_iter = reshape(NonIce_Time_hrs_SCE2Route2_tm,[NonIce_Partitioned_length_Time_hrs_SCE2Route2_tm,length(v_iter)]);
    
    NonIce_Logic_Operating_speed_SCE2Route2_tm = NonIce_Reshaped_Operating_speed_SCE2Route2_tm;
    NonIce_Logic_Operating_speed_SCE2Route2_tm(NonIce_Logic_Operating_speed_SCE2Route2_tm ==3) = 1;
    NonIce_Logic_Operating_speed_SCE2Route2_tm(NonIce_Logic_Operating_speed_SCE2Route2_tm ~=1) = 0;
    
    NonIce_IB_time_SCE2Route2_tm_iter = NonIce_Logic_Operating_speed_SCE2Route2_tm.*NonIce_Reshaped_Time_hrs_SCE2Route2_tm_iter;
    NonIce_IB_time_SCE2Route2_tm_iter = sum(NonIce_IB_time_SCE2Route2_tm_iter); NonIce_IB_time_SCE2Route2_tm_iter = round(NonIce_IB_time_SCE2Route2_tm_iter./24); NonIce_IB_time_SCE2Route2_tm_iter =NonIce_IB_time_SCE2Route2_tm_iter';
    
    Array_Unit_length_Route_2_tm = repmat(Array_Unit_length_Route_2,sum(Logic_mat_Route_2_OW_feasibility_Scenario2_tm_iter),1);
    
    %t_f
    %%%%%%%%%%%
    NonIce_Length_OP_Speed_SCE2Route2_tf = length(NonIce_Operating_speed_SCE2Route2_tf);
    NonIce_Partitioned_length_OP_Speed_SCE2Route2_tf = NonIce_Length_OP_Speed_SCE2Route2_tf./length(v_iter);
    NonIce_Reshaped_Operating_speed_SCE2Route2_tf = reshape(NonIce_Operating_speed_SCE2Route2_tf,[NonIce_Partitioned_length_OP_Speed_SCE2Route2_tf,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    NonIce_Length_Time_hrs_SCE2Route2_tf = length(NonIce_Time_hrs_SCE2Route2_tf);
    NonIce_Partitioned_length_Time_hrs_SCE2Route2_tf = NonIce_Length_Time_hrs_SCE2Route2_tf./length(v_iter);
    NonIce_Reshaped_Time_hrs_SCE2Route2_tf_iter = reshape(NonIce_Time_hrs_SCE2Route2_tf,[NonIce_Partitioned_length_Time_hrs_SCE2Route2_tf,length(v_iter)]);
    
    NonIce_Logic_Operating_speed_SCE2Route2_tf = NonIce_Reshaped_Operating_speed_SCE2Route2_tf;
    NonIce_Logic_Operating_speed_SCE2Route2_tf(NonIce_Logic_Operating_speed_SCE2Route2_tf ==3) = 1;
    NonIce_Logic_Operating_speed_SCE2Route2_tf(NonIce_Logic_Operating_speed_SCE2Route2_tf ~=1) = 0;
    
    NonIce_IB_time_SCE2Route2_tf_iter = NonIce_Logic_Operating_speed_SCE2Route2_tf.*NonIce_Reshaped_Time_hrs_SCE2Route2_tf_iter;
    NonIce_IB_time_SCE2Route2_tf_iter = sum(NonIce_IB_time_SCE2Route2_tf_iter); NonIce_IB_time_SCE2Route2_tf_iter = round(NonIce_IB_time_SCE2Route2_tf_iter./24); NonIce_IB_time_SCE2Route2_tf_iter =NonIce_IB_time_SCE2Route2_tf_iter';
    
    NonIce_Array_Unit_length_Route_2_tf = repmat(Array_Unit_length_Route_2,sum(Logic_mat_Route_2_OW_feasibility_Scenario2_tf_iter),1);
    
    %Table length
    NonIce_Table_length_SCE2Route2_t0 = length(OW_Agg_Op_speed1_SCE2Route2_iter(:));
    NonIce_Table_length_SCE2Route2_tm = length(OW_Agg_Op_speed2_SCE2Route2_iter(:));
    NonIce_Table_length_SCE2Route2_tf = length(OW_Agg_Op_speed3_SCE2Route2_iter(:));
    
    %Sum of the fuel and energy consumed
    NonIce_Partitioned_length_SCE2Route2_t0 =  NonIce_Table_length_SCE2Route2_t0./Ship_design_speed_length;
    NonIce_Partitioned_length_SCE2Route2_tm =  NonIce_Table_length_SCE2Route2_tm./Ship_design_speed_length;
    NonIce_Partitioned_length_SCE2Route2_tf =  NonIce_Table_length_SCE2Route2_tf./Ship_design_speed_length;
    
    %Annual fuel consumed
    NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter = reshape(NonIce_Fuel_consumed_SCE2Route2_t0_iter(:), NonIce_Partitioned_length_SCE2Route2_t0, Ship_design_speed_length);
    NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter = sum(NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter); NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter = NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter';
    
    NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter = reshape(NonIce_Fuel_consumed_SCE2Route2_tm_iter(:), NonIce_Partitioned_length_SCE2Route2_tm, Ship_design_speed_length);
    NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter = sum(NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter); NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter = NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter';
    
    NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter = reshape(NonIce_Fuel_consumed_SCE2Route2_tf_iter(:), NonIce_Partitioned_length_SCE2Route2_tf, Ship_design_speed_length);
    NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter = sum(NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter); NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter = NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter';
    
    NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0_iter = reshape(NonIce_Energy_demand_SCE2Route2_t0_iter(:), NonIce_Partitioned_length_SCE2Route2_t0, Ship_design_speed_length);
    NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0_iter = sum(NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0_iter); NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0_iter = NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0_iter';
    
    NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm_iter = reshape(NonIce_Energy_demand_SCE2Route2_tm_iter(:), NonIce_Partitioned_length_SCE2Route2_tm, Ship_design_speed_length);
    NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm_iter = sum(NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm_iter); NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm_iter = NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm_iter';
    
    NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf_iter = reshape(NonIce_Energy_demand_SCE2Route2_tf_iter(:), NonIce_Partitioned_length_SCE2Route2_tf, Ship_design_speed_length);
    NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf_iter = sum(NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf_iter); NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf_iter = NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf_iter';
    %Have to sum each of the rows to make all dimensions align
    
    % Reshaped_Time_days_SCE2Route2_t0_iter = sum(Reshaped_Time_days_SCE2Route2_t0_iter,2);
    sx = size(NonIce_Reshaped_Time_days_SCE2Route2_t0);
    sy = size(NonIce_Reshaped_Time_days_SCE2Route2_t0_iter');
    a = max(sx(1),sy(1));
    NonIce_Reshaped_Time_days_SCE2Route2_t0 = [[NonIce_Reshaped_Time_days_SCE2Route2_t0;zeros(abs([a 0]-sx))],[NonIce_Reshaped_Time_days_SCE2Route2_t0_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route2_t0_iter) == 1
        Number_of_days_pm_SCE2Route2_t0_iter = 0;
        SCE2_NonIce_Route2_n_t0_iter = 0;
    else
        Number_of_days_pm_SCE2Route2_t0_iter = 30.*ones(length(NonIce_Reshaped_Time_days_SCE2Route2_t0_iter(:,1)),length(NonIce_Reshaped_Time_days_SCE2Route2_t0_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_NonIce_Route2_n_t0_iter = Number_of_days_pm_SCE2Route2_t0_iter./NonIce_Reshaped_Time_days_SCE2Route2_t0_iter;
    end
    
    sx = size(SCE2_NonIce_Route2_n_t0);
    sy = size(SCE2_NonIce_Route2_n_t0_iter');
    a = max(sx(1),sy(1));
    SCE2_NonIce_Route2_n_t0 = [[SCE2_NonIce_Route2_n_t0;zeros(abs([a 0]-sx))],[SCE2_NonIce_Route2_n_t0_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route2_tm_iter = sum(Reshaped_Time_days_SCE2Route2_tm_iter,2);
    sx = size(NonIce_Reshaped_Time_days_SCE2Route2_tm);
    sy = size(NonIce_Reshaped_Time_days_SCE2Route2_tm_iter');
    a = max(sx(1),sy(1));
    NonIce_Reshaped_Time_days_SCE2Route2_tm = [[NonIce_Reshaped_Time_days_SCE2Route2_tm;zeros(abs([a 0]-sx))],[NonIce_Reshaped_Time_days_SCE2Route2_tm_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route2_tm_iter) == 1
        Number_of_days_pm_SCE2Route2_tm_iter = 0;
        SCE2_NonIce_Route2_n_tm_iter = 0;
    else
        Number_of_days_pm_SCE2Route2_tm_iter = 30.*ones(length(NonIce_Reshaped_Time_days_SCE2Route2_tm_iter(:,1)),length(NonIce_Reshaped_Time_days_SCE2Route2_tm_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_NonIce_Route2_n_tm_iter = Number_of_days_pm_SCE2Route2_tm_iter./NonIce_Reshaped_Time_days_SCE2Route2_tm_iter;
    end
    
    sx = size(SCE2_NonIce_Route2_n_tm);
    sy = size(SCE2_NonIce_Route2_n_tm_iter');
    a = max(sx(1),sy(1));
    SCE2_NonIce_Route2_n_tm = [[SCE2_NonIce_Route2_n_tm;zeros(abs([a 0]-sx))],[SCE2_NonIce_Route2_n_tm_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route2_tf_iter = sum(Reshaped_Time_days_SCE2Route2_tf_iter,2);
        % Reshaped_Time_days_SCE2Route2_tm_iter = sum(Reshaped_Time_days_SCE2Route2_tm_iter,2);
    sx = size(NonIce_Reshaped_Time_days_SCE2Route2_tf);
    sy = size(NonIce_Reshaped_Time_days_SCE2Route2_tf_iter');
    a = max(sx(1),sy(1));
    NonIce_Reshaped_Time_days_SCE2Route2_tf = [[NonIce_Reshaped_Time_days_SCE2Route2_tf;zeros(abs([a 0]-sx))],[NonIce_Reshaped_Time_days_SCE2Route2_tf_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route2_tf_iter) == 1
        Number_of_days_pm_SCE2Route2_tf_iter = 0;
        SCE2_NonIce_Route2_n_tf_iter = 0;
    else
        Number_of_days_pm_SCE2Route2_tf_iter = 30.*ones(length(NonIce_Reshaped_Time_days_SCE2Route2_tf_iter(:,1)),length(NonIce_Reshaped_Time_days_SCE2Route2_tf_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_NonIce_Route2_n_tf_iter = Number_of_days_pm_SCE2Route2_tf_iter./NonIce_Reshaped_Time_days_SCE2Route2_tf_iter;
    end
    
    sx = size(SCE2_NonIce_Route2_n_tf);
    sy = size(SCE2_NonIce_Route2_n_tf_iter');
    a = max(sx(1),sy(1));
    SCE2_NonIce_Route2_n_tf = [[SCE2_NonIce_Route2_n_tf;zeros(abs([a 0]-sx))],[SCE2_NonIce_Route2_n_tf_iter';zeros(abs([a,0]-sy))]];
    
    IB_time_SCE2Route2_t0 = [IB_time_SCE2Route2_t0; Ice_IB_time_SCE2Route2_t0_iter];
    IB_time_SCE2Route2_tm = [IB_time_SCE2Route2_tm; Ice_IB_time_SCE2Route2_tm_iter];
    IB_time_SCE2Route2_tf = [IB_time_SCE2Route2_tf; Ice_IB_time_SCE2Route2_tf_iter];
    
    Agg_Op_speed1_SCE2Route2 = [Agg_Op_speed1_SCE2Route2; Agg_Op_speed1_SCE2Route2_iter];
    Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0 = [Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0; Ice_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter];
    Ice_Energy_consumed_SCE2Route2_Arctic_t_t0 = [Ice_Energy_consumed_SCE2Route2_Arctic_t_t0; Ice_Energy_consumed_SCE2Route2_Arctic_t_t0_iter];
    
    Agg_Op_speed2_SCE2Route2 = [Agg_Op_speed2_SCE2Route2; Agg_Op_speed2_SCE2Route2_iter];
    Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm = [Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm; Ice_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter];
    Ice_Energy_consumed_SCE2Route2_Arctic_t_tm = [Ice_Energy_consumed_SCE2Route2_Arctic_t_tm; Ice_Energy_consumed_SCE2Route2_Arctic_t_tm_iter];
    
    Agg_Op_speed3_SCE2Route2 = [Agg_Op_speed3_SCE2Route2; Agg_Op_speed3_SCE2Route2_iter];
    Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf = [Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf; Ice_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter];
    Ice_Energy_consumed_SCE2Route2_Arctic_t_tf = [Ice_Energy_consumed_SCE2Route2_Arctic_t_tf; Ice_Energy_consumed_SCE2Route2_Arctic_t_tf_iter];
    
    NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0 = [NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0; NonIce_Fuel_consumed_SCE2Route2_Arctic_t_t0_iter];
    NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0 = [NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0; NonIce_Energy_consumed_SCE2Route2_Arctic_t_t0_iter];
    
    NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm = [NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm; NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tm_iter];
    NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm = [NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm; NonIce_Energy_consumed_SCE2Route2_Arctic_t_tm_iter];
    
    NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf = [NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf; NonIce_Fuel_consumed_SCE2Route2_Arctic_t_tf_iter];
    NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf = [NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf; NonIce_Energy_consumed_SCE2Route2_Arctic_t_tf_iter];
    
    %Route 3
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %t_0
    %%%%%%%%%%%
    Agg_Op_speed1_SCE2Route3_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed1_SCE2Route3_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Agg_Op_speed1_SCE2Route3_iter = [Agg_Op_speed1_SCE2Route3_iter; Agg_Op_speed1_SCE2Route3_iter_iter];
    end
    
    Agg_Psi_iter = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Agg_Psi_iter = [Agg_Psi_iter; Agg_Psi_iter_iter];
    end
    
    Agg_Alpha_iter = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Agg_Alpha_iter = [Agg_Alpha_iter; Agg_Alpha_iter_iter];
    end
    
    Agg_length1_SCE2Route3 = [];
    for i = 1:1:length(Length_iter)
        Agg_length1_SCE2Route3_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Agg_length1_SCE2Route3 = [Agg_length1_SCE2Route3; Agg_length1_SCE2Route3_iter];
    end
    
    Agg_draught1_SCE2Route3= [];
    for i = 1:1:length(T_iter)
        Agg_draught1_SCE2Route3_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Agg_draught1_SCE2Route3 = [Agg_draught1_SCE2Route3; Agg_draught1_SCE2Route3_iter];
    end
    
    Ice_OW_Resistance_N_SCE2Route3_t0 = [];
    for i = 1:1:length(v_iter)
        Ice_OW_Resistance_N_SCE2Route3_t0_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Ice_OW_Resistance_N_SCE2Route3_t0 = [Ice_OW_Resistance_N_SCE2Route3_t0; Ice_OW_Resistance_N_SCE2Route3_t0_iter];
    end
    
    C_T_SCE2Route3_t0 = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE2Route3_t0_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        C_T_SCE2Route3_t0 = [C_T_SCE2Route3_t0; C_T_SCE2Route3_t0_iter];
    end
    
    S_SCE2Route3_t0 = [];
    for i = 1:1:length(S_iter)
        S_SCE2Route3_t0_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        S_SCE2Route3_t0 = [S_SCE2Route3_t0; S_SCE2Route3_t0_iter];
    end
    
    %t_m
    %%%%%%%%%%%
    
    Agg_Op_speed2_SCE2Route3_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed2_SCE2Route3_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Agg_Op_speed2_SCE2Route3_iter = [Agg_Op_speed2_SCE2Route3_iter; Agg_Op_speed2_SCE2Route3_iter_iter];
    end
    
    Agg_length2_SCE2Route3 = [];
    for i = 1:1:length(Length_iter)
        Agg_length2_SCE2Route3_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Agg_length2_SCE2Route3 = [Agg_length2_SCE2Route3; Agg_length2_SCE2Route3_iter];
    end
    
    Agg_Psi_iter_tm = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter_tm = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Agg_Psi_iter_tm = [Agg_Psi_iter_tm; Agg_Psi_iter_iter_tm];
    end
    
    Agg_Alpha_iter_tm = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter_tm = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Agg_Alpha_iter_tm = [Agg_Alpha_iter_tm; Agg_Alpha_iter_iter_tm];
    end
    
    Agg_draught2_SCE2Route3= [];
    for i = 1:1:length(T_iter)
        Agg_draught2_SCE2Route3_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Agg_draught2_SCE2Route3 = [Agg_draught2_SCE2Route3; Agg_draught2_SCE2Route3_iter];
    end
    
    Ice_OW_Resistance_N_SCE2Route3_tm = [];
    for i = 1:1:length(v_iter)
        Ice_OW_Resistance_N_SCE2Route3_tm_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Ice_OW_Resistance_N_SCE2Route3_tm = [Ice_OW_Resistance_N_SCE2Route3_tm; Ice_OW_Resistance_N_SCE2Route3_tm_iter];
    end
    
    C_T_SCE2Route3_tm = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE2Route3_tm_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        C_T_SCE2Route3_tm = [C_T_SCE2Route3_tm; C_T_SCE2Route3_tm_iter];
    end
    
    S_SCE2Route3_tm = [];
    for i = 1:1:length(S_iter)
        S_SCE2Route3_tm_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        S_SCE2Route3_tm = [S_SCE2Route3_tm; S_SCE2Route3_tm_iter];
    end
    
    %t_f
    %%%%%%%%%%%
    Agg_Op_speed3_SCE2Route3_iter = [];
    for i = 1:1:length(v_iter)
        Agg_Op_speed3_SCE2Route3_iter_iter = repmat(v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Agg_Op_speed3_SCE2Route3_iter = [Agg_Op_speed3_SCE2Route3_iter; Agg_Op_speed3_SCE2Route3_iter_iter];
    end
    
    Agg_length3_SCE2Route3 = [];
    for i = 1:1:length(Length_iter)
        Agg_length3_SCE2Route3_iter = repmat(Length_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Agg_length3_SCE2Route3 = [Agg_length3_SCE2Route3; Agg_length3_SCE2Route3_iter];
    end
    
    Agg_Psi_iter_tf = [];
    for i = 1:1:length(Psi_iter)
        Agg_Psi_iter_iter_tf = repmat(Psi_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Agg_Psi_iter_tf = [Agg_Psi_iter_tf; Agg_Psi_iter_iter_tf];
    end
    
    Agg_Alpha_iter_tf = [];
    for i = 1:1:length(Alpha_iter)
        Agg_Alpha_iter_iter_tf = repmat(Alpha_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Agg_Alpha_iter_tf = [Agg_Alpha_iter_tf; Agg_Alpha_iter_iter_tf];
    end
    
    Agg_draught3_SCE2Route3= [];
    for i = 1:1:length(T_iter)
        Agg_draught3_SCE2Route3_iter = repmat(T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Agg_draught3_SCE2Route3 = [Agg_draught3_SCE2Route3; Agg_draught3_SCE2Route3_iter];
    end
    
    Ice_OW_Resistance_N_SCE2Route3_tf = [];
    for i = 1:1:length(v_iter)
        Ice_OW_Resistance_N_SCE2Route3_tf_iter = repmat(Ice_OW_Resistance_N_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Ice_OW_Resistance_N_SCE2Route3_tf = [Ice_OW_Resistance_N_SCE2Route3_tf; Ice_OW_Resistance_N_SCE2Route3_tf_iter];
    end
    
    C_T_SCE2Route3_tf = [];
    for i = 1:1:length(C_T_iter)
        C_T_SCE2Route3_tf_iter = repmat(C_T_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        C_T_SCE2Route3_tf = [C_T_SCE2Route3_tf; C_T_SCE2Route3_tf_iter];
    end
    
    S_SCE2Route3_tf = [];
    for i = 1:1:length(S_iter)
        S_SCE2Route3_tf_iter = repmat(S_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        S_SCE2Route3_tf = [S_SCE2Route3_tf; S_SCE2Route3_tf_iter];
    end
    
    %t_0
    %%%%%%%%%%%
    OW_Agg_Op_speed1_SCE2Route3_iter = [];
    for i = 1:1:length(v_iter)
        OW_Agg_Op_speed1_SCE2Route3_iter_iter = repmat(v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        OW_Agg_Op_speed1_SCE2Route3_iter = [OW_Agg_Op_speed1_SCE2Route3_iter; OW_Agg_Op_speed1_SCE2Route3_iter_iter];
    end
    
    OW_Agg_Psi_iter = [];
    for i = 1:1:length(Psi_iter)
        OW_Agg_Psi_iter_iter = repmat(Psi_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        OW_Agg_Psi_iter = [OW_Agg_Psi_iter; OW_Agg_Psi_iter_iter];
    end
    
    OW_Agg_Alpha_iter = [];
    for i = 1:1:length(Alpha_iter)
        OW_Agg_Alpha_iter_iter = repmat(Alpha_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        OW_Agg_Alpha_iter = [OW_Agg_Alpha_iter; OW_Agg_Alpha_iter_iter];
    end
    
    OW_Agg_length1_SCE2Route3 = [];
    for i = 1:1:length(Length_iter)
        OW_Agg_length1_SCE2Route3_iter = repmat(Length_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        OW_Agg_length1_SCE2Route3 = [OW_Agg_length1_SCE2Route3; OW_Agg_length1_SCE2Route3_iter];
    end
    
    OW_Agg_draught1_SCE2Route3= [];
    for i = 1:1:length(T_iter)
        OW_Agg_draught1_SCE2Route3_iter = repmat(T_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        OW_Agg_draught1_SCE2Route3 = [OW_Agg_draught1_SCE2Route3; OW_Agg_draught1_SCE2Route3_iter];
    end
    
    NonIce_OW_Resistance_N_SCE2Route3_t0 = [];
    for i = 1:1:length(v_iter)
        NonIce_OW_Resistance_N_SCE2Route3_t0_iter = repmat(NonIce_OW_Resistance_N_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        NonIce_OW_Resistance_N_SCE2Route3_t0 = [NonIce_OW_Resistance_N_SCE2Route3_t0; NonIce_OW_Resistance_N_SCE2Route3_t0_iter];
    end
    
    
    %t_m
    %%%%%%%%%%%
    
    OW_Agg_Op_speed2_SCE2Route3_iter = [];
    for i = 1:1:length(v_iter)
        OW_Agg_Op_speed2_SCE2Route3_iter_iter = repmat(v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        OW_Agg_Op_speed2_SCE2Route3_iter = [OW_Agg_Op_speed2_SCE2Route3_iter; OW_Agg_Op_speed2_SCE2Route3_iter_iter];
    end
    
    OW_Agg_length2_SCE2Route3 = [];
    for i = 1:1:length(Length_iter)
        OW_Agg_length2_SCE2Route3_iter = repmat(Length_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        OW_Agg_length2_SCE2Route3 = [OW_Agg_length2_SCE2Route3; OW_Agg_length2_SCE2Route3_iter];
    end
    
    OW_Agg_Psi_iter_tm = [];
    for i = 1:1:length(Psi_iter)
        OW_Agg_Psi_iter_iter_tm = repmat(Psi_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        OW_Agg_Psi_iter_tm = [OW_Agg_Psi_iter_tm; OW_Agg_Psi_iter_iter_tm];
    end
    
    OW_Agg_Alpha_iter_tm = [];
    for i = 1:1:length(Alpha_iter)
        OW_Agg_Alpha_iter_iter_tm = repmat(Alpha_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        OW_Agg_Alpha_iter_tm = [OW_Agg_Alpha_iter_tm; OW_Agg_Alpha_iter_iter_tm];
    end
    
    OW_Agg_draught2_SCE2Route3= [];
    for i = 1:1:length(T_iter)
        OW_Agg_draught2_SCE2Route3_iter = repmat(T_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        OW_Agg_draught2_SCE2Route3 = [OW_Agg_draught2_SCE2Route3; OW_Agg_draught2_SCE2Route3_iter];
    end
    
    NonIce_OW_Resistance_N_SCE2Route3_tm = [];
    for i = 1:1:length(v_iter)
        NonIce_OW_Resistance_N_SCE2Route3_tm_iter = repmat(NonIce_OW_Resistance_N_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        NonIce_OW_Resistance_N_SCE2Route3_tm = [NonIce_OW_Resistance_N_SCE2Route3_tm; NonIce_OW_Resistance_N_SCE2Route3_tm_iter];
    end
    
    
    %t_f
    %%%%%%%%%%%
    OW_Agg_Op_speed3_SCE2Route3_iter = [];
    for i = 1:1:length(v_iter)
        OW_Agg_Op_speed3_SCE2Route3_iter_iter = repmat(v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        OW_Agg_Op_speed3_SCE2Route3_iter = [OW_Agg_Op_speed3_SCE2Route3_iter; OW_Agg_Op_speed3_SCE2Route3_iter_iter];
    end
    
    OW_Agg_length3_SCE2Route3 = [];
    for i = 1:1:length(Length_iter)
        OW_Agg_length3_SCE2Route3_iter = repmat(Length_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        OW_Agg_length3_SCE2Route3 = [OW_Agg_length3_SCE2Route3; OW_Agg_length3_SCE2Route3_iter];
    end
    
    OW_Agg_Psi_iter_tf = [];
    for i = 1:1:length(Psi_iter)
        OW_Agg_Psi_iter_iter_tf = repmat(Psi_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        OW_Agg_Psi_iter_tf = [OW_Agg_Psi_iter_tf; OW_Agg_Psi_iter_iter_tf];
    end
    
    OW_Agg_Alpha_iter_tf = [];
    for i = 1:1:length(Alpha_iter)
        OW_Agg_Alpha_iter_iter_tf = repmat(Alpha_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        OW_Agg_Alpha_iter_tf = [OW_Agg_Alpha_iter_tf; OW_Agg_Alpha_iter_iter_tf];
    end
    
    OW_Agg_draught3_SCE2Route3= [];
    for i = 1:1:length(T_iter)
        OW_Agg_draught3_SCE2Route3_iter = repmat(T_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        OW_Agg_draught3_SCE2Route3 = [OW_Agg_draught3_SCE2Route3; OW_Agg_draught3_SCE2Route3_iter];
    end
    
    NonIce_OW_Resistance_N_SCE2Route3_tf = [];
    for i = 1:1:length(v_iter)
        NonIce_OW_Resistance_N_SCE2Route3_tf_iter = repmat(NonIce_OW_Resistance_N_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        NonIce_OW_Resistance_N_SCE2Route3_tf = [NonIce_OW_Resistance_N_SCE2Route3_tf; NonIce_OW_Resistance_N_SCE2Route3_tf_iter];
    end
    
    Ice_Total_Resistance_SCE2Route3_kN_t0 = [];
    Ice_Operating_speed_SCE2Route3_t0 = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route3 = Agg_Op_speed1_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_t0_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE2Route3_t0 = Ice_OW_Resistance_N_SCE2Route3_t0_iter.*Op_speed_metrespersec1_SCE2Route3;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route3 = Agg_Op_speed1_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_t0_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE2Route3_t0 = Ice_OW_Resistance_N_SCE2Route3_t0_iter.*Op_speed_metrespersec1_SCE2Route3;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route3 = Agg_Op_speed1_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_t0_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE2Route3_t0 = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec1_SCE2Route3;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route3 = Agg_Op_speed1_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_t0_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE2Route3_t0 = Ice_OW_Resistance_N_SCE2Route3_t0_iter.*Op_speed_metrespersec1_SCE2Route3;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length
            
            Op_speed_metrespersec1_SCE2Route3 = Agg_Op_speed1_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_t0_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE2Route3_t0 = Ice_OW_Resistance_N_SCE2Route3_t0_iter.*Op_speed_metrespersec1_SCE2Route3;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0(i) > 0.3
            
            Vertical_force_SCE2Route3_t0 = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0(i)).^2;
            
            A_SCE2Route3 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter(i)));
            B_SCE2Route3 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter(i)));
            
            Crushing_Resistance_component_SCE2Route3_t0 = Vertical_force_SCE2Route3_t0.*(A_SCE2Route3./B_SCE2Route3);
            
            C1_SCE2Route3 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE2Route3 = tan(Agg_Psi_iter(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter(i)).*cos(Agg_Psi_iter(i))));
            E_SCE2Route3 = (1+(1./cos(Agg_Psi_iter(i))));
            
            Bending_Resistance_component_SCE2Route3_t0 = C1_SCE2Route3.*D_SCE2Route3.*E_SCE2Route3;
            
            F1_SCE2Route3 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0(i));
            G1_SCE2Route3 = Agg_draught1_SCE2Route3(i).*(Beam_iter+Agg_draught1_SCE2Route3(i))./(Beam_iter+(2*Agg_draught1_SCE2Route3(i)));
            H1_SCE2Route3 = 0.7.*Agg_length1_SCE2Route3(i); %70% assumed from Lindqvist
            I1_SCE2Route3 = Agg_draught1_SCE2Route3(i)./tan(Phi_iter);
            J1_SCE2Route3 = Beam_iter./(4.*tan(Agg_Alpha_iter(i)));
            K1_SCE2Route3 = Agg_draught1_SCE2Route3(i).*cos(Phi_iter).*cos(Agg_Psi_iter(i));
            K_part1_SCE2Route3  = 1./(sin(Phi_iter.^2));
            K_part2_SCE2Route3  = 1./(tan(Agg_Alpha_iter(i).^2));
            K_part3_SCE2Route3 = (K_part1_SCE2Route3+K_part2_SCE2Route3).^0.5;
            
            Submersion_Resistance_component_SCE2Route3_t0 = F1_SCE2Route3.*Beam_iter.*(G1_SCE2Route3+Mu.*(H1_SCE2Route3-I1_SCE2Route3-J1_SCE2Route3+(K1_SCE2Route3.*K_part3_SCE2Route3)));
            Agg_Crushing_Resistance_component_SCE2Route3_t0 = Crushing_Resistance_component_SCE2Route3_t0;
            Agg_Bending_Resistance_component_SCE2Route3_t0 = Bending_Resistance_component_SCE2Route3_t0;
            
            L1_SCE2Route3 = (Agg_Crushing_Resistance_component_SCE2Route3_t0 + Agg_Bending_Resistance_component_SCE2Route3_t0);
            M1_SCE2Route3 = (1+((1.4*Op_speed_metrespersec1_SCE2Route3)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0(i)).^0.5)));
            N1_SCE2Route3 = Submersion_Resistance_component_SCE2Route3_t0.*(1+((9.4.*Op_speed_metrespersec1_SCE2Route3)./((g.*Agg_length1_SCE2Route3(i)).^0.5)));
            
            Total_Ice_Resistance_SCE2Route3_t0 = (L1_SCE2Route3.*M1_SCE2Route3)+N1_SCE2Route3;
            Total_Resistance_SCE2Route3_t0_iter = Ice_OW_Resistance_N_SCE2Route3_t0_iter + Total_Ice_Resistance_SCE2Route3_t0;
            
            Operating_speed_SCE2Route3_t0_iter = (Effective_power_SCE2Route3_t0./Total_Resistance_SCE2Route3_t0_iter);
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs = Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0(i)./Agg_Annual_sea_ice_conc_encountered_SCE2Route3_t0(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec1_SCE2Route3./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route3_t0(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE2Route3_t0(i).^5.196);
            
            Total_Ice_Resistance_SCE2Route3_t0 = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route3_t0(i)).*(Op_speed_metrespersec1_SCE2Route3.^2);
            Total_Resistance_SCE2Route3_t0_iter = Ice_OW_Resistance_N_SCE2Route3_t0_iter + Total_Ice_Resistance_SCE2Route3_t0;
            
            Operating_speed_SCE2Route3_t0_iter = (Effective_power_SCE2Route3_t0./Total_Resistance_SCE2Route3_t0_iter);
            
        end
        Ice_Total_Resistance_SCE2Route3_kN_t0 = [Ice_Total_Resistance_SCE2Route3_kN_t0; Total_Resistance_SCE2Route3_t0_iter];
        Ice_Operating_speed_SCE2Route3_t0 = [Ice_Operating_speed_SCE2Route3_t0; Operating_speed_SCE2Route3_t0_iter];
    end
    
    %OW
    NonIce_Total_Resistance_SCE2Route3_kN_t0 = [];
    NonIce_Operating_speed_SCE2Route3_t0 = [];
    for i = 1:1:length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)
        
        if i <= length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route3 = OW_Agg_Op_speed1_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_t0_iter = NonIce_OW_Resistance_N_iter(1);
            OW_Effective_power_SCE2Route3_t0 = NonIce_OW_Resistance_N_SCE2Route3_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route3;
            
        elseif i <= 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length && i > length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route3 = OW_Agg_Op_speed1_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_t0_iter = NonIce_OW_Resistance_N_iter(2);
            OW_Effective_power_SCE2Route3_t0 = NonIce_OW_Resistance_N_SCE2Route3_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route3;
            
        elseif i <= 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length && i > 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route3 = OW_Agg_Op_speed1_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_t0_iter = NonIce_OW_Resistance_N_iter(3);
            OW_Effective_power_SCE2Route3_t0 = NonIce_OW_Resistance_N_iter(3).*OW_Op_speed_metrespersec1_SCE2Route3;
            
        elseif i <= 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length && i > 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route3 = OW_Agg_Op_speed1_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_t0_iter = NonIce_OW_Resistance_N_iter(4);
            OW_Effective_power_SCE2Route3_t0 = NonIce_OW_Resistance_N_SCE2Route3_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route3;
            
        elseif i <= 5.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length && i > 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec1_SCE2Route3 = OW_Agg_Op_speed1_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_t0_iter = NonIce_OW_Resistance_N_iter(5);
            OW_Effective_power_SCE2Route3_t0 = NonIce_OW_Resistance_N_SCE2Route3_t0_iter.*OW_Op_speed_metrespersec1_SCE2Route3;
            
        end
        
        %Ice floe resistance calculation
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs = OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0(i)./OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_t0(i);
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs(isnan(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs)) = 0;
        
        Pack_Ice_Floe_Froude_number = OW_Op_speed_metrespersec1_SCE2Route3./((9.81.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_t0(i)).^0.5);
        Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
        
        C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs)./Beam_iter).^1.019).*(OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_t0(i).^5.196);
        
        Total_Ice_Resistance_SCE2Route3_t0 = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_t0(i)).*(OW_Op_speed_metrespersec1_SCE2Route3.^2);
        Total_Resistance_SCE2Route3_t0_iter = NonIce_OW_Resistance_N_SCE2Route3_t0_iter + Total_Ice_Resistance_SCE2Route3_t0;
        
        OW_Operating_speed_SCE2Route3_t0_iter = (OW_Effective_power_SCE2Route3_t0./Total_Resistance_SCE2Route3_t0_iter);
        
        
        NonIce_Total_Resistance_SCE2Route3_kN_t0 = [NonIce_Total_Resistance_SCE2Route3_kN_t0; Total_Resistance_SCE2Route3_t0_iter];
        NonIce_Operating_speed_SCE2Route3_t0 = [NonIce_Operating_speed_SCE2Route3_t0; OW_Operating_speed_SCE2Route3_t0_iter];
    end
    
    Total_Resistance_SCE2Route3_tm = [];
    Ice_Operating_speed_SCE2Route3_tm = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route3 = Agg_Op_speed2_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_tm_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE2Route3_tm = Ice_OW_Resistance_N_SCE2Route3_tm_iter.*Op_speed_metrespersec2_SCE2Route3;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route3 = Agg_Op_speed2_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_tm_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE2Route3_tm = Ice_OW_Resistance_N_SCE2Route3_tm_iter.*Op_speed_metrespersec2_SCE2Route3;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route3 = Agg_Op_speed2_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_tm_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE2Route3_tm = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec2_SCE2Route3;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route3 = Agg_Op_speed2_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_tm_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE2Route3_tm = Ice_OW_Resistance_N_SCE2Route3_tm_iter.*Op_speed_metrespersec2_SCE2Route3;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length
            
            Op_speed_metrespersec2_SCE2Route3 = Agg_Op_speed2_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_tm_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE2Route3_tm = Ice_OW_Resistance_N_SCE2Route3_tm_iter.*Op_speed_metrespersec2_SCE2Route3;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm(i) > 0.3
            
            Vertical_force_SCE2Route3_tm = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm(i)).^2;
            
            A_SCE2Route3 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter_tm(i)));
            B_SCE2Route3 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter_tm(i)));
            
            Crushing_Resistance_component_SCE2Route3_tm = Vertical_force_SCE2Route3_tm.*(A_SCE2Route3./B_SCE2Route3);
            
            C1_SCE2Route3 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE2Route3 = tan(Agg_Psi_iter_tm(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter_tm(i)).*cos(Agg_Psi_iter_tm(i))));
            E_SCE2Route3 = (1+(1./cos(Agg_Psi_iter_tm(i))));
            
            Bending_Resistance_component_SCE2Route3_tm = C1_SCE2Route3.*D_SCE2Route3.*E_SCE2Route3;
            
            F1_SCE2Route3 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm(i));
            G1_SCE2Route3 = Agg_draught2_SCE2Route3(i).*(Beam_iter+Agg_draught2_SCE2Route3(i))./(Beam_iter+(2*Agg_draught2_SCE2Route3(i)));
            H1_SCE2Route3 = 0.7.*Agg_length2_SCE2Route3(i); %70% assumed from Lindqvist
            I1_SCE2Route3 = Agg_draught2_SCE2Route3(i)./tan(Phi_iter);
            J1_SCE2Route3 = Beam_iter./(4.*tan(Agg_Alpha_iter_tm(i)));
            K1_SCE2Route3 = Agg_draught2_SCE2Route3(i).*cos(Phi_iter).*cos(Agg_Psi_iter_tm(i));
            K_part1_SCE2Route3  = 1./(sin(Phi_iter.^2));
            K_part2_SCE2Route3  = 1./(tan(Agg_Alpha_iter_tm(i).^2));
            K_part3_SCE2Route3 = (K_part1_SCE2Route3+K_part2_SCE2Route3).^0.5;
            
            Submersion_Resistance_component_SCE2Route3_tm = F1_SCE2Route3.*Beam_iter.*(G1_SCE2Route3+Mu.*(H1_SCE2Route3-I1_SCE2Route3-J1_SCE2Route3+(K1_SCE2Route3.*K_part3_SCE2Route3)));
            Agg_Crushing_Resistance_component_SCE2Route3_tm = Crushing_Resistance_component_SCE2Route3_tm;
            Agg_Bending_Resistance_component_SCE2Route3_tm = Bending_Resistance_component_SCE2Route3_tm;
            
            L1_SCE2Route3 = (Agg_Crushing_Resistance_component_SCE2Route3_tm + Agg_Bending_Resistance_component_SCE2Route3_tm);
            M1_SCE2Route3 = (1+((1.4*Op_speed_metrespersec2_SCE2Route3)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm(i)).^0.5)));
            N1_SCE2Route3 = Submersion_Resistance_component_SCE2Route3_tm.*(1+((9.4.*Op_speed_metrespersec2_SCE2Route3)./((g.*Agg_length2_SCE2Route3(i)).^0.5)));
            
            Total_Ice_Resistance_SCE2Route3_tm = (L1_SCE2Route3.*M1_SCE2Route3)+N1_SCE2Route3;
            Total_Resistance_SCE2Route3_tm_iter = Ice_OW_Resistance_N_SCE2Route3_tm_iter + Total_Ice_Resistance_SCE2Route3_tm;
            
            Operating_speed_SCE2Route3_tm_iter = (Effective_power_SCE2Route3_tm./Total_Resistance_SCE2Route3_tm_iter);
            
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs = Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm(i)./Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tm(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec2_SCE2Route3./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tm(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tm(i).^5.196);
            
            Total_Ice_Resistance_SCE2Route3_tm = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tm(i)).*(Op_speed_metrespersec2_SCE2Route3.^2);
            Total_Resistance_SCE2Route3_tm_iter = Ice_OW_Resistance_N_SCE2Route3_tm_iter + Total_Ice_Resistance_SCE2Route3_tm;
            
            Operating_speed_SCE2Route3_tm_iter = (Effective_power_SCE2Route3_tm./Total_Resistance_SCE2Route3_tm_iter);
            
        end
        Total_Resistance_SCE2Route3_tm = [Total_Resistance_SCE2Route3_tm; Total_Resistance_SCE2Route3_tm_iter];
        Ice_Operating_speed_SCE2Route3_tm = [Ice_Operating_speed_SCE2Route3_tm; Operating_speed_SCE2Route3_tm_iter];
    end
    
    NonIce_Total_Resistance_SCE2Route3_kN_tm = [];
    NonIce_Operating_speed_SCE2Route3_tm = [];
    for i = 1:1:length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)
        
        if i <= length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route3 = OW_Agg_Op_speed2_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_tm_iter = NonIce_OW_Resistance_N_iter(1);
            OW_Effective_power_SCE2Route3_tm = NonIce_OW_Resistance_N_SCE2Route3_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route3;
            
        elseif i <= 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length && i > length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route3 = OW_Agg_Op_speed2_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_tm_iter = NonIce_OW_Resistance_N_iter(2);
            OW_Effective_power_SCE2Route3_tm = NonIce_OW_Resistance_N_SCE2Route3_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route3;
            
        elseif i <= 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length && i > 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route3 = OW_Agg_Op_speed2_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_tm_iter = NonIce_OW_Resistance_N_iter(3);
            OW_Effective_power_SCE2Route3_tm = NonIce_OW_Resistance_N_iter(3).*OW_Op_speed_metrespersec2_SCE2Route3;
            
        elseif i <= 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length && i > 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route3 = OW_Agg_Op_speed2_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_tm_iter = NonIce_OW_Resistance_N_iter(4);
            OW_Effective_power_SCE2Route3_tm = NonIce_OW_Resistance_N_SCE2Route3_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route3;
            
        elseif i <= 5.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length && i > 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec2_SCE2Route3 = OW_Agg_Op_speed2_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_tm_iter = NonIce_OW_Resistance_N_iter(5);
            OW_Effective_power_SCE2Route3_tm = NonIce_OW_Resistance_N_SCE2Route3_tm_iter.*OW_Op_speed_metrespersec2_SCE2Route3;
            
        end
        
        %Ice floe resistance calculation
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs = OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm(i)./OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tm(i);
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs(isnan(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs)) = 0;
        
        Pack_Ice_Floe_Froude_number = OW_Op_speed_metrespersec2_SCE2Route3./((9.81.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tm(i)).^0.5);
        Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
        
        C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs)./Beam_iter).^1.019).*(OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tm(i).^5.196);
        
        Total_Ice_Resistance_SCE2Route3_tm = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tm(i)).*(OW_Op_speed_metrespersec2_SCE2Route3.^2);
        Total_Resistance_SCE2Route3_tm_iter = NonIce_OW_Resistance_N_SCE2Route3_tm_iter + Total_Ice_Resistance_SCE2Route3_tm;
        
        OW_Operating_speed_SCE2Route3_tm_iter = (OW_Effective_power_SCE2Route3_tm./Total_Resistance_SCE2Route3_tm_iter);
        
        
        NonIce_Total_Resistance_SCE2Route3_kN_tm = [NonIce_Total_Resistance_SCE2Route3_kN_tm; Total_Resistance_SCE2Route3_tm_iter];
        NonIce_Operating_speed_SCE2Route3_tm = [NonIce_Operating_speed_SCE2Route3_tm; OW_Operating_speed_SCE2Route3_tm_iter];
    end
    
    
    Total_Resistance_SCE2Route3_tf = [];
    Ice_Operating_speed_SCE2Route3_tf = [];
    for i = 1:1:length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)
        
        if i <= length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route3 = Agg_Op_speed3_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_tf_iter = Ice_OW_Resistance_N_iter(1);
            Effective_power_SCE2Route3_tf = Ice_OW_Resistance_N_SCE2Route3_tf_iter.*Op_speed_metrespersec3_SCE2Route3;
            
        elseif i <= 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length && i > length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route3 = Agg_Op_speed3_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_tf_iter = Ice_OW_Resistance_N_iter(2);
            Effective_power_SCE2Route3_tf = Ice_OW_Resistance_N_SCE2Route3_tf_iter.*Op_speed_metrespersec3_SCE2Route3;
            
        elseif i <= 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length && i > 2.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route3 = Agg_Op_speed3_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_tf_iter = Ice_OW_Resistance_N_iter(3);
            Effective_power_SCE2Route3_tf = Ice_OW_Resistance_N_iter(3).*Op_speed_metrespersec3_SCE2Route3;
            
        elseif i <= 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length && i > 3.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route3 = Agg_Op_speed3_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_tf_iter = Ice_OW_Resistance_N_iter(4);
            Effective_power_SCE2Route3_tf = Ice_OW_Resistance_N_SCE2Route3_tf_iter.*Op_speed_metrespersec3_SCE2Route3;
            
        elseif i <= 5.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length && i > 4.*length(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length
            
            Op_speed_metrespersec3_SCE2Route3 = Agg_Op_speed3_SCE2Route3_iter(i).*0.514444444;
            Ice_OW_Resistance_N_SCE2Route3_tf_iter = Ice_OW_Resistance_N_iter(5);
            Effective_power_SCE2Route3_tf = Ice_OW_Resistance_N_SCE2Route3_tf_iter.*Op_speed_metrespersec3_SCE2Route3;
            
        end
        
        if  Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf(i) > 0.3
            
            Vertical_force_SCE2Route3_tf = 0.5.*Sigma.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf(i)).^2;
            
            A_SCE2Route3 =tan(Phi_iter)+(Mu.*cos(Phi_iter)./cos(Agg_Psi_iter_tf(i)));
            B_SCE2Route3 = 1-(Mu.*sin(Phi_iter)./cos(Agg_Psi_iter_tf(i)));
            
            Crushing_Resistance_component_SCE2Route3_tf = Vertical_force_SCE2Route3_tf.*(A_SCE2Route3./B_SCE2Route3);
            
            C1_SCE2Route3 = 27./64.*Sigma.*Beam_iter.*((Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf(i).^1.5)./sqrt((E_Young./(12.*(1-Poisson.^2).*rho_water.*g))));
            D_SCE2Route3 = tan(Agg_Psi_iter_tf(i))+((Mu.*cos(Phi_iter))./(sin(Agg_Alpha_iter_tf(i)).*cos(Agg_Psi_iter_tf(i))));
            E_SCE2Route3 = (1+(1./cos(Agg_Psi_iter_tf(i))));
            
            Bending_Resistance_component_SCE2Route3_tf = C1_SCE2Route3.*D_SCE2Route3.*E_SCE2Route3;
            
            F1_SCE2Route3 = ((rho_water-rho_sea_ice).*g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf(i));
            G1_SCE2Route3 = Agg_draught3_SCE2Route3(i).*(Beam_iter+Agg_draught3_SCE2Route3(i))./(Beam_iter+(2*Agg_draught3_SCE2Route3(i)));
            H1_SCE2Route3 = 0.7.*Agg_length3_SCE2Route3(i); %70% assumed from Lindqvist
            I1_SCE2Route3 = Agg_draught3_SCE2Route3(i)./tan(Phi_iter);
            J1_SCE2Route3 = Beam_iter./(4.*tan(Agg_Alpha_iter_tf(i)));
            K1_SCE2Route3 = Agg_draught3_SCE2Route3(i).*cos(Phi_iter).*cos(Agg_Psi_iter_tf(i));
            K_part1_SCE2Route3  = 1./(sin(Phi_iter.^2));
            K_part2_SCE2Route3  = 1./(tan(Agg_Alpha_iter_tf(i).^2));
            K_part3_SCE2Route3 = (K_part1_SCE2Route3+K_part2_SCE2Route3).^0.5;
            
            Submersion_Resistance_component_SCE2Route3_tf = F1_SCE2Route3.*Beam_iter.*(G1_SCE2Route3+Mu.*(H1_SCE2Route3-I1_SCE2Route3-J1_SCE2Route3+(K1_SCE2Route3.*K_part3_SCE2Route3)));
            Agg_Crushing_Resistance_component_SCE2Route3_tf = Crushing_Resistance_component_SCE2Route3_tf;
            Agg_Bending_Resistance_component_SCE2Route3_tf = Bending_Resistance_component_SCE2Route3_tf;
            
            L1_SCE2Route3 = (Agg_Crushing_Resistance_component_SCE2Route3_tf + Agg_Bending_Resistance_component_SCE2Route3_tf);
            M1_SCE2Route3 = (1+((1.4*Op_speed_metrespersec3_SCE2Route3)./((g.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf(i)).^0.5)));
            N1_SCE2Route3 = Submersion_Resistance_component_SCE2Route3_tf.*(1+((9.4.*Op_speed_metrespersec3_SCE2Route3)./((g.*Agg_length3_SCE2Route3(i)).^0.5)));
            
            Total_Ice_Resistance_SCE2Route3_tf = (L1_SCE2Route3.*M1_SCE2Route3)+N1_SCE2Route3;
            Total_Resistance_SCE2Route3_tf_iter = Ice_OW_Resistance_N_SCE2Route3_tf_iter + Total_Ice_Resistance_SCE2Route3_tf;
            
            Operating_speed_SCE2Route3_tf_iter = (Effective_power_SCE2Route3_tf./Total_Resistance_SCE2Route3_tf_iter);
            
            
        else %Ice floe resistance calculation
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs = Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf(i)./Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tf(i);
            Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs(isnan(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs)) = 0;
            
            Pack_Ice_Floe_Froude_number = Op_speed_metrespersec3_SCE2Route3./((9.81.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tf(i)).^0.5);
            Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
            
            C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs)./Beam_iter).^1.019).*(Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tf(i).^5.196);
            
            Total_Ice_Resistance_SCE2Route3_tf = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs.*Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tf(i)).*(Op_speed_metrespersec3_SCE2Route3.^2);
            Total_Resistance_SCE2Route3_tf_iter = Ice_OW_Resistance_N_SCE2Route3_tf_iter + Total_Ice_Resistance_SCE2Route3_tf;
            
            Operating_speed_SCE2Route3_tf_iter = (Effective_power_SCE2Route3_tf./Total_Resistance_SCE2Route3_tf_iter);
        end
        Total_Resistance_SCE2Route3_tf = [Total_Resistance_SCE2Route3_tf; Total_Resistance_SCE2Route3_tf_iter];
        Ice_Operating_speed_SCE2Route3_tf = [Ice_Operating_speed_SCE2Route3_tf; Operating_speed_SCE2Route3_tf_iter];
    end
    
    NonIce_Total_Resistance_SCE2Route3_kN_tf = [];
    NonIce_Operating_speed_SCE2Route3_tf = [];
    for i = 1:1:length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)
        
        if i <= length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route3 = OW_Agg_Op_speed3_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_tf_iter = NonIce_OW_Resistance_N_iter(1);
            OW_Effective_power_SCE2Route3_tf = NonIce_OW_Resistance_N_SCE2Route3_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route3;
            
        elseif i <= 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length && i > length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route3 = OW_Agg_Op_speed3_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_tf_iter = NonIce_OW_Resistance_N_iter(2);
            OW_Effective_power_SCE2Route3_tf = NonIce_OW_Resistance_N_SCE2Route3_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route3;
            
        elseif i <= 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length && i > 2.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route3 = OW_Agg_Op_speed3_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_tf_iter = NonIce_OW_Resistance_N_iter(3);
            OW_Effective_power_SCE2Route3_tf = NonIce_OW_Resistance_N_iter(3).*OW_Op_speed_metrespersec3_SCE2Route3;
            
        elseif i <= 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length && i > 3.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route3 = OW_Agg_Op_speed3_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_tf_iter = NonIce_OW_Resistance_N_iter(4);
            OW_Effective_power_SCE2Route3_tf = NonIce_OW_Resistance_N_SCE2Route3_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route3;
            
        elseif i <= 5.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length && i > 4.*length(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf)./Ship_design_speed_length
            
            OW_Op_speed_metrespersec3_SCE2Route3 = OW_Agg_Op_speed3_SCE2Route3_iter(i).*0.514444444;
            NonIce_OW_Resistance_N_SCE2Route3_tf_iter = NonIce_OW_Resistance_N_iter(5);
            OW_Effective_power_SCE2Route3_tf = NonIce_OW_Resistance_N_SCE2Route3_tf_iter.*OW_Op_speed_metrespersec3_SCE2Route3;
            
        end
        
        %Ice floe resistance calculation
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs = OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf(i)./OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tf(i);
        OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs(isnan(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs)) = 0;
        
        Pack_Ice_Floe_Froude_number = OW_Op_speed_metrespersec3_SCE2Route3./((9.81.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tf(i)).^0.5);
        Pack_Ice_Floe_Froude_number(isinf(Pack_Ice_Floe_Froude_number)) = 1;
        
        C_p = (10.^2.651).*(Pack_Ice_Floe_Froude_number.^-1.665).*(((10.*OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs)./Beam_iter).^1.019).*(OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tf(i).^5.196);
        
        Total_Ice_Resistance_SCE2Route3_tf = 0.5.*C_p.*rho_sea_ice.*Beam_iter.*(OW_Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf_abs.*OW_Agg_Annual_sea_ice_conc_encountered_SCE2Route3_tf(i)).*(OW_Op_speed_metrespersec3_SCE2Route3.^2);
        Total_Resistance_SCE2Route3_tf_iter = NonIce_OW_Resistance_N_SCE2Route3_tf_iter + Total_Ice_Resistance_SCE2Route3_tf;
        
        OW_Operating_speed_SCE2Route3_tf_iter = (OW_Effective_power_SCE2Route3_tf./Total_Resistance_SCE2Route3_tf_iter);
        
        
        NonIce_Total_Resistance_SCE2Route3_kN_tf = [NonIce_Total_Resistance_SCE2Route3_kN_tf; Total_Resistance_SCE2Route3_tf_iter];
        NonIce_Operating_speed_SCE2Route3_tf = [NonIce_Operating_speed_SCE2Route3_tf; OW_Operating_speed_SCE2Route3_tf_iter];
    end
    
    %Resize the variables to align with the shape of the other variables
    Ice_Operating_speed_SCE2Route3_t0 = Ice_Operating_speed_SCE2Route3_t0./0.514444444;
    Ice_Operating_speed_SCE2Route3_tm = Ice_Operating_speed_SCE2Route3_tm./0.514444444;
    Ice_Operating_speed_SCE2Route3_tf = Ice_Operating_speed_SCE2Route3_tf./0.514444444;
    
    %Where the ice is thicker than 0.8m it also needs an icebreaker...
    Ice_Logic_t0 = (Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_t0 > 0.7);
    Ice_Logic_tm = (Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tm > 0.7);
    Ice_Logic_tf = (Agg_Annual_sea_ice_thickness_encountered_SCE2Route3_tf > 0.7);
    
    Ice_Operating_speed_SCE2Route3_t0(Ice_Logic_t0) = 3;
    Ice_Operating_speed_SCE2Route3_tm(Ice_Logic_tm) = 3;
    Ice_Operating_speed_SCE2Route3_tf(Ice_Logic_tf) = 3;
    
    %Resize the variables to align with the shape of the other variables
    NonIce_Operating_speed_SCE2Route3_t0 = NonIce_Operating_speed_SCE2Route3_t0./0.514444444;
    NonIce_Operating_speed_SCE2Route3_tm = NonIce_Operating_speed_SCE2Route3_tm./0.514444444;
    NonIce_Operating_speed_SCE2Route3_tf = NonIce_Operating_speed_SCE2Route3_tf./0.514444444;
    
    
    Global_IceStrengthOutput_SCE2Route3_power_kW_t0 = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE2Route3_power_kW_t0_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Global_IceStrengthOutput_SCE2Route3_power_kW_t0 = [Global_IceStrengthOutput_SCE2Route3_power_kW_t0;Global_IceStrengthOutput_SCE2Route3_power_kW_t0_iter];
    end
    
    Global_IceStrengthOutput_SCE2Route3_power_kW_tm = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE2Route3_power_kW_tm_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Global_IceStrengthOutput_SCE2Route3_power_kW_tm = [Global_IceStrengthOutput_SCE2Route3_power_kW_tm;Global_IceStrengthOutput_SCE2Route3_power_kW_tm_iter];
    end
    
    Global_IceStrengthOutput_SCE2Route3_power_kW_tf = [];
    for i = 1:1:length(IceStrengthOutput_power_kW_iter)
        Global_IceStrengthOutput_SCE2Route3_power_kW_tf_iter = repmat(IceStrengthOutput_power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Global_IceStrengthOutput_SCE2Route3_power_kW_tf = [Global_IceStrengthOutput_SCE2Route3_power_kW_tf;Global_IceStrengthOutput_SCE2Route3_power_kW_tf_iter];
    end
    
    Global_NonIceStrengthOutput_SCE2Route3_power_kW_t0 = [];
    for i = 1:1:length(NonIceStrengthOutput_power_kW_iter)
        Global_NonIceStrengthOutput_SCE2Route3_power_kW_t0_iter = repmat(NonIceStrengthOutput_power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Global_NonIceStrengthOutput_SCE2Route3_power_kW_t0 = [Global_NonIceStrengthOutput_SCE2Route3_power_kW_t0;Global_NonIceStrengthOutput_SCE2Route3_power_kW_t0_iter];
    end
    
    Global_NonIceStrengthOutput_SCE2Route3_power_kW_tm = [];
    for i = 1:1:length(NonIceStrengthOutput_power_kW_iter)
        Global_NonIceStrengthOutput_SCE2Route3_power_kW_tm_iter = repmat(NonIceStrengthOutput_power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Global_NonIceStrengthOutput_SCE2Route3_power_kW_tm = [Global_NonIceStrengthOutput_SCE2Route3_power_kW_tm;Global_NonIceStrengthOutput_SCE2Route3_power_kW_tm_iter];
    end
    
    Global_NonIceStrengthOutput_SCE2Route3_power_kW_tf = [];
    for i = 1:1:length(NonIceStrengthOutput_power_kW_iter)
        Global_NonIceStrengthOutput_SCE2Route3_power_kW_tf_iter = repmat(NonIceStrengthOutput_power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Global_NonIceStrengthOutput_SCE2Route3_power_kW_tf = [Global_NonIceStrengthOutput_SCE2Route3_power_kW_tf;Global_NonIceStrengthOutput_SCE2Route3_power_kW_tf_iter];
    end
    
    Global_SCE2Route3_Ice_sfc_t0 = [];
    
    for i = 1:1:length(Icesfc_iter)
        Global_SCE2Route3_Ice_sfc_t0_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Global_SCE2Route3_Ice_sfc_t0  = [Global_SCE2Route3_Ice_sfc_t0; Global_SCE2Route3_Ice_sfc_t0_iter];
    end
    
    Global_SCE2Route3_Ice_sfc_tm = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE2Route3_Ice_sfc_tm_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Global_SCE2Route3_Ice_sfc_tm  = [Global_SCE2Route3_Ice_sfc_tm; Global_SCE2Route3_Ice_sfc_tm_iter];
    end
    
    Global_SCE2Route3_Ice_sfc_tf = [];
    for i = 1:1:length(Icesfc_iter)
        Global_SCE2Route3_Ice_sfc_tf_iter = repmat(Icesfc_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Global_SCE2Route3_Ice_sfc_tf  = [Global_SCE2Route3_Ice_sfc_tf; Global_SCE2Route3_Ice_sfc_tf_iter];
    end
    
    Global_SCE2Route3_NonIce_sfc_t0 = [];
    
    for i = 1:1:length(NonIcesfc_iter)
        Global_SCE2Route3_NonIce_sfc_t0_iter = repmat(NonIcesfc_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Global_SCE2Route3_NonIce_sfc_t0  = [Global_SCE2Route3_NonIce_sfc_t0; Global_SCE2Route3_NonIce_sfc_t0_iter];
    end
    
    Global_SCE2Route3_NonIce_sfc_tm = [];
    for i = 1:1:length(NonIcesfc_iter)
        Global_SCE2Route3_NonIce_sfc_tm_iter = repmat(NonIcesfc_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Global_SCE2Route3_NonIce_sfc_tm  = [Global_SCE2Route3_NonIce_sfc_tm; Global_SCE2Route3_NonIce_sfc_tm_iter];
    end
    
    Global_SCE2Route3_NonIce_sfc_tf = [];
    for i = 1:1:length(NonIcesfc_iter)
        Global_SCE2Route3_NonIce_sfc_tf_iter = repmat(NonIcesfc_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Global_SCE2Route3_NonIce_sfc_tf  = [Global_SCE2Route3_NonIce_sfc_tf; Global_SCE2Route3_NonIce_sfc_tf_iter];
    end
    
    %Correct the operating speed to be in line with IMO and RMS regulations
    
    Operating_speed_index_SCE2Route3_t0 = find(Ice_Operating_speed_SCE2Route3_t0<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route3_t0)
        Ice_Operating_speed_SCE2Route3_t0(Operating_speed_index_SCE2Route3_t0(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route3_tm = find(Ice_Operating_speed_SCE2Route3_tm<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route3_tm)
        Ice_Operating_speed_SCE2Route3_tm(Operating_speed_index_SCE2Route3_tm(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route3_tf = find(Ice_Operating_speed_SCE2Route3_tf<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route3_tf)
        Ice_Operating_speed_SCE2Route3_tf(Operating_speed_index_SCE2Route3_tf(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route3_t0 = find(NonIce_Operating_speed_SCE2Route3_t0<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route3_t0)
        NonIce_Operating_speed_SCE2Route3_t0(Operating_speed_index_SCE2Route3_t0(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route3_tm = find(NonIce_Operating_speed_SCE2Route3_tm<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route3_tm)
        NonIce_Operating_speed_SCE2Route3_tm(Operating_speed_index_SCE2Route3_tm(i)) = 3;
    end
    
    Operating_speed_index_SCE2Route3_tf = find(NonIce_Operating_speed_SCE2Route3_tf<3);
    for i = 1:1:length(Operating_speed_index_SCE2Route3_tf)
        NonIce_Operating_speed_SCE2Route3_tf(Operating_speed_index_SCE2Route3_tf(i)) = 3;
    end
    
    % Des_v
    Ice_Global_SCE2Route3_Des_v_t0 = [];
    
    for i = 1:1:length(Des_v_iter)
        Ice_Global_SCE2Route3_Des_v_t0_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Ice_Global_SCE2Route3_Des_v_t0  = [Ice_Global_SCE2Route3_Des_v_t0; Ice_Global_SCE2Route3_Des_v_t0_iter];
    end
    
    Ice_Global_SCE2Route3_Des_v_tm = [];
    
    for i = 1:1:length(Des_v_iter)
        Ice_Global_SCE2Route3_Des_v_tm_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Ice_Global_SCE2Route3_Des_v_tm  = [Ice_Global_SCE2Route3_Des_v_tm; Ice_Global_SCE2Route3_Des_v_tm_iter];
    end
    
    Ice_Global_SCE2Route3_Des_v_tf = [];
    
    for i = 1:1:length(Des_v_iter)
        Ice_Global_SCE2Route3_Des_v_tf_iter = repmat(Des_v_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Ice_Global_SCE2Route3_Des_v_tf  = [Ice_Global_SCE2Route3_Des_v_tf; Ice_Global_SCE2Route3_Des_v_tf_iter];
    end
    
    NonIce_Global_SCE2Route3_Des_v_t0 = [];
    
    for i = 1:1:length(Des_v_iter)
        NonIce_Global_SCE2Route3_Des_v_t0_iter = repmat(Des_v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        NonIce_Global_SCE2Route3_Des_v_t0  = [NonIce_Global_SCE2Route3_Des_v_t0; NonIce_Global_SCE2Route3_Des_v_t0_iter];
    end
    
    NonIce_Global_SCE2Route3_Des_v_tm = [];
    
    for i = 1:1:length(Des_v_iter)
        NonIce_Global_SCE2Route3_Des_v_tm_iter = repmat(Des_v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        NonIce_Global_SCE2Route3_Des_v_tm  = [NonIce_Global_SCE2Route3_Des_v_tm; NonIce_Global_SCE2Route3_Des_v_tm_iter];
    end
    
    NonIce_Global_SCE2Route3_Des_v_tf = [];
    
    for i = 1:1:length(Des_v_iter)
        NonIce_Global_SCE2Route3_Des_v_tf_iter = repmat(Des_v_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        NonIce_Global_SCE2Route3_Des_v_tf  = [NonIce_Global_SCE2Route3_Des_v_tf; NonIce_Global_SCE2Route3_Des_v_tf_iter];
    end
    
    % Ice_Installed_Power_kW_iter
    Global_SCE2Route3_Ice_Installed_Power_kW_t0 = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE2Route3_Ice_Installed_Power_kW_t0_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Global_SCE2Route3_Ice_Installed_Power_kW_t0  = [Global_SCE2Route3_Ice_Installed_Power_kW_t0; Global_SCE2Route3_Ice_Installed_Power_kW_t0_iter];
    end
    
    Global_SCE2Route3_Ice_Installed_Power_kW_tm = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE2Route3_Ice_Installed_Power_kW_tm_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Global_SCE2Route3_Ice_Installed_Power_kW_tm  = [Global_SCE2Route3_Ice_Installed_Power_kW_tm; Global_SCE2Route3_Ice_Installed_Power_kW_tm_iter];
    end
    
    Global_SCE2Route3_Ice_Installed_Power_kW_tf = [];
    
    for i = 1:1:length(Ice_Installed_Power_kW_iter)
        Global_SCE2Route3_Ice_Installed_Power_kW_tf_iter = repmat(Ice_Installed_Power_kW_iter(i),length(Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Global_SCE2Route3_Ice_Installed_Power_kW_tf  = [Global_SCE2Route3_Ice_Installed_Power_kW_tf; Global_SCE2Route3_Ice_Installed_Power_kW_tf_iter];
    end
    
    Global_SCE2Route3_NonIce_Installed_Power_kW_t0 = [];
    
    for i = 1:1:length(NonIce_Installed_Power_kW_iter)
        Global_SCE2Route3_NonIce_Installed_Power_kW_t0_iter = repmat(NonIce_Installed_Power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_t0),1);
        Global_SCE2Route3_NonIce_Installed_Power_kW_t0  = [Global_SCE2Route3_NonIce_Installed_Power_kW_t0; Global_SCE2Route3_NonIce_Installed_Power_kW_t0_iter];
    end
    
    Global_SCE2Route3_NonIce_Installed_Power_kW_tm = [];
    
    for i = 1:1:length(NonIce_Installed_Power_kW_iter)
        Global_SCE2Route3_NonIce_Installed_Power_kW_tm_iter = repmat(NonIce_Installed_Power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tm),1);
        Global_SCE2Route3_NonIce_Installed_Power_kW_tm  = [Global_SCE2Route3_NonIce_Installed_Power_kW_tm; Global_SCE2Route3_NonIce_Installed_Power_kW_tm_iter];
    end
    
    Global_SCE2Route3_NonIce_Installed_Power_kW_tf = [];
    
    for i = 1:1:length(NonIce_Installed_Power_kW_iter)
        Global_SCE2Route3_NonIce_Installed_Power_kW_tf_iter = repmat(NonIce_Installed_Power_kW_iter(i),length(OW_Annual_sea_ice_thickness_encountered_SCE2Route3_tf),1);
        Global_SCE2Route3_NonIce_Installed_Power_kW_tf  = [Global_SCE2Route3_NonIce_Installed_Power_kW_tf; Global_SCE2Route3_NonIce_Installed_Power_kW_tf_iter];
    end
    
    Ice_Total_Power_demand_SCE2Route3_t0 = Global_SCE2Route3_Ice_Installed_Power_kW_t0.*((Ice_Operating_speed_SCE2Route3_t0./Ice_Global_SCE2Route3_Des_v_t0).^3)./(Foul_coeff.*Weather_coeff);
    Ice_Total_Power_demand_SCE2Route3_tm = Global_SCE2Route3_Ice_Installed_Power_kW_tm.*((Ice_Operating_speed_SCE2Route3_tm./Ice_Global_SCE2Route3_Des_v_tm).^3)./(Foul_coeff.*Weather_coeff);
    Ice_Total_Power_demand_SCE2Route3_tf = Global_SCE2Route3_Ice_Installed_Power_kW_tf.*((Ice_Operating_speed_SCE2Route3_tf./Ice_Global_SCE2Route3_Des_v_tf).^3)./(Foul_coeff.*Weather_coeff);
    
    Ice_Agg_Engine_SCE2Route3_load_t0 = Ice_Total_Power_demand_SCE2Route3_t0./Global_SCE2Route3_Ice_Installed_Power_kW_t0;
    Ice_Agg_Engine_SCE2Route3_load_tm = Ice_Total_Power_demand_SCE2Route3_tm./Global_SCE2Route3_Ice_Installed_Power_kW_tm;
    Ice_Agg_Engine_SCE2Route3_load_tf = Ice_Total_Power_demand_SCE2Route3_tf./Global_SCE2Route3_Ice_Installed_Power_kW_tf;
    
    %Then I use the IMO 3rd ghg study equation to compute the different SFC,
    %but need to renumerate as the equation doesn't work for loads of 1
    Ice_Constant_SCE2Route3_t0 = (0.455.*(Ice_Agg_Engine_SCE2Route3_load_t0).^2)-(0.71.*Ice_Agg_Engine_SCE2Route3_load_t0)+1.28;
    Ice_Constant_SCE2Route3_tm = (0.455.*(Ice_Agg_Engine_SCE2Route3_load_tm).^2)-(0.71.*Ice_Agg_Engine_SCE2Route3_load_tm)+1.28;
    Ice_Constant_SCE2Route3_tf = (0.455.*(Ice_Agg_Engine_SCE2Route3_load_tf).^2)-(0.71.*Ice_Agg_Engine_SCE2Route3_load_tf)+1.28;
    
    Ice_Operating_SFC_SCE2Route3_t0 = Global_SCE2Route3_Ice_sfc_t0.*Ice_Constant_SCE2Route3_t0;
    Ice_Operating_SFC_SCE2Route3_tm = Global_SCE2Route3_Ice_sfc_tm.*Ice_Constant_SCE2Route3_tm;
    Ice_Operating_SFC_SCE2Route3_tf = Global_SCE2Route3_Ice_sfc_tf.*Ice_Constant_SCE2Route3_tf;
    
    SFC_index_SCE2Route3_t0 = find(Ice_Agg_Engine_SCE2Route3_load_t0==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route3_t0)
        Ice_Operating_SFC_SCE2Route3_t0(SFC_index_SCE2Route3_t0(i)) = Global_SCE2Route3_Ice_sfc_t0(SFC_index_SCE2Route3_t0(i));
    end
    
    SFC_index_SCE2Route3_tm = find(Ice_Agg_Engine_SCE2Route3_load_tm==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route3_tm)
        Ice_Operating_SFC_SCE2Route3_tm(SFC_index_SCE2Route3_tm(i)) = Global_SCE2Route3_Ice_sfc_tm(SFC_index_SCE2Route3_tm(i));
    end
    
    SFC_index_SCE2Route3_tf = find(Ice_Agg_Engine_SCE2Route3_load_tf==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route3_tf)
        Ice_Operating_SFC_SCE2Route3_tf(SFC_index_SCE2Route3_tf(i)) = Global_SCE2Route3_Ice_sfc_tf(SFC_index_SCE2Route3_tf(i));
    end
    
    %NonIce
    NonIce_Total_Power_demand_SCE2Route3_t0 = Global_SCE2Route3_NonIce_Installed_Power_kW_t0.*((NonIce_Operating_speed_SCE2Route3_t0./NonIce_Global_SCE2Route3_Des_v_t0).^3)./(Foul_coeff.*Weather_coeff);
    NonIce_Total_Power_demand_SCE2Route3_tm = Global_SCE2Route3_NonIce_Installed_Power_kW_tm.*((NonIce_Operating_speed_SCE2Route3_tm./NonIce_Global_SCE2Route3_Des_v_tm).^3)./(Foul_coeff.*Weather_coeff);
    NonIce_Total_Power_demand_SCE2Route3_tf = Global_SCE2Route3_NonIce_Installed_Power_kW_tf.*((NonIce_Operating_speed_SCE2Route3_tf./NonIce_Global_SCE2Route3_Des_v_tf).^3)./(Foul_coeff.*Weather_coeff);
    
    NonIce_Agg_Engine_SCE2Route3_load_t0 = NonIce_Total_Power_demand_SCE2Route3_t0./Global_SCE2Route3_NonIce_Installed_Power_kW_t0;
    NonIce_Agg_Engine_SCE2Route3_load_tm = NonIce_Total_Power_demand_SCE2Route3_tm./Global_SCE2Route3_NonIce_Installed_Power_kW_tm;
    NonIce_Agg_Engine_SCE2Route3_load_tf = NonIce_Total_Power_demand_SCE2Route3_tf./Global_SCE2Route3_NonIce_Installed_Power_kW_tf;
    
    %Then I use the IMO 3rd ghg study equation to compute the different SFC,
    %but need to renumerate as the equation doesn't work for loads of 1
    NonIce_Constant_SCE2Route3_t0 = (0.455.*(NonIce_Agg_Engine_SCE2Route3_load_t0).^2)-(0.71.*NonIce_Agg_Engine_SCE2Route3_load_t0)+1.28;
    NonIce_Constant_SCE2Route3_tm = (0.455.*(NonIce_Agg_Engine_SCE2Route3_load_tm).^2)-(0.71.*NonIce_Agg_Engine_SCE2Route3_load_tm)+1.28;
    NonIce_Constant_SCE2Route3_tf = (0.455.*(NonIce_Agg_Engine_SCE2Route3_load_tf).^2)-(0.71.*NonIce_Agg_Engine_SCE2Route3_load_tf)+1.28;
    
    NonIce_Operating_SFC_SCE2Route3_t0 = Global_SCE2Route3_NonIce_sfc_t0.*NonIce_Constant_SCE2Route3_t0;
    NonIce_Operating_SFC_SCE2Route3_tm = Global_SCE2Route3_NonIce_sfc_tm.*NonIce_Constant_SCE2Route3_tm;
    NonIce_Operating_SFC_SCE2Route3_tf = Global_SCE2Route3_NonIce_sfc_tf.*NonIce_Constant_SCE2Route3_tf;
    
    SFC_index_SCE2Route3_t0 = find(NonIce_Agg_Engine_SCE2Route3_load_t0==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route3_t0)
        NonIce_Operating_SFC_SCE2Route3_t0(SFC_index_SCE2Route3_t0(i)) = Global_SCE2Route3_NonIce_sfc_t0(SFC_index_SCE2Route3_t0(i));
    end
    
    SFC_index_SCE2Route3_tm = find(NonIce_Agg_Engine_SCE2Route3_load_tm==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route3_tm)
        NonIce_Operating_SFC_SCE2Route3_tm(SFC_index_SCE2Route3_tm(i)) = Global_SCE2Route3_NonIce_sfc_tm(SFC_index_SCE2Route3_tm(i));
    end
    
    SFC_index_SCE2Route3_tf = find(NonIce_Agg_Engine_SCE2Route3_load_tf==Avg_Engine_Load_iter);
    for i = 1:1:length(SFC_index_SCE2Route3_tf)
        NonIce_Operating_SFC_SCE2Route3_tf(SFC_index_SCE2Route3_tf(i)) = Global_SCE2Route3_NonIce_sfc_tf(SFC_index_SCE2Route3_tf(i));
    end
    
    % %Aggregate the unit lengths together so I can then calculate the time it
    % %takes for the ship to traverse the route each year - MUST BE CAREFUL AS
    % %THE NUMBERS ARE INPUT MANUALLY
    
    Array_Unit_length_Route_3 = [Unit_length_AC; Unit_length_CE;...
        Unit_length_EF; Unit_length_FG; Unit_length_FG(3)]; %I assume that the last interval of the route is the same as the one previous for FG
    %Resize this to be compatible with the other variables then obtain the
    %energy demand
    
    Ice_Global_Array_Unit_length_SCE2Route_3_t0 = repmat(Array_Unit_length_Route_3,length(v_iter).*sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0_iter),1); %12 months in a year
    Ice_Global_Array_Unit_length_SCE2Route_3_tm = repmat(Array_Unit_length_Route_3,length(v_iter).*sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm_iter),1);
    Ice_Global_Array_Unit_length_SCE2Route_3_tf = repmat(Array_Unit_length_Route_3,length(v_iter).*sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf_iter),1);
    
    Ice_Time_hrs_SCE2Route3_t0 = Ice_Global_Array_Unit_length_SCE2Route_3_t0./Ice_Operating_speed_SCE2Route3_t0;
    Ice_Time_hrs_SCE2Route3_tm = Ice_Global_Array_Unit_length_SCE2Route_3_tm./Ice_Operating_speed_SCE2Route3_tm;
    Ice_Time_hrs_SCE2Route3_tf = Ice_Global_Array_Unit_length_SCE2Route_3_tf./Ice_Operating_speed_SCE2Route3_tf;
    
    %Reshaping the time matrices to work out the number of days spent on the
    %NSR which can be used later in the commercial profile function
    Ice_Reshaped_Time_hrs_SCE2Route3_t0_iter = reshape(Ice_Time_hrs_SCE2Route3_t0,length(Array_Unit_length_Route_3(:,1)).*length(Ice_Global_Array_Unit_length_SCE2Route_3_t0(:,1))./(length(v_iter).*length(Array_Unit_length_Route_3(:,1))),length(v_iter));
    Ice_Reshaped_Time_hrs_SCE2Route3_tm_iter = reshape(Ice_Time_hrs_SCE2Route3_tm,length(Array_Unit_length_Route_3(:,1)).*length(Ice_Global_Array_Unit_length_SCE2Route_3_tm(:,1))./(length(v_iter).*length(Array_Unit_length_Route_3(:,1))),length(v_iter));
    Ice_Reshaped_Time_hrs_SCE2Route3_tf_iter = reshape(Ice_Time_hrs_SCE2Route3_tf,length(Array_Unit_length_Route_3(:,1)).*length(Ice_Global_Array_Unit_length_SCE2Route_3_tf(:,1))./(length(v_iter).*length(Array_Unit_length_Route_3(:,1))),length(v_iter));
    
    Ice_Reshaped_Time_days_SCE2Route3_t0_iter = [];
    for i = 1:1:length(Ice_Reshaped_Time_hrs_SCE2Route3_t0_iter(:,1))./length(Array_Unit_length_Route_3(:,1))
        Part_Time_days_SCE2Route3_t0 = Ice_Reshaped_Time_hrs_SCE2Route3_t0_iter((i-1)*length(Array_Unit_length_Route_3(:,1))+1:i*length(Array_Unit_length_Route_3(:,1)),:);
        Ice_Reshaped_Time_days_SCE2Route3_t0_iter_iter = sum(Part_Time_days_SCE2Route3_t0);
        Ice_Reshaped_Time_days_SCE2Route3_t0_iter = [Ice_Reshaped_Time_days_SCE2Route3_t0_iter; Ice_Reshaped_Time_days_SCE2Route3_t0_iter_iter];
    end
    Ice_Reshaped_Time_days_SCE2Route3_t0_iter = Ice_Reshaped_Time_days_SCE2Route3_t0_iter'; Ice_Reshaped_Time_days_SCE2Route3_t0_iter = Ice_Reshaped_Time_days_SCE2Route3_t0_iter./24;
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route3_t0_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            Ice_Reshaped_Time_days_SCE2Route3_t0_iter_iter_iter = Ice_Reshaped_Time_days_SCE2Route3_t0_iter(i,:);
            Ice_Reshaped_Time_days_SCE2Route3_t0_iter_iter_iter(Ice_Reshaped_Time_days_SCE2Route3_t0_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            Ice_Reshaped_Time_days_SCE2Route3_t0_iter(i,:) = Ice_Reshaped_Time_days_SCE2Route3_t0_iter_iter_iter;
        end
        
        Logic = Ice_Reshaped_Time_days_SCE2Route3_t0_iter > 0; Logic = Logic';
        Time = reshape(Ice_Time_hrs_SCE2Route3_t0,length(Ice_Global_Array_Unit_length_SCE2Route_3_t0(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(Ice_Reshaped_Time_hrs_SCE2Route3_t0_iter(:,1))./length(Array_Unit_length_Route_3(:,1)).*length(Array_Unit_length_Route_3(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_3(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_3(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_3(:,1)),1);
        end
        Ice_Time_hrs_SCE2Route3_t0 = Time.*Global_Logic; Ice_Time_hrs_SCE2Route3_t0 = reshape(Ice_Time_hrs_SCE2Route3_t0,length(Ice_Global_Array_Unit_length_SCE2Route_3_t0(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    Ice_Reshaped_Time_days_SCE2Route3_tm_iter = [];
    for i = 1:1:length(Ice_Reshaped_Time_hrs_SCE2Route3_tm_iter(:,1))./length(Array_Unit_length_Route_3(:,1))
        Part_Time_days_SCE2Route3_tm = Ice_Reshaped_Time_hrs_SCE2Route3_tm_iter((i-1)*length(Array_Unit_length_Route_3(:,1))+1:i*length(Array_Unit_length_Route_3(:,1)),:);
        Ice_Reshaped_Time_days_SCE2Route3_tm_iter_iter = sum(Part_Time_days_SCE2Route3_tm);
        Ice_Reshaped_Time_days_SCE2Route3_tm_iter = [Ice_Reshaped_Time_days_SCE2Route3_tm_iter; Ice_Reshaped_Time_days_SCE2Route3_tm_iter_iter];
    end
    Ice_Reshaped_Time_days_SCE2Route3_tm_iter = Ice_Reshaped_Time_days_SCE2Route3_tm_iter'; Ice_Reshaped_Time_days_SCE2Route3_tm_iter = Ice_Reshaped_Time_days_SCE2Route3_tm_iter./24;
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route3_tm_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            Ice_Reshaped_Time_days_SCE2Route3_tm_iter_iter_iter = Ice_Reshaped_Time_days_SCE2Route3_tm_iter(i,:);
            Ice_Reshaped_Time_days_SCE2Route3_tm_iter_iter_iter(Ice_Reshaped_Time_days_SCE2Route3_tm_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            Ice_Reshaped_Time_days_SCE2Route3_tm_iter(i,:) = Ice_Reshaped_Time_days_SCE2Route3_tm_iter_iter_iter;
        end
        
        Logic = Ice_Reshaped_Time_days_SCE2Route3_tm_iter > 0; Logic = Logic';
        Time = reshape(Ice_Time_hrs_SCE2Route3_tm,length(Ice_Global_Array_Unit_length_SCE2Route_3_tm(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(Ice_Reshaped_Time_hrs_SCE2Route3_tm_iter(:,1))./length(Array_Unit_length_Route_3(:,1)).*length(Array_Unit_length_Route_3(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_3(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_3(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_3(:,1)),1);
        end
        Ice_Time_hrs_SCE2Route3_tm = Time.*Global_Logic; Ice_Time_hrs_SCE2Route3_tm = reshape(Ice_Time_hrs_SCE2Route3_tm,length(Ice_Global_Array_Unit_length_SCE2Route_3_tm(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    Ice_Reshaped_Time_days_SCE2Route3_tf_iter = [];
    for i = 1:1:length(Ice_Reshaped_Time_hrs_SCE2Route3_tf_iter(:,1))./length(Array_Unit_length_Route_3(:,1))
        Part_Time_days_SCE2Route3_tf = Ice_Reshaped_Time_hrs_SCE2Route3_tf_iter((i-1)*length(Array_Unit_length_Route_3(:,1))+1:i*length(Array_Unit_length_Route_3(:,1)),:);
        Ice_Reshaped_Time_days_SCE2Route3_tf_iter_iter = sum(Part_Time_days_SCE2Route3_tf);
        Ice_Reshaped_Time_days_SCE2Route3_tf_iter = [Ice_Reshaped_Time_days_SCE2Route3_tf_iter; Ice_Reshaped_Time_days_SCE2Route3_tf_iter_iter];
    end
    Ice_Reshaped_Time_days_SCE2Route3_tf_iter = Ice_Reshaped_Time_days_SCE2Route3_tf_iter'; Ice_Reshaped_Time_days_SCE2Route3_tf_iter = Ice_Reshaped_Time_days_SCE2Route3_tf_iter./24;
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route3_tf_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            Ice_Reshaped_Time_days_SCE2Route3_tf_iter_iter_iter = Ice_Reshaped_Time_days_SCE2Route3_tf_iter(i,:);
            Ice_Reshaped_Time_days_SCE2Route3_tf_iter_iter_iter(Ice_Reshaped_Time_days_SCE2Route3_tf_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            Ice_Reshaped_Time_days_SCE2Route3_tf_iter(i,:) = Ice_Reshaped_Time_days_SCE2Route3_tf_iter_iter_iter;
        end
        
        Ice_Reshaped_Time_days_SCE2Route3_tf_iter(Ice_Reshaped_Time_days_SCE2Route3_tf_iter > 31) = 0;
        
        Logic = Ice_Reshaped_Time_days_SCE2Route3_tf_iter > 0; Logic = Logic';
        Time = reshape(Ice_Time_hrs_SCE2Route3_tf,length(Ice_Global_Array_Unit_length_SCE2Route_3_tf(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(Ice_Reshaped_Time_hrs_SCE2Route3_tf_iter(:,1))./length(Array_Unit_length_Route_3(:,1)).*length(Array_Unit_length_Route_3(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_3(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_3(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_3(:,1)),1);
        end
        Ice_Time_hrs_SCE2Route3_tf = Time.*Global_Logic; Ice_Time_hrs_SCE2Route3_tf = reshape(Ice_Time_hrs_SCE2Route3_tf,length(Ice_Global_Array_Unit_length_SCE2Route_3_tf(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    Ice_Energy_demand_SCE2Route3_t0_iter =  Ice_Total_Power_demand_SCE2Route3_t0.*Ice_Time_hrs_SCE2Route3_t0; %kWh
    Ice_Energy_demand_SCE2Route3_tm_iter =  Ice_Total_Power_demand_SCE2Route3_tm.*Ice_Time_hrs_SCE2Route3_tm;
    Ice_Energy_demand_SCE2Route3_tf_iter =  Ice_Total_Power_demand_SCE2Route3_tf.*Ice_Time_hrs_SCE2Route3_tf;
    
    %Fuel consumed
    Ice_Fuel_consumed_SCE2Route3_t0_iter = Ice_Energy_demand_SCE2Route3_t0_iter.*Ice_Operating_SFC_SCE2Route3_t0*10^-6; %Tonnes
    Ice_Fuel_consumed_SCE2Route3_tm_iter = Ice_Energy_demand_SCE2Route3_tm_iter.*Ice_Operating_SFC_SCE2Route3_tm*10^-6;
    Ice_Fuel_consumed_SCE2Route3_tf_iter = Ice_Energy_demand_SCE2Route3_tf_iter.*Ice_Operating_SFC_SCE2Route3_tf*10^-6;
    
    %Number of days requiring an icebreaker - I calculate it for each
    %individual ship design
    %t_0
    %%%%%%%%%%%%%%%
    Ice_Length_OP_Speed_SCE2Route3_t0 = length(Ice_Operating_speed_SCE2Route3_t0);
    Ice_Partitioned_length_OP_Speed_SCE2Route3_t0 = Ice_Length_OP_Speed_SCE2Route3_t0./length(v_iter);
    Ice_Reshaped_Operating_speed_SCE2Route3_t0 = reshape(Ice_Operating_speed_SCE2Route3_t0,[Ice_Partitioned_length_OP_Speed_SCE2Route3_t0,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Ice_Length_Time_hrs_SCE2Route3_t0 = length(Ice_Time_hrs_SCE2Route3_t0);
    Ice_Partitioned_length_Time_hrs_SCE2Route3_t0 = Ice_Length_Time_hrs_SCE2Route3_t0./length(v_iter);
    Ice_Reshaped_Time_hrs_SCE2Route3_t0_iter = reshape(Ice_Time_hrs_SCE2Route3_t0,[Ice_Partitioned_length_Time_hrs_SCE2Route3_t0,length(v_iter)]);
    
    Ice_Logic_Operating_speed_SCE2Route3_t0 = Ice_Reshaped_Operating_speed_SCE2Route3_t0;
    Ice_Logic_Operating_speed_SCE2Route3_t0(Ice_Logic_Operating_speed_SCE2Route3_t0 ==3) = 1;
    Ice_Logic_Operating_speed_SCE2Route3_t0(Ice_Logic_Operating_speed_SCE2Route3_t0 ~=1) = 0;
    
    Ice_IB_time_SCE2Route3_t0_iter = Ice_Logic_Operating_speed_SCE2Route3_t0.*Ice_Reshaped_Time_hrs_SCE2Route3_t0_iter;
    Ice_IB_time_SCE2Route3_t0_iter = sum(Ice_IB_time_SCE2Route3_t0_iter); Ice_IB_time_SCE2Route3_t0_iter = round(Ice_IB_time_SCE2Route3_t0_iter./24); Ice_IB_time_SCE2Route3_t0_iter =Ice_IB_time_SCE2Route3_t0_iter';
    
    Array_Unit_length_Route_3_t0 = repmat(Array_Unit_length_Route_3,sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_t0_iter),1);
    
    %t_m
    %%%%%%%%%%%%%%
    Ice_Length_OP_Speed_SCE2Route3_tm = length(Ice_Operating_speed_SCE2Route3_tm);
    Ice_Partitioned_length_OP_Speed_SCE2Route3_tm = Ice_Length_OP_Speed_SCE2Route3_tm./length(v_iter);
    Ice_Reshaped_Operating_speed_SCE2Route3_tm = reshape(Ice_Operating_speed_SCE2Route3_tm,[Ice_Partitioned_length_OP_Speed_SCE2Route3_tm,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Ice_Length_Time_hrs_SCE2Route3_tm = length(Ice_Time_hrs_SCE2Route3_tm);
    Ice_Partitioned_length_Time_hrs_SCE2Route3_tm = Ice_Length_Time_hrs_SCE2Route3_tm./length(v_iter);
    Ice_Reshaped_Time_hrs_SCE2Route3_tm_iter = reshape(Ice_Time_hrs_SCE2Route3_tm,[Ice_Partitioned_length_Time_hrs_SCE2Route3_tm,length(v_iter)]);
    
    Ice_Logic_Operating_speed_SCE2Route3_tm = Ice_Reshaped_Operating_speed_SCE2Route3_tm;
    Ice_Logic_Operating_speed_SCE2Route3_tm(Ice_Logic_Operating_speed_SCE2Route3_tm ==3) = 1;
    Ice_Logic_Operating_speed_SCE2Route3_tm(Ice_Logic_Operating_speed_SCE2Route3_tm ~=1) = 0;
    
    Ice_IB_time_SCE2Route3_tm_iter = Ice_Logic_Operating_speed_SCE2Route3_tm.*Ice_Reshaped_Time_hrs_SCE2Route3_tm_iter;
    Ice_IB_time_SCE2Route3_tm_iter = sum(Ice_IB_time_SCE2Route3_tm_iter); Ice_IB_time_SCE2Route3_tm_iter = round(Ice_IB_time_SCE2Route3_tm_iter./24); Ice_IB_time_SCE2Route3_tm_iter =Ice_IB_time_SCE2Route3_tm_iter';
    
    Array_Unit_length_Route_3_tm = repmat(Array_Unit_length_Route_3,sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tm_iter),1);
    
    %t_f
    %%%%%%%%%%%
    Ice_Length_OP_Speed_SCE2Route3_tf = length(Ice_Operating_speed_SCE2Route3_tf);
    Ice_Partitioned_length_OP_Speed_SCE2Route3_tf = Ice_Length_OP_Speed_SCE2Route3_tf./length(v_iter);
    Ice_Reshaped_Operating_speed_SCE2Route3_tf = reshape(Ice_Operating_speed_SCE2Route3_tf,[Ice_Partitioned_length_OP_Speed_SCE2Route3_tf,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    Ice_Length_Time_hrs_SCE2Route3_tf = length(Ice_Time_hrs_SCE2Route3_tf);
    Ice_Partitioned_length_Time_hrs_SCE2Route3_tf = Ice_Length_Time_hrs_SCE2Route3_tf./length(v_iter);
    Ice_Reshaped_Time_hrs_SCE2Route3_tf_iter = reshape(Ice_Time_hrs_SCE2Route3_tf,[Ice_Partitioned_length_Time_hrs_SCE2Route3_tf,length(v_iter)]);
    
    Ice_Logic_Operating_speed_SCE2Route3_tf = Ice_Reshaped_Operating_speed_SCE2Route3_tf;
    Ice_Logic_Operating_speed_SCE2Route3_tf(Ice_Logic_Operating_speed_SCE2Route3_tf ==3) = 1;
    Ice_Logic_Operating_speed_SCE2Route3_tf(Ice_Logic_Operating_speed_SCE2Route3_tf ~=1) = 0;
    
    Ice_IB_time_SCE2Route3_tf_iter = Ice_Logic_Operating_speed_SCE2Route3_tf.*Ice_Reshaped_Time_hrs_SCE2Route3_tf_iter;
    Ice_IB_time_SCE2Route3_tf_iter = sum(Ice_IB_time_SCE2Route3_tf_iter); Ice_IB_time_SCE2Route3_tf_iter = round(Ice_IB_time_SCE2Route3_tf_iter./24); Ice_IB_time_SCE2Route3_tf_iter =Ice_IB_time_SCE2Route3_tf_iter';
    
    Ice_Array_Unit_length_Route_3_tf = repmat(Array_Unit_length_Route_3,sum(Logic_mat_Route_3_IceStrength_feasibility_Scenario2_tf_iter),1);
    
    %Table length
    Ice_Table_length_SCE2Route3_t0 = length(Agg_Op_speed1_SCE2Route3_iter(:));
    Ice_Table_length_SCE2Route3_tm = length(Agg_Op_speed2_SCE2Route3_iter(:));
    Ice_Table_length_SCE2Route3_tf = length(Agg_Op_speed3_SCE2Route3_iter(:));
    
    %Sum of the fuel and energy consumed
    Ice_Partitioned_length_SCE2Route3_t0 =  Ice_Table_length_SCE2Route3_t0./Ship_design_speed_length;
    Ice_Partitioned_length_SCE2Route3_tm =  Ice_Table_length_SCE2Route3_tm./Ship_design_speed_length;
    Ice_Partitioned_length_SCE2Route3_tf =  Ice_Table_length_SCE2Route3_tf./Ship_design_speed_length;
    
    %Annual fuel consumed
    Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter = reshape(Ice_Fuel_consumed_SCE2Route3_t0_iter(:), Ice_Partitioned_length_SCE2Route3_t0, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter = sum(Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter); Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter = Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter';
    
    Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter = reshape(Ice_Fuel_consumed_SCE2Route3_tm_iter(:), Ice_Partitioned_length_SCE2Route3_tm, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter = sum(Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter); Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter = Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter';
    
    Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter = reshape(Ice_Fuel_consumed_SCE2Route3_tf_iter(:), Ice_Partitioned_length_SCE2Route3_tf, Ship_design_speed_length);
    Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter = sum(Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter); Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter = Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter';
    
    Ice_Energy_consumed_SCE2Route3_Arctic_t_t0_iter = reshape(Ice_Energy_demand_SCE2Route3_t0_iter(:), Ice_Partitioned_length_SCE2Route3_t0, Ship_design_speed_length);
    Ice_Energy_consumed_SCE2Route3_Arctic_t_t0_iter = sum(Ice_Energy_consumed_SCE2Route3_Arctic_t_t0_iter); Ice_Energy_consumed_SCE2Route3_Arctic_t_t0_iter = Ice_Energy_consumed_SCE2Route3_Arctic_t_t0_iter';
    
    Ice_Energy_consumed_SCE2Route3_Arctic_t_tm_iter = reshape(Ice_Energy_demand_SCE2Route3_tm_iter(:), Ice_Partitioned_length_SCE2Route3_tm, Ship_design_speed_length);
    Ice_Energy_consumed_SCE2Route3_Arctic_t_tm_iter = sum(Ice_Energy_consumed_SCE2Route3_Arctic_t_tm_iter); Ice_Energy_consumed_SCE2Route3_Arctic_t_tm_iter = Ice_Energy_consumed_SCE2Route3_Arctic_t_tm_iter';
    
    Ice_Energy_consumed_SCE2Route3_Arctic_t_tf_iter = reshape(Ice_Energy_demand_SCE2Route3_tf_iter(:), Ice_Partitioned_length_SCE2Route3_tf, Ship_design_speed_length);
    Ice_Energy_consumed_SCE2Route3_Arctic_t_tf_iter = sum(Ice_Energy_consumed_SCE2Route3_Arctic_t_tf_iter); Ice_Energy_consumed_SCE2Route3_Arctic_t_tf_iter = Ice_Energy_consumed_SCE2Route3_Arctic_t_tf_iter';
    %Have to sum each of the rows to make all dimensions align
    
    % Reshaped_Time_days_SCE2Route3_t0_iter = sum(Reshaped_Time_days_SCE2Route3_t0_iter,2);
    sx = size(Ice_Reshaped_Time_days_SCE2Route3_t0);
    sy = size(Ice_Reshaped_Time_days_SCE2Route3_t0_iter');
    a = max(sx(1),sy(1));
    Ice_Reshaped_Time_days_SCE2Route3_t0 = [[Ice_Reshaped_Time_days_SCE2Route3_t0;zeros(abs([a 0]-sx))],[Ice_Reshaped_Time_days_SCE2Route3_t0_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route3_t0_iter) == 1
        Number_of_days_pm_SCE2Route3_t0_iter = 0;
        SCE2_Ice_Route3_n_t0_iter = 0;
    else
        Number_of_days_pm_SCE2Route3_t0_iter = 30.*ones(length(Ice_Reshaped_Time_days_SCE2Route3_t0_iter(:,1)),length(Ice_Reshaped_Time_days_SCE2Route3_t0_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_Ice_Route3_n_t0_iter = Number_of_days_pm_SCE2Route3_t0_iter./Ice_Reshaped_Time_days_SCE2Route3_t0_iter;
    end
    
    sx = size(SCE2_Ice_Route3_n_t0);
    sy = size(SCE2_Ice_Route3_n_t0_iter');
    a = max(sx(1),sy(1));
    SCE2_Ice_Route3_n_t0 = [[SCE2_Ice_Route3_n_t0;zeros(abs([a 0]-sx))],[SCE2_Ice_Route3_n_t0_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route3_tm_iter = sum(Reshaped_Time_days_SCE2Route3_tm_iter,2);
    sx = size(Ice_Reshaped_Time_days_SCE2Route3_tm);
    sy = size(Ice_Reshaped_Time_days_SCE2Route3_tm_iter');
    a = max(sx(1),sy(1));
    Ice_Reshaped_Time_days_SCE2Route3_tm = [[Ice_Reshaped_Time_days_SCE2Route3_tm;zeros(abs([a 0]-sx))],[Ice_Reshaped_Time_days_SCE2Route3_tm_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route3_tm_iter) == 1
        Number_of_days_pm_SCE2Route3_tm_iter = 0;
        SCE2_Ice_Route3_n_tm_iter = 0;
    else
        Number_of_days_pm_SCE2Route3_tm_iter = 30.*ones(length(Ice_Reshaped_Time_days_SCE2Route3_tm_iter(:,1)),length(Ice_Reshaped_Time_days_SCE2Route3_tm_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_Ice_Route3_n_tm_iter = Number_of_days_pm_SCE2Route3_tm_iter./Ice_Reshaped_Time_days_SCE2Route3_tm_iter;
    end
    
    sx = size(SCE2_Ice_Route3_n_tm);
    sy = size(SCE2_Ice_Route3_n_tm_iter');
    a = max(sx(1),sy(1));
    SCE2_Ice_Route3_n_tm = [[SCE2_Ice_Route3_n_tm;zeros(abs([a 0]-sx))],[SCE2_Ice_Route3_n_tm_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route3_tf_iter = sum(Reshaped_Time_days_SCE2Route3_tf_iter,2);
    sx = size(Ice_Reshaped_Time_days_SCE2Route3_tf);
    sy = size(Ice_Reshaped_Time_days_SCE2Route3_tf_iter');
    a = max(sx(1),sy(1));
    Ice_Reshaped_Time_days_SCE2Route3_tf = [[Ice_Reshaped_Time_days_SCE2Route3_tf;zeros(abs([a 0]-sx))],[Ice_Reshaped_Time_days_SCE2Route3_tf_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(Ice_Reshaped_Time_days_SCE2Route3_tf_iter) == 1
        Number_of_days_pm_SCE2Route3_tf_iter = 0;
        SCE2_Ice_Route3_n_tf_iter = 0;
    else
        Number_of_days_pm_SCE2Route3_tf_iter = 30.*ones(length(Ice_Reshaped_Time_days_SCE2Route3_tf_iter(:,1)),length(Ice_Reshaped_Time_days_SCE2Route3_tf_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_Ice_Route3_n_tf_iter = Number_of_days_pm_SCE2Route3_tf_iter./Ice_Reshaped_Time_days_SCE2Route3_tf_iter;
    end
    
    sx = size(SCE2_Ice_Route3_n_tf);
    sy = size(SCE2_Ice_Route3_n_tf_iter');
    a = max(sx(1),sy(1));
    SCE2_Ice_Route3_n_tf = [[SCE2_Ice_Route3_n_tf;zeros(abs([a 0]-sx))],[SCE2_Ice_Route3_n_tf_iter';zeros(abs([a,0]-sy))]];
    
    %OW
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    NonIce_Global_Array_Unit_length_SCE2Route_3_t0 = repmat(Array_Unit_length_Route_3,length(v_iter).*sum(Logic_mat_Route_3_OW_feasibility_Scenario2_t0_iter),1); %12 months in a year
    NonIce_Global_Array_Unit_length_SCE2Route_3_tm = repmat(Array_Unit_length_Route_3,length(v_iter).*sum(Logic_mat_Route_3_OW_feasibility_Scenario2_tm_iter),1);
    NonIce_Global_Array_Unit_length_SCE2Route_3_tf = repmat(Array_Unit_length_Route_3,length(v_iter).*sum(Logic_mat_Route_3_OW_feasibility_Scenario2_tf_iter),1);
    
    NonIce_Time_hrs_SCE2Route3_t0 = NonIce_Global_Array_Unit_length_SCE2Route_3_t0./NonIce_Operating_speed_SCE2Route3_t0;
    NonIce_Time_hrs_SCE2Route3_tm = NonIce_Global_Array_Unit_length_SCE2Route_3_tm./NonIce_Operating_speed_SCE2Route3_tm;
    NonIce_Time_hrs_SCE2Route3_tf = NonIce_Global_Array_Unit_length_SCE2Route_3_tf./NonIce_Operating_speed_SCE2Route3_tf;
    
    %Reshaping the time matrices to work out the number of days spent on the
    %NSR which can be used later in the commercial profile function
    NonIce_Reshaped_Time_hrs_SCE2Route3_t0_iter = reshape(NonIce_Time_hrs_SCE2Route3_t0,length(Array_Unit_length_Route_3(:,1)).*length(NonIce_Global_Array_Unit_length_SCE2Route_3_t0(:,1))./(length(v_iter).*length(Array_Unit_length_Route_3(:,1))),length(v_iter));
    NonIce_Reshaped_Time_hrs_SCE2Route3_tm_iter = reshape(NonIce_Time_hrs_SCE2Route3_tm,length(Array_Unit_length_Route_3(:,1)).*length(NonIce_Global_Array_Unit_length_SCE2Route_3_tm(:,1))./(length(v_iter).*length(Array_Unit_length_Route_3(:,1))),length(v_iter));
    NonIce_Reshaped_Time_hrs_SCE2Route3_tf_iter = reshape(NonIce_Time_hrs_SCE2Route3_tf,length(Array_Unit_length_Route_3(:,1)).*length(NonIce_Global_Array_Unit_length_SCE2Route_3_tf(:,1))./(length(v_iter).*length(Array_Unit_length_Route_3(:,1))),length(v_iter));
    
    NonIce_Reshaped_Time_days_SCE2Route3_t0_iter = [];
    for i = 1:1:length(NonIce_Reshaped_Time_hrs_SCE2Route3_t0_iter(:,1))./length(Array_Unit_length_Route_3(:,1))
        Part_Time_days_SCE2Route3_t0 = NonIce_Reshaped_Time_hrs_SCE2Route3_t0_iter((i-1)*length(Array_Unit_length_Route_3(:,1))+1:i*length(Array_Unit_length_Route_3(:,1)),:);
        NonIce_Reshaped_Time_days_SCE2Route3_t0_iter_iter = sum(Part_Time_days_SCE2Route3_t0);
        NonIce_Reshaped_Time_days_SCE2Route3_t0_iter = [NonIce_Reshaped_Time_days_SCE2Route3_t0_iter; NonIce_Reshaped_Time_days_SCE2Route3_t0_iter_iter];
    end
    NonIce_Reshaped_Time_days_SCE2Route3_t0_iter = NonIce_Reshaped_Time_days_SCE2Route3_t0_iter'; NonIce_Reshaped_Time_days_SCE2Route3_t0_iter = NonIce_Reshaped_Time_days_SCE2Route3_t0_iter./24;
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route3_t0_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            NonIce_Reshaped_Time_days_SCE2Route3_t0_iter_iter_iter = NonIce_Reshaped_Time_days_SCE2Route3_t0_iter(i,:);
            NonIce_Reshaped_Time_days_SCE2Route3_t0_iter_iter_iter(NonIce_Reshaped_Time_days_SCE2Route3_t0_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            NonIce_Reshaped_Time_days_SCE2Route3_t0_iter(i,:) = NonIce_Reshaped_Time_days_SCE2Route3_t0_iter_iter_iter;
        end
        
        Logic = NonIce_Reshaped_Time_days_SCE2Route3_t0_iter > 0; Logic = Logic';
        Time = reshape(NonIce_Time_hrs_SCE2Route3_t0,length(NonIce_Global_Array_Unit_length_SCE2Route_3_t0(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(NonIce_Reshaped_Time_hrs_SCE2Route3_t0_iter(:,1))./length(Array_Unit_length_Route_3(:,1)).*length(Array_Unit_length_Route_3(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_3(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_3(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_3(:,1)),1);
        end
        NonIce_Time_hrs_SCE2Route3_t0 = Time.*Global_Logic; NonIce_Time_hrs_SCE2Route3_t0 = reshape(NonIce_Time_hrs_SCE2Route3_t0,length(NonIce_Global_Array_Unit_length_SCE2Route_3_t0(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    NonIce_Reshaped_Time_days_SCE2Route3_tm_iter = [];
    for i = 1:1:length(NonIce_Reshaped_Time_hrs_SCE2Route3_tm_iter(:,1))./length(Array_Unit_length_Route_3(:,1))
        Part_Time_days_SCE2Route3_tm = NonIce_Reshaped_Time_hrs_SCE2Route3_tm_iter((i-1)*length(Array_Unit_length_Route_3(:,1))+1:i*length(Array_Unit_length_Route_3(:,1)),:);
        NonIce_Reshaped_Time_days_SCE2Route3_tm_iter_iter = sum(Part_Time_days_SCE2Route3_tm);
        NonIce_Reshaped_Time_days_SCE2Route3_tm_iter = [NonIce_Reshaped_Time_days_SCE2Route3_tm_iter; NonIce_Reshaped_Time_days_SCE2Route3_tm_iter_iter];
    end
    NonIce_Reshaped_Time_days_SCE2Route3_tm_iter = NonIce_Reshaped_Time_days_SCE2Route3_tm_iter'; NonIce_Reshaped_Time_days_SCE2Route3_tm_iter = NonIce_Reshaped_Time_days_SCE2Route3_tm_iter./24;
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route3_tm_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            NonIce_Reshaped_Time_days_SCE2Route3_tm_iter_iter_iter = NonIce_Reshaped_Time_days_SCE2Route3_tm_iter(i,:);
            NonIce_Reshaped_Time_days_SCE2Route3_tm_iter_iter_iter(NonIce_Reshaped_Time_days_SCE2Route3_tm_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            NonIce_Reshaped_Time_days_SCE2Route3_tm_iter(i,:) = NonIce_Reshaped_Time_days_SCE2Route3_tm_iter_iter_iter;
        end
        
        Logic = NonIce_Reshaped_Time_days_SCE2Route3_tm_iter > 0; Logic = Logic';
        Time = reshape(NonIce_Time_hrs_SCE2Route3_tm,length(NonIce_Global_Array_Unit_length_SCE2Route_3_tm(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(NonIce_Reshaped_Time_hrs_SCE2Route3_tm_iter(:,1))./length(Array_Unit_length_Route_3(:,1)).*length(Array_Unit_length_Route_3(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_3(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_3(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_3(:,1)),1);
        end
        NonIce_Time_hrs_SCE2Route3_tm = Time.*Global_Logic; NonIce_Time_hrs_SCE2Route3_tm = reshape(NonIce_Time_hrs_SCE2Route3_tm,length(NonIce_Global_Array_Unit_length_SCE2Route_3_tm(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    NonIce_Reshaped_Time_days_SCE2Route3_tf_iter = [];
    for i = 1:1:length(NonIce_Reshaped_Time_hrs_SCE2Route3_tf_iter(:,1))./length(Array_Unit_length_Route_3(:,1))
        Part_Time_days_SCE2Route3_tf = NonIce_Reshaped_Time_hrs_SCE2Route3_tf_iter((i-1)*length(Array_Unit_length_Route_3(:,1))+1:i*length(Array_Unit_length_Route_3(:,1)),:);
        NonIce_Reshaped_Time_days_SCE2Route3_tf_iter_iter = sum(Part_Time_days_SCE2Route3_tf);
        NonIce_Reshaped_Time_days_SCE2Route3_tf_iter = [NonIce_Reshaped_Time_days_SCE2Route3_tf_iter; NonIce_Reshaped_Time_days_SCE2Route3_tf_iter_iter];
    end
    NonIce_Reshaped_Time_days_SCE2Route3_tf_iter = NonIce_Reshaped_Time_days_SCE2Route3_tf_iter'; NonIce_Reshaped_Time_days_SCE2Route3_tf_iter = NonIce_Reshaped_Time_days_SCE2Route3_tf_iter./24;
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route3_tf_iter) == 0
        
        for i = 1:1:Ship_design_speed_length
            NonIce_Reshaped_Time_days_SCE2Route3_tf_iter_iter_iter = NonIce_Reshaped_Time_days_SCE2Route3_tf_iter(i,:);
            NonIce_Reshaped_Time_days_SCE2Route3_tf_iter_iter_iter(NonIce_Reshaped_Time_days_SCE2Route3_tf_iter_iter_iter > 31 - Arctic_OW_Route1_T_A_iter(i)) = 0;
            NonIce_Reshaped_Time_days_SCE2Route3_tf_iter(i,:) = NonIce_Reshaped_Time_days_SCE2Route3_tf_iter_iter_iter;
        end
        
        NonIce_Reshaped_Time_days_SCE2Route3_tf_iter(NonIce_Reshaped_Time_days_SCE2Route3_tf_iter > 31) = 0;
        
        Logic = NonIce_Reshaped_Time_days_SCE2Route3_tf_iter > 0; Logic = Logic';
        Time = reshape(NonIce_Time_hrs_SCE2Route3_tf,length(NonIce_Global_Array_Unit_length_SCE2Route_3_tf(:,1))./(length(v_iter)),length(v_iter));
        
        Global_Logic = zeros(length(NonIce_Reshaped_Time_hrs_SCE2Route3_tf_iter(:,1))./length(Array_Unit_length_Route_3(:,1)).*length(Array_Unit_length_Route_3(:,1)),length(Logic(1,:)));
        for i = 1:1:length(Logic(:,1))
            Global_Logic(length(Array_Unit_length_Route_3(:,1)).*(i - 1) + 1: length(Array_Unit_length_Route_3(:,1)).*i,:) = repmat(Logic(i,:), length(Array_Unit_length_Route_3(:,1)),1);
        end
        NonIce_Time_hrs_SCE2Route3_tf = Time.*Global_Logic; NonIce_Time_hrs_SCE2Route3_tf = reshape(NonIce_Time_hrs_SCE2Route3_tf,length(NonIce_Global_Array_Unit_length_SCE2Route_3_tf(:,1)),1);
        
        clear Logic Time Global_Logic
        
    end
    
    NonIce_Energy_demand_SCE2Route3_t0_iter =  NonIce_Total_Power_demand_SCE2Route3_t0.*NonIce_Time_hrs_SCE2Route3_t0; %kWh
    NonIce_Energy_demand_SCE2Route3_tm_iter =  NonIce_Total_Power_demand_SCE2Route3_tm.*NonIce_Time_hrs_SCE2Route3_tm;
    NonIce_Energy_demand_SCE2Route3_tf_iter =  NonIce_Total_Power_demand_SCE2Route3_tf.*NonIce_Time_hrs_SCE2Route3_tf;
    
    %Fuel consumed
    NonIce_Fuel_consumed_SCE2Route3_t0_iter = NonIce_Energy_demand_SCE2Route3_t0_iter.*NonIce_Operating_SFC_SCE2Route3_t0*10^-6; %Tonnes
    NonIce_Fuel_consumed_SCE2Route3_tm_iter = NonIce_Energy_demand_SCE2Route3_tm_iter.*NonIce_Operating_SFC_SCE2Route3_tm*10^-6;
    NonIce_Fuel_consumed_SCE2Route3_tf_iter = NonIce_Energy_demand_SCE2Route3_tf_iter.*NonIce_Operating_SFC_SCE2Route3_tf*10^-6;
    
    %Number of days requiring an icebreaker - I calculate it for each
    %individual ship design
    %t_0
    %%%%%%%%%%%%%%%
    NonIce_Length_OP_Speed_SCE2Route3_t0 = length(NonIce_Operating_speed_SCE2Route3_t0);
    NonIce_Partitioned_length_OP_Speed_SCE2Route3_t0 = NonIce_Length_OP_Speed_SCE2Route3_t0./length(v_iter);
    NonIce_Reshaped_Operating_speed_SCE2Route3_t0 = reshape(NonIce_Operating_speed_SCE2Route3_t0,[NonIce_Partitioned_length_OP_Speed_SCE2Route3_t0,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    NonIce_Length_Time_hrs_SCE2Route3_t0 = length(NonIce_Time_hrs_SCE2Route3_t0);
    NonIce_Partitioned_length_Time_hrs_SCE2Route3_t0 = NonIce_Length_Time_hrs_SCE2Route3_t0./length(v_iter);
    NonIce_Reshaped_Time_hrs_SCE2Route3_t0_iter = reshape(NonIce_Time_hrs_SCE2Route3_t0,[NonIce_Partitioned_length_Time_hrs_SCE2Route3_t0,length(v_iter)]);
    
    NonIce_Logic_Operating_speed_SCE2Route3_t0 = NonIce_Reshaped_Operating_speed_SCE2Route3_t0;
    NonIce_Logic_Operating_speed_SCE2Route3_t0(NonIce_Logic_Operating_speed_SCE2Route3_t0 ==3) = 1;
    NonIce_Logic_Operating_speed_SCE2Route3_t0(NonIce_Logic_Operating_speed_SCE2Route3_t0 ~=1) = 0;
    
    NonIce_IB_time_SCE2Route3_t0_iter = NonIce_Logic_Operating_speed_SCE2Route3_t0.*NonIce_Reshaped_Time_hrs_SCE2Route3_t0_iter;
    NonIce_IB_time_SCE2Route3_t0_iter = sum(NonIce_IB_time_SCE2Route3_t0_iter); NonIce_IB_time_SCE2Route3_t0_iter = round(NonIce_IB_time_SCE2Route3_t0_iter./24); NonIce_IB_time_SCE2Route3_t0_iter =NonIce_IB_time_SCE2Route3_t0_iter';
    
    Array_Unit_length_Route_3_t0 = repmat(Array_Unit_length_Route_3,sum(Logic_mat_Route_3_OW_feasibility_Scenario2_t0_iter),1);
    
    %t_m
    %%%%%%%%%%%%%%
    NonIce_Length_OP_Speed_SCE2Route3_tm = length(NonIce_Operating_speed_SCE2Route3_tm);
    NonIce_Partitioned_length_OP_Speed_SCE2Route3_tm = NonIce_Length_OP_Speed_SCE2Route3_tm./length(v_iter);
    NonIce_Reshaped_Operating_speed_SCE2Route3_tm = reshape(NonIce_Operating_speed_SCE2Route3_tm,[NonIce_Partitioned_length_OP_Speed_SCE2Route3_tm,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    NonIce_Length_Time_hrs_SCE2Route3_tm = length(NonIce_Time_hrs_SCE2Route3_tm);
    NonIce_Partitioned_length_Time_hrs_SCE2Route3_tm = NonIce_Length_Time_hrs_SCE2Route3_tm./length(v_iter);
    NonIce_Reshaped_Time_hrs_SCE2Route3_tm_iter = reshape(NonIce_Time_hrs_SCE2Route3_tm,[NonIce_Partitioned_length_Time_hrs_SCE2Route3_tm,length(v_iter)]);
    
    NonIce_Logic_Operating_speed_SCE2Route3_tm = NonIce_Reshaped_Operating_speed_SCE2Route3_tm;
    NonIce_Logic_Operating_speed_SCE2Route3_tm(NonIce_Logic_Operating_speed_SCE2Route3_tm ==3) = 1;
    NonIce_Logic_Operating_speed_SCE2Route3_tm(NonIce_Logic_Operating_speed_SCE2Route3_tm ~=1) = 0;
    
    NonIce_IB_time_SCE2Route3_tm_iter = NonIce_Logic_Operating_speed_SCE2Route3_tm.*NonIce_Reshaped_Time_hrs_SCE2Route3_tm_iter;
    NonIce_IB_time_SCE2Route3_tm_iter = sum(NonIce_IB_time_SCE2Route3_tm_iter); NonIce_IB_time_SCE2Route3_tm_iter = round(NonIce_IB_time_SCE2Route3_tm_iter./24); NonIce_IB_time_SCE2Route3_tm_iter =NonIce_IB_time_SCE2Route3_tm_iter';
    
    Array_Unit_length_Route_3_tm = repmat(Array_Unit_length_Route_3,sum(Logic_mat_Route_3_OW_feasibility_Scenario2_tm_iter),1);
    
    %t_f
    %%%%%%%%%%%
    NonIce_Length_OP_Speed_SCE2Route3_tf = length(NonIce_Operating_speed_SCE2Route3_tf);
    NonIce_Partitioned_length_OP_Speed_SCE2Route3_tf = NonIce_Length_OP_Speed_SCE2Route3_tf./length(v_iter);
    NonIce_Reshaped_Operating_speed_SCE2Route3_tf = reshape(NonIce_Operating_speed_SCE2Route3_tf,[NonIce_Partitioned_length_OP_Speed_SCE2Route3_tf,length(v_iter)]);
    
    %Using for loops won't work as the dimension of the arrays aren't
    %consistent - so I reshape the time array and use logical operators
    NonIce_Length_Time_hrs_SCE2Route3_tf = length(NonIce_Time_hrs_SCE2Route3_tf);
    NonIce_Partitioned_length_Time_hrs_SCE2Route3_tf = NonIce_Length_Time_hrs_SCE2Route3_tf./length(v_iter);
    NonIce_Reshaped_Time_hrs_SCE2Route3_tf_iter = reshape(NonIce_Time_hrs_SCE2Route3_tf,[NonIce_Partitioned_length_Time_hrs_SCE2Route3_tf,length(v_iter)]);
    
    NonIce_Logic_Operating_speed_SCE2Route3_tf = NonIce_Reshaped_Operating_speed_SCE2Route3_tf;
    NonIce_Logic_Operating_speed_SCE2Route3_tf(NonIce_Logic_Operating_speed_SCE2Route3_tf ==3) = 1;
    NonIce_Logic_Operating_speed_SCE2Route3_tf(NonIce_Logic_Operating_speed_SCE2Route3_tf ~=1) = 0;
    
    NonIce_IB_time_SCE2Route3_tf_iter = NonIce_Logic_Operating_speed_SCE2Route3_tf.*NonIce_Reshaped_Time_hrs_SCE2Route3_tf_iter;
    NonIce_IB_time_SCE2Route3_tf_iter = sum(NonIce_IB_time_SCE2Route3_tf_iter); NonIce_IB_time_SCE2Route3_tf_iter = round(NonIce_IB_time_SCE2Route3_tf_iter./24); NonIce_IB_time_SCE2Route3_tf_iter =NonIce_IB_time_SCE2Route3_tf_iter';
    
    NonIce_Array_Unit_length_Route_3_tf = repmat(Array_Unit_length_Route_3,sum(Logic_mat_Route_3_OW_feasibility_Scenario2_tf_iter),1);
    
    %Table length
    NonIce_Table_length_SCE2Route3_t0 = length(OW_Agg_Op_speed1_SCE2Route3_iter(:));
    NonIce_Table_length_SCE2Route3_tm = length(OW_Agg_Op_speed2_SCE2Route3_iter(:));
    NonIce_Table_length_SCE2Route3_tf = length(OW_Agg_Op_speed3_SCE2Route3_iter(:));
    
    %Sum of the fuel and energy consumed
    NonIce_Partitioned_length_SCE2Route3_t0 =  NonIce_Table_length_SCE2Route3_t0./Ship_design_speed_length;
    NonIce_Partitioned_length_SCE2Route3_tm =  NonIce_Table_length_SCE2Route3_tm./Ship_design_speed_length;
    NonIce_Partitioned_length_SCE2Route3_tf =  NonIce_Table_length_SCE2Route3_tf./Ship_design_speed_length;
    
    %Annual fuel consumed
    NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter = reshape(NonIce_Fuel_consumed_SCE2Route3_t0_iter(:), NonIce_Partitioned_length_SCE2Route3_t0, Ship_design_speed_length);
    NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter = sum(NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter); NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter = NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter';
    
    NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter = reshape(NonIce_Fuel_consumed_SCE2Route3_tm_iter(:), NonIce_Partitioned_length_SCE2Route3_tm, Ship_design_speed_length);
    NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter = sum(NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter); NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter = NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter';
    
    NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter = reshape(NonIce_Fuel_consumed_SCE2Route3_tf_iter(:), NonIce_Partitioned_length_SCE2Route3_tf, Ship_design_speed_length);
    NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter = sum(NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter); NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter = NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter';
    
    NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0_iter = reshape(NonIce_Energy_demand_SCE2Route3_t0_iter(:), NonIce_Partitioned_length_SCE2Route3_t0, Ship_design_speed_length);
    NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0_iter = sum(NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0_iter); NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0_iter = NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0_iter';
    
    NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm_iter = reshape(NonIce_Energy_demand_SCE2Route3_tm_iter(:), NonIce_Partitioned_length_SCE2Route3_tm, Ship_design_speed_length);
    NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm_iter = sum(NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm_iter); NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm_iter = NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm_iter';
    
    NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf_iter = reshape(NonIce_Energy_demand_SCE2Route3_tf_iter(:), NonIce_Partitioned_length_SCE2Route3_tf, Ship_design_speed_length);
    NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf_iter = sum(NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf_iter); NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf_iter = NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf_iter';
    %Have to sum each of the rows to make all dimensions align
    
    % Reshaped_Time_days_SCE2Route3_t0_iter = sum(Reshaped_Time_days_SCE2Route3_t0_iter,2);
    sx = size(NonIce_Reshaped_Time_days_SCE2Route3_t0);
    sy = size(NonIce_Reshaped_Time_days_SCE2Route3_t0_iter');
    a = max(sx(1),sy(1));
    NonIce_Reshaped_Time_days_SCE2Route3_t0 = [[NonIce_Reshaped_Time_days_SCE2Route3_t0;zeros(abs([a 0]-sx))],[NonIce_Reshaped_Time_days_SCE2Route3_t0_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route3_t0_iter) == 1
        Number_of_days_pm_SCE2Route3_t0_iter = 0;
        SCE2_NonIce_Route3_n_t0_iter = 0;
    else
        Number_of_days_pm_SCE2Route3_t0_iter = 30.*ones(length(NonIce_Reshaped_Time_days_SCE2Route3_t0_iter(:,1)),length(NonIce_Reshaped_Time_days_SCE2Route3_t0_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_NonIce_Route3_n_t0_iter = Number_of_days_pm_SCE2Route3_t0_iter./NonIce_Reshaped_Time_days_SCE2Route3_t0_iter;
    end
    
    sx = size(SCE2_NonIce_Route3_n_t0);
    sy = size(SCE2_NonIce_Route3_n_t0_iter');
    a = max(sx(1),sy(1));
    SCE2_NonIce_Route3_n_t0 = [[SCE2_NonIce_Route3_n_t0;zeros(abs([a 0]-sx))],[SCE2_NonIce_Route3_n_t0_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route3_tm_iter = sum(Reshaped_Time_days_SCE2Route3_tm_iter,2);
    sx = size(NonIce_Reshaped_Time_days_SCE2Route3_tm);
    sy = size(NonIce_Reshaped_Time_days_SCE2Route3_tm_iter');
    a = max(sx(1),sy(1));
    NonIce_Reshaped_Time_days_SCE2Route3_tm = [[NonIce_Reshaped_Time_days_SCE2Route3_tm;zeros(abs([a 0]-sx))],[NonIce_Reshaped_Time_days_SCE2Route3_tm_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route3_tm_iter) == 1
        Number_of_days_pm_SCE2Route3_tm_iter = 0;
        SCE2_NonIce_Route3_n_tm_iter = 0;
    else
        Number_of_days_pm_SCE2Route3_tm_iter = 30.*ones(length(NonIce_Reshaped_Time_days_SCE2Route3_tm_iter(:,1)),length(NonIce_Reshaped_Time_days_SCE2Route3_tm_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_NonIce_Route3_n_tm_iter = Number_of_days_pm_SCE2Route3_tm_iter./NonIce_Reshaped_Time_days_SCE2Route3_tm_iter;
    end
    
    sx = size(SCE2_NonIce_Route3_n_tm);
    sy = size(SCE2_NonIce_Route3_n_tm_iter');
    a = max(sx(1),sy(1));
    SCE2_NonIce_Route3_n_tm = [[SCE2_NonIce_Route3_n_tm;zeros(abs([a 0]-sx))],[SCE2_NonIce_Route3_n_tm_iter';zeros(abs([a,0]-sy))]];
    
    % Reshaped_Time_days_SCE2Route3_tf_iter = sum(Reshaped_Time_days_SCE2Route3_tf_iter,2);
sx = size(NonIce_Reshaped_Time_days_SCE2Route3_tf);
    sy = size(NonIce_Reshaped_Time_days_SCE2Route3_tf_iter');
    a = max(sx(1),sy(1));
    NonIce_Reshaped_Time_days_SCE2Route3_tf = [[NonIce_Reshaped_Time_days_SCE2Route3_tf;zeros(abs([a 0]-sx))],[NonIce_Reshaped_Time_days_SCE2Route3_tf_iter';zeros(abs([a,0]-sy))]]; %MUST BE TRANSPOSED IN OTHER SUBROUTINES
    
    if isempty(NonIce_Reshaped_Time_days_SCE2Route3_tf_iter) == 1
        Number_of_days_pm_SCE2Route3_tf_iter = 0;
        SCE2_NonIce_Route3_n_tf_iter = 0;
    else
        Number_of_days_pm_SCE2Route3_tf_iter = 30.*ones(length(NonIce_Reshaped_Time_days_SCE2Route3_tf_iter(:,1)),length(NonIce_Reshaped_Time_days_SCE2Route3_tf_iter(1,:))); %I need to figure out how long it takes to transit through per month because
        %each month varies
        SCE2_NonIce_Route3_n_tf_iter = Number_of_days_pm_SCE2Route3_tf_iter./NonIce_Reshaped_Time_days_SCE2Route3_tf_iter;
    end
    
    sx = size(SCE2_NonIce_Route3_n_tf);
    sy = size(SCE2_NonIce_Route3_n_tf_iter');
    a = max(sx(1),sy(1));
    SCE2_NonIce_Route3_n_tf = [[SCE2_NonIce_Route3_n_tf;zeros(abs([a 0]-sx))],[SCE2_NonIce_Route3_n_tf_iter';zeros(abs([a,0]-sy))]];
    
    
    IB_time_SCE2Route3_t0 = [IB_time_SCE2Route3_t0; Ice_IB_time_SCE2Route3_t0_iter];
    IB_time_SCE2Route3_tm = [IB_time_SCE2Route3_tm; Ice_IB_time_SCE2Route3_tm_iter];
    IB_time_SCE2Route3_tf = [IB_time_SCE2Route3_tf; Ice_IB_time_SCE2Route3_tf_iter];
    
    Agg_Op_speed1_SCE2Route3 = [Agg_Op_speed1_SCE2Route3; Agg_Op_speed1_SCE2Route3_iter];
    Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0 = [Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0; Ice_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter];
    Ice_Energy_consumed_SCE2Route3_Arctic_t_t0 = [Ice_Energy_consumed_SCE2Route3_Arctic_t_t0; Ice_Energy_consumed_SCE2Route3_Arctic_t_t0_iter];
    
    Agg_Op_speed2_SCE2Route3 = [Agg_Op_speed2_SCE2Route3; Agg_Op_speed2_SCE2Route3_iter];
    Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm = [Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm; Ice_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter];
    Ice_Energy_consumed_SCE2Route3_Arctic_t_tm = [Ice_Energy_consumed_SCE2Route3_Arctic_t_tm; Ice_Energy_consumed_SCE2Route3_Arctic_t_tm_iter];
    
    Agg_Op_speed3_SCE2Route3 = [Agg_Op_speed3_SCE2Route3; Agg_Op_speed3_SCE2Route3_iter];
    Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf = [Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf; Ice_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter];
    Ice_Energy_consumed_SCE2Route3_Arctic_t_tf = [Ice_Energy_consumed_SCE2Route3_Arctic_t_tf; Ice_Energy_consumed_SCE2Route3_Arctic_t_tf_iter];
    
    NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0 = [NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0; NonIce_Fuel_consumed_SCE2Route3_Arctic_t_t0_iter];
    NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0 = [NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0; NonIce_Energy_consumed_SCE2Route3_Arctic_t_t0_iter];
    
    NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm = [NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm; NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tm_iter];
    NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm = [NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm; NonIce_Energy_consumed_SCE2Route3_Arctic_t_tm_iter];
    
    NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf = [NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf; NonIce_Fuel_consumed_SCE2Route3_Arctic_t_tf_iter];
    NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf = [NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf; NonIce_Energy_consumed_SCE2Route3_Arctic_t_tf_iter];
end

