M1 = csvread('multipath.csv',21,2,[21,2,721,6]);
time1=M1(:,1);
microtime1=time1*10^-9;
Source1=((M1(:,2))+(M1(:,3)))/2;
Record1=((M1(:,4))+(M1(:,5)))/2;
l1=length(M1)-1;
close all
figure
subplot(211)
plot(microtime1,Source1)
subplot(212)
plot(microtime1,Record1)

% h1 cross correlation
[cc1,lags1]=xcorr(Source1,Record1);
[max1,I1] = max(abs(cc1));
p1=lags1(I1);
figure
plot(lags1,cc1)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags1(I1)))
totalt_ns1=abs(M1(2,1)-M1(end,1));
totalt_s1=totalt_ns1*10^-9;
timeconvert1=totalt_s1/l1;
timediff1=timeconvert1*abs(p1);
d1=1482*timediff1


H=10;
D=4;
F=4;
A=5;
B=H-A;
E=2*A;
G=2*B;

C=(((G^2)*E)-((F^2)*E)+((E^2)*G)-((D^2)*G))/(2*((G*D)+(E*F)))

costheta1=(4*(A^2)-(2*C*D)-(D^2))/(4*A*C)

theta1rad=acos(costheta1);
theta2rad=-theta1rad;

theta1deg = real(radtodeg(theta1rad))
theta2deg = real(radtodeg(theta2rad))