function [media, std] = estad(x)
% ESTAD(x) Estadistica simple
% Calcula la media y desviacion tipica de un vector x.
    n = length(x);
    media = sum(x)/n;
    v = x - media;
    std = sqrt(v*v'/(n-1)) ;
end
