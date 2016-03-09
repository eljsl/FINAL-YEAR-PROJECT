Env = randi([0 1],12,12,100);

Env(12,:,:)=2;
Env(1,:,:)=2;
Env(:,1,:)=2;
Env(:,12,:)=2;

a = randi([1 10]);
valueOfA = zeros(1,5);
for m = 1:5
    a = a*2;
    valueOfA(m) = a;
end