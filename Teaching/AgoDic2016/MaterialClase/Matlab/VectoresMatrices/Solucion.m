%-------------------- Problema 1 --------------------%
clear all
%a)
[1:9] % vector de 1 hasta 9 con incrementos de 1
% Ventana de comandos -> 1 2 3 4 5 6 7 8 9

%b)
[-1:9]% vector de -1 hasta 9 con incrementos de 1 ()
% Ventana de comandos -> -1 0 1 2 3 4 5 6 7 8 9

%c)
[1:2:9]% vector de 1 hasta 9 con incrementos de 2
% Ventana de comandos -> 1 3 5 7 9

%d)
[1:0.5:9] % vector de 1 hasta 9 con incrementos de 0.5
% Ventana de comandos -> 1 1.5 2 ... 7.5 8 8.5 9

%e)
[1:3:9] % vector de 1 hasta 9 con incrementos de 3
% Ventana de comandos -> 1 4 7, el 9 no aparece

%f)
[9:-2:1]% vector de 9 hasta 1 con decrementos de 2 (decremento es negativo)
% Ventana de comandos -> 9 7 5 3 1

%g)
[9:-3:1]% vector de 9 hasta 1 con decrementos de 3 (decremento es negativo)
% Ventana de comandos -> 9 6 3 

%h)
[9:-3:-1]% vector de 9 hasta -1 con decrementos de 3 (decremento es negativo)
% Ventana de comandos -> 9 6 3 0

%------------------ Fin Problema 1 --------------------%


%-------------------- Problema 2 --------------------%
clear all
%a)
linspace(1,9,9)

%b)
linspace(-1,9,11)

%c)
linspace(1,9,5)

%d)
linspace(1,9,18)

%e)
linspace(1,7,3)

%f)
linspace(9,1,5)

%g)
linspace(9,3,3)

%h)
linspace(9,0,4)

%------------------ Fin problema 2 ------------------%


%-------------------- Problema 3 --------------------%
clear all
%Declarar vector v
v = [1 3 5 9 11 13 15 17 19];% o v=1::2:19

%a)
v(3) % elegir el 3er elemento del vector v 
% Ventana de comandos -> 5

v(3:5) % elegir desde el 3er elemento hasta el 5to elemento del vector v 
%Ventana de comandos -> 5 7 9

v(5:-1:3) % elegir desde el 5to elemento hasta el 3er elemento del vector v 
%Ventana de comandos -> 9 7 5

v(10:-2:1) % elegir desde el 10mo elemento hasta el 1er elemento del vector v % decremenotos de 2 
%Ventana de comandos -> error, se excede de dimensiones
%Poner % antes de v(10:-2:1) para ver saltar el error

v([1 3 5 7 9]) % elegir los elementos en la posicion 1 3 5 7 9
%Ventana de comandos -> 1 5 11 15 19

v(1:5) % elegir desde el 1er elemento hasta el 5to elemento del vector v 
%Ventana de comandos -> 1 3 5 7 9

%------------------ Fin problema 3 ------------------%

%-------------------- Problema 4 --------------------%
clear all
%a)
a = v(3)% a la variable "a" se le asigna el valor en la 3er
%posicion del vector v (a = 5)

%b)
b = v(3:5)% a la variable "b" se le asigna el vector de las
% posiciones 3 hasta la 5 del vector v (b = [5 7 9])

%c)
b(1:2)=v(7:9)%Da un error porque se igualan vectores de diferente tamaño
% Un vector tiene 2 elementos (b) y el otro 3 elementos (v)
% Poner "%" para saltar error

%d)
b(1:3) = v(7:9)%igualar los primeros tres elementos del vector b
% a los elementos 7, 8 y 9 del vector v (ambos vectores tienen 3 elementos)
%------------------ Fin problema 4 ------------------%


%-------------------- Problema 5 --------------------%
clear all
A = [1:6;7:12]

B = A'

