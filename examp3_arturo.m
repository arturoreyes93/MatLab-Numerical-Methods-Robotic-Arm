% EXAM problem 3
P=200;
D=10;
B=0.1;
h=0.01;
t=0:h:3;
x(1)=0;
v(1)=0;
Accel(1)=0;

for i=1:(3/h)
    dx1(i)=h*v(i);
    dv1(i)=h*F(x(i),v(i));
    
    dx2(i)=h*(v(i)+dv1(i)/2);
    dv2(i)=h*F((x(i)+dx1(i)/2),(v(i)+dv1(i)/2));
    
    dx3(i)=h*(v(i)+dv2(i)/2);
    dv3(i)=h*F((x(i)+dx2(i)/2),(v(i)+dv2(i)/2));
    
    dx4(i)=h*(v(i)+dv3(i));
    dv4(i)=h*F((x(i)+dx3(i)),(v(i)+dv3(i)));
    
    dx(i)=(dx1(i)+(2*dx2(i))+(2*dx3(i))+dx4(i))/6;
    dv(i)=(dv1(i)+(2*dv2(i))+(2*dv3(i))+dv4(i))/6;
  
    x(i+1)=x(i)+dx(i);
    v(i+1)=v(i)+dv(i);
    
    Accel(i+1)=F(x(i+1),v(i+1));
end


plot(t,x)
title('Angle vs Time of Robot Bat')
xlabel('Time(s)')
ylabel('Angle(deg)')

figure(2)
plot(t,v,'r')
title('Angular Velocity vs Time')
xlabel('Time(s)')
ylabel('Angular Velocity(deg/s)')

figure(3)
plot(t,Accel)
title('Angular Acceleration vs Time')
xlabel('Time(s)')
ylabel('Angular Acceleration(deg/s^2)')

% Using the data cursor for the subplot of angle vs time  I found that at 37.6 degrees
% it has passed a time of 0.1 seconds, so I went to the second subplot
% velocity vs time and found that at 0.1 seconds the velocity is 530 deg/s
    
    
    
    
    
    
    
    
