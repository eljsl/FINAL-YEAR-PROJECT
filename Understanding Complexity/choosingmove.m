G=randi([1 5],243,1);
Env1=createEnv;
Pos1=2;
Pos2=2;

 for i=1:200
 
 N=Env1(Pos1-1,Pos2);
 S=Env1(Pos1+1,Pos2);
 E=Env1(Pos1,Pos2+1);
 W=Env1(Pos1,Pos2-1);
 C=Env1(Pos1,Pos2);
 
 Type=[N*81+S*27+E*9+W*3+C];
 T(i,:)=Type;
 Z=G(Type);
 Move=randi([1 5]);
 M(i,:)=Move;
 
 end