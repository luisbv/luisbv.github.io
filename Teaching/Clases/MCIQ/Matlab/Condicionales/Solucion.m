%-------------------- Problema 1 --------------------%

clear all
a = 1; b = 2; C = 3;

if a < b
    c = 1;
end
if b < c
    c = 2;
end

%El valor de c será igual a 1
fprintf('El valor de c es %d\n',c);
%------------------ Fin Problema 1 ------------------%

%-------------------- Problema 2 --------------------%

clear all
% En Matlab 1 es Verdadero y 0 es Falso
a = 5.5; b = 1.5; k = -3;

%a)
a < 10.0 % Verdadero

%b)
a + b < 6.5 % Falso

%c)
k ~= 0 % Verdadero

%d)
b - k > a % Falso

%e)
~(a == 3*b) % Verdadero

%f)
-k < k + 6 % Falso

%g)
a < 10 & a > 5 % Verdadero

%h)
a < 10 | a > 5 % Verdadero

%i)
~(abs(k) > 3) | k < b - a % Verdadero
%------------------ Fin Problema 2 ------------------%

%-------------------- Problema 3 --------------------%

clear all
x = [1 5 2 8 9 0 1];
y = [5 2 2 6 0 0 2];
%a)
x > y % Comprueba para cada elemento de x si es mayor a y

%b)
x < y % Comprueba para cada elemento de x si es menor a y

%c)
x <= y % Comprueba para cada elemento de x si es mayor o igual a y

%d)
y > x % Comprueba para cada elemento de y si es mayor a x

%e)
x | y % En una comparación (o) si un elemento de un vector
% es igual a 0 es falso y si es diferente de 0 es verdadero

%f)
x & (~y) % En una comparación (y) si un elemento de un vector
% es igual a 0 es falso y si es diferente de 0 es verdadero

%g)
(x > y) | (y > x)
%------------------ Fin Problema 3 ------------------%

%-------------------- Problema 4 --------------------%

clear all
A = [1 7 13;
     -2 -7 4;
     0 1 3]
B = [12 -6 0;
     2 12 22;
     -3 0 3]
C = [14 2 -3;
     -1 0 5;
     10 3 -4]
 
%a)
A >= 0 % Comprueba si cada elemento de la matriz A es mayor o igual a 0

%b)
A > B % Comprueba si cada elemento de la matriz A es mayor a los elementos de la matriz B

%c)
A >= C % Comprueba si cada elemento de la matriz A es mayor o igual a los elementos de la matriz C

%d)
A == C % Comprueba si cada elemento de la matriz A igual a cada elementos de la matriz C

%e)
B - (A > 2) % le suma a la matriz B la comparación de cada elemento de la matriz A siendo mayor a 2

%f)
C + 0.001*(C==0)
%------------------ Fin Problema 4 ------------------%


%-------------------- Problema 5 --------------------%

clear all
a = [-0.2 1.3 -2.1 0.5 3.4 2.7 -0.8];

%a)
a(find(a<0)) % todos los números negativos de a

%b)
a(find(a<0)) = 0 % sustituir todos los números negativos de a

%c)
a(find(abs(a)<1)) % encontrar valores cuyo valor absoluto sea menor a 1

%d)
a(find(abs(a)<1)) = a(find(abs(a)<1)) + 1 % sumar 1 a todos los elementos cuyo valor absoluto sea menor a 1
%------------------ Fin Problema 5 ------------------%


%-------------------- Problema 6 --------------------%

clear all
x = linspace(0, 3*pi, 100); % generar vector de 0 a 3pi con 100 valores

y = sin(x); % encontrar valores de y 

y(find(y<0)) = 0.5; % sustituir valores negativos por 0.5
%------------------ Fin Problema 6 ------------------%


%-------------------- Problema 7 --------------------%

clear all
x = [1.92, 0.05, -2.43, -0.02, 0.09, 0.85, 0.06]';
x(find(x>-0.1 & x<0.1)) = 0; % valores entre -0.1 y 0.1 

%Crear nuevo vector que tiene primero los valores diferentes de 0 y luego
%los iguales a 0
x = [x(find(x~=0)); x(find(x==0))]
%------------------ Fin Problema 7 ------------------%


%-------------------- Problema 8 --------------------%

clear all
%a)
volt1 = input('Introduce volt1: ');
volt2 = input('Introduce volt2: ');
if volt2 - volt1 > 10
    fprint('El valor de volt1 es %.3f\n', volt1)
    fprint('El valor de volt2 es %.3f\n', volt2)
