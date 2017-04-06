
x1(1)=5;
v1(1)=0;

x2(1)=0;
v2(1)=0;

h=0.002;
t=0:h:2;

for i=1:(2/h)
    dx1(i)=h*v1(i);
    dv1(i)=h*F1(x1(i),v1(i),x2(i),v2(i));
    
    dx1p(i)=h*v2(i);
    dv1p(i)=h*F2(x1(i),v1(i),x2(i),v2(i));
    
    dx2(i)=h*(v1(i)+dv1(i)/2);
    dv2(i)=h*F1((x1(i)+dx1(i)/2),(v1(i)+dv1(i)/2),(x2(i)+dx1p(i)/2),(v2(i)+dv1p(i)/2));
    
    dx2p(i)=h*(v2(i)+dv1p(i)/2);
    dv2p(i)=h*F2((x1(i)+dx1(i)/2),(v1(i)+dv1(i)/2),(x2(i)+dx1p(i)/2),(v2(i)+dv1p(i)/2));
    
    dx3(i)=h*(v1(i)+dv2(i)/2);
    dv3(i)=h*F1((x1(i)+dx2(i)/2),(v1(i)+dv2(i)/2),(x2(i)+dx2p(i)/2),(v2(i)+dv2p(i)/2));
    
    dx3p(i)=h*(v2(i)+dv2p(i)/2);
    dv3p(i)=h*F2((x1(i)+dx2(i)/2),(v1(i)+dv2(i)/2),(x2(i)+dx2p(i)/2),(v2(i)+dv2p(i)/2));
    
    dx4(i)=h*(v1(i)+dv3(i));
    dv4(i)=h*F1((x1(i)+dx3(i)),(v1(i)+dv3(i)),(x2(i)+dx3p(i)),(v2(i)+dv3p(i)));
    
    
    dx4p(i)=h*(v2(i)+dv3p(i));
    dv4p(i)=h*F2((x1(i)+dx3(i)),(v1(i)+dv3(i)),(x2(i)+dx3p(i)),(v2(i)+dv3p(i)));
    
    dx(i)=(dx1(i)+(2*dx2(i))+(2*dx3(i))+dx4(i))/6;
    dv(i)=(dv1(i)+(2*dv2(i))+(2*dv3(i))+dv4(i))/6;
    
    dxp(i)=(dx1p(i)+(2*dx2p(i))+(2*dx3p(i))+dx4(i))/6;
    dvp(i)=(dv1p(i)+(2*dv2p(i))+(2*dv3p(i))+dv4p(i))/6;
  
    x1(i+1)=x1(i)+dx(i);
    v1(i+1)=v1(i)+dv(i);
    
   x2(i+1)=x2(i)+dxp(i);
   v2(i+1)=v2(i)+dvp(i);
    
    
    Accel1(i+1)=F1(x1(i+1),v1(i+1),x2(i+1),v2(i+1));
    Accel2(i+1)=F2(x1(i+1),v1(i+1),x2(i+1),v2(i+1));
    
end


plot(t,x1)
title('Angle vs Time of Robot Bat')
xlabel('Time(s)')
ylabel('Angle(deg)')

hold on

plot(t,x2,'r')

figure(2)
plot(t,v1)
title('Angular Velocity vs Time')
xlabel('Time(s)')
ylabel('Angular Velocity(deg/s)')

hold on 
plot(t,v2,'r')


figure(3)
plot(t,Accel1)
title('Angular Acceleration vs Time')
xlabel('Time(s)')
ylabel('Angular Acceleration(deg/s^2)')

hold on

plot(t,Accel2,'r')

% Using the data cursor for the subplot of angle vs time  I found that at 37.6 degrees
% it has passed a time of 0.1 seconds, so I went to the second subplot
% velocity vs time and found that at 0.1 seconds the velocity is 530 deg/s
    
    
    
    
    
    
    
    

  