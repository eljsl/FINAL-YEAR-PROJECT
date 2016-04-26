clear all
close all

c=5;
F2x=8;
F2y=0;
F1x=-2;
F1y=0;
x0=(F1x+F2x)/2;
y0=(F1y+F2y)/2;
k=5;
a=k/2;
b=sqrt((c^2)-(a^2));


y=-5:0.2:5;
% x=sqrt((a+(a*((y-y0).^2))/b));
xminusx0to2=(a+(a*(y.^2))/b);
x=sqrt(xminusx0to2)+x0;

scatter(x0,y0)
hold on
scatter(F1x,F1y)
hold on
scatter(F2x,F2y)
hold on
plot(x,y)
grid on