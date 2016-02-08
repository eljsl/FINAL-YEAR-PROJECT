t = 0 : 0.001 : 1;         % 1 kHz sample freq for 1 s
d = 0 : 1/3 : 1;           % 3 Hz repetition frequency
y = pulstran(t,d,'tripuls',0.1,-1);
z=awgn(y,20);

subplot(211)
plot(t,y)
xlabel 'Time (s)', ylabel Waveform
subplot(212)
plot(t,z)
xlabel 'Time (s)', ylabel Waveform

filename = 'exporttest.xlsx';
xlswrite(filename,z,1,'A1')

