x1=0;
y1=0;

x2=2;
y2=0;

rangediff=0.3;

% for n=1:100,
    


figure(1);
arg1=1:0.01:4;
line(arg1,sqrt((arg1-1).*(arg1+1)))
line(arg1,-sqrt((arg1-1).*(arg1+1)))
arg2=-4:0.01:-1;
line(arg2,-sqrt((arg2-1).*(arg2+1)))
line(arg2,sqrt((arg2-1).*(arg2+1)))