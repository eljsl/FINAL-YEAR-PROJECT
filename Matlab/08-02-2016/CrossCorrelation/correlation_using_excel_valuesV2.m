clear all
a=[0 10 100 10 0];
E=xlsread('Test');
r1=xcorr(a,E);
[r1,lags]=xcorr(a,E);
r2=normxcorr2(a,E);
figure(1)
subplot(411)
plot(a)
title('a')
xlim([0 35])
subplot(412)
plot(E)
title('E')
subplot(413)
plot(lags,r1)
title('Corr against lags')
subplot(414)
plot(r2)
title('Norm corr')

%B=xlsread('randomsignal');
Q=-1+(1--1).*rand(1,1001);
fs=0.001;
t = 0 : fs : 1;         % 1 kHz sample freq for 1 s
d = 0 : 1/3 : 1;           % 3 Hz repetition frequency
y = pulstran(t,d,'tripuls',0.1,-1);
[cr,lags1]=xcorr(y,Q);
figure(2)
subplot(311)
plot(t,y)
subplot(312)
plot(t,Q)
subplot(313)
plot(lags1/fs,cr)
[~,I]=max(abs(cr));
SampleDiff= lags1(I)
timeDiff=SampleDiff/fs