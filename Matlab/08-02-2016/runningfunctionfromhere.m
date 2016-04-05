%define all the points of the hydrophones (the centre points of the circles)
x1=0;
y1=0;
r1=3;
ang=0:0.01:2*pi;
xp1=r1*cos(ang);
yp1=r1*sin(ang);
x2=2;
y2=0;
r2=2;
xp2=r2*cos(ang);
yp2=r2*sin(ang);
x3=4;
y3=3;
r3=2;
xp3=r3*cos(ang);
yp3=r3*sin(ang);

%plot the circles with radius r away from each hydrophone location
figure(1)
scatter(x1,y1,'c','d','filled')
hold on
scatter(x2,y2,'c','d','filled')
hold on
scatter(x3,y3,'c','d','filled')
hold on
plot(x1+xp1,y1+yp1,x2+xp2,y2+yp2,x3+xp3,y3+yp3) 
xlabel('X coordinate');
ylabel('Y coordinate');
hold on

%Calculate the points of intersection of the circles
[xout12,yout12] = circcirc(x1,y1,r1,x2,y2,r2);
[xout13,yout13] = circcirc(x1,y1,r1,x3,y3,r3);
[xout23,yout23] = circcirc(x2,y2,r2,x3,y3,r3);

%If there are 2 points of intersection between 2 circles, then there will
%be 2 x-values and 2 y-values for each. xypos separates combines the xout
%yout values into an array of all intersection points
xypos =[xout12(1) yout12(1)
    xout12(2) yout12(2)
    xout13(1) yout13(1)
    xout13(2) yout13(2)
    xout23(1) yout23(1)
    xout23(2) yout23(2)];

%Separates the x coordinates and y coordinates into 1d arrays and plots
%the intersection points on the same graph
x=xypos(:,1);
y=xypos(:,2);
scatter(x,y);

%Run function to find mean x and y coordinates of location
[mx,my]=our_function(xypos);

%Plot calculated position
hold on
scatter(mx,my,'r','filled')


