 %http://uk.mathworks.com/help/signal/ug/cross-correlation-of-delayed-signal-in-noise.html
clear all
close all
rng default

x = triang(20);
y = [zeros(3,1);x]+randn(length(x)+3,1);

subplot(2,1,1)
stem(x,'filled')
axis([0 22 -1 2])
title('Input Sequence')

subplot(2,1,2)
plot(y)
axis([0 22 -1 2])
title('Output Sequence')

[xc,lags] = xcorr(y,x);
[~,I] = max(abs(xc));
b=abs(xc);
z=max(b);

figure
stem(lags,xc,'filled')
legend(sprintf('Maximum at lag %d',lags(I)))
title('Sample Cross-Correlation Sequence')