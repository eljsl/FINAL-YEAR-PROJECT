devices=daq.getDevices

s=daq.createSession('ni');
addAnalogInputChannel(s,'Dev1',0,'Voltage');

s.Rate=8000
s.DurationInSeconds=2;

[data,time]=s.startForeground;
plot(time,data);
xlabel('Time (secs)');
ylabel('Voltage')