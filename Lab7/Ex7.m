%Spheres – this is an example for creating spheres;

[x y z] = sphere;  
a = [3 3 3 3;-3 -3 -3 3;0 4 -2 2] 
s1=surf(x*a(1,4)+a(1,1),y*a(1,4)+a(1,2),z*a(1,4)+a(1,3)); 
hold on 
s2=surf(x*a(2,4)+a(2,1),y*a(2,4)+a(2,2),z*a(2,4)+a(2,3)); 
s3=surf(x*a(3,4)+a(3,1),y*a(3,4)+a(3,2),z*a(3,4)+a(3,3)); 
daspect([1 1 1]) 
view(30,10) 