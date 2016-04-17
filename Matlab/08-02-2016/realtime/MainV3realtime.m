%define all the points of the hydrophones (the centre points of the
%circles)
x1=0;
y1=0;
x2=1;
y2=0;
x3=0.5;
y3=4.1;
ang=0:0.01:2*pi;


[d1,d2,d3]=getdistancev3realtime(); %change this name as version updates

xp1=d1*cos(ang);
yp1=d1*sin(ang);

xp2=d2*cos(ang);
yp2=d2*sin(ang);

xp3=d3*cos(ang);
yp3=d3*sin(ang);

%plot the circles with radius r away from each hydrophone location
close all
figure(1)
scatter(x1,y1,'bl','d','filled')
hold on
scatter(x2,y2,'g','d','filled')
hold on
scatter(x3,y3,'m','d','filled')
hold on
plot(x1+xp1,y1+yp1,'bl',x2+xp2,y2+yp2,'g',x3+xp3,y3+yp3,'m') 
xlabel('X coordinate');
ylabel('Y coordinate');
hold on

%Calculate the points of intersection of the circles
[xout12,yout12] = circcirc(x1,y1,d1,x2,y2,d2);
[xout13,yout13] = circcirc(x1,y1,d1,x3,y3,d3);
[xout23,yout23] = circcirc(x2,y2,d2,x3,y3,d3);

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
scatter(x,y,'x');

%Run function to find mean x and y coordinates of location
[mx,my]=our_functionrealtime(xypos);

%Plot calculated position
hold on
scatter(mx,my,100,'r','filled')
grid on

%Label hydrophones
txt1 = 'Hydrophone 1 ';
text(x1,y1,txt1,'VerticalAlignment','bottom','HorizontalAlignment','center')
txt2 = 'Hydrophone 2 ';
text(x2,y2,txt2,'VerticalAlignment','bottom','HorizontalAlignment','center')
txt3 = 'Hydrophone 3 ';
text(x3,y3,txt3,'VerticalAlignment','bottom','HorizontalAlignment','center')
%Label source location
txt4 = 'Source';
text(mx,my,txt4,'VerticalAlignment','top','HorizontalAlignment','center')

