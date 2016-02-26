x = [5.5 5.3 5.9];
y = [2.3 3.1 2.5];
scatter(x,y)
axis([0,10,0,5])
grid on
hold
mx=mean(x)
my=mean(y)
scatter(mx,my)