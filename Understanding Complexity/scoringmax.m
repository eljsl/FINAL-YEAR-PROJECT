function [ RunningScore ] = scoringmax( i,Env )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Env=NaN(12,12);
Pos1=2;
Pos2=2;
                            N=Env(Pos1-1,Pos2);
                            S=Env(Pos1+1,Pos2);
                            E=Env(Pos1,Pos2+1);
                            W=Env(Pos1,Pos2-1);
                            C=Env(Pos1,Pos2);

                            Type=N*81+S*27+E*9+W*3+C+1;
                            T(i,:)=Type;
                            Z=G(Type,p);
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

