clear all
close all
x1=0;
y1=0;
x2=10;
y2=0;
xdist=0;
ydist=0;
rangediff=0.3;

for n=1:10,
    xdist=n;
    ydist=xdist+0.5;
    Allydist(:,n)=ydist;
    Allxdist(:,n)=xdist;
end

figure
scatter(Allxdist,Allydist)  

figure;
arg1=1:0.01:4;
line(arg1,sqrt((arg1-1).*(arg1+1)))
line(arg1,-sqrt((arg1-1).*(arg1+1)))
arg2=-4:0.01:-1;
line(arg2,-sqrt((arg2-1).*(arg2+1)))
line(arg2,sqrt((arg2-1).*(arg2+1)))

r1=0:0.2:4;
dist=5;
r2squared=(dist^2)-(r1.^2);
r2=sqrt(r2squared);



% for z=1:10
%     r1=z;
%     Allr2(:,z)=r1-2;
% end








