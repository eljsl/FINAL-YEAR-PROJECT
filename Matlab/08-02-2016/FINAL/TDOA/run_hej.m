clear all
close all

Measured_delay = [0.00012, 0.000104, 0.000328];
AllXYZ=zeros(3,100);

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

scatter(xyz(1,1),xyz(2,1))
hold on
scatter(xyz(1,2),xyz(2,2))
hold on
scatter(xyz(1,3),xyz(2,3))
hold on
scatter(xyz(1,4),xyz(2,4))
hold on
scatter(mx,my,'r','filled')
grid on
xlim([-1 3])
ylim([-1 3])