%Consider plotting the charging and discharging of an RC circuit capacitor, by plotting the  voltage 
%and current respectively. Let's consider the input voltage a square wave, switching between positive DC 
%voltage VDC and ground (a). 
%Depending on the state of the input voltage, the circuit has two phases of operation. When the input voltage 
%is high, the capacitance charges from DC voltage source VDC through the passive resistance R (b). When 
%the input voltage is low, the capacitance discharges to the ground through the passive resistance R (c).

clear;  
close all;  
VDC = 5;  
R = 3e3;  
C = 2e-6;  
% period =amount of time for one cycle 
T = 6e-3;  
% duty cycle, 0.5 for rectangular wave  
D = 0.5;  
N = 7;  
% call of the function 
RC_circuit(VDC,R,C,T,D,N); 