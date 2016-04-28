function [ d1,d2,d3,d4 ] = getdistancev5Test1()

H1=load('Test1H1');
H2=load('Test1H2');
H3=load('Test1H3');
H4=load('Test1H4');
time=(1:1:(125000*3))/125000;
c=1482;

%h1 data retrieval
figure
plot(time,H1.('Source'))
hold on
plot(time,H1.('Record'))
xlabel('Time (s)');
ylabel('Amplitude (V)');
%h2 data retrieval
figure
plot(time,H2.('Source'))
hold on
plot(time,H2.('Record'))
xlabel('Time (s)');
ylabel('Amplitude (V)');
%h3 data retrieval
figure
plot(time,H3.('Source'))
hold on
plot(time,H3.('Record'))
xlabel('Time (s)');
ylabel('Amplitude (V)');
%h4 data retrieval
figure
plot(time,H4.('Source'))
hold on
plot(time,H4.('Record'))
xlabel('Time (s)');
ylabel('Amplitude (V)');

% h1 cross correlation
[cc1,lags1]=xcorr(H1.('Source'),H1.('Record'));
[max1,I1] = max(abs(cc1));
p1=lags1(I1);
figure
plot(lags1,cc1)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags1(I1)))
timelag1=abs(p1/125000);
d1=c*timelag1;
% h2 cross correlation
[cc2,lags2]=xcorr(H2.('Source'),H2.('Record'));
[max2,I2] = max(abs(cc2));
p2=lags2(I2);
figure
plot(lags2,cc2)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags2(I2)))
timelag2=abs(p2/125000);
d2=c*timelag2;
% h3 cross correlation
[cc3,lags3]=xcorr(H3.('Source'),H3.('Record'));
[max3,I3] = max(abs(cc3));
p3=lags3(I3);
figure
plot(lags3,cc3)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags3(I3)))
timelag3=abs(p3/125000);
d3=c*timelag3;
% h4 cross correlation
[cc4,lags4]=xcorr(H4.('Source'),H4.('Record'));
[max4,I4] = max(abs(cc4));
p4=lags4(I4);
figure
plot(lags4,cc4)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags4(I4)))
timelag4=abs(p4/125000);
d4=c*timelag4;
end

