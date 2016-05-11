clear all
close all

Measured_delay = [0.00012, 0.000104, 0.000328];
AllXYZ=zeros(3,100);
[t1,t2,t3,t4]=get_time_lags()
t12=abs(t2-t1);
t13=abs(t3-t1);
t14=abs(t4-t1);

% hej(t1,t2,t3,t4);

for n=1:1,
randx=2*rand;
randy=2*rand;
Guess=[1,1,0];

[XYZ,ssq,cnt] = LMFnlsq(@hej,Guess,'display',1, 'FunTol',1e-50, 'MaxIter', 20000);
% AllXYZ(1:3,n)=XYZ;
end

xyz = [0,2,2,0;
    0,0,2,2;
    0,0,0,0];

totx=sum(AllXYZ(1,:));

mx=XYZ(1);
my=XYZ(2);
mz=XYZ(3);

scatter(xyz(1,1),xyz(2,1),'filled')
hold on
scatter(xyz(1,2),xyz(2,2),'filled')
hold on
scatter(xyz(1,3),xyz(2,3),'filled')
hold on
scatter(xyz(1,4),xyz(2,4),'filled')
hold on
scatter(mx,my,80,'r','filled')
grid on
xlim([-1 3])
ylim([-1 3])

txt1 = 'Hydrophone 1 ';
text(xyz(1,1),xyz(2,1),txt1,'VerticalAlignment','bottom','HorizontalAlignment','center')
txt2 = 'Hydrophone 2 ';
text(xyz(1,2),xyz(2,2),txt2,'VerticalAlignment','bottom','HorizontalAlignment','center')
txt3 = 'Hydrophone 3 ';
text(xyz(1,3),xyz(2,3),txt3,'VerticalAlignment','bottom','HorizontalAlignment','center')
txt4 = 'Hydrophone 4 ';
text(xyz(1,4),xyz(2,4),txt4,'VerticalAlignment','bottom','HorizontalAlignment','center')
%Label source location
txt5 = 'Source';
text(mx,my,txt5,'VerticalAlignment','top','HorizontalAlignment','center')