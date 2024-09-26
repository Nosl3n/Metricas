close all;
clear all;
clc;
%% trayetoria
x=0:0.1:5;
y=x.^2+x-5;
plot (x,y);
grid on;
%% grupo de personas
xx = [2 3 2];
yy = [10 10 15];
hold on;
plot (xx, yy);
%% metricas
% longitud total
longitud = long_total (x,y)
% distancia a la spersonas
distan_group = cercanos_grupo (xx,yy,x,y)
% smooth
k=numel(x)-1;
for i=1:1:length(x)-2
    angulo(i) = ang_entre_rectas(x(i),x(i+1),x(i+2),y(i),y(i+1),y(i+2));
end
smoothy = (1/k)*sum(angulo)^2