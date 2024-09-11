function z=pythagoreantree1(speed,animation,bgcolor,color1,color2,layer)
figure;
hold on;
trunk=[0,0 ; 1,0 ; 1,1 ; 0,1 ; 0,0]';
theta=45;
plot(trunk(1,:), trunk(2,:),'Color',color1);
pythagoreantree(speed,animation,bgcolor,color1,color2,trunk,theta,layer);
hold off;
end