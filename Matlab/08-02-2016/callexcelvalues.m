M = csvread('VB8012-308BB8A_2016-03-22_12-28-30.csv',21,2,[21,2,721,4]);
time1=M(:,1);
microtime1=time1*10^-6;
C1h1=M(:,2);
C1h2=M(:,3);
figure(1)
subplot(211)
plot(microtime1,C1h1)
subplot(212)
plot(microtime1,C1h2)

M = csvread('VB8012-308BB8A_2016-03-22_12-28-58.csv',21,2,[21,2,721,4]);
time2=M(:,1);
microtime2=time2*10^-6;
C2h1=M(:,2);
C2h2=M(:,3);
figure(2)
subplot(211)
plot(microtime2,C2h1)
subplot(212)
plot(microtime2,C2h2)

fs=1/1000000
t=0:fs:0.01;
y=sin(2*pi*1000*t);
% figure(3)
% plot(t,y)

r1=xcorr(C2h2,C1h1);
[r1,lags]=xcorr(C2h2,C1h1);
figure(4)
plot(lags,r1)