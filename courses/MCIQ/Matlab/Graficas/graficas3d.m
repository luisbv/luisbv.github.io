figure(1)%lineas en 3d
t = 0:pi()/50:10*pi();
x = exp(-0.05*t).*sin(t);
y = exp(-0.05*t).*cos(t);
z = t;
plot3(x,y,z)
xlabel('x')
ylabel('y')
zlabel('z')
grid on

figure(2)
%Malla en 3d
subplot(2,2,1)
x = -2:0.1:2;
y = x;
[x, y] = meshgrid(x,y);
z = x.*exp(-((x-y.^2).^2+y.^2));
mesh(x,y,z)

%Superficie en 3d
subplot(2,2,2)
x = -2:0.1:2;
y = x;
[x, y] = meshgrid(x,y);
z = x.*exp(-((x-y.^2).^2+y.^2));
surf(x,y,z)

%Grafica de contorno
subplot(2,2,3)
x = -2:0.1:2;
y = x;
[x, y] = meshgrid(x,y);
z = x.*exp(-((x-y.^2).^2+y.^2));
contour(x,y,z)

%Grafica de contorno y malla 3d
subplot(2,2,4)
x = -2:0.1:2;
y = x;
[x, y] = meshgrid(x,y);
z = x.*exp(-((x-y.^2).^2+y.^2));
meshc(x,y,z)

%%%%%Funciones definidas pregraficas 3d%%%%
figure(3)
% "2 graficas" se ponen en 
% 1 renglon y 2 columnas
subplot(1,2,1)
% Graficar una espera
%Radio
r = 10;
sphere(r)

subplot(1,2,2)
% Graficar un cilindro en 3d
% radio
r = 10;

% altura
h = 2; 

% asignar a las variables "x", "y" y "z"
% los valores de la funcion predefinida
% para graficar un cilindro (cylinder) en matlab 
[x,y,z] = cylinder(r); z(:,2) = h; 

% poner la altura
surf(x,y,z)


