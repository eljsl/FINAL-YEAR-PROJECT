clear all
close all

%define all the points of the hydrophones (the centre points of the
%circles)
x1=0;
y1=0;
x2=2;
y2=0;
x3=2;
y3=2;
x4=0;
y4=2;
ang=0:0.01:2*pi;


[d1,d2,d3,d4]=getdistancev5(); %change this name as version updates
% d1=1.4227;%Hyde00
% d2=1.6006;%Hyd30
% d3=1.2686;%Hyd33
% d4=0.9366;%Hyd03 second attempt


xp1=d1*cos(ang);
yp1=d1*sin(ang);

xp2=d2*cos(ang);
yp2=d2*sin(ang);

xp3=d3*cos(ang);
yp3=d3*sin(ang);

xp4=d4*cos(ang);
yp4=d4*sin(ang);


%plot the circles with radius r away from each hydrophone location
% close all
figure
scatter(x1,y1,100,'bl','d','filled')
hold on
scatter(x2,y2,100,'g','d','filled')
hold on
scatter(x3,y3,100,'m','d','filled')
hold on
scatter(x4,y4,100,'k','d','filled')
hold on
plot(x1+xp1,y1+yp1,'bl--',x2+xp2,y2+yp2,'g--',x3+xp3,y3+yp3,'m--',x4+xp4,y4+yp4,'k--') 
xlabel('X position (metres)');
ylabel('Y position (metres)');
hold on

%Calculate the points of intersection of the circles
[xout12,yout12] = circcirc(x1,y1,d1,x2,y2,d2);
[xout13,yout13] = circcirc(x1,y1,d1,x3,y3,d3);
[xout14,yout14] = circcirc(x1,y1,d1,x4,y4,d4);
[xout23,yout23] = circcirc(x2,y2,d2,x3,y3,d3);
[xout24,yout24] = circcirc(x2,y2,d2,x4,y4,d4);
[xout34,yout34] = circcirc(x3,y3,d3,x4,y4,d4);


%If there are 2 points of intersection between 2 circles, then there will
%be 2 x-values and 2 y-values for each. xypos separates combines the xout
%yout values into an array of all intersection points
xypos =[xout12(1) yout12(1)
    xout12(2) yout12(2)
    xout13(1) yout13(1)
    xout13(2) yout13(2)
    xout14(1) yout14(1)
    xout14(2) yout14(2)
    xout23(1) yout23(1)
    xout23(2) yout23(2)
    xout24(1) yout24(1)
    xout24(2) yout24(2)
    xout34(1) yout34(1)
    xout34(2) yout34(2)];

%Separates the x coordinates and y coordinates into 1d arrays and plots
%the intersection points on the same graph
x=xypos(:,1);
y=xypos(:,2);
scatter(x,y,100,'r','+');

%Run function to find mean x and y coordinates of location
[mx,my]=locationcalculator(xypos);

%Plot calculated position
hold on
scatter(mx,my,80,'r','filled')
grid on

%Label hydrophones
txt1 = 'Hydrophone 1 ';
text(x1,y1,txt1,'VerticalAlignment','bottom','HorizontalAlignment','center')
txt2 = 'Hydrophone 2 ';
text(x2,y2,txt2,'VerticalAlignment','bottom','HorizontalAlignment','center')
txt3 = 'Hydrophone 3 ';
text(x3,y3,txt3,'VerticalAlignment','bottom','HorizontalAlignment','center')
txt4 = 'Hydrophone 4 ';
text(x4,y4,txt4,'VerticalAlignment','bottom','HorizontalAlignment','center')
%Label source location
txt5 = 'Source';
text(mx,my,txt5,'VerticalAlignment','top','HorizontalAlignment','center')

