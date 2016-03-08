x = 0:0.1:2;
y = x./(2+sin(2*pi*x))
plot(x,y,'ro-')
hold on
plot(x,y.*y,'kd-')
xlabel('some x values')
ylabel('some y values') 