function branch = treeforlevy(speed,animation,x,r,theta,c,layer)

x1=r*[cosd(theta) -sind(theta) ; sind(theta) cosd(theta)]*[x-x(:,1)] + x(:,2);
h1=line(x(1,:),x(2,:),'Color',c);
x2=r*[cosd(theta) sind(theta) ; -sind(theta) cosd(theta)]*[x-x(:,1)] + x(:,2);
h2=line(x(1,:),x(2,:),'Color',c);
if layer>1
    if animation==1
     pause(1/speed);
    end
    delete(h1);
    delete(h2);
    treeforlevy(speed,animation,x1,r,theta,c,layer-1);
    treeforlevy(speed,animation,x2,r,theta,c,layer-1);
end
end