x=0:0.1:5;
y=x.^2+x-5;
cont = 3;
i=1;
j=3;
error = 1;
while cont < length(x)-3
    recta(x(i),x(j),y(i),y(j),x(i))

end