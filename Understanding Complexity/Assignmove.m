Env1=[2     2     2     2     2     2     2     2     2     2     2     2;
     2     0     0     0     1     0     0     0     1     1     0     2;
     2     0     0     1     1     1     0     0     0     1     0     2;
     2     1     0     0     1     1     0     1     1     1     1     2;
     2     1     0     0     1     1     1     0     0     1     1     2;
     2     1     1     0     0     1     1     1     1     1     0     2;
     2     1     1     1     1     0     0     1     0     0     1     2;
     2     1     1     0     1     1     1     0     0     0     1     2;
     2     1     0     0     1     1     0     1     0     0     1     2;
     2     1     1     0     0     1     0     1     1     0     0     2;
     2     1     0     0     1     1     0     0     1     1     0     2;
     2     2     2     2     2     2     2     2     2     2     2     2];
 
 G=randi([1 4],243,1);
 
 Pos1=2;
 Pos2=2;
 
 Score=0;
 
 for i=1:200
 
 N=Env1(Pos1-1,Pos2);
 S=Env1(Pos1+1,Pos2);
 E=Env1(Pos1,Pos2+1);
 W=Env1(Pos1,Pos2-1);
 C=Env1(Pos1,Pos2);
 
 Move=randi([1 4]);
 M(i,:)=Move;
 
 if Move==1
     if N~=2
     Pos1=Pos1-1;
     else Pos1=Pos1;
         Score=Score-5;
     end
 elseif Move==2,
     if S~=2
     Pos1=Pos1+1;
     else Pos1=Pos1;
         Score=Score-5;
     end
 elseif Move==3,
     if E~=2
     Pos2=Pos2+1;
     else Pos2=Pos2;
         Score=Score-5;
     end
 elseif Move==4,
     if W~=2
     Pos2=Pos2-1;
     else Pos2=Pos2;
         Score=Score-5;
     end
 end
 
 P1(i,:)=Pos1;
 P2(i,:)=Pos2;
 
 end
 
 Pos=[P1 P2];