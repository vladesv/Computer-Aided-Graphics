%Simple ode-s with a single solution component can be specified as an anonymous function in the 
%solver call. The anonymous function accepts two inputs (t,y) even if one of the inputs is not used. 
%Solve the ode   y'=2t  (as  y=t2 )  or   y'=8t   using a time interval of [0,4] and initial conditions  
%y01 = 0; y02 = 5; y03 =10. Plot the result. 
tspan = [0 4]; 
y01 = 0;  [t,y1] = ode45(@(t,y1) 2*t, tspan, y01); 
y02 = 5;  [t,y2] = ode45(@(t,y2) 2*t, tspan, y02); 
y03 = 10; [t,y3] = ode45(@(t,y3) 8*t, tspan, y03); 
plot(t,y1,t,y2,t,y3);