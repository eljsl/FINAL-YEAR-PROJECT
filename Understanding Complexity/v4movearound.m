Env1=createEnv;
G=randi([1 5],243,200);
Pos1=2;
Pos2=2;
Score=0;
 
 for i=1:200
 
 N=Env1(Pos1-1,Pos2);
 S=Env1(Pos1+1,Pos2);
 E=Env1(Pos1,Pos2+1);
 W=Env1(Pos1,Pos2-1);
 C=Env1(Pos1,Pos2);
 
 Type=[N*81+S*27+E*9+W*3+C];
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
     else Score=Score-1;
     end
 end
 
 P1(i,:)=Pos1;
 P2(i,:)=Pos2;
 Zt(i,:)=Z;
 
 end
 
 Pos=[P1 P2];