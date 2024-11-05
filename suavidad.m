function suave = suavidad (x,y,error)%error por defecto 1
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
        [n, ecm] = errorcm (x_nuevo, y_nuevo, error);
    
        x_nuevo = x(ni+1:end);
        y_nuevo = y(ni+1:end);
        
    end
    if length(punto_x) < 3
        suave = 0;
    else
        suave = metrica_smooth(punto_x,punto_y);
    end
   
    plot (x,y);
    hold on;
    plot (punto_x,punto_y,'o');
    grid on;
end