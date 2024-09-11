function z=levy3(speed,animation,bgcolor,color1,color2,color3,color4,iterations)
set(gca,'Color',bgcolor);
hold on;
trunk = [0 0;2 1];
trunk1 = [0 0;-2 -1];
trunk2 = [-2 -1;0 0];
trunk3 = [2 1;0 0];
theta=45;
r=1/sqrt(2);

h=line(trunk(1,:),trunk(2,:),'Color',color1);
delete(h);
levycurve(speed,animation,trunk,r,theta,color1,iterations);
levycurve(speed,animation,trunk,r,-theta,color1,iterations);

h1=line(trunk1(1,:),trunk1(2,:),'Color',color2);
delete(h1);
levycurve(speed,animation,trunk1,r,theta,color2,iterations);
levycurve(speed,animation,trunk1,r,-theta,color2,iterations);

h2=line(trunk2(1,:),trunk2(2,:),'Color',color3);
delete(h2);
levycurve(speed,animation,trunk2,r,theta,color3,iterations);
levycurve(speed,animation,trunk2,r,-theta,color3,iterations);

h3=line(trunk3(1,:),trunk3(2,:),'Color',color4);
delete(h3);
levycurve(speed,animation,trunk3,r,theta,color4,iterations);
levycurve(speed,animation,trunk3,r,-theta,color4,iterations);
hold off;