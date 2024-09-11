function branch = dragoncurve(speed,animation,x,r,theta,c,layer)
x1=r*[cosd(theta) -sind(theta) ; sind(theta) cosd(theta)]*[x-x(:,1)]+x(:,1);
h1=line(x1(1,:),x1(2,:),'Color',c);
x2=r*[cosd(theta+90) -sind(theta+90) ; sind(theta+90) cosd(theta+90)]*[x-x(:,1)]+x(:,2);
h2=line(x2(1,:),x2(2,:),'Color',c);

if layer>1
    if animation==1
        pause(1/speed);
    end 
    delete(h1);
    delete(h2);
    dragoncurve(speed,animation,x1,r,theta,c,layer-1);
    dragoncurve(speed,animation,x2,r,theta,c,layer-1);
end
end