  numpulses=10;
    Pcell=cell(1,numpulses);
    dt=.001;
    for i=1:numpulses
        T=5*randn+45; %duration
        W=5*randn+25; %pulse width
        t=0:dt:T;
       Pcell{i}=(t<=W); 
    end
     pulse=[Pcell{:}];
     t=(0:length(pulse)-1)*dt;
     plot(t,pulse) ; ylim([-1 2])