C = [0.6 1.5 2.3 -0.5;
     8.2 0.5 -0.1 -2.0;
     5.7 8.2 9.0 1.5;
     0.5 0.5 2.4 0.5;
     12 -2.3 -4.5 0.5]
 
%------------------ Fin problema 5 ------------------%


%-------------------- Problema 6 --------------------%
clear all
%a)
a1 = A(2:3) % asignar a la variable a1 los elementos en la posicion 2 y 3 de la matriz A

%b)
a2 = A(2,3) % asignar a la variable a2 el valor del 3er renglon y 2da columna de la matriz A
% Da error, porque la matriz A no tiene tercer renglon.
% Poner % antes de "a2 = A(2,3)" si se quiere ejecutar todo

%c)
b1 = B(2,3)% asignar a la variable b1 el valor del 2do renglon y 3er columna de la matriz B
% Da error, porque la matriz B no tiene 3 cloumnas
% Poner % antes de "b1 = A(2,3)" si se quiere ejecutar todo

%d)
b2 = B(3,2)% asignar a la variable b2 el valor del 3er renglon y 2da columna de la matriz B

%e)
c1 = C(2,3)% asignar a la variable c1 el valor del 2do renglon y 3er columna de la matriz C

%f)
c2 = C(3,2)% asignar a la variable c2 el valor del 3er renglon y 2da columna de la matriz C

%g)
a3 = A(:,2) % asignar a la variable a3 todos los renglones de la 2da columna de la matriz A

%h)
c3 = C(4:5,1:3) % asignar a la variable c3 la submatriz (2x3) generada desde el renglon 4 al 5 con la columna 1 hasta la 3 de la matriz C

%i)
c4 = C(1:2:5,:) % asignar a la variable c4 todas las columnas de los renglones 1, 3 y 5 de la matriz C

%j)
c5 = C([5 2 1],3:-1:2) % asignar a la variable c5 los renglones 5, 2 y 1 con las columnas 3 y 2 de la matriz C.

%k)
D = [4:9;1:6] % crear una variable D que contiene una matriz de 2x6
% el 1er renglon son los elementos desde el 4 hasta 9  incrementos de 1
% el 2do renglon son los elementos desde el 1 hasta 6  incrementos de 1

%l)
E = [D A] % crear una variable E que contiene una matriz hecha co toda la matriz D y la matriz A

%m)
A(:,2:3) = B(1:2,:) % asignar a todos los renglonpoñes de las columnas 2 y 3 de la matriz A
% a todas las columnas de los renglones 1 y 2 de la matriz B

%n)
B(4:6,2) = B(4:6,1) % asignar a los renglones 4, 5 y 6 de la 2da columna de la matriz B
% a los renglones 4, 5 y 6 de la 1er columna de la matriz B

%o)
C(1,:) = A(1,1:4) % asignar a todas las columnas del 1er renglon de la matriz C
% las columnas 1, 2, 3 y 4 del 1er renglon de la matriz A

%------------------ Fin problema 6 ------------------%


%-------------------- Problema 7 --------------------%
clear all
%a)
eye(4) % crear matriz identidad de 4x4 (Solo 1's en la diagonal)

%b)
I = eye(4)
I(4,3) = 1 % agregar el 1 que falta en el 1er renglon y 3er columna

%c)
diag(7:2:13) % crear diagonal del vector 7:2:13 (desde 7 hasta 13 en incrementos de 2)

%d)
ones(4)+eye(4) 
% ones(4) crear una matriz de puros 1 de 4x4 
% despues, sumarle una matriz 4x4 con solamente la diagonal de 1's
%------------------ Fin Problema 7 ------------------%


%-------------------- Problema 8 --------------------%
clear all
A = rand(3) % crear matriz aleatoria de 3x3 (valores dentro de la matriz generados entre 0 y 1)
diag(diag(A)) % generar solamente la diagonal de la matriz A (todos los demas elementos son 0)
%------------------ Fin Problema 8 ------------------%


%-------------------- Problema 9 --------------------%
A = [2 -1 5 0] % crear vector A
B = [3 2 -1 4] % crear vector B

