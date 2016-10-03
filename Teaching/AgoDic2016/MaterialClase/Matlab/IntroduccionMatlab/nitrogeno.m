clear all
clc

n = 1;
V = 0.419;
T = 227;
a = 1.390;
b = 0.03913;
R = 0.082;
P = n*R*T/(V-n*b)-(n^2*a/(V^2));

fprintf('El valor de la presion P es %.3f atm\n',P)