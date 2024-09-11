function z=test3d(speed,animation,bgcolor,color1,color2,r,theta,phi,beta,layer)
hold on;
xlabel('X');
ylabel('Y');
zlabel('Z');
view(90,0);

point1 = [1; 1; 0];
point2 = [1; 1; 3];
points = [point1, point2];

plot3(points(1,:), points(2,:), points(3,:),'Color',color1,'LineWidth',2);
% randomtree3d(points,r,c,layer,1,layer);
tree3d(speed,animation,bgcolor,color1,color2,r,points,theta,phi,beta,layer);
hold off;