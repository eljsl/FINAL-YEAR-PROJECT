M1 = xlsread('multipath.xlsx',1,'c22:f722');
time1=M1(:,1);
microtime1=time1*10^-9;
Source1=M1('F167:F200',4);
Record1=M1(:,2);
l1=length(M1)-1;
close all
figure
subplot(211)
plot(Source1)
subplot(212)
plot(microtime1,Record1)

% h1 cross correlation
[cc1,lags1]=xcorr(Source1,Record1);
[max1,I1] = max(abs(cc1));
p1=lags1(I1);
figure
subplot(211)
plot(lags1,cc1)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags1(I1)))
pks = findpeaks(cc1)
subplot(212)
plot(pks)
totalt_ns1=abs(M1(2,1)-M1(end,1));
totalt_s1=totalt_ns1*10^-9;
timeconvert1=totalt_s1/l1;
timediff1=timeconvert1*abs(p1);
d1=1482*timediff1


H=2;
D=1;
F=1.5;
A=1;
B=H-A;
E=2*A;
G=2*B;
C=(((G^2)*E)-((F^2)*E)+((E^2)*G)-((D^2)*G))/(2*((G*D)+(E*F)))
costheta1=(4*(A^2)-(2*C*D)-(D^2))/(4*A*C);
costheta2=-costheta1;
theta1rad=acos(costheta1);
theta2rad=-theta1rad;
theta1deg = real(radtodeg(theta1rad));
theta2deg = 180-theta1deg;
xdif=C*sind(theta1deg);
ydif=C*cosd(theta1deg);
xnew=0+xdif;
ynew=A+ydif;
Ax=0;
Ay=A;


figure
scatter(xnew,ynew,'filled')
hold on
scatter(Ax,Ay,'filled')
xlim([-0.5 1.5])
ylim([0 2])
line([xnew Ax],[ynew Ay])
grid on