end

%b)
x = input('Introduce valor de x: ');
cont = 0; % no especifica los valores iniciales se puede poner a 0
t = 1; % no especifica los valores iniciales se puede poner a 1
if log(x) >= 3
    t = 0;
    cont = cont + 1;
end

%c)
dist = input('Introduce la distancia: ')
t = = input('Introduce el tiempo: ')
if dist < 50 & t > 10
    t = t + 2;
else
    t = t + 2.5;
end

%d)
if dist >= 100
    t = t + 2;
elseif dist >= 50 & dist <= 100
    t = t + 1.0;
else
    t = t + 0.5;
end
%------------------ Fin Problema 8 ------------------%

%-------------------- Problema 9 --------------------%

clear all
%a)
n = 7; % n = 0, n = -7

if n > 1
    m = n + 2;
else
    m = n - 2;
end

% n = 7 m = 9
% n = 0 m = -2
% n = -7 m = -9

%b)
s = 1; % s = 7; s = 57; s = 300

z = 1;
if s <= 1
    t = 2*z;
elseif s < 10
    t = 9 - z;
elseif s < 100
    t = sqrt(s);
else
    t = s;
end
% s = 1, t = 2
% s = 7, t = 8
% s = 57, t = 7.5498
% s = 300, t = 300


%c)
t = 0; % t = 19, t = -6, t = 0
if t >= 24
    z = 3*t + 1;
elseif t > 9
    z = t^2/3 - 2*t;
else
    z = -t;
end

% t = 50, z = 151
% t = 19, z = 82.3333
% t = -6, z = 6
% t = 0, z = 0

%------------------ Fin Problema 9 ------------------%


%-------------------- Problema 10 --------------------%

clear all
T = input('Ingrese la temperatura en centígrados: ');

if T > 100
    disp('Situación Crítica!!!! Peligrando seguridad de la planta\n');
elseif T > 50 & T < 90
    disp('Rendimiento del Reactor no es óptimo\n')
else % T < 50 (única opción disponible)
    disp('Funcionamiento del Reactor incorrecto. El reactor se debe desconectar.\n');
end
%------------------ Fin Problema 10 ------------------%


%-------------------- Problema 11 --------------------%

clear all
%Esto debe de ir en un programa a parte que se llame Reynolds.m
Re = 3000000;% 0.05, 56, 1000, 7000, 3000000]; % vector con valores de Re

if Re <= 0
    C = 0;
elseif Re > 0 & Re <= 0.1
    C = 24 ./ Re;
elseif Re > 0.1 & Re <= 1000
    C = (24./Re).*(1 + 0.14*Re.^(0.7));
elseif Re > 1000 & Re <= 500000
    C = 0.43;
else % Re > 500000
    C = 0.19 + 80000./Re;
end
disp(C);
% Re = -3000, C = 0
% Re = 0.05, C = 480
% Re = 56, C = 1.4329
% Re = 1000, C = 0.447
% Re = 7000, C = 0.43
% Re = 3000000, C = 0.2167

%------------------ Fin Problema 11 ------------------%


%-------------------- Problema 12 --------------------%
clear all
temp = [18 23 25 17 20 21 15 18 22 19;
        19 22 25 18 19 22 17 19 21 19];
    
tanque1 = temp(1,:);
tanque2 = temp(2,:);
%a)
numeroDiasTanque1 = length(find(tanque1 > 20));
fprintf('Numero de días que el tanque 1 estuvo por encima de los 20 grados: %d dias\n', numeroDiasTanque1)

%b)
diasTanque1 = tanque1(find(tanque1 > 20));
fprintf('Días que el tanque 1 estuvo por encima de los 20 grados:\n')
disp(diasTanque1)

%c)
numeroDiasTanque1Tanque2 = length(find(tanque1 > tanque2));
fprintf('Numero de días que el tanque 1 estuvo por encima del tanque 2: %d dias\n', numeroDiasTanque1Tanque2)

%d)
diasTanque1Tanque2 = tanque1(find(tanque1 > tanque2));
fprintf('Días que el tanque 1 estuvo por encima del tanque 2:\n')
disp(diasTanque1Tanque2)

%e)
temperaturaIgual = find(tanque1 == tanque2);

if sum(temperaturaIgual < length(tanque1))
    disp('Al menos hay un dia que ambos tanques tienen temperatura igual')
else
     disp('No hay un dia que ambos tanques tienen temperatura igual')
end
%------------------ Fin Problema 12 ------------------%