clear AllFitness
clear totalmax
close all
Pos1=2;
Pos2=2;
generations=100; %The amount of iterations the mutatation does
T=NaN(200,1);
M=NaN(200,1);
RunningScore=NaN(200,1);
EnvScore=NaN(100,1); %This should be 100 by 1 when using 100 environments
ASPG=NaN(1,200);
AllFitness=NaN(1,generations);
totalmax=NaN(1,generations);
G=NaN(243,200);
% Score=0;
% AvgScorePerGene=zeros(200,1);


 G=randi([1 6],243,200);    % 200 genes
 
for q=1:generations,

    for p=1:200, % 200 genes
           

        for n=1:100, % 100 environments
            Env=createEnv;
            Score=0;
            Pos1=2;
            Pos2=2;

            for i=1:200    % 200 steps that max moves

                           RunningScore=scoringmax()
            end

        EnvScore(n,:)=Score;
        AvgScoreForThatGene=mean(EnvScore);
        end

    ASPG(:,p)=AvgScoreForThatGene;
    end

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



