clear all

fs=500;
T=0.2;

t=-0.5:1/fs:0.5;

x=rectpuls(t,T);

plot(t,x)
grid on
xlabel 'Time (s)', ylabel 'Periodic Gaussian pulse'