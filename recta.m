function y_valor = recta(x1,x2,y1,y2,x_valor)
    % Calcular la pendiente (m)
    m = (y2 - y1) / (x2 - x1);
    % Calcular la intersección con el eje y (b)
    b = y1 - m * x1;
    % Mostrar la ecuación de la recta
    disp(['La ecuación de la recta es: y = ' num2str(m) 'x + ' num2str(b)]);
    % Para un valor dado de x, calcular el valor de y
    y_valor = m * x_valor + b;
    % Mostrar el valor de y para el valor de x dado
    disp(['Para x = ' num2str(x_valor) ', y = ' num2str(y_valor)]);
end
