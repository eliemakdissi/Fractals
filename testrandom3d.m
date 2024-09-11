function z=testrandom3d(speed,animation,bgcolor,color1,color2,r,layer)
figure;
set(gca,'Color',bgcolor);
hold on;

xlabel('X');
ylabel('Y');
zlabel('Z');
view(90,0);

point1 = [1; 1; 0];
point2 = [1; 1; 3];
points = [point1, point2];

plot3(points(1,:), points(2,:), points(3,:),'Color',color1,'LineWidth',2);
randomtree3d(speed,animation,color1,color2,points,r,layer,1,layer);
hold off;
end