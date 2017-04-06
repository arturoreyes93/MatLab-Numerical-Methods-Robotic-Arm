function [ dz2 ] = F2(x1,v1,x2,v2)

a1=0.25;
m1=4;
a2=.5;
m2=7;

g=9.81;
% theta 2 double derivetive

firstterm2=2*sin(rad(x1-x2))*((v1.^2)*a1*(m1+m2));
secondterm2=g*(m1+m2)*cos(rad(x1));
thirdterm2=(v2.^2)*a2*m2*cos(rad(x1-x2));
fourthterm2=a2*(2*m1+m2-m2*cos(rad(2*(x1-x2))));

dz2=(firstterm2+secondterm2+thirdterm2)/fourthterm2;

end

