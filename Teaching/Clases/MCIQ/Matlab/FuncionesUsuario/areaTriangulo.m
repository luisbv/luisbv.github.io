function [area] = areaTriangulo(a, b, c)
%areaTriangulo(a, b, c)
% Calculo del área del tríangulo
% Los valores de a, b y c son la medida de los lados
% del triangulo.
s = (a + b + c)/2;
area = sqrt(s*(s-a)*(s-b)*(s-c));
end