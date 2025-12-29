function plotSinSurface 
    [x, y] = meshgrid(-pi:pi/10:pi); 
    z = sin(x) .* sin(y); 
    surf(z); 
    title('Sin Surface'); 
end 
