clear all
close all
x1=0;
y1=0;
x2=2;
y2=0;
ang=0:0.01:2*pi;
r1=3;
r2=3;
xp1=r1*cos(ang);
yp1=r1*sin(ang);
xp2=r2*cos(ang);
yp2=r2*sin(ang);
figure(1)
scatter(x1,y1,'c','k','filled')
hold on
scatter(x2,y2,'c','k','filled')
hold on
plot(x1+xp1,y1+yp1,x2+xp2,y2+yp2) 
xlabel('X coordinate');
ylabel('Y coordinate');
[xout12,yout12] = circcirc(x1,y1,r1,x2,y2,r2);
xypos =[xout12(1) yout12(1)
    xout12(2) yout12(2)];
x=xypos(:,1);
y=xypos(:,2);
scatter(x,y,100,'r','filled');
xlim([-4 6]);
ylim([-4 4]);
grid on