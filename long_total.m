function suma = long_total (x,y)
    for i=1:1:length(x)- 1
        longitud(i) =  sqrt((x(i+1) - x(i)).^2 + (y(i+1) - y(i)).^2);
    end
    suma = sum(longitud);
end