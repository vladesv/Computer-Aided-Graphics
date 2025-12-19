x = -pi:0.1:pi; 
y_sin = sin(x); 
y_cos = cos(x); 
Fig1=figure('Name','Sine Waves','NumberTitle','off'); 
plot(x,y_sin,'r:+',x,y_cos,'b--o'); 
legend('sine','cosine'); 