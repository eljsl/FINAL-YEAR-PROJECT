x = rand(10000,2);
insideCircle = sqrt((x(:,1)-.5).^2+(x(:,2)-.5).^2)<0.5;
y = x(insideCircle,:);

tol = 0.05;
C = uniquetol(y,tol,'ByRows',true);

plot(y(:,1),y(:,2),'.')
hold on
axis equal
plot(C(:,1), C(:,2), '.r', 'MarkerSize', 10)

