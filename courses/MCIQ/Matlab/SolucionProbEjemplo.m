%%%%%%%%%%%%%%%%%%%% Problema 1 %%%%%%%%%%%%%%%%%%%

clear all % eliminar todas las variables
clc % limpiar la ventana de comandos

% Vector de tiempo desde 0 hasta 100
t = 0:0.01:100; 
% Tener un vector con las diferentes alturas iniciales
h = [60, 80, 100]; 
% Calcular la altura en el rango de t para la primer altura inicial (60)
altura = h(1) + 2.13 * t.^2 - 0.0013 * t.^4 + 0.000034 * t.^(4.751); 


fprintf('t(s) \t h(m)\n')% Imprimir titulo de tiempo y altura
for i = 1:length(t) % Desde 1 hasta la longitud del vector tiempo (100)
    if altura(i) >= 0 % Si no ha llegado al suelo
        fprintf('%d \t %.4f\n', t(i), altura(i)) % Imprimir
    end
end
% otra forma



for j = 1:length(h)% Desde 1 hasta la longitud del vector h (3)
    % Calcular la altura para la altura inicial h(j)
    altura = h(j) + 2.13 * t.^2 - 0.0013 * t.^4 + 0.000034 * t.^(4.751);
    % Graficar altura vs tiempo
    plot(t, altura)
    % Esperar a la siguiente grafica
    hold on
end

%%%%%%%%%%%%%%%%%%%% Fin Problema 1 %%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% Problema 2 %%%%%%%%%%%%%%%%%%%

% Hoja de Excel
%  |   A   | B | C | D|E | F|
% 1|Resorte|  1|  2| 3| 4| 5|
% 2|F(N)   | 23|123| 5|79| 8|
% 3|k      |145| 33|12|17|34|

clear all % eliminar todas las variables
clc % limpiar la ventana de comandos

% Uso de funcion xlsread
% xlsread(nombreArchivo, RangoDatos)
% nombreArchivo = Libro1.xls
% RangoDatos = B2:F3
%
%
% Leer los datos de una hoja de Excel
datos = xlsread('Libro1.xls', 'B2:F3');

% La fuerza son todos los elementos de la primer fila
F = datos(1,:);
% La constante k son todos los elementos de la segunda fila
k = datos(2,:);

% Calcular el desplazamiento
x = F ./ x;

% Calcular la energia potencial
E = k .* x .^ 2;

% Hacer una tabla para los valores obtenidos
table(F', k', x', E')

% Si no pueden hacer la tabla, se hace una gráfica
plot(x, E);

%%%%%%%%%%%%%%%%%%%% Fin Problema 2 %%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% Problema 3 %%%%%%%%%%%%%%%%%%%
clear all % eliminar todas las variables
clc % limpiar la ventana de comandos

% Pedir que se ingresen los valores de resistencias y voltaje
R1 = input('Ingresa el valor de la resistencia 1: ');
R2 = input('Ingresa el valor de la resistencia 2: ');
R3 = input('Ingresa el valor de la resistencia 3: ');
R4 = input('Ingresa el valor de la resistencia 4: ');
R5 = input('Ingresa el valor de la resistencia 5: ');
V = input('Ingresa el valor del voltaje: ');

% Ecuaciones
%        V1 + R2(i1-i2) + R4(i1-i3) = 0
%     R1*i2 + R3(i2-i3) + R2(i2-i1) = 0
% R3(i3-i2) +     R5*i3 + R4(i3-i1) = 0

% Realizando operaciones para simplificar
% R2*i1 - R2*i2 + R4*i1 - R4*i3         = -V1
% R1*i2 + R3*i2 - R3*i3 + R2*i2 - R2*i1 = 0
% R3*i3 - R3*i2 + R5*i3 + R4*i3 - R3*i1 = 0

% Simplificando la expresion y juntando terminos semejantes
% (R2+R4)*i1 -         R2*i2 -         R4*i3 = -V1
%     -R2*i1 + (R1+R2+R3)*i2 -         R3*i3 = 0
%     -R3*i1 -         R3*i2 + (R3+R4+R5)*i3 = 0

% Ecuaciones de forma matricial
A = [(R2+R4),        -R2,        R4;
      -R2*i1, (R1+R2+R3),       -R3;
         -R3,        -R3, (R3+R4+R5)];
     
% Matriz resultados (lado derecho de las ecuaciones)
b = [-V1;
       0;
       0];

% Encontrar la solucion al sistema ecuaciones (3 incognitas, 3 ecuaciones)
i = inv(A)*b; % o tambien A \ b (da el mismo resultado)

% Impresion de los resultados para cada corriente, (i1, i2, i3)
fprintf('La corriente i1 tiene un valor de %.3f\n', i(1));
fprintf('La corriente i2 tiene un valor de %.3f\n', i(2));
fprintf('La corriente i3 tiene un valor de %.3f\n', i(3));

%%%%%%%%%%%%%%%%%%%% Fin Problema 3 %%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% Problema 4 %%%%%%%%%%%%%%%%%%%
clear all % eliminar todas las variables
clc % limpiar la ventana de comandos

% Declarar variable simbolica
syms t

% Expresar la distancia como funcion que depende de t
x = 5 * t^2 - 20*t +15;

% Encontrar la velocidad (v) que es la primer derivada de la distancia (x)
v = diff(x, t);

% Encontrar la aceleracion (a) que es la primer derivada de la velocidad (v)
a= diff(v, t);

% Para un rango desde 0 hasta 10
t = 0:10;
% Uso de funcion subplot
% Se usa para acomodar una "matriz de graficas"
% subplot(r, c, p)
% r = numero de renglones
% c = numero de columnas
% p = posicion de la grafica

% la funcion eval() se utiliza para evaluar
% el valor de t en cada ecuacion
subplot(3, 1, 1)% en la primer posicion
plot(t, eval(x))% graficar la distancia
subplot(3, 1, 2)% en la segunda posicion
plot(t, eval(v))% graficar la velocidad
subplot(3, 1, 3)% en la tercer posicion
plot(t, eval(a))% graficar la aceleracion
%%%%%%%%%%%%%%%%%%%% Fin Problema 4 %%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% Problema 5 %%%%%%%%%%%%%%%%%%%
% Forma general de declarar una funcion
% [salida1, salida2] = nombreFuncion(entrada1, entrada2)
% nombre del archivo donde se guarda debe ser igual
% a nombre de la funcion
%
% en este caso solo una salida y una entrada
% [salida1] = nombreFuncion(entrada1)
% salida1 = P
% nombreFuncion = psat
% entrada1 = T
% nombre archivo psat.m

function [P] = psat(T)
 T = T +273.15; % cambiar de grados Celsius a grados Kelvin
 deltaH = 2.453*10^(-6); % constante de calor latente del agua (proporcionado)
 R = 461; % constante de gas para aire humedo (proporcionado)
 P = 6.11 * exp(deltaH/R - 1/T); % calcular presion (despejando)
end

%%%%% Como usar la funcion psat %%%%%
%%%%% En un programa aparte prueba.m %%%%%
% Ingresar por teclado la temperatura
T = input('Ingresa la temperatura en grados Celsius: ');

% Obtener el valor de la presion de vapor de saturacion del agua
% a la temperatura ingresada
P = psat(T);

% Imprimir los resultados
fprintf('La presion de vapor \nde saturacion del agua a %d Celsius es %.3f mbar\n',T, P)
%%%%%%%%%%%%%%%%%%%% Fin Problema 5 %%%%%%%%%%%%%%%%%%%