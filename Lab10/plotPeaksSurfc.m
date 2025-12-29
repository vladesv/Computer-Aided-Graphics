function plotPeaksSurfc 
    [X, Y, Z] = peaks(40); 
    surfc(X, Y, Z); 
    xlabel('X Axis'); 
    ylabel('Y Axis'); 
    zlabel('Z Axis'); 
    title('Peaks Surface Contour'); 
    grid on; 
end 