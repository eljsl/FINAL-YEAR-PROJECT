function Env = createEnv(A)

Env = randi([0 1],12,12,A);

Env(12,:,:)=2;
Env(1,:,:)=2;
Env(:,1,:)=2;
Env(:,12,:)=2;

% Env = randi([0 1],12,12);
% 
% Env(12,:)=2;
% Env(1,:)=2;
% Env(:,1)=2;
% Env(:,12)=2;

end



