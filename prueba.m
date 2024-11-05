clear all;
close all;
clc;
% Conjunto de puntos de ejemplo
x = [1, 2, 3, 4, 5, 6, 7, 8];  % Coordenadas x
y = [2, 4, 6, 9, 10, 12, 14, 16];  % Coordenadas y
%x=0:0.8:5;
%y=x.^2+x-5;
error=1;
n = length(x);  % Número de elementos
% Bucle para ir aumentando el número de puntos
for i = 3:n
    % Selecciona los primeros i puntos
    x_selec = x(1:i);
    y_selec = y(1:i);
    
    coef = polyfit([x_selec(1), x_selec(end)], [y_selec(1), y_selec(end)], 1);
    a = coef(1);  % Pendiente de la recta
    b = coef(2);  % Intersección de la recta
    % Calcular los valores predichos usando la recta
    y_pred = a * x_selec + b;
    % Calcular el Error Cuadrático Medio (ECM)
    
    plot (x_selec, y_pred)
    hold on;
    ecm = mean((y_selec - y_pred).^2)
    if ecm > error || n==3
        break;
    end
    % Imprimir los puntos seleccionados
    fprintf('Puntos seleccionados (i = %d):\n', i);
    disp([x_selec; y_selec]);
end
hold on;
plot(x,y)
grid on;