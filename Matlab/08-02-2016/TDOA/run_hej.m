close all

[XYZ,ssq,cnt] = LMFnlsq(@hej,[1,1,0],'display',1, 'FunTol',1e-50, 'MaxIter', 20000)

xyz = [0,2,2,0;
    0,0,2,2;
    0,0,0,0];
h1=[xyz(1,1),xyz(2,1)];
h2=[xyz(1,2),xyz(2,2)];
h3=[xyz(1,3),xyz(2,3)];
h4=[xyz(1,4),xyz(2,4)];

x=XYZ(1);
y=XYZ(2);
z=XYZ(3);

scatter(h1(1),h1(2))
hold on
scatter(h2(1),h2(2))
hold on
scatter(h3(1),h3(2))
hold on
scatter(h4(1),h4(2))
hold on
scatter(x,y,'filled')
grid on
xlim([-1 3])
ylim([-1 3])