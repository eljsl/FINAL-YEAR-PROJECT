H=randi([0 10]);
D=randi([0 10]);
F=randi([0 10]);
A=1.5;
B=H-A;
E=2*A;
G=2*B;

C=(((G^2)*E)-((F^2)*E)+((E^2)*G)-((D^2)*G))/(2*((G*D)+(E*F)))

costheta1=(4*(A^2)-(2*C*D)-(D^2))/(4*A*C)

theta1=acos(costheta1)

angleInDegrees = radtodeg(theta1)