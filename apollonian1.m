function z=apollonian1(speed,animation,bgcolor,color1,color2,sides,phi,iterations)
set(gca,'Color',bgcolor);
hold on;
zc=apollonian(0,0,1,sides,phi,color1);
xp=zc(1,1); yp=zc(1,2);

apollonianIFS1(speed,animation,color2,xp,yp,zc,sides,iterations);
hold off;