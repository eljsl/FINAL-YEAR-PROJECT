coords=[2.1 6.6;2.5 5.9;8.8 1.4;6.1 4.5;6.3 9.6;7.4 4.8;5.2 2.1;2.1 5.5;6.8 9.9];
x=coords(:,1);
y=coords(:,2);
A=sortrows(coords)

for i=1:9,
    
    for n=1:9;
        Zx=A(n,1)-A(i,1);
        Ztotalx(n,:)=Zx;
    end
   ZtotalAllx(:,i)=Ztotalx;
end

for p=1:9,
    
    for q=1:9;
        Zy=A(q,2)-A(p,2);
        Ztotaly(q,:)=Zy;
    end
   ZtotalAlly(:,p)=Ztotaly;
end

ZtotalAllx(ZtotalAllx==0)=0.2222;
ZtotalAllx(ZtotalAllx<-0.5)=0;
ZtotalAllx(ZtotalAllx>0.5)=0;
ZtotalAllx

ZtotalAlly(ZtotalAlly==0)=0.2222;
ZtotalAlly(ZtotalAlly<-0.5)=0;
ZtotalAlly(ZtotalAlly>0.5)=0;
ZtotalAlly

Zbig=ZtotalAllx+ZtotalAlly




[ux,i,j]=unique(A,'rows');

Pos1=1;
Pos2=2;
a=1;
z=zeros(6,1);

% for a=1:6,
%     if x(n+1)<=x(a)*1.1
%         z(a)=

f= [1990 1998 2001 2004];
val = 2000; %value to find
tmp = abs(f-val);
[idx idx] = min(tmp); %index of closest value
closest = f(idx); %closest value
%%%%%%%%%%%%%%%%%%%


