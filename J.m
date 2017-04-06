function [ F ] = J( x )
a=-1;
b=0.0033;
c=-0.17;
d=-10;
e=2.2;
x1=x(1);
x2=x(2);

df1x1=-1;
df2x1=(2*x1)-20;
df1x2=(0.0066*x2)-0.17;
df2x2=(2*x2)-120;

F=[df1x1 df1x2;df2x1 df2x2];


end

