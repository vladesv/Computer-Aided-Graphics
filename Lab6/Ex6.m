% the input and output signals of the DR circuit with ideal diode

A=12;  f=50;  T=1/f;  stepsize=T/100; 
t=0:stepsize:5*T;  
vin=A*sin(2*pi*f*t);  
vout=zeros(size(vin));
for i = 1:length(t)                
if vin(i) >= 0           
vout(i) = vin(i); 
end; 
end; 
plot(t,vin,'-r', t, vout,'-.g');   
title('Exercise nr.6') 
xlabel('time in seconds') 
ylabel('voltages in volts') 
legend('Vin','Vout','Location','northwest') 