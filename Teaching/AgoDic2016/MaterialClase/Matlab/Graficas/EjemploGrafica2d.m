clear all
clc

x = -10:10;
y = x;
y1 = x.^2;
figure(1)
plot(x,y,x,y1)
%Titulo de la grafica
title('Grafica Ejemplo')
%Etiqueta eje x
xlabel('Eje x')
%Etiqueta eje y
ylabel('Eje y')
%Leyenda
legend('y=x', 'y=x^2')
figure(2)
plot(x,y)
title('Grafica y = x')
%Etiqueta eje x
xlabel('Eje x')
%Etiqueta eje y
ylabel('Eje y')
%Leyenda
legend('y=x')

figure(3)
plot(x,y1)
title('Grafica y = x^2')
%Etiqueta eje x
xlabel('Eje x')
%Etiqueta eje y
ylabel('Eje y')
%Leyenda
legend('y=x^2')
figure(4)
subplot(3,1,1)
plot(x,y)
subplot(3,1,2)
plot(x,y1)
subplot(3,1,3)
plot(x,y,x,y1)
