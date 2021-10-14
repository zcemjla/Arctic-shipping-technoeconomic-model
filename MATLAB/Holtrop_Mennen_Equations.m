function [NonIceStrengthOutput_power_kW,IceStrengthOutput_power_kW, Alpha, v, Ice_Operating_Total_Resistance,...
    NonIce_Operating_Total_Resistance, Icesfc, NonIcesfc, Ice_C_T, S, Avg_Engine_Load, Foul_coeff, Weather_coeff] = Holtrop_Mennen_Equations(d, Pow_ice_rat, NonIce_Installed_Power_kW, Ice_Installed_Power_kW, NonIcesfc, Icesfc_design,...
    IMO_type);
%this function uses the Holtrop and Mennen equations to extract relevant
%ship dimensions for ice resistance calculations 

%First extract the key inputs
C_B = d.blockCoefficient(:);
C_M = d.midshipCoefficient(:); 
C_P = C_B./C_M; %Prismatic coefficient
C_WP = d.waterplane_coefficient(:); %Waterplane coefficient
LCB = d.longitudinal_centre_of_buoyancy(:)./100; %Longitudinal centre of buoyancy
L_WL = d.designWaterlineLength_m_(:);
T = d.design_draught_m(:);
B= d.design_beam_m(:);
Disp = d.design_displacement_t(:);
%Assuming efficiencies are equal, then the total resistnace for ice
%strenghtened ships are directly proportional to the increase in power
%(assuming no change in design speed)
Ice_R_T = Pow_ice_rat.*d.designTotalResistance_kN_(:);
OW_R_T = Pow_ice_rat.*d.designTotalResistance_kN_(:);
Lr = L_WL.*(1-C_P+(0.06.*C_P.*LCB))./(4.*C_P-1);
p_water = 1024; %Seawater desnity 
v_des = d.design_speed_kts(:);
V = d.design_displacement_t./(p_water./1000); %Displaced volume (m^3)
Foul_coeff = 0.917;
Weather_coeff = 0.867;

%To calculate the coefficient of total resistance, I need to find the
%wetted surface area first
if exist('Avg_Engine_Load') == 0
   Avg_Engine_Load = readtable('Input_data\Main_input_data\Avg_Engine_Load.csv');
end
Avg_Engine_Load = Avg_Engine_Load{:,:};

Ice_Adjusted_Power = Avg_Engine_Load.*Ice_Installed_Power_kW;
NonIce_Adjusted_Power = Avg_Engine_Load.*NonIce_Installed_Power_kW;

%Find Alpha (the half angle)
A_1 = -(L_WL./B).^0.80856;
A_2 = (1-C_WP).^0.30484;
A_3 = (1-C_P-0.0225.*LCB).^0.6367;
A_4 = (Lr./B).^0.34574;
A_5 = ((100.*V)./(L_WL.^3)).^0.16302;

Alpha = 1+89.*exp(A_1.*A_2.*A_3.*A_4.*A_5); %Holtrop Mennen equation

%Use the Admiralty coefficient to find the operating speed v (I only need
%one)
v = v_des.*(Weather_coeff.*Foul_coeff.*NonIce_Adjusted_Power./NonIce_Installed_Power_kW).^(1./3);

S = [];
for i = 1:1:length(IMO_type)
    
   if IMO_type(i) == 1
       S_iter = 0.99.*(((Disp(i)./1.024)./T(i))+(1.9.*L_WL(i).*T(i)));
   elseif IMO_type(i) == 4
       S_iter = 0.995.*(((Disp(i)./1.024)./T(i))+(1.9.*L_WL(i).*T(i)));
   elseif IMO_type(i) == 7
       S_iter = 0.99.*(((Disp(i)./1.024)./T(i))+(1.9.*L_WL(i).*T(i)));
   end
       S = [S; S_iter];
end
%Finding the operating speed using the admiralty coefficient
%Coefficient of total resistance
Ice_C_T = 1000.*Ice_R_T./(0.5.*p_water.*S.*(v_des.*0.51444444).^2); %Rawson and Tupper - 2001 - Basic Ship Theory - Volume 2 and Fifth Edition
OW_C_T = 1000.*OW_R_T./(0.5.*p_water.*S.*(v_des.*0.51444444).^2);

Ice_Operating_Total_Resistance = 0.5.*p_water.*Ice_C_T .*S.*(v.*0.51444444).^2;
NonIce_Operating_Total_Resistance = 0.5.*p_water.*OW_C_T .*S.*(v.*0.51444444).^2;

%SFC correction factor
SFC_Correction_Factor = (0.455.*(Avg_Engine_Load).^2 - 0.71.*Avg_Engine_Load +1.28);

Icesfc = Icesfc_design.*SFC_Correction_Factor;
NonIcesfc = NonIcesfc.*SFC_Correction_Factor;

NonIceStrengthOutput_power_kW = NonIce_Adjusted_Power;
IceStrengthOutput_power_kW = Ice_Adjusted_Power;







