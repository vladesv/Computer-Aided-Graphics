%Determine the intermediate node voltage of the resistive voltage divider below, 
%considering a DC input voltage Vin=12 V and the resistances R1 = 10 kΩ and R2 = 20 kΩ.

clc;             
R1 = 10e3; 
R2 = 20e3; 
Vin = 12;  
Vout = (R2/(R1+R2))*Vin