%The voltage v across a resistance is given as (Ohm's Law), v = Ri , where i is the 
%current and R the resistance. The power dissipated in resistor R is given by the expression P = 
%Ri2 . If R = 10 Ohms and the current is increased from 0 to 10 A with
%increments of 2A.

diary ex7.dat   
% Voltage and power calculation 
R=10;   
% Resistance value 
i=(0:2:10); % generates current values 
v=i*R;   
% array multiplication to obtain voltage 
p=(i.^2)*R;  % power calculation 
i 
v 
p 
diary % turns off the diary state