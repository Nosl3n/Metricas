function cercanos = cercanos_grupo (xx,yy,x,y)
    for j=1:length(xx)
        for i=1:length(x)
            distancia(i) =  sqrt((x(i) - xx(j)).^2 + (y(i) - yy(j)).^2);
        end
        minimos(j)=min(distancia);
        distancia(:) = 0;
    end
    cercanos = sum(minimos)/length(xx);
end