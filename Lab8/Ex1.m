%Create an m-file containing the plot of random 5 characteristics 
%obtained with the command rand(5).

P = plot(rand(5)); 
NameArray = {'LineStyle'}; 
ValueArray = {'-','--',':','-.','--'}'; 
set(P,NameArray,ValueArray,'Color','red','LineWidth',2) 