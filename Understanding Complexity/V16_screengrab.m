tic
clear AllFitness
clear totalmax
close all
generations=1000; %The amount of iterations the mutatation does
EnvTot=1; %

T=NaN(200,1); %Preallocating variable
M=NaN(200,1); %Preallocating variable
RunningScore=NaN(200,1); %Preallocating variable
EnvScore=NaN(1,1); %This should be 100 by 1 when using 100 environments
ASPG=NaN(1,200); %Preallocating variable
AllFitness=NaN(1,generations); %Preallocating variable
totalmax=NaN(1,generations); %Preallocating variable
TotalRubbish=0; %Preallocating variable
BestVal=zeros(1,generations); %Preallocating variable
Score=0; %Preallocating variable
Pos1=2; %Preallocating variable
Pos2=2; %Preallocating variable

EnvG=createEnv(EnvTot); %Calling function to create the 12x12x100 matrix of the environment
Inner=EnvG(2:11,2:11,:); %Specifies the non-wall section of the environment for all 100 rooms
Rubbish=sum(sum(sum(Inner==1))); %Counts the amount of rubbish in all the rooms combined 
AvgRubbish=Rubbish/EnvTot; %Finds the average amount of rubbish

G=randi([1 6],243,200);    %Creates the first pool of genes
 
for q=1:generations, %Mutation loop

    for p=1:200, %Loop for 200 genes
        Score=0;
        EnvScore=0;
        
        for n=1:EnvTot, % Number of environments
            Env=EnvG(:,:,n);
            Pos1=6;
            Pos2=6;
            
            for i=1:200    % 200 steps that max moves

                            N=Env(Pos1-1,Pos2);
                            S=Env(Pos1+1,Pos2);
                            E=Env(Pos1,Pos2+1);
                            W=Env(Pos1,Pos2-1);
                            C=Env(Pos1,Pos2);

                            Type=N*81+S*27+E*9+W*3+C+1;
                            Move=G(Type,p);
                            M(i,:)=Move;
                            
                            if Move==6,
                                Move=randi([1 5]);
                            end

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
                            
                            end % end of If loop

                            
            end % end of Steps loop

        EnvScore=EnvScore+Score;
        AvgScoreForThatGene=EnvScore/EnvTot;

        end % End of Environments loop


    G(244,p)=AvgScoreForThatGene;
    end % End of genes loop

Fitness=mean(G(244,:));
AllFitness(:,q)=Fitness;
AvgAmountPicked=AllFitness/10;



[Y,I]=sort(G(end,:)); 
G=G(:,I); % Sorts the genes by the score ascending
BestVal(:,q)=(G(244,200))/10; %Saves the best gene score for each iteration
G=G(1:end-1,:); % Now removes the last row (Scores) again

Maxsofar=max(BestVal); %Defines the highest score in BestVal so far in the mutations
totalmax(:,q)=Maxsofar; %Saves the values of Maxsofar to plot

G=mutationv3(G); %Mutating G
   
end
percentage=(totalmax(end)/AvgRubbish)*100



plot(AvgAmountPicked)
hold on
plot(totalmax)
hold on
plot(BestVal)
legend('Average amound picked per gene pool','Maximum picked','Best gene','Location','Southeast')
xlabel('Generations of mutation')
ylabel('Amount of rubbish picked up')
toc
