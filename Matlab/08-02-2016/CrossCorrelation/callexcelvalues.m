M = csvread('VB8012-308BB8A_2016-03-22_12-28-30.csv',21,2,[21,2,721,4]);
time1=M(:,1);
microtime1=time1*10^-6;
Config1h1=M(:,2);
Config1h2=M(:,3);
figure
subplot(211)
plot(microtime1,Config1h1)
ylim([-5 5])
subplot(212)
plot(microtime1,Config1h2)
ylim([-5 5])

M = csvread('VB8012-308BB8A_2016-03-22_12-28-58.csv',21,2,[21,2,721,4]);
time2=M(:,1);
microtime2=time2*10^-6;
Config2h1=M(:,2);
Config2h2=M(:,3);
figure
subplot(211)
plot(microtime2,Config2h1)
ylim([-5 5])
subplot(212)
plot(microtime2,Config2h2)
ylim([-5 5])

% fs=1/1000000
% t=0:fs:0.01;
% y=sin(2*pi*1000*t);
% figure
% plot(t,y)

% r1=xcorr(Config2h2,Config1h1);
% [r1,lags]=xcorr(Config2h2,Config1h1);
% figure
% plot(lags,r1)

num=xlsread('SourceSignal');
t=num(:,1);
microt=t*10^-6;
data=num(:,2);
figure
plot(microt,data)

cc=xcorr(data,Config2h2);
[cc,lags]=xcorr(data,Config2h2);
figure
plot(lags,cc)

% figure
% subplot(211)
% plot(microtime)