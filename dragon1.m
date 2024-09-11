function z=dragon1(speed,animation,bgcolor,color1,color2,iterations)
set(gca,'Color',bgcolor);
hold on;
trunk=[0 3;0 3];
trunk1=[6 3;0 3];%notice both end at the same point (3,3) so that they are 
%connected together; so you can connect dragon curves together like this
%by having common point between them, and you make a dragon as large as you want!!
theta=45;
r=0.7;
h=line(trunk(1,:),trunk(2,:),'Color','k');
delete(h);

dragoncurve(speed,animation,trunk,r,theta,color1,iterations);
dragoncurve(speed,animation,trunk1,r,theta,color2,iterations);
hold off;