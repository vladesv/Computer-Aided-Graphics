%Determine the branch currents in the circuit using Kirchoff's law expressed 
%in matrix form. 
clc; 
V1 = 5; V2 = 10; 
V = [V1; V2];  
R1 = 10e3; R2 = 20e3; R3 = 30e3; 
R = [R1+R3, -R3; -R3, R2+R3] 
I = (R.^(-1))*V; 
I1=I(1) 
I2=I(2) 
I3=I1-I2