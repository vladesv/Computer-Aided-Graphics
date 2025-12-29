function plotSinMeshSubplots 
    [x, y] = meshgrid(-pi:pi/10:pi); 
    z = sin(x) .* sin(y); 
    figure; 
    subplot(2, 2, 1); 
    mesh(x, 'LineWidth', 1); 
    title('X'); 
    subplot(2, 2, 2); 
    mesh(y, 'LineWidth', 1); 
    title('Y'); 
    subplot(2, 2, 3); 
    mesh(z, 'LineWidth', 1); 
    title('Z'); 
    sgtitle('Sin Mesh Subplots'); 
end 