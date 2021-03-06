% G=randi([1 5],243,200);
Pos1=2;
Pos2=2;
Score=0;
AllScores=0;

% for p=1:1000, % 1000 generations
    G=randi([1 5],243,200);
 
for n=1:100,    % 200 environments
    Env=createEnv;
    
    for i=1:200    % 200 steps that max moves
        
        N=Env(Pos1-1,Pos2);
        S=Env(Pos1+1,Pos2);
        E=Env(Pos1,Pos2+1);
        W=Env(Pos1,Pos2-1);
        C=Env(Pos1,Pos2);
        
        Type=[N*81+S*27+E*9+W*3+C+1];
        T(i,:)=Type;
        Z=G(Type,i);
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
        end
           
%         P1(i,:)=Pos1;
%         P2(i,:)=Pos2;
%         Zt(i,:)=Z;
        
    end
 
 AllEnvScores(n,:)=Score;
%  AS(n,:)=AllScores;
 
end

% end

%  Pos=[P1 P2];