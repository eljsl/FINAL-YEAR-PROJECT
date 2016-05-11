clear all
close all

c=4;
F1x=0;
F1y=0;
F2x=2;
F2y=0;
x012=(F1x+F2x)/2;
y012=(F1y+F2y)/2;
timedelay12=2.24*10^-4;
deltad1d2=1482*timedelay12;
k12=deltad1d2;
a12=k12/2;
b12=sqrt((c^2)-(a12^2));
y=-5:0.2:5;
xminusx0to212=(a12+(a12*(y.^2))/b12);
x12=sqrt(xminusx0to212)+x012;

figure
scatter(x012,y012)
hold on
scatter(F1x,F1y)
hold on
scatter(F2x,F2y)
hold on
plot(x12,y)
grid on

% c=5;
% F1x=0;
% F1y=0;
F3x=2;
F3y=0;
x013=(F1x+F3x)/2;
y013=(F1y+F3y)/2;
timedelay13=0.0002;
deltad1d3=1482*timedelay13;
k13=deltad1d3;
a13=k13/2;
b13=sqrt((c^2)-(a13^2));
y=-5:0.2:5;
% x=sqrt((a+(a*((y-y0).^2))/b));
xminusx0to213=(a13+(a13*(y.^2))/b13);
x13=sqrt(xminusx0to213)+x013;

figure
scatter(x013,y013)
hold on
scatter(F1x,F1y)
hold on
scatter(F3x,F3y)
hold on
plot(x13,y)
grid on

H1x=F1x;
H1y=F1y;
H2x=F2y;
H2y=F2x;
Para12x=y;
Para12y=x12;
H3x=F3x;
H3y=F3y;
Para13x=x13;
Para13y=y;
figure
scatter(H1x,H1y)
hold on
scatter(H2x,H2y)
hold on
scatter(H3x,H3y)
hold on
plot(Para12x,Para12y)
hold on
plot(Para13x,Para13y)
grid on