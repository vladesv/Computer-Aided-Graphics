%illustrates a very simple 3-D plot.

t = 0:pi/50:10*pi; 
figure 
plot3(sin(t),cos(t),t, 'LineWidth',2) 
xlabel('sin(t)') 
ylabel('cos(t)') 
zlabel('time') 
title('My First 3-D Plot') 
grid on