function z=test2(speed,animation,bgcolor,color1,color2,r,layer)
figure;
set(gca,'Color',bgcolor);
hold on;

trunk1=[0 0;0 1];
line(trunk1(1,:),trunk1(2,:),'Color',color1,'LineWidth',2);
randomtree(speed,animation,color1,color2,trunk1,r,layer,1,layer);
hold off;
end