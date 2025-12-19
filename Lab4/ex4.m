plot(x,y_sin,'-g^',... 
'LineWidth',2,... 
'MarkerEdgeColor','k',... 
'MarkerFaceColor','y',... 
'MarkerSize',5)     
or 
plot(x,y_sin,'-g^','LineWidth',2,'MarkerEdgeColor','k', 'MarkerFaceColor','y','MarkerSize',5)     


title('One Period of a Sine Wave'); 
xlabel('x'); 
ylabel('sin(x)'); 
axis([-5,5,-1.5,1.5]);  
grid on; 