a=zeros(12,12);

row=ones(1,12);
col=ones(12,1);

a(12,:)=row;
a(1,:)=row;
a(:,1)=col;
a(:,12)=col;
a