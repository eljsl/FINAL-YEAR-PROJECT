clear all
close all
Pos1=6;
Pos2=6;
% Score=0;
% AvgScorePerGene=zeros(200,1);


 G=randi([1 6],243,200);    % 200 genes
 
for q=1:500,

    for p=1:200, % 200 genes
           

        for n=1:1, % 100 environments
            Env=createEnv;
            Score=0;
            Pos1=2;
            Pos2=2;

            for i=1:200    % 200 steps that max moves

                            N=Env(Pos1-1,Pos2);
                            S=Env(Pos1+1,Pos2);
                            E=Env(Pos1,Pos2+1);
                            W=Env(Pos1,Pos2-1);
                            C=Env(Pos1,Pos2);

                            Type=[N*81+S*27+E*9+W*3+C+1];
                            T(i,:)=Type;
                            Z=G(Type,p);
                            Move=Z;
                            %  Move=randi([1 5]);
                            M(i,:)=Move;

                            if Move==1
                                if N~=2
                                    Pos1=Pos1-1;
                                else
                                    Score=Score-5;
                                end
                            elseif Move==2,
                                if S~=2
                                    Pos1=Pos1+1;
                                else
                                    Score=Score-5;
                                end
                            elseif Move==3,
                                if E~=2
                                    Pos2=Pos2+1;
                                else
                                    Score=Score-5;
                                end
                            elseif Move==4,
                                if W~=2
                                    Pos2=Pos2-1;
                                else
                                    Score=Score-5;
                                end
                            elseif Move==5,
                                if C==1
                                    Score=Score+10;
                                    Env(Pos1,Pos2)=0;
                                else Score=Score-1;
                                end
                            elseif Move==6,
                                Move=randi([1 5]);
                            end

                            RunningScore(i,:)=Score;
            end

        EnvScore(n,:)=Score;
        AvgScoreForThatGene=mean(EnvScore);
        end

    ASPG(:,p)=AvgScoreForThatGene;
    end

Fitness=mean(ASPG);
AllFitness(:,q)=Fitness;
plot(AllFitness)
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



%     ASforthatstrategy=mean(ASPG);
%     Fitness(:,q)=ASforthatstrategy;
%     plot(Fitness)

%     G(floor(243*rand)+1)=floor(6*rand)+1;
        
       


% AvgScore=mean(AllEnvScores);