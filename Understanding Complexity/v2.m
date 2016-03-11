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
Pos1=2;
Pos2=2;
G=randi([1 4],243,1);



for i=1:200,
 Move=G(TypeB3);
 M(i,:)=Move;
 
  N=Env1(Pos1-1,Pos2);
  S=Env1(Pos1+1,Pos2);
  E=Env1(Pos1,Pos2+1);
  W=Env1(Pos1,Pos2-1);
  C=Env1(Pos1,Pos2);
  
  TypeB3=[N*81+S*27+E*9+W*3+C];
  Move=G(TypeB3);
 
    
    if Move==1
        Pos1=Pos1-1;
    elseif Move==2
        Pos1=Pos1+1;
    elseif Move==3
        Pos2=Pos2+1;
    elseif Move==4
        Pos2=Pos2--1;
    end       
    
P1(i,:)=Pos1;
P2(i,:)=Pos2;
                
end