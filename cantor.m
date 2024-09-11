function z=cantor(x0,y0,x1,y1,iterations)
xlim([-0.5 3.5]);
ylim([-10 1]);
hold on;

length=sqrt((x0-x1)^2 + (y0-y1)^2);

x2=x0;
y2=y0-1;
x3=x0+length/3;
y3=y2;
trunk1=[x2 x3;y2 y3];
line(trunk1(1,:),trunk1(2,:),'Color','k','LineWidth', 5);

x4=x0+2*length/3;
y4=y2;
x5=x0+length;
y5=y2;
trunk2=[x4 x5;y4 y5];
line(trunk2(1,:),trunk2(2,:),'Color','k','LineWidth', 5);

if iterations>1
    pause(0.01);
    cantor(x2,y2,x3,y4,iterations-1);
    cantor(x4,y4,x5,y5,iterations-1);
end
hold off;
end