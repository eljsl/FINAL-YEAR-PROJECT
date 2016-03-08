Env=


G=randi([0 6],243,1);

rand('state',sum(clock))
n=floor(243*rand)+1;
Gnew=G;
Gnew(n)=floor(6*rand)+1;


%s=score(G);