%a)
C = B + A - 3 % primero se hace la operacion de la suma de las matrices y luego se les resta 3 a cada elemento

%b)
C = A./B % dividir cada elemento de A entre cada elemento de B

%c)
C = A.^B%elevar cada elemento de A por cada elemento de B que le corresponda


%d)
C = 2*A + A.^B % multiplicar cada elemento de A por 2 y luego sumarle la operacion
% de elevar cada elemento de A por cada elemento de B corresponda

%e)
C = 2.^B + A % elevar 2 a cada elemento de B (se genera un nuevo vector) y luego sumarle el vector A

%f)
C = 2*B/3.*A % multiplicar por 2 y dividir por 3 cada elemento de B (vector resultante)y luego multiplicar elemento a elemento del vector resultante y A
%------------------ Fin Problema 9 ------------------%

%-------------------- Problema 10 --------------------%
clear all
%a)
1./[1:6] % crear vector que corresponde a la division de 1 entre el vector 1:6

%b)
[0:5]./[1:6] % dividir vector 0 1 2 3 4 5 entre vector 1 2 3 4 5 6
%------------------ Fin Problema 10 ------------------%


%-------------------- Problema 11 --------------------%
clear all
t = [1:0.2:2] % crear vector de t

%a)
log(2+t+t.^2) % la funcion log calcula el ln de un valor
% se pone punto (.) antes de ^ porque es operacion de elemento a elemento

%b)
exp(t).*(1+cos(3*t))
% se pone punto (.) antes de ^ porque es operacion de elemento a elemento

%c)
(cos(t)).^2 + (sin(t)).^2
% se pone punto (.) antes de ^ porque es operacion de elemento a elemento

%d)
atan(t)

%e)
cot(t)

%f)
(sec(t)).^2 + cot(t) - 1
%------------------ Fin Problema 11 ------------------%

%-------------------- Problema 12 --------------------%
clear all
w = [0 3 -2 7]
x = [3 -1 5 7]
y = [1 3 7;
     2 8 4;
     6 -1 -2]

%a)
max(w) % encontrar el valor maximo del vector w (7)

%b)
min(y) % encontrar el valor minimo de la matriz y (-2)

%c)
mean(y) % encontrar el promedio por columna de la matriz y

%d)
median(w) % encontrar la mediana del vector w

%e)
sort(2*w+x) % ordenar de menor a mayor la operacion 2*w+x

%f)
sort(y) % ordenar de menor a mayor las columnas de la matriz y

%g)
length(w) % obtener el tamaño del vector w

%h)
length(y) % obtener el mayor tamaño entre renglones y columnas 
%(si son iguales da el mismo valor)
%(si el numero de columnas es mayor que el de renglones regresa el numero de columnas)
%(si el numero de renglones es mayor que el de columnas regresa el numero de renglones)
%------------------ Fin Problema 12 ------------------%

%-------------------- Problema 13 --------------------%
clear all
% aqui solamente es comprobar si son iguales las operaciones
mean(w)
sum(w)/length(w)
% si son iguales

mean(y)
sum(y)/length(y)
% si son iguales
%------------------ Fin Problema 13 ------------------%

%-------------------- Problema 14 --------------------%
clear all
% si se tiene una matriz A generada al azar con rand
% pra ejemplificar se hara una de 3x3 alearotira
A = rand(3)

%operacion para encontrar maximo de una matriz
max(max(A)) % es el maximo de A, que genera un vector con maximo entre columnas, y luego a ese vector se le aplca el maximo
%------------------ Fin Problema 14 ------------------%

%-------------------- Problema 15 --------------------%
clear all
% Crear vectores y matrices iniciales
A = [5 3 -1]
B = ones(1,3)
C = [9 4 0]
D = eye(1,4)
E = [-1 3 -5 7]

