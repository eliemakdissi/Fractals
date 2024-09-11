function nbiterations=sierpinskicarpet(speed,animation,bgcolor,color,N,sides)
center_x = 600;
center_y = 600;
radius = 600;
num_sides = sides;
theta = linspace(0, 2*pi, num_sides+1);
x1 = center_x + radius * cos(theta);
y1 = center_y + radius * sin(theta);

centroid_x = mean(x1);
centroid_y = mean(y1);

figure;
xlim([-1000 2000]);
ylim([-1000 2000]);

set(gca,'Color',bgcolor);
hold on;
plot(x1, y1, 'r-');

% x1(5)=(x1(1)+x1(2))/2;
% y1(5)=(y1(1)+y1(2))/2;
% 
% x1(6)=(x1(2)+x1(3))/2;
% y1(6)=(y1(2)+y1(3))/2;
% 
% x1(7)=(x1(3)+x1(4))/2;
% y1(7)=(y1(3)+y1(4))/2;
% 
% x1(8)=(x1(4)+x1(1))/2;
% y1(8)=(y1(4)+y1(1))/2;
a=1;
b=2;
for i=(sides+1):2*sides
    x1(i)=(x1(a)+x1(b))/2;
    y1(i)=(y1(a)+y1(b))/2;
    a=b;
    b=mod(b,sides)+1;
end

rectangle('Position',[center_x-radius, center_y-radius, 2*radius, 2*radius],'Curvature',[1 1],'EdgeColor','r');
axis equal;
for i=1:sides
    plot(x1(i),y1(i),'o','MarkerFaceColor','w','MarkerSize',10);
end

p=struct('x',centroid_x,'y',centroid_y);
plot(p.x,p.y,'o','MarkerFaceColor','y','MarkerSize',10);
cut_factor=2/3;
for iteration=1:N
    i=randi([1,2*sides],1,1);
    p.x=(p.x + cut_factor * (x1(i) - p.x));
    p.y=(p.y + cut_factor * (y1(i) - p.y));

    plot(p.x,p.y,'.','Color',color);
    nbiterations=iteration;
    title(['nb of iterations = ',num2str(iteration)]);
    if animation==1
        pause(1/speed);
    end 
end
hold off;
end