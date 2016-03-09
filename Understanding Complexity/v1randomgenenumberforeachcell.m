G=randi([0 6],10,110); %Create gene strategy

Env=createEnv %Create environments

%Give each coordinate the locale value, eg 22001


for n=1:200
    
    
    
end



%Manipulate genes
rand('state',sum(clock))
n=floor(243*rand)+1;
%n=243
Gnew=G;
Gnew(n)=floor(6*rand)+1;



