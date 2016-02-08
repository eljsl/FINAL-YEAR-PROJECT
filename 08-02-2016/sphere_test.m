%{
[x,y,z]=sphere;

figure(1)
surf(x,y,z)

hold on
surf(x+3,y-2,z)
surf(x,y+1,z-3)
xlabel('x')
ylabel('y')
zlabel('z')

p1=[2 3 5];
p2=[5 6 2];
p3=[1 8 3];
%}

[x1,y1,z1]=sphere(30);
x1=x1*6.3245;
y1=y1*6.3245;
z1=z1*6.3245;
mesh(x1-5,y1+5,z1) %where (a,b,c) is centre of sphere
hold on
[x2,y2,z2]=sphere(30);
x2=x2*6.3245;
y2=y2*6.3245;
z2=z2*6.3245;
mesh(x2+5,y+5,z2) %where (a,b,c) is centre of sphere
hold on
[x3,y3,z3]=sphere(30);
x3=x3*6.3245;
y3=y3*6.3245;
z3=z3*6.3245;
mesh(x3+5,y3-5,z3) %where (a,b,c) is centre of sphere
figure(1)
surface(x1,y1,y2);
surface(x2,y2,z2);
surface(x3,y3,z3);
view(30,30);
grid
hold off
