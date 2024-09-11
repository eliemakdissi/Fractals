function z=levy1(speed,animation,bgcolor,color,iterations)
set(gca,'Color',bgcolor);
hold on;
trunk = [0 0;0 1];
theta=45;
r=1/sqrt(2);
h=line(trunk(1,:),trunk(2,:),'Color',color);
delete(h);

levycurve(speed,animation,trunk,r,theta,color,iterations);
levycurve(speed,animation,trunk,r,-theta,color,iterations);
hold off;
end