%a)
A*B % operacion matricial de A y B 
% da error porque
%(tienen que ser iguales el numero de columnas la matriz A 
% con el numero de filas de la matriz B)
% da como resultado matriz (# renglones A x # columnas B)

%b)
A*B' % operacion matricial de A y B transpuesta (cambiar renglones por columnas y columnas por renglones) 
%(tienen que ser iguales el numero de columnas la matriz A 
% con el numero de filas de la matriz B transpuesta)
% da como resultado matriz (# renglones A x # columnas B trasnpuesta)

%c)
B*A' % operacion matricial de B y A transpuesta (cambiar renglones por columnas y columnas por renglones) 
%(tienen que ser iguales el numero de columnas la matriz B 
% con el numero de filas de la matriz A transpuesta)
% da como resultado matriz (# renglones B x # columnas A transpuesta)

% las demas solo comentarios en donde da error
%d)
A*C'

%e)
B*C'

%f)
B*D' % da error no se puede realizar operaciones por diferencia en # columnas de B y # renglones D transpuesta

%g)
E*D'
%------------------ Fin Problema 15 ------------------%

%-------------------- Problema 16 --------------------%
clear all
% Crear matrices dadas por el problema
A = [2 1;
     0 -1;
     3 0]
B = [1 3
     -1 5]
C = [3 2;
     -1 -2;
     0 2]
D = [1 2]

% solo pondre comentarios en donde da error la operacion
%a)
A*B

%b)
A*C % error # columnas de A diferente a # renglones de C

%c)
A*C'

%d)
D*B

%e)
D*B^2

%f)
(C*B)*D' % primero se hace la operacion del parentesis

%g)
B*C'

%h)
A*D % error # columnas de A diferente a # renglones de D
%------------------ Fin Problema 16 ------------------%

%-------------------- Problema 17 --------------------%
clear all
%a)
A = [2 1;
     4 2]
det(A) % determinante
inv(A) % inversa (salen infinitos)

%b)
B = [4 -3 2;
     8 -12 -5;
     5 9 -2]
det(B) % determinante
inv(B) % inversa

%c)
C = [0.1 -5.0 3.0 8.7;
     2.0 -1.6 4.5 8.9;
     2.7 9.2 5.6 6.7;
     0.2 -4.5 -8.0 1.0]
det(C) % determinante
inv(C) % inversa

%------------------ Fin Problema 17 ------------------%

%-------------------- Problema 18 --------------------%
clear all
%capturar vector de costo (1er columna tabla)
costo = [10 12 14 9];

%capturar la matriz de productos(2da columna, 3er columna 4ta columna)
productos = [6 5 4;
             2 3 1;
             3 2 5;
             4 0 3];

%a)
% Para calcular el costo de cada producto
% hay que realizar una operación matricial
% entre costos y productos
costoProducto = costo*productos;

% imprimir resultados
fprintf('El costo del producto 1 es: %d\n', costoProducto(1))
fprintf('El costo del producto 2 es: %d\n', costoProducto(2))
fprintf('El costo del producto 3 es: %d\n', costoProducto(3))

%b)
unidades = [10 5 7]; % crear vector con las unidades de cada producto
costoTotal = unidades .* costoProducto; % realizar operación elemento a elemento
% de las unidades producidas por su costo de produccion

%imprimir resultados
fprintf('El costo total del producto 1 es: %d\n', costoTotal(1))
fprintf('El costo total del producto 2 es: %d\n', costoTotal(2))
fprintf('El costo total del producto 3 es: %d\n', costoTotal(3))

%------------------ Fin Problema 18 ------------------%


%-------------------- Problema 19 --------------------%
clear all
n = 1:20; % crear vector n (1, 2, 3, ..., 20)
x = ((-1).^n)./(2*n-1)%operacion de x_n
%------------------ Fin Problema 19 --------------------%


%-------------------- Problema 20 --------------------%
clear all
% crear matriz dados por el problema
A = [2 4 1; 6 7 2; 3 5 9]

%a)
x1 = A(1,:) % todas las columnas del 1er renglon

%b)
y = A(2:3,:) % todas las columnas de los renglones 2 y 3

%c)
sum(A)

