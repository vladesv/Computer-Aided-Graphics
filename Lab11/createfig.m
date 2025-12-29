function createfig(avin,d,A,R1,R2,Vps1,Vps2,f,N) 
% if the user pushed the "Noninverting Amp" 
% button, the title of the figure 
% becomes "Noninverting Amplifiers" 
% and variable avin=0 
if avin==0  
     figurename="NonInverting Amplifiers"; 
else  
 
% if the user pushed the "Inverting Amp" 
% button, the title of the figure 
% becomes "Inverting Amplifiers" 
% and variable avin=1 
     figurename="Inverting Amplifiers"; 
end 
 
% a new figure is created for the circuit 
% the name of the figure is variable 
% depending on the button the user pushed 
fig=figure('Name',figurename,... 
       'Units','normalized',... 
       'NumberTitle','off',... 
       'Position',[0.05 0.1 0.9 0.8],... 
       'Color','#CCCCFF');  
 
% if avin=0 the user pushed the "Noninverting Amp"      
% button and the image with the inverting 
% amplifier circuit is displayed 
if avin==0  
    w=imread('noninverting1.jpg'); 
else  
 
% if avin=1 the user pushed the "Inverting Amp"      
% button and the image with the inverting 
% amplifier circuit is displayed 
    w=imread('inverting1.jpg'); 
end 
 
% w is the handle of the circuit image 
imagesc(w); 
axis off; 
% sets the position of the current axes  
% in the figure with handle fig 
set(gca,'Position',[0.03 0.03 0.45 0.45]); 
 
%pushbutton for closing the circuit 
% window with the handle fig 
uicontrol('Style','pushbutton',... 
          'Units','normalized',... 
          'Position',[0.305 0.5  0.15 0.06],... 
          'BackgroundColor', '#CCCCFF',... 
          'String','Return',... 
          'FontSize',16,... 
          'Callback','close');  
 
% call of the interface containing the parameters 
% their values, the signal representations 
% and the menu for chosing a sinus or triangular signal 
 
myInterface(avin,d,A,R1,R2,Vps1,Vps2,f,N) 
 
end