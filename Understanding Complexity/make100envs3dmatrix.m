Env = randi([0 1],12,12,100);

Env(12,:,:)=2;
Env(1,:,:)=2;
Env(:,1,:)=2;
Env(:,12,:)=2;
Pos1=2;
Pos2=2;

Z=randi([0 50],200,1);


% Q=randi([1 10],10,10)
% B=sum(Q)
% A=sum(B)
for i=1:200

for n=1:100

%Actual movement of max - scoring
for p=1:200,
    randval1=floor(12*rand)+1;
    randval2=floor(12*rand)+1;
    OneDX=Env(randval1,randval2,n)+Z(i); %One value from the first plane
    TwoDX(:,p)=OneDX; %Doing this 200 times, so storing the 200 random values found
    
end
Totalperzplane=sum(TwoDX); %Summing all the 200 values found for each plane
ThreeDX(:,n)=Totalperzplane; %Storing all the summed values for each plane. 100 planes.
end
Foreachgene=mean(ThreeDX);
StoreGeneScores(:,i)=Foreachgene;
end

plot(StoreGeneScores)

 
    