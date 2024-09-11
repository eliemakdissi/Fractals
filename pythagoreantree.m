function branch = pythagoreantree(speed,animation,bgcolor,color1,color2,x,theta,layer)
set(gca,'Color',bgcolor);
hold on;
x1=[cosd(theta)^2 -cosd(theta)*sind(theta) ; cosd(theta)*sind(theta) cosd(theta)^2]*(x-x(:,1)) + repmat(x(:,4), 1, size(x,2));
plot(x1(1,:), x1(2,:),'Color',color1);
x2=[sind(theta)^2 cosd(theta)*sind(theta) ; -cosd(theta)*sind(theta) sind(theta)^2]*(x-x(:,1)) + repmat(x1(:,2), 1, size(x,2));
plot(x2(1,:), x2(2,:),'Color',color1);

if layer>1
    if animation==1
        pause(1/speed);
    end
    if layer==2
        pythagoreantree(speed,animation,bgcolor,color2,color2,x1,theta,layer-1);
        pythagoreantree(speed,animation,bgcolor,color2,color2,x2,theta,layer-1);
    else
        pythagoreantree(speed,animation,bgcolor,color1,color2,x1,theta,layer-1);
        pythagoreantree(speed,animation,bgcolor,color1,color2,x2,theta,layer-1);%[0.6 0.2 0]
    end 
end
hold off;
end