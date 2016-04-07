AI = analoginput('winsound');

addchannel(AI, 1);
Fs = 8000;              % Sample Rate is 8000 Hz
set (AI, 'SampleRate', Fs)
duration = 2;           % 2 second acquisition
set(AI, 'SamplesPerTrigger', duration*Fs);

start(AI);

data = getdata(AI);

delete(AI)

xfft = abs(fft(data));

mag = 20*log10(xfft);
mag = mag(1:end/2);

[ymax,maxindex]=max(mag);