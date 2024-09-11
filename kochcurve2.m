function z=kochcurve2(speed,animation,bgcolor,color1,color2,color3,iterations)
set(gca,'Color',bgcolor);
hold on;
theta=60;
r=1/3;
trunk1=[1 0;0 0];
h1=line(trunk1(1,:),trunk1(2,:),'Color',color1);
delete(h1);
kochcurve(speed,animation,trunk1,r,theta,color1,iterations);

trunk2=[0 0.5;0 sqrt(3)/2];
h2=line(trunk2(1,:),trunk2(2,:),'Color',color2);
delete(h2);
kochcurve(speed,animation,trunk2,r,theta,color2,iterations);

trunk3=[0.5 1;sqrt(3)/2 0];
h3=line(trunk3(1,:),trunk3(2,:),'Color',color3);
delete(h3);
kochcurve(speed,animation,trunk3,r,theta,color3,iterations);
hold off;