%the same as Ex3 but with surf
[x, y] = meshgrid(-pi:pi/10:pi); 
z = sin(x) .* sin(y); 
surf(z); 