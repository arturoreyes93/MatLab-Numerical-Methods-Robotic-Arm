function [ F ] = F( x,v )
P=200;
D=10;
B=0.1;
thetaD=60
A=-(D+B);
B=-(P+1);
C=P*thetaD;

F=(A*v)+(B*x)+C;


end

