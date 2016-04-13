function All_Genes = next_gen(All_Genes)


Fitness=mean(ASPG);
AllFitness(:,q)=Fitness;
plot(AllFitness)
Maxsofar=max(AllFitness);
totalmax(:,q)=Maxsofar;
hold on
plot(totalmax)
% Mutating G
G=[G;ASPG]; %Adds the scores to the bottom of G to sort
[Y,I]=sort(G(end,:)); 
G=G(:,I); % Sorts the genes by the score ascending
G=G(1:end-1,:); % Now removes the last row (Scores) again
NewBottom25Genes=randi([1 6],243,25);
% New100=randi([1 6],243,100);
% Best50Top=G(1:121,151:200); % Lowest 50 scoring, top half of each gene
% Best50Bottom=G(122:end,151:200); % Lowest 50 scoring, bottom half of gene
% New50=[Best50Bottom;Best50Top]; % Rearranged lowest 50 scoring
G(:,1:25)=NewBottom25Genes; % Putting rearranged 50 back into G

end