%d)
sum(A')

%------------------ Fin Problema 20 ------------------%


%-------------------- Problema 21 --------------------%
clear all
% crear vectores y matriz dados por el problema
x = [1 4 8]
y = [2 1 5]
A = [3 1 6; 5 2 7]

%a)
x + y % se ejecuta correctamente (tienen las mismas dimensiones)

%b)
x+A % no se ejecuta (tienen diferentes dimensiones)
% no se puede sumar un vector a una matriz

%c)
x' + y'% se ejecuta correctamente (tienen las mismas dimensiones)

%d)
[x ; y'] % no se ejecuta 
%(se esta intendando agregar una vector de 1 renglon con 3 columnas)
% con un vector de 1 columna y 3 renglones

%e)
[x ; y] % se ejecuta correctamente

%f)
A - [x; y]% se ejecuta correctamente

%------------------ Fin Problema 21 ------------------%

%-------------------- Problema 22 --------------------%
clear all
% Crear matriz dada por el problema
A = [2 7 9 7; 3 1 5 6; 8 1 2 5]

%a)
A' % transpuesta de la matriz

%b)
A(:,[1,4]) % elegir todos los gendlones de la columna 1 y 4

%c)
A([2 3], [3 1])% elegir los renglones 2 y 3 con las columnas 3 y 1

%d)
A(1:3,:) % elegir todas las columnas de los renglones 1, 2 y 3

%e)
[A;A(1:2,:)] % agregarle a la matriz A los renglones 1 y 2 de la misma matriz al final

%f)
sum(A) % encontrar la suma de las columnas de la matriz A

%g)
sum(A') %encontrar la suma de las columnas de la matriz A transpuesta 
% o, lo que es equivalente, la suma de los renglones de la matriz A

%h)
prod(A) % encontrar el producto de las columnas de la matriz A

%i)
prod(A') %encontrar el producto de las columnas de la matriz A transpuesta 
% o, lo que es equivalente, el producto de los renglones de la matriz A

%j)
sum(sum(A)) % encontrar la suma de todos los elementos de la matriz A

%k)
mean(A)% encontrar el promedio de las columnas de la matriz A

%l)
mean(A') %encontrar el promedio de las columnas de la matriz A transpuesta 
% o, lo que es equivalente, el promedio de los renglones de la matriz A

%m)
mean(mean(A)) % encontrar el promedio de todos los elementos de la matriz A

%------------------ Fin Problema 22 ------------------%


%-------------------- Problema 23 --------------------%
clear all
% asignar valores a variables dados por el problema
m = 10
n = 6
r = 3
s = 6

%a)
eye(n)

%b)
ones(s, r) * -1

%c)
ones(s) - eye(s)
%------------------ Fin Problema 23 ------------------%

%-------------------- Problema 24 --------------------%
clear all
% definir vectores v1 y v2
v1 = [1:10]
v2 = [20:-2:2]

%a)
v1 + v2 % operacion elemento a elemento

%b)
v1 * v2 % produce error (operacion matricial)
% diferencia entre #columnas de v1 y #renglones v2

%c)
v1' * v2 % operacion matricial

%d)
v1 .* v2 % operacion elemento a elemento (producto punto)

%e)
v1 .^ 2 % operacion elemento a elemento

%f)
v1 / v2 % operacion vectorial

%g)
v1 ./ v2 % operacion elemento a elemento

%h)
v1 ^ 2 % error (operacion matricial)
% para elevar al cuadrado una matriz tiene que
% tener igual #renglones que #columnas

%i)
 v1 .^ 2 % operacion elemento a elemento

%j)
2 * (v1 + v2) % operacion escalar y vectorial

%k)
sin(pi*v1).*v2 % operacion escalar y elemento a elemento

%l)
(v1').*v2' % operacion matricial (transpuesta) y elemento elemento

%m)
(v1'*v2)^(-1) % da infinitos (elevar a la -1 una matriz)

%n)
((v1').*v2).^(-1) % error operacion elemento a elemento 
% no coinciden las dimensiones

%------------------ Fin Problema 24 ------------------%