function [areaSuperficial, volumen] = calculoCilindro(radio, altura)
% calculoCilindro: Calculo del área superficial y volumen
% de un cilindro. Toma como entrada el radio y la altura
areaSuperficial = 2 * pi * radio * (radio + altura);
volumen = pi * radio ^ 2 * altura;
end