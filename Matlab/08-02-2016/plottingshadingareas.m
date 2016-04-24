clear all
close all
clc

% Time specifications:
Fs = 8000;                   % samples per second
dt = 1/Fs;                   % seconds per sample
StopTime = 1;             % seconds
t = (0:dt:StopTime-dt)';     % seconds
% Sine wave:
Freq = 1;                     % hertz
z = sin(2*pi*Freq*t);
y = cos(2*pi*Freq*t);
% Plot the signal versus time:
figure;
plot(t,z);
hold on
plot(t,y)
xlabel('time (in seconds)');
title('Signal versus Time');

% fill(x,y,8000)

z=0:0.01:1;         %#initialize x array
a=sin(z*pi*2);      %#create first curve
b=cos(z*pi*2);      %#create second curve
X=[z,fliplr(z)];    %#create continuous x value array for plotting
Y=[a,fliplr(b)];    %#create y values for out and then back
figure
fill(X,Y,'b');      %#plot filled area