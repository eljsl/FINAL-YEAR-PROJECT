function [Test1H4] = Rrecord_new_data()

devices=daq.getDevices    %Find devices available (NI DAQ)

s=daq.createSession('ni');  %Create data acquitition session
addAnalogInputChannel(s,'Dev1',0,'Voltage');    %Define the channels to record
addAnalogInputChannel(s,'Dev1',1,'Voltage');
s.Rate=125000   %Define sample rate. (Maximum 125000 bits per second for 2 channels
s.DurationInSeconds=3;  %Define recording time
[data,time]=s.startForeground;  %Start recording data
plot(time,data);    %Plot results
xlabel('Time (secs)');
ylabel('Voltage')

Source=data(:,1); %Define source data
Record=data(:,2);   %Define receiver recorded data

save('Test1H4')
end