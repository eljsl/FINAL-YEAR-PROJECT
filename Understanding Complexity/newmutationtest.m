clear all
clc
close all

A=randi([1 6],5,10)


for n=1:100 % generations
    
    for i=1:10, % scoring each column
        
        Score=sum(A(:,i));
        AllScore(:,i)=Score;
    end
    
    Fitness=mean(AllScore);
    AllFitness(:,n)=Fitness;
    plot(AllFitness)
    
    A=[A;AllScore];
    [Y,I]=sort(A(end,:)); 
    A=A(:,I); % Sorts the genes by the score ascending
    A=A(1:end-1,:);
    NewGene=randi([1 6],5,1);
    A(:,1)=NewGene;
    
end