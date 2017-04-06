function [ dz1 ] = F1(x1,v1,x2,v2)

a1=0.25;
m1=4;
a2=.5;
m2=7;


g=9.81;
% ----------- begining of part a
% theta 1 double drivative 
firstterm1=-g*(2*m1+m2)*sin(rad(x1));
secondterm1=-m2*g*sin(rad(x1-2*x2));
thirdterm1=-2*sin(rad(x1-x2))*m2*((v2.^2)*a2-((v1.^2)*a1*cos(rad(x1-x2))));
fourthterm1=a1*(2*m1+m2-m2*cos(rad(2*(x1-x2))));

dz1=(firstterm1+secondterm1+thirdterm1)/fourthterm1;




end

