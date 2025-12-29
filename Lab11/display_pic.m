function display_pic 
% axes graph object is created, with handle ax 
% it's position is specified in the position property 
ax=axes('Position',[0.58 0.5 0.25 0.25]); 
% the .jpg image is displayed inside or over the axes ax 
% this is to have a fixed display of the image  
% in respect to the figure window 
imshow('sincos.jpg','Parent',ax ) 
end