function [ G ] = mutationv2( G )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% ProbFirst50=0.25;
% ProbSecond50=0.25;
% ProbBot100=0.25;

for k=1:200,
    RanA=rand;
    if RanA<=0.5
        ParentA(1:243)=G(1:243,ceil(rand*200));
    elseif (RanA>0.5) && (RanA<0.75)
        ParentA(1:243)=G(1:243,ceil(rand*100)+100);
    elseif RanA>=0.75
        ParentA(1:243)=G(1:243,ceil(rand*50)+150);
    end %Pick random parent A
    RanB=rand;
     if RanB<=0.5
        ParentB(1:243)=G(1:243,ceil(rand*200));
    elseif (RanB>0.5) && (RanB<0.75)
        ParentB(1:243)=G(1:243,ceil(rand*100)+100);
    elseif RanB>=0.75
        ParentB(1:243)=G(1:243,ceil(rand*50)+150);
     end %Pick random parent B
     
Cutoff=ceil(rand*243);
G(1:Cutoff,k)=ParentA(1:Cutoff);
G(Cutoff:243,k)=ParentB(Cutoff:243);
end
