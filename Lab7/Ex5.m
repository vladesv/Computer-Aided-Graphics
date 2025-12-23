%Using the function before, we exemplify on it the use of the subplot function. 

[x, y] = meshgrid(-pi:pi/10:pi); 
z = sin(x) .* sin(y); 
surf(z); 
subplot(2,2,1);  
mesh(X, 'LineWidth',1)  
title('X') 
subplot(2,2,2);  
mesh(Y, 'LineWidth',1)  
title('Y')

subplot(2,2,3);  
mesh(Z, 'LineWidth',1)  
title('Z') 