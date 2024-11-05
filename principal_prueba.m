clear all;
close all;
clc;
% Conjunto de puntos de ejemplo
%x = [1, 2, 3, 4, 5, 6, 7, 8];  % Coordenadas x
%y = [2, 4, 6, 9, 10, 12, 14, 16];  % Coordenadas y
salida = 0;
x=0:0.1:20;
y=x.^3+x.^2-5-x;
% Generación del nuevo vector sin los primeros n elementos
x_nuevo = x;
y_nuevo = y; 
ni=0;
n=0;
k=2;
while length(x_nuevo) > 3
    ni=ni+n;
    if ni==0
        punto_x(1)=x(1);
        punto_y(1)=y(1);
    else
        punto_x(k)=x(ni); %punto x
        punto_y(k)=y(ni); %punto y
        k=k+1;
    end
    [n, ecm] = errorcm (x_nuevo, y_nuevo);

    x_nuevo = x(ni+1:end);
    y_nuevo = y(ni+1:end);
    
end
smoothy = metrica_smooth(punto_x,punto_y);
disp(smoothy);
plot (x,y);
hold on;
plot (punto_x,punto_y,'o');
grid on;
