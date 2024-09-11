function c=circle(x,y,r,color)
center_x=x;
center_y=y;
radius=r;
theta=linspace(0,2*pi,100);

x=center_x+radius*cos(theta);
y=center_y+radius*sin(theta);

plot(x,y,'Color',color);
axis equal;
end