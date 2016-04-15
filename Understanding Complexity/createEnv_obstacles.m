function Env = createEnv(A)

Env = randi([0 1],12,12,A);
Env(12,:,:)=2;
Env(1,:,:)=2;
Env(:,1,:)=2;
Env(:,12,:)=2;

for v=1:A,

for d=1:10, %Number of obstacles to add in
    randrow=randi([2 11],1,1);
    randcol=randi([2 11],1,1);
    Env(randrow,randcol,v)=2;

end

end