function [i, ecm] = errorcm (x,y,error)
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
        ecm = mean((y_selec - y_pred).^2);
        if ecm > error || n==3
            break;
        end
        % Imprimir los puntos seleccionados
    end
end