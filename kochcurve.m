function branch = kochcurve(speed,animation,x,r,theta,c,layer)
x1=r*[1 0 ; 0 1]*[x-x(:,1)] + x(:,1);
h1=line(x1(1,:),x1(2,:),'Color',c);
x2=r*[cosd(theta) -sind(theta) ; sind(theta) cosd(theta)]*[x-x(:,1)] + x1(:,2);
h2=line(x2(1,:),x2(2,:),'Color',c);
x3=r*[cosd(theta) sind(theta) ; -sind(theta) cosd(theta)]*[x-x(:,1)] + x2(:,2);
h3=line(x3(1,:),x3(2,:),'Color',c);
x4=r*[1 0 ; 0 1]*[x-x(:,1)] + x3(:,2);
h4=line(x4(1,:),x4(2,:),'Color',c);
if layer>1
    delete(h1);
    delete(h2);
    delete(h3);
    delete(h4);
    if animation==1
        pause(1/speed);
    end    
    kochcurve(speed,animation,x1,r,theta,c,layer-1);
    kochcurve(speed,animation,x2,r,theta,c,layer-1);
    kochcurve(speed,animation,x3,r,theta,c,layer-1);
    kochcurve(speed,animation,x4,r,theta,c,layer-1);
end
hold off;
end