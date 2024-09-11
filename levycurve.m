function branch = levycurve(speed,animation,x,r,theta,c,layer)

x=r*[cosd(theta) -sind(theta) ; sind(theta) cosd(theta)]*[x-x(:,1)] + x(:,2);
h=line(x(1,:),x(2,:),'Color',c);
if layer>1
    delete(h);
    treeforlevy(speed,animation,x,r,theta,c,layer-1);
    treeforlevy(speed,animation,x,r,-theta,c,layer-1);
end
end