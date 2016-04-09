clear all
close all

M1 = xlsread('Test1Data.xlsx');
time1=M1(:,1);
microtime1=time1*10^-6;
Source=M1(:,6);
Record=M1(:,7);
l=length(M1)-1;
figure
subplot(211)
plot(microtime1,Source)
% ylim([-5 5])
subplot(212)
plot(microtime1,Record)
% ylim([-5 5])

M2 = csvread('VB8012-308BB8A_2016-03-22_12-28-58.csv',21,2,[21,2,721,4]);
time2=M2(:,1);
microtime2=time2*10^-6;
Config2h1=M2(:,2);
Config2h2=M2(:,3);
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

% cc=xcorr(Source,Record);
[cc,lags]=xcorr(Source,Record);
[max,I] = max(abs(cc));
p=lags(I);
figure
plot(lags,cc)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags(I)))

totaltimenanoseconds=abs(M1(2,1)-M1(end,1));
totaltimesecs=totaltimenanoseconds*10^-9
timeconvert=totaltimesecs/l;
timediff=timeconvert*abs(p);

distance=1482*timediff

% figure
% subplot(211)
% plot(microtime)