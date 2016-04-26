clear all
close all

devices=daq.getDevices

s=daq.createSession('ni');
addAnalogInputChannel(s,'Dev1',0,'Voltage');
addAnalogInputChannel(s,'Dev1',1,'Voltage');

s.Rate=125000
s.DurationInSeconds=3;

[data,time]=s.startForeground;
plot(time,data);
xlabel('Time (secs)');
ylabel('Voltage')

Source=data(:,1);
Record=data(:,2);
[cc,lags]=xcorr(Source,Record);
[max,I] = max(abs(cc));
p=lags(I);
figure
plot(lags,cc)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags(I)))

timediff=p/125000;
distance=1482*timediff