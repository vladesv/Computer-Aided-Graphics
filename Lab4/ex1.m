x = -pi:pi/100:pi; 
y_sin = sin(x); 
y_cos = cos(x); 
figure('Name','Sine Waves','NumberTitle','off'); 
plot(x,y_sin); 
hold on;        
plot(x,y_cos);  