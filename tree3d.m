function branch = tree3d(speed,animation,bgcolor,color1,color2,r,x,theta,phi,beta,layer)
set(gca,'Color',bgcolor);
hold on;

x1=r*[cosd(theta) -sind(theta) 0 ; sind(theta) cosd(theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd(phi) -sind(phi) ; 0 sind(phi) cosd(phi)]*[cosd(beta) 0 -sind(beta) ; 0 1 0 ; sind(beta) 0 cosd(beta)]*[x-x(:,1)] + x(:,2);
plot3(x1(1,:), x1(2,:), x1(3,:), 'Color',color1);
x2=r*[cosd(theta) -sind(theta) 0 ; sind(theta) cosd(theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd(phi) -sind(phi) ; 0 sind(phi) cosd(phi)]*[cosd(beta) 0 sind(beta) ; 0 1 0 ; -sind(beta) 0 cosd(beta)]*[x-x(:,1)] + x(:,2);
plot3(x2(1,:),x2(2,:),x2(3,:),'Color',color1);
x3=r*[cosd(theta) -sind(theta) 0 ; sind(theta) cosd(theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd(phi) sind(phi) ; 0 -sind(phi) cosd(phi)]*[cosd(beta) 0 -sind(beta) ; 0 1 0 ; sind(beta) 0 cosd(beta)]*[x-x(:,1)] + x(:,2);
plot3(x3(1,:),x3(2,:),x3(3,:),'Color',color1);
x4=r*[cosd(theta) -sind(theta) 0 ; sind(theta) cosd(theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd(phi) sind(phi) ; 0 -sind(phi) cosd(phi)]*[cosd(beta) 0 sind(beta) ; 0 1 0 ; -sind(beta) 0 cosd(beta)]*[x-x(:,1)] + x(:,2);
plot3(x4(1,:),x4(2,:),x4(3,:),'Color',color1);
x5=r*[cosd(theta) sind(theta) 0 ; -sind(theta) cosd(theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd(phi) -sind(phi) ; 0 sind(phi) cosd(phi)]*[cosd(beta) 0 -sind(beta) ; 0 1 0 ; sind(beta) 0 cosd(beta)]*[x-x(:,1)] + x(:,2);
plot3(x5(1,:),x5(2,:),x5(3,:),'Color',color1);
x6=r*[cosd(theta) sind(theta) 0 ; -sind(theta) cosd(theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd(phi) -sind(phi) ; 0 sind(phi) cosd(phi)]*[cosd(beta) 0 sind(beta) ; 0 1 0 ; -sind(beta) 0 cosd(beta)]*[x-x(:,1)] + x(:,2);
plot3(x6(1,:),x6(2,:),x6(3,:),'Color',color1);
x7=r*[cosd(theta) sind(theta) 0 ; -sind(theta) cosd(theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd(phi) sind(phi) ; 0 -sind(phi) cosd(phi)]*[cosd(beta) 0 -sind(beta) ; 0 1 0 ; sind(beta) 0 cosd(beta)]*[x-x(:,1)] + x(:,2);
plot3(x7(1,:),x7(2,:),x7(3,:),'Color',color1);
x8=r*[cosd(theta) sind(theta) 0 ; -sind(theta) cosd(theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd(phi) sind(phi) ; 0 -sind(phi) cosd(phi)]*[cosd(beta) 0 sind(beta) ; 0 1 0 ; -sind(beta) 0 cosd(beta)]*[x-x(:,1)] + x(:,2);
plot3(x8(1,:),x8(2,:),x8(3,:),'Color',color1);
x9=r*[x-x(:,1)] + x(:,2);
plot3(x9(1,:), x9(2,:), x9(3,:), 'Color',color1);

if layer>=2&&layer<=5
    if animation==1
        pause(1/speed);
    end
    tree3d(speed,animation,bgcolor,color2,color2,r,x1,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color2,color2,r,x2,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color2,color2,r,x3,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color2,color2,r,x4,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color2,color2,r,x5,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color2,color2,r,x6,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color2,color2,r,x7,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color2,color2,r,x8,theta,phi,beta,layer-1); 
    tree3d(speed,animation,bgcolor,color2,color2,r,x9,theta,phi,beta,layer-1);   
elseif layer>1
    if animation==1
        pause(1/speed);
    end
    tree3d(speed,animation,bgcolor,color1,color2,r,x1,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color1,color2,r,x2,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color1,color2,r,x3,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color1,color2,r,x4,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color1,color2,r,x5,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color1,color2,r,x6,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color1,color2,r,x7,theta,phi,beta,layer-1);
    tree3d(speed,animation,bgcolor,color1,color2,r,x8,theta,phi,beta,layer-1);   
    tree3d(speed,animation,bgcolor,color1,color2,r,x9,theta,phi,beta,layer-1);
end
hold off;
end
%theta=Z rotation; phi=X rotation; beta=Y rotation