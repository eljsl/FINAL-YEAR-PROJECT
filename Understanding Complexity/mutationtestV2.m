A=randi([1 6],243,1);
A(A<4)=floor(6*rand)+1;




G=randi([1 6],243,200);

for i=1:10,
    
    for n=1:200,
        
    
        Score=sum(G(100:200,n));
        AllScore(:,n)=Score;
    
    end

Fitness=mean(AllScore);
AllFitness(:,i)=Fitness;

% Mutating G
G=[G;AllScore]; %Adds the scores to the bottom of G to sort
[Y,I]=sort(G(end,:)); 
G=G(:,I); % Sorts the genes by the score ascending
G=G(1:end-1,:); % Now removes the last row (Scores) again
Low50Top=G(1:121,1:50)+1; % Lowest 50 scoring, top half of each gene
Low50Bottom=G(122:end,1:50); % Lowest 50 scoring, bottom half of gene
New50=[Low50Top;Low50Bottom]; % Rearranged lowest 50 scoring
G(:,1:50)=New50; % Putting rearranged 50 back into G

plot(AllFitness)

end