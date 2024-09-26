function angulo = ang_entre_rectas(x1,x2,x3,y1,y2,y3)
    p1 = [x1, y1]; % Si es en 3D; si es en 2D, usa solo [x1, y1]
    p2 = [x2, y2]; 
    p3 = [x3, y3];
    
    % Calcular los vectores de las dos rectas
    v1 = p2 - p1; % Vector de la primera recta
    v2 = p3 - p2; % Vector de la segunda recta
    
    % Calcular el producto punto
    dot_product = dot(v1, v2);
    
    % Calcular las magnitudes de los vectores
    magnitude_v1 = norm(v1);
    magnitude_v2 = norm(v2);
    
    % Calcular el ángulo en radianes
    theta_rad = acos(dot_product / (magnitude_v1 * magnitude_v2));
    
    % Convertir el ángulo a grados
    angulo = rad2deg(theta_rad);
    
end
