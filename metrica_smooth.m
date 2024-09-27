function smoothy = metrica_smooth(x,y)
    k=numel(x)-1;
    for i=1:1:length(x)-2
        angulo(i) = ang_entre_rectas(x(i),x(i+1),x(i+2),y(i),y(i+1),y(i+2));
    end
    smoothy = (1/k)*sum(angulo)^2;
end