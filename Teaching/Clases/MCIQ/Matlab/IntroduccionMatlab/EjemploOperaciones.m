%%
% Eliminar todas las variables
%% Inline Expression
% $x^2+e^{\pi i}$


clear all
%%
% Limpiar la pantalla
%%
clc
a = 4;
b = 5;
suma = a + b;
fprintf('El valor de la suma es %d\n', suma)
resta = a - b;
fprintf('El valor de la resta es %d\n', resta)
mult = a * b;
fprintf('El valor de la mutiplicacion es %d\n', mult)
div = a / b;
fprintf('El valor de la division es %.2f\n', div)
pot = a ^ b;
fprintf('El valor de la potencia es %d\n', pot)

syms x
c = (sin(x)+cos(x))/(2*tan(x));
fprintf('La funcion es %s\n',string(c))