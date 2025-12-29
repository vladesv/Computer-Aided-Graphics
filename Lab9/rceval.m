function [v, t] = rceval(r,c) 
tau = r*c; 
for i=1:50 
t(i) = i/100; 
v(i) = 5*(1-exp(-t(i)/tau));
end 
vmax = v(50); 
for i = 51:100 
t(i) = i/100; 
v(i) = vmax*exp(-t(i-50)/tau); 
end 
end 