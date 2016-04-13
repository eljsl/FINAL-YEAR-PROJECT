clear AllFitness
clear totalmax
close all
Pos1=2;
Pos2=2;
generations=1000; %The amount of iterations the mutatation does
T=NaN(200,1);
M=NaN(200,1);
RunningScore=NaN(200,1);
EnvScore=NaN(1,1); %This should be 100 by 1 when using 100 environments
ASPG=NaN(1,200);
AllFitness=NaN(1,generations);
totalmax=NaN(1,generations);
All_Genes=NaN(243,200);
% Score=0;
% AvgScorePerGene=zeros(200,1);


 All_Genes=randi([1 6],243,200);    % 200 genes
 
for q=1:100,
    
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

                            Type=N*81+S*27+E*9+W*3+C+1;
                            T(i,:)=Type;
                            Z=All_Genes(Type,p);
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





end
