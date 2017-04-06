% EXAM problem 2
a=-1;
b=0.0033;
c=-0.17;
d=-10;
e=2.2;
euc=100;
count=0;

xold=[10 50];
initial_guesses=xold

while abs(euc)>=0.01&&count<=100
    f=FG(xold);
    Jac=J(xold);
    delta=-(inv(Jac)*f);
    xnew=xold+delta';
    euc=sqrt((xnew(1)-xold(1))^2+(xnew(2)-xold(2))^2);
    xold=xnew;
end

xintersection=xnew(1)
yintersection=xnew(2)


    
    




