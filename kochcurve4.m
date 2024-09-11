function z=kochcurve4(speed,animation,bgcolor,color,iterations)
set(gca,'Color',bgcolor);
hold on;
theta=85;
r=0.46;
trunk=[0 1;0 0];
h=line(trunk(1,:),trunk(2,:),'Color',color);
delete(h);
kochcurve(speed,animation,trunk,r,theta,color,iterations);
hold off;