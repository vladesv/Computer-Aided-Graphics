%Create a mesh plot of the function z=sin(r)/r 
[X,Y] = meshgrid(-8:.5:8); 
R = sqrt(X.^2 + Y.^2) + eps; 
Z = sin(R)./R; 
mesh(Z, 'LineWidth',2) 
xlabel('X Axis') 
ylabel('Y Axis') 
zlabel('Z Axis') 
title('The MESHGRID 3-D Plot')