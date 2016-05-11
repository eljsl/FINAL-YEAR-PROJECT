clear all
close all

%12
F1x=0;
F1y=0;
F2x=2;
F2y=0;
c12=(F2x-F1x)/2;
x012=(F1x+F2x)/2;
y012=(F1y+F2y)/2;
timedelay12=1.2*10^-4;
deltad1d2=1482*timedelay12;
k12=deltad1d2;
a12=k12/2;
b12=sqrt((c12^2)-(a12^2));
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

%14
F4x=2;
F4y=0;
c14=(F4x-F1x)/2;
x014=(F1x+F4x)/2;
y014=(F1y+F4y)/2;
timedelay14=3.28*10^-4;
deltad1d4=1482*timedelay14;
k14=deltad1d4;
a14=k14/2;
b14=sqrt((c14^2)-(a14^2));
y=-5:0.2:5;
% x=sqrt((a+(a*((y-y0).^2))/b));
xminusx0to2_14=(a14+(a14*(y.^2))/b14);
x14=sqrt(xminusx0to2_14)+x014;
figure
scatter(x014,y014)
hold on
scatter(F1x,F1y)
hold on
scatter(F4x,F4y)
hold on
plot(x14,y)
grid on

%14
F3x=2;
F3y=2;
c43=(F3x-F4x)/2;
x043=(F3x+F4x)/2;
y043=(F3y+F4y)/2;
timedelay43=3.28*10^-4;
deltad4d3=1482*timedelay43;
k43=deltad4d3;
a43=k43/2;
b43=sqrt((c43^2)-(a43^2));
y=-5:0.2:5;
% x=sqrt((a+(a*((y-y0).^2))/b));
xminusx0to2_43=(a43+(a43*(y.^2))/b43);
x43=sqrt(xminusx0to2_43)+x043;
figure
scatter(x043,y043)
hold on
scatter(F3x,F3y)
hold on
scatter(F4x,F4y)
hold on
plot(x43,y)
grid on

H1x=F1x;
H1y=F1y;
H2x=F2x;
H2y=F2y;
Para12x=x12;
Para12y=y;
H4x=F4y;
H4y=F4x;
Para14x=y;
Para14y=x14;
figure
scatter(H1x,H1y,'r','filled')
hold on
scatter(H2x,H2y,'g','filled')
hold on
scatter(H4x,H4y,'b','filled')
hold on
plot(Para12x,Para12y,'c')
hold on
plot(Para14x,Para14y,'k')
grid on


di