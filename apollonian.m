function z=apollonian(x,y,r,sides,phi,color)
center_x=zeros(sides+2,1);
center_y=zeros(sides+2,1);
radius=zeros(sides+2,1);
center_x(1,1) = x ; center_y(1,1) = y ;
radius(1,1) = r ; n = sides;
hold on;
circle(center_x(1,1),center_y(1,1),radius(1,1),color);
x2=[center_x(1,1) center_x(1,1)+radius(1,1) ; center_y(1,1) center_y(1,1)];
beta=1/sind(180/n)+1 ; alpha=r-r/beta;
for j=1:sides
    xi=alpha*[cosd(phi+(j-1)*360/n) -sind(phi+(j-1)*360/n) ; sind(phi+(j-1)*360/n) cosd(phi+(j-1)*360/n)]*(x2-x2(:,1))+x2(:,1);
    circle(xi(1,2),xi(2,2),r/beta,color);
    center_x(j+1,1)=xi(1,2);
    center_y(j+1,1)=xi(2,2);
    radius(j+1,1)=r/beta;
end
r0=r-2*r/beta;
circle(center_x(1),center_y(1),r0,color);
center_x(sides+2,1)=center_x(1,1); center_y(sides+2,1)=center_y(1,1); radius(sides+2,1)=r0;
z=[center_x center_y radius];
hold off;
end