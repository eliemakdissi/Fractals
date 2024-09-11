x0=0;y0=0;
x1=3;y1=0;
trunk=[x0 x1;y0 y1];
line(trunk(1,:),trunk(2,:),'Color','r','LineWidth', 5);
cantor(x0,y0,x1,y1,10);