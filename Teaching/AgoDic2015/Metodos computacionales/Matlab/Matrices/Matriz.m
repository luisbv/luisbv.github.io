clear all
clc

A = [1, 2, 3;
     4, 5, 6;
     7, 8, 9];
B = [9 8 7;
     6 5 4;
     3 2 1];
d = det(A);

fprintf('La determinante de A es %e\n',d)

fprintf('La transpuesta de A es:\n')
A'



fprintf('Matriz Identidad\n')
eye(3,3)

fprintf('Matriz solamente unos\n')
ones(3,3)

fprintf('Matriz solamente ceros\n')
zeros(3,3)

fprintf('Suma de matrices\n')
C= A + B

fprintf('Resta de matrices\n')
D =A - B

fprintf('Multiplicacion de matrices\n')
E =A * B

fprintf('Multiplicacion elemento a elemtno de matrices\n')
F =A .* B

fprintf('Dvision elemento a elemtno de matrices\n')
E =A ./ B


