%-------------------- Problema 1 --------------------%
clc
clear all
fprintf('Evaluar las siguientes expresiones\n')
fprintf('2+3+4+2 = %d\n',2+3+4+2)
fprintf('2+3*4+2 = %d\n',2+3*4+2)
fprintf('(2+3)*4+2 = %d\n',(2+3)*4+2)
fprintf('(2+3)*(4+2) = %d\n',(2+3)*(4+2))
fprintf('1/2(2+3*4^2) = %.2f\n',1/2*(2+3*4^2))
fprintf('\n\n')
%------------------ Fin Problema 1 ------------------%


%-------------------- Problema 2 --------------------%
clear all
fprintf('Traduce las ecuaciones a MATLAB\n')
fprintf('2+3*(6/2) = %.2f\n',2+3*(6/2))
fprintf('(4+6)/(2+3) = %.2f\n',(4+6)/(2+3))
fprintf('(4/2)^5 = %.2f\n', (4/2)^5)
fprintf('(4/2)^(5+1) = %.2f\n', (4/2)^(5+1))
fprintf('(-3)^2 = %.2f\n', (-3)^2)
fprintf('\n\n')
%------------------ Fin Problema 2 ------------------%


%-------------------- Problema 3 --------------------%
clear all
fprintf('Indica cuales son correctas o incorrectas\n')
fprintf('numero_bajas = 6 + 2;\tcorrecta\n')
fprintf('8colores = 8 * 8;\t\tincorrecta\n')
fprintf('numero bajas = 6 + 2;\tincorrecta\n')
fprintf('i = 1;\t\t\t\t\tcorrecta\n')
fprintf('A1234_5678 = i;\t\t\tcorrecta\n')
fprintf('B - 52 = 0;\t\t\t\tincorrecta\n')
fprintf('\n\n')
%------------------ Fin Problema 3 ------------------%

%-------------------- Problema 4 --------------------%
clear all
fprintf('Resultado de operaciones siguientes\n')
x = 5;
x = 2*x;
y = x^2;
x = y/x;
fprintf('x = 5;\nx = 2*x;\ny = x^2;\nx = y/x;\n')
fprintf('x = %.2f, y = %d\n',x,y)

%------------------ Fin Problema 4 ------------------%


%-------------------- Problema 5 --------------------%
% Nuevo archivo que se llame nitrogeno.m

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
fprintf('\n\n')
%------------------ Fin Problema 5 ------------------%


%-------------------- Problema 6 --------------------%
clear all
fprintf('Impresion de textos\n')
a = 5; b = 48.56; c = -4.7864; d = 11111111111;

fprintf('El valor de a es %d\n',a)
fprintf('El valor de a es %.2f\n',a)
fprintf('El valor de b es %.0f\n',b)
fprintf('El valor de b es %.2f\n',b)
fprintf('El valor de b es %.5f\n',b)
fprintf('El valor de c es %.4f\n',c)
fprintf('El valor de c es %.1f\n',c)
fprintf('El valor de c es %.3e\n',d)
fprintf('El valor de c es %.0e\n',d)
%------------------ Fin Problema 6 ------------------%


%-------------------- Problema 7 --------------------%
% Nuevo archivo que se llame OperBas.m
clear all
clc
a = input('Introduce el valor de a: ');
b = input('Introduce el valor de b: ');

fprintf('La suma de %d y %d es %d\n', a,b,a+b)
fprintf('La resta de %d y %d es %d\n', b,a,b-a)
fprintf('La multiplicacion de %d por %d es %d\n', a,b,a*b)
fprintf('La division de %d entre %d es %.0f\n', b,a,b/a)
%------------------ Fin Problema 7 ------------------%


%-------------------- Problema 8 --------------------%
% Nuevo archivo que se llame farenheit.m
clc
clear all

C = input('Ingrese temperatura en grados Celcius: ');

F = 9/5*C +32;

fprintf('La temperatura en grados Farhenheit es de %.3f\n',F);

%------------------ Fin Problema 8 ------------------%


%-------------------- Problema 9 --------------------%
% Nuevo archivo que se llame muelles.m
clc
clear all
m = input('Ingresa el valor de m: ');
k1 = input('Ingresa el valor de k1: ');
k2 = input('Ingresa el valor de k2: ');

T = 2*pi*sqrt(m/(k1+k2));

fprintf('El periodo T es: %.3f\n',T);
%------------------ Fin Problema 9 ------------------%


%-------------------- Problema 10 --------------------%
% Nuevo archivo que se llame resistencia.m
clc
clear all

R1 = input('Introduce el valor de R1: ');
R2 = input('Introduce el valor de R2: ');
R3 = input('Introduce el valor de R3: ');

Req = 1 / (1/R1+1/R2+1/R3);

fprintf('La resistencia equivalente (Req) es: %.3f\n',Req);
%------------------ Fin problema 10 ------------------%


%-------------------- Problema 11 --------------------%
clear all
% Nuevo archivo que se llame GasIdeal.m

n = input('Introduce el numero de moles: ');
T = input('Introduce la temperatura en grados Celcius: ');
V = input('Introduce el volumen en litros: ');
R = 0.082; % unidades litro-atm/(mol-K)
P = n*R*T/V;
fprintf('El valor de la presion es: %.3f',P)
%------------------ Fin problema 11 ------------------%