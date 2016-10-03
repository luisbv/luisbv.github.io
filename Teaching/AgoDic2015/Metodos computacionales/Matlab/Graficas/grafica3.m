clear all
clc


[x,y]= meshgrid(-2:0.001:2);
z = exp(-(x.^2 + y.^2));
figure(1)
subplot(2,3,1)
plot3(x,y,z)
subplot(2,3,2)
mesh(x,y,z)
subplot(2,3,3)
surf(x,y,z)
subplot(2,3,4)
surf(x,y,z)
subplot(2,3,5)
cylinder(10)
subplot(2,3,6)
sphere(10)
figure(2)
comet3(x,y,z)