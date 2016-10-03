figure(1)
%Valores de x
x = 1:10;
%Valore de y
y1 = x.^2;
%Graficar x contra y
plot(x,y1)
%Titulo de la grafica
title('y = x')
%Etiqueta del eje x
xlabel('x')
%Etiqueta del eje y
ylabel('y')
%Cuadricula en la grafica
grid on

figure(2)%cambiar color
% r rojo
% b azul
% g verde
% y amarillo
% k negro
% w blanco
%
%
% Cambiar simbolo de punto
% * Poner asteriscos como puntos
% + 
% . 
% p 
y2 = x;
plot(x, y2, '-*r')

figure(3) % 2 graficas en una sola figura
x = linspace(0, 2*pi(),100);
y = sin(x);
z = cos(x);
plot(x,y,x,z)
title('Grafica de seno y coseno')
xlabel('x')
ylabel('Sen(x)-Cos(x)')
legend('Sen(x)','Cos(x)')

figure(4)%Diferentes graficas por separado
         %en una sola figura

subplot(2,1,1)
plot(x,y)
title('Grafica del seno')
xlabel('x')
ylabel('Sen(x)')

subplot(2,1,2)
plot(x,z)
title('Grafica del coseno')
xlabel('x')
ylabel('Cos(x)')

figure(5)%Diferentes graficas en una sola figura
subplot(1,2,1)
plot(x,y)
title('Grafica del seno')
xlabel('x')
ylabel('Sen(x)')
subplot(1,2,2)
plot(x,z)
title('Grafica del coseno')
xlabel('x')
ylabel('Cos(x)')



