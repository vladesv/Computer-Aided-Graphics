function plotSineWaveSurface 
    A = 1; 
    f = 50; 
    x = -A:0.2:A; 
    y = 0:0.004:0.1; 
    [X, Y] = meshgrid(x, y); 
    Z = X .* sin(2 * pi * f .* Y); 
    surfc(X, Y, Z); 
    xlabel('X Axis'); 
    ylabel('Y Axis'); 
    zlabel('Z Axis'); 
    title('Sine Wave Surface'); 
end 