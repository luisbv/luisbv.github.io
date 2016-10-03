%-------------------- Problema 1 --------------------%
clear all
x = 0:30; % crear vector desde 0 hasta 30
% como no se especifica puede ser de esta forma
% o con linspace

y = sin(x)+x-x.*cos(x); % calcular los valores de y de acuerdo a la funcion

plot(x, y); % realizar la grafica
%------------------ Fin Problema 1 ------------------%


%-------------------- Problema 2 --------------------%
clear all
n = 5;
x = 0:1/n:3;
y = sin(5*x);
plot(x, y);

n = 25;
x = 0:1/n:3;
y = sin(5*x);
plot(x, y);

% la diferencia en las 2 graficas depende de la separación que tienen 
% es más "suave" la curva con respecto a si tiene menos puntos
%------------------ Fin Problema 2 ------------------%


%-------------------- Problema 3 --------------------%
clear all
x = linspace(0,2*pi,100); %crear vector de 0 a pi con 100 elementos igualmente espaciados
y = sin(x); z = cos(x); % calcular funciones "y" y "z"
subplot(2,1,1); % ponerlo en una grafica de 2 renglones y una columa (1er renglon)
plot(x,y); %graficar sin(x)
title('seno(x)') % titulo de la grafica
subplot(2,1,2); % ponerlo en una grafica de 2 renglones y una columa (2do renglon)

plot(x,z); %graficar cos(x)
title('coseno(x)') % titulo de la grafica

%------------------ Fin Problema 3 ------------------%


%-------------------- Problema 4 --------------------%
clear all
% crear valores de x
x = 1:10;

%a)
y1 = exp(x);

%b)
y2 = sin(x);

%c)
a = 5; b = 2; c = 4;
y3 = a*x.^2 + b*x + c;

% graficar las 3 funciones con la función plot
plot(x, y1, '--r',  x, y2, '-b', x, y3, '.-g')

% poner la leyende de las figuras
legend('y = e^x', 'y=sin(x)', 'y=ax^2+bx+c')
%------------------ Fin Problema 4 ------------------%


%-------------------- Problema 5 --------------------%
clear all
% Asignar a variables los datos del problema
v0 = 100; % velocidad inicial
g = 9.8; % gravedad
t = 0:2:20; % tiempo
theta = 0:10:90;% angulos de lanzamiento
% vector "t" y "theta" tienen que tener el mismo tamaño

theta = theta * pi / 180;% cambiar valores de theta a radianes

horizontal = t .* v0 * cos(theta); % calcular distancia horizontal
vertical = t .* v0 * sen(theta) - 1/2 * g * t .^ 2;

%a)
figure(1) % poner la grafica en la figura 1
plot(t, horizontal);
% Esto no lo pide, pero es bueno que tenga la gráfica
xlabel('Tiempo (s)') % titulo eje x
ylabel('Distancia horizontal (m)') % titulo eje y

%b)
figure(2) %poner la gráfica en la figura 2
plot(t, vertical);
% Esto no lo pide, pero es bueno que tenga la gráfica
xlabel('Tiempo (s)') % titulo eje x
ylabel('Distancia vertical (m)') % titulo eje y

%------------------ Fin Problema 5 ------------------%


%-------------------- Problema 6 --------------------%
clear all
t = 0:0.5:30; % vector de tiempo en cada 0.5 segundos

h = -9.8/2 * t.^2 + 125 * t + 5';% calculo de la altura (h)

%a)
plot(t, h);
% Esto no lo pide, pero es bueno que tenga la gráfica
xlabel('Tiempo (s)') % titulo eje x
ylabel('Distancia (m)') % titulo eje y

%b)
tiempoMaximaDistancia = t(find(h == max(h)));

fprintf('El coehe comienza a caer al suelo a los %.3f segundos\n',tiempoMaximaDistancia)

%------------------ Fin Problema 6 ------------------%

%-------------------- Problema 7 --------------------%
syms t; % declarar variable de tiempo como simbólica
g = 9.8;
x = 1/2 * g * t^2;% funcion de distancia

v = diff(x, t);% fución de velocidad (derivada de distancia)

a = diff(v, t);% fución de aceleración (derivada de velocidad)

t = 0:20;% vector de tiempo

% hacer las 3 gráficas en una figura
% se utiliza la función eval para evaluar la
% cada una de las funciones en el vector t
subplot(3, 1, 1)
plot(t, eval(x)); % gráfica de distancia
title('Distancia (m)')
subplot(3, 1, 2)
plot(t, eval(v)); % gráfica de velocidad
title('Velcidad (m/s)')
subplot(3, 1, 3)
plot(t, eval(a)); % gráfica de aceleración
title('Aceleración (m/s^2)')
%------------------ Fin Problema 7 ------------------%

%-------------------- Problema 8 --------------------%
clear all
% esto debe ir en un archivo que se llame isotermas.m
a = input('Ingresa valor de a: '); % pedir valor de a
b = input('Ingresa valor de b: '); % pedir valor de b

R = 0.082;

% como no se indica como tiene que ser V, se pondrá de 1 a 10
V = 1:10;

%valores de T
T = 100:400;

% generar matriz de T y V
[T, V] = meshgrid(T, V);

% Calcular la presión
P = R .* T ./ (V - b) - a ./ V .^2;

% Graficar los diferentes isotermas
plot(V, P(:, 1), V, P(:, 2), V, P(:, 3), V, P(:, 4))
legend('T=100', 'T=200', 'T=300', 'T=400')
% Fin Problema 8

%-------------------- Problema 9 --------------------%
clear all
% esto debe ir en un archivo que se llame mariotte.m
grHe = 4.003; % gramos de Helio
grAr = 39.944; % gramos de Argón

% Vector presión Helio
PHe = [1.002, 0.8067, 0.6847, 0.5387, 0.3550, 0.1937];

%Vector Volumen Helio
VHe = [22.37, 27.78, 32.73, 41.61, 63.10, 115.65];

% Vector presión Argón
PAr = [1.000, 11.1, 32.79, 43.34, 53.68, 63.68];

%Vector Volumen Argón
VAr = [22.4, 2, 0.6667, 0.5, 0.4, 0.3333];

subplot(2,2,1)
plot(VHe, PHe) % graficar Volumen vs Presión (Helio)
title('Volumen vs Presión (Helio)') % titulo
xlabel('Volumen (l)') % titulo eje x
ylabel('Presión (atm)') % titulo eje y
subplot(2,2,2)
PVHe = PHe .* VHe; % Calcular PV helio
plot(PVHe) % graficar PV Helio
title('PV Helio')
xlabel('valor')
ylabel('PV')

subplot(2,2,3)
plot(VAr, PAr) % graficar Volumen vs Presión (Argón)
title('Volumen vs Presión (Argón)') % titulo
xlabel('Volumen (l)') % titulo eje x
ylabel('Presión (atm)') % titulo eje y
subplot(2,2,4)
PVAr = PAr .* VAr; % Calcular PV Argón
plot(PVAr) % graficar PV Argón
title('PV Argón')
xlabel('valor')
ylabel('PV')
%------------------ Fin Problema 9 ------------------%
