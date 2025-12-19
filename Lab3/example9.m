% Computing using MATLAB  the intermediate node voltage

diary ex10.dat 
v=[10 20 30 0];  
r=10:20:70;      
v11=v./r;        
v22=1./r;        
va=v11/v22       


diary 
va =    11.4571  