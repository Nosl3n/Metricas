close all;
clear all;
clc;
%% trayetoria
x=-5:0.1:10;
y=x.^2+x-5;
plot (x,y);
grid on;
%% grupo de personas
xx = [2 3 2];
yy = [10 10 15];
hold on;
plot (xx, yy,'o','Color','g');
%% metricas
% longitud total
longitud = long_total (x,y)
% distancia a la spersonas
distan_group = cercanos_grupo (xx,yy,x,y)
% smooth
smoothy = suavidad (x,y,1);

