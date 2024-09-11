function z=kochcurve1(speed,animation,bgcolor,color,iterations)
set(gca,'Color',bgcolor);
hold on;
theta=60;
r=1/3;
trunk1=[0 1;0 0];
h1=line(trunk1(1,:),trunk1(2,:),'Color',color);
delete(h1);
kochcurve(speed,animation,trunk1,r,theta,color,iterations);
hold off;