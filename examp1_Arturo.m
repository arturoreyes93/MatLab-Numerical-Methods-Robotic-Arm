% EXAM PROBLEM 1 
y=[10 8.9707 8.2629 7.8765 7.8115 8.0680 8.6459 9.5453 10.7661];
x=[0 7 14 21 28 35 42 49 56]; % I flipped the values to make better sense 
n=9;

    x4=sum(x.^4);
    x3=sum(x.^3);
    x2=sum(x.^2);
    x1=sum(x);
    y1=sum(y);
    
    for i=1:n
    yx2p(i)=y(i)*(x(i)^2);
    yx1p(i)=y(i)*x(i);
    end
   yx2=sum(yx2p);
   yx1=sum(yx1p);

M=[x4 x3 x2;x3 x2 x1;x2 x1 n];
N=[yx2;yx1;y1];

coeffs=inv(M)*N;

a=coeffs(1)
b=coeffs(2)
c=coeffs(3)

xt=0:60;
for i=1:61
    yt(i)=(a*(xt(i)^2))+(b*xt(i))+c;
end
plot(yt,xt)
title('Position of Baseball')
xlabel('x-axis (ft)')
ylabel('y-axis (ft)')

% Distance at y=30 ft
distanceaty30=yt(31)

