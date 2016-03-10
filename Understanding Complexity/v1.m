G=randi([1 6],243,1); %Create gene strategy

RandMove=floor(4*rand)+1;

Env1=createEnv %Create environments

%Give each coordinate the locale value, eg 22001
s=0;

Pos1=2;
Pos2=2;

Poss=posscells;




N=Env1(Pos1-1,Pos2);

for i=1:200
        
  N=Env1(Pos1-1,Pos2);
  S=Env1(Pos1+1,Pos2);
  E=Env1(Pos1,Pos2+1);
  W=Env1(Pos1,Pos2-1);
  C=Env1(Pos1,Pos2);
  
  Type=[N S E W C]; %Need to grab number from this to look into the gene to determine a move.
%   T(i,:)=[N S E W C];
  
  [C,ia,ib]=intersect(Type,Poss,'rows')
  I(i,:)=ib;
  
  Move=G(ib,:);

%   Move=floor(4*rand)+1;
  M(i,:)=Move;
    


if Move==1
    if Env1(Pos1-1,Pos2)==2
        s=s-5;
    else
        Pos1=Pos1-1;
    end

elseif Move==2
    if Env1(Pos1+1,Pos2)==2
        s=s-5;
    else
        Pos1=Pos1+1;
    end
    
elseif Move==3
    if Env1(Pos1,Pos2+1)==2
        s=s-5;
    else
        Pos2=Pos2+1;
    end
    
elseif Move==4
    if Env1(Pos1,Pos2-1)==2
        s=s-5;
    else
        Pos2=Pos2-1;
    end

elseif Move==5
    if Env1(Pos1,Pos2)~=1
        s=s-1
    else
        s=s+10;
        Env1(Pos1,Pos2)=0; %Make cell empty after picked up rubbish
    end
end
% if Move==6
%     if RandMove==1
%             if Env1(Pos1-1,Pos2)==2
%             s=s-5
%             else
%             Pos1=Pos1-1;
%             end
%     end
%     if RandMove==2
%             if Env1(Pos1+1,Pos2)==2
%             s=s-5
%             else
%             Pos1=Pos1+1;
%             end
%     end        
%     if RandMove==3
%             if Env1(Pos1,Pos2+1)==2
%             s=s-5
%             else
%             Pos2=Pos2+1;
%             end
%     end
%     if RandMove==4
%             if Env1(Pos1,Pos2-1)==2
%             s=s-5
%             else
%             Pos2=Pos2-1;
%             end         
%     end
% end

end






for n=1:200
    
    
    
end



%Manipulate genes
rand('state',sum(clock))
n=floor(243*rand)+1;
%n=243
Gnew=G;
Gnew(n)=floor(6*rand)+1;



