%-------------------- Problema 1 --------------------%
clc
clear all
mult = 1;

for i = 1:2:9
    mult = mult * i;
end
fprintf('La multiplicación de 1 hasta 9 con incrementos de 2 es %d\n',mult)
%------------------ Fin Problema 1 ------------------%


%-------------------- Problema 2 --------------------%
clc
clear all
mult = 1;
n = input('Introduce numero de datos: ');
for i = 1:n
    x = input('Introduce valor: ');
    mult = mult * x;
end
mediaGeometrica = mult ^(1/n); % media geométrica
fprintf('La media geométrica es %.3f\n',mult)

%------------------ Fin Problema 2 ------------------%


%-------------------- Problema 3 --------------------%
clc
clear all
%a)
i = 0;
while i <= 3
    disp(i);
    i = i + 1;
end
disp('Terminado')

%b)
i = 3;
while i <= 10
    disp(i);
    i = i + 2;
end
disp('Terminado')

%c)
i = 0;
while i < 10
    disp(i);
    i = i + 2;
end
disp('Terminado')

%d)
i = 1;
while i < 100
    i = i * 2;
    disp(i);
end
disp('Terminado')
%------------------ Fin Problema 3 ------------------%


%-------------------- Problema 4 --------------------%
clc
clear all
x = 0.01;
precision = 1 * 10 ^(-6);
suma = 0;
termino = 1;
while abs(termino) >= precision
    suma = suma + termino;
    termino = termino * (-x^2);
end
fprintf('La suma es: %.4f\n', suma)
%------------------ Fin Problema 4 ------------------%


%-------------------- Problema 5 --------------------%
clc
clear all
x = [4 1 6 -1 -2 2];
y = [6 2 -7 1 5 -1];

% length función para conocer el tamaño del vector
for i = 1:length(x)
    for j = 1:length(y)
        %a)
        a(i,j) = y(j)/x(i);
        %b)
        b(i,j) = x(i)/(2 + x(i)+y(j)));
        %c)
        c(i,j) = 1/max(x(i),y(j));
    end
end
%------------------ Fin Problema 5 ------------------%


%-------------------- Problema 6 --------------------%
clc
clear all
% Crear matriz cuadrada aleatoria
A = rand(5);

%Matriz Cuadrada
for i = 1:5
    for j = 1:5
        % Intercambiar renglones por columnas
        % y columnas por renglones
        ATrans(i,j) = A(j,i);
    end
end

% Comprobar que son iguales
% para saber si son igual a 1
% todos los elementos, hay que hacer la suma de todos los elementos
% comparados y si es igual al total de elementos quiere decir que
% son iguales, en este caso si son 25 unos, quiere decir que
% la matriz ATrans es igual a la transpuesta (A')
if sum(sum(ATrans==A')) == 25
    disp('Las matrices transpuestas son iguales');
end
    
%------------------ Fin Problema 6 ------------------%

%-------------------- Problema 7 --------------------%
% Debe ir en un archivo que se llame pi1.m
% como se tiene que calcular el valor de 
% pi, usaremos otra variable para el calculo (valorPi)
% n es el iterador o contador, normalmente es i
clc
clear all
n = 1;
suma = 0;
precision = 1 * 10^(-12);
termino = 1; % aquí puede empezar en otro valor,
% porque cuando entra al while se vuelve a calcular
% solo tiene que ser mayor que la precisión
% el valor inicial
while termino >= precision
    termino = 1/((2*n-1)^2*(2*n+1)^2);
    suma = suma + termino; 
    n = n + 1;
end


% Despejando los valores
valorPi = sqrt(suma*16 + 8);
% se le resta 1 a n porque no se llego a hacer la siguiente iteracion
fprintf('El valor de Pi calculado en %d iteraciones es %.5f\n',(n-1), valorPi);
%------------------ Fin Problema 7 ------------------%

%-------------------- Problema 8 --------------------%
% Debe ir en un archivo que se llame pi2.m
% como se tiene que calcular el valor de 
% pi, usaremos otra variable para el calculo (valorPi)
clc
clear all
%Inicializacion
a=1; b=1/sqrt(2); t=1/4; x=1;

precision = 1*10^(-6);

%Repeticion (ciclo while)
while a - b > precision
    y = a;
    a = (a + b) / 2;
    b = sqrt(b * y);
    t = t - x * (y - a) ^ 2;
    x = 2 * x;
end

% Calculo de pi
valorPi = (a + b) ^ 2 / (4 * t);

% se le resta 1 a n porque n empezo en 1 y no en 0
fprintf('El valor de Pi calculado es %.5f\n', valorPi);
%------------------ Fin Problema 8 ------------------%


%-------------------- Problema 9 --------------------%
clc
clear all
ires = 0;
for index1 = 10:-2:4
    for index2 = 2:2:index1
        if index2 == 6
            break
        end
        ires = ires + index2;
    end
end
fprintf('El valor de ires es: %d\n', ires)
%------------------ Fin Problema 9 ------------------%
 

%-------------------- Problema 10 --------------------%
clc
clear all
Va = input('Ingrese volumen inicial de ácido (ml): ');
% para ingresar los volumenes [0:50]
Vb = input('Ingrese diferentes volumenes de base añadida (ml): ');
Ca = input('Ingrese la concentración inicial de ácido (M): ');
Cb = input('Ingrese la concentración inicial de base (M): ');

% Calculo de delta
delta = Ca*Va-Cb*Vb;

for i = 1:length(Vb)
    if delta(i) >= 0
        pH(i) = -log10(delta(i) / (Va + Vb(i)) + 10^(-7));
    else
        pH(i) = 14 + log10(-delta(i) / (Va + Vb(i)));
    end
end

% Graficar ph en funcion del volumen
plot(Vb, pH);
title('Curva de valoración ácido fuerte - base fuerte');
xlabel('Vb (ml)')
ylabel('pH')
%------------------ Fin Problema 10 ------------------%
