% Cargar el archivo trayectoria_datos.txt
data = readtable('trayectoria.txt', 'Delimiter', '\t');

% Verifica que los datos se han cargado correctamente
disp(data);

% Extraer las columnas de tiempo y longitud de trayectoria
x = data{:, 'x'};
y = data{:, 'y'};
xx = [-1.701+2 -2.302+2 0];
yy = [1.3 1 2];
% Graficar la longitud de la trayectoria a lo largo del tiempo
figure;
plot(tiempo, longitud, '-o');
title('Trayectoria');
xlabel('Eje X');
ylabel('Eje Y');
grid on;
%% metricas
% longitud total
longitud = long_total (x,y)
% distancia a la spersonas
distan_group = cercanos_grupo (xx,yy,x,y)
% smooth
smoothy = metrica_smooth(x,y)