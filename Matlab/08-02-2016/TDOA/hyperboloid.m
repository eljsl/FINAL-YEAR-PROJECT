x=[-10:1:10];
y=[-10:1:10];

xi=0;
yi=0;

xj=5;
yj=5;

dij=sqrt((xi-x).^2+(yi-y).^2)-sqrt((xj-x).^2+(yj-y).^2);

plot(dij)
hold on
scatter(xi,yi)
hold on
scatter(xj,yj)