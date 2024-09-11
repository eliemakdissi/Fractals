function z=tree1(speed,animation,bgcolor,color1,color2,r,theta,layer)
figure;
hold on;
trunk1=[0 0;0 1];
h1=line(trunk1(1,:),trunk1(2,:),'Color',color1);
tree(speed,animation,bgcolor,color1,color2,r,trunk1,theta,layer);
hold off;
end
