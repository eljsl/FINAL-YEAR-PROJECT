clear all
devices=daq.getDevices;
s=daq.createSession('ni');
addAnalogInputChannel(s,'Dev1',0,'Voltage');
addAnalogInputChannel(s,'Dev1',1,'Voltage');
s.Rate=8000;
s.DurationInSeconds=2;
t=0:0.01:1;
y=sin(2*pi*t);
figure
plot(t,y)

for n=1:1,
[data,time]=s.startForeground;
% Alldata(:,n)=data;
figure
plot(time,data);
xlabel('Time (secs)');
ylabel('Voltage')

[cc1,lags1]=xcorr(y,data);
[max1,I1] = max(abs(cc1));
p1=lags1(I1);
figure
plot(lags1,cc1)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags1(I1)))

end

Source1=data(:,1);
Record1=data(:,2);
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
d1=1482*timediff1;

