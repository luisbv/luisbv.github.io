clear all
clc
x = [0 1 2 3 5];
y = [0.25 0.5 0.8 0.99 3.9];
n = length(x) - 1;

I = 0;
hold on
for i = 1:n
    a = x(i);
    b = x(i+1);
    h = (b - a);
    
    fa = y(i);
    fb = y(i+1);
    I = I + h * (fa + fb) / 2;
    coordx_h = [x(i) x(i+1)];
    coordy_h = [y(i) y(i+1)];
    plot(coordx_h, coordy_h, 'g', 'LineWidth', 4)

    coordx_v = [x(i) x(i)];
    coordy_v = [0 y(i)];
    plot(coordx_v, coordy_v, 'r', 'LineWidth', 4)
end

coordx_v = [x(n+1) x(n+1)];
coordy_v = [0 y(n+1)];
plot(coordx_v, coordy_v, 'r', 'LineWidth', 4)

plot(x, y, 'k.', 'MarkerSize', 20)

hold off

fprintf('El valor de la integral\npor la regla del Trapecio\nes: %.5f u^2\n',I)