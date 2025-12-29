function plotMixedSubplots 
    % Subplot a 
    [X, Y] = meshgrid(-2:.2:2, -2:.2:2); 
    Z = X .* exp(-X.^2 - Y.^2); 
    figure; 
    subplot(2, 2, 1); 
    surf(X, Y, Z, 'EdgeColor', 'y', 'FaceColor', 'r'); 
    title('Exp Decay Surface'); 
     
    % Subplot b 
    [x, y] = meshgrid(-pi:pi/10:pi); 
    z = sin(x).^2 .* sin(y).^2; 
    subplot(2, 2, 2); 
    surf(z); 
    title('Sin^2 Surface'); 
     
    % Subplot c 
    z = sin(x) .* sin(x); 
    subplot(2, 2, 3); 
    surf(z); 
    title('Sin^2 Surface'); 
     
    % Subplot d 
    [X, Y, Z] = peaks(30); 
    subplot(2, 2, 4); 
    surfc(X, Y, Z); 
    title('Peaks Surface Contour'); 
    % sgtitle is the command for title for a grid of subplots 
    sgtitle('Mixed Subplots'); 
end 