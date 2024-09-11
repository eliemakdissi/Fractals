function branch = tree(speed,animation,bgcolor,color1,color2,r,x,theta,layer)
%move branches to the origin (0,0) using [ x-x(:,1) ] 
%because I want to do scaling and rotation to the segment at the origin;
%that's why I translate the line segment to the origin using [ x-x(:,1) ]
%and then I do the required rotation and scaling.
%after I've done the rotation and scaling, I will translate the line segment
%to the end of the parent node for hierarchical layout using + x(:,2)

set(gca,'Color',bgcolor);
hold on;

x1=r*[cosd(theta) -sind(theta) ; sind(theta) cosd(theta)]*[x-x(:,1)] + x(:,2);
line(x(1,:),x(2,:),'Color',color1);
x2=r*[cosd(theta) sind(theta) ; -sind(theta) cosd(theta)]*[x-x(:,1)] + x(:,2);
line(x(1,:),x(2,:),'Color',color1);
if layer>=2&&layer<=5
    if animation==1
        pause(1/speed);
    end
    tree(speed,animation,bgcolor,color2,color2,r,x1,theta,layer-1);
    tree(speed,animation,bgcolor,color2,color2,r,x2,theta,layer-1);
elseif layer>1
    if animation==1
        pause(1/speed);
    end
    tree(speed,animation,bgcolor,color1,color2,r,x1,theta,layer-1);
    tree(speed,animation,bgcolor,color1,color2,r,x2,theta,layer-1);
end
hold off;
end