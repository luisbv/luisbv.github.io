%-------------------- Problema 1 ---.----------------%
% La función va en un archivo a parte con el nombre estad.m
% ---- Inicio Funcion ----%
function [media, std] = estad(x)
% ESTAD(x) Estadistica simple
% Calcula la media y desviacion tipica de un vector x.
n = length(x);
media = sum(x)/n;
v = x - media;
std = sqrt(v.*v/(n-1)) ;
end
%----- Fin Funcion -----%

% Esto va en otro script porque es donde se llama la función
n = 10;
% Llamar a la funcion estad
[media, desviacion] = estad(rand(1,n));
% Imprimir resultados
fprintf('La media es: %.3f y la desviación %.3f\n', media, desviacion);
%------------------ Fin Problema 1 ------------------%

%-------------------- Problema 2 --------------------%

help estad %muestra lo que aparece en comentarios
% en el archivo de la función estad.m

%------------------ Fin Problema 2 ------------------%

%-------------------- Problema 3 --------------------%
%La función va en un archivo a parte con el nombre areaTriangulo.m
% ---- Inicio Funcion ----%
function [area] = areaTriangulo(a, b, c)
%areaTriangulo(a, b, c)
% Calculo del área del tríangulo
% Los valores de a, b y c son la medida de los lados
% del triangulo.
s = (a + b + c)/2;
area = sqrt(s*(s-a)*(s-b)*(s-c));
end
%----- Fin Funcion -----%

% Esto va en otro script porque es donde se llama la función
% llamar a la funcion areaTriangulo e imprimir su resultado
fprintf('El area del Triagulo es: %.3f\n',areaTriangulo(3, 4, 5));
%------------------ Fin Problema 3 ------------------%

%-------------------- Problema 4 --------------------%
%La función va en un archivo a parte con el nombre factorial1.m
% ---- Inicio Funcion ----%
function [fact] = factorial1(n)
%Factorial1(x)
%Calculo de un factorial de un número n
fact = 1;
for i = 1:n
    fact = fact*i;
end
%----- Fin Funcion -----%

end

% Esto va en otro script porque es donde se llama la función
n = 10;
% llamar a la funcion factorial1 e imprimir su resultado
fprintf('El factorial de %d es: %d\n',n, factorial1(n));
%------------------ Fin Problema 4 ------------------%

%-------------------- Problema 5 --------------------%
%La función va en un archivo a parte con el nombre lee_numero_positivo.m
% ---- Inicio Funcion ----%
function numero = lee_numero_positivo
%lee_numero_positivo: Pide un numero
% y se asegura que sea positivo
numero = -1;
while numero < 0
    numero = input('Ingresa un numero positivo: ')
    if(numero < 0)
        disp('ERROR: El número debe ser positivo')
    end
end
end
%----- Fin Funcion -----%

% Esto va en otro script porque es donde se llama la función
% llamar a la funcion lee_numero_positivo e imprimir su resultado
a = lee_numero_positivo
%------------------ Fin Problema 5 ------------------%

%-------------------- Problema 6 --------------------%
%La función va en un archivo a parte con el nombre primos.m
% ---- Inicio Funcion ----%
function primos(n)
% Primos(n)
% Muestra los número primos desde 1 hasta n
% No se necesita tener una salida
fprintf('Los primos de 1 hasta %d son:\n',n)
for i=1:n
    if isprime(i) | i==1
        fprintf('%d ',i);
    end
end
fprintf('\n');
end
%----- Fin Funcion -----%

% en otro archivo
%Llamar a la función primos
primos(n)
%------------------ Fin Problema 6 ------------------%

%-------------------- Problema 7 --------------------%
%La función va en un archivo a parte con el nombre calculoCilindro.m
% ---- Inicio Funcion ----%
function [areaSuperficial, volumen] = calculoCilindro(radio, altura)
% calculoCilindro: Calculo del área superficial y volumen
% de un cilindro. Toma como entrada el radio y la altura
areaSuperficial = 2 * pi * radio * (radio + altura);
volumen = pi * radio ^ 2 * altura;
end
%----- Fin Funcion -----%

% Esto va en otro script porque es donde se llama la función
r = 5; % radio
h = 10; % altura

% S area superficial
% V volumen
% Llamar a la función calculoCilindro
[S, V] = calculoCilindro(r, h)

fprintf('Dado un radio de %d y una altura de %d de un cilindro\n');
fprintf('El área superficial es %.3f y el volumen es %.3f\n', r, h, S, V)
%------------------ Fin Problema 7 ------------------%
