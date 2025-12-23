%Exponential function 

t = linspace(0,2);  
y = exp(5*t);  
plot(t,y, 'LineWidth',2) 
title('Some exponential function') 
xlabel('time t_{sec}') 
ylabel({'e^t';'The exponential';'A time dependence'}) 