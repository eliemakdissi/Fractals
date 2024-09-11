function nbiterations=chaos(speed,animation,bgcolor,color,N,sides,mode)
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

colorCodes = {'r', 'g', 'b', 'c', 'm', 'y', [0.5 0.5 0.5], color};

plot(x1, y1, 'r-');
rectangle('Position',[center_x-radius, center_y-radius, 2*radius, 2*radius],'Curvature',[1 1],'EdgeColor','r');
axis equal;
a=0; %this part of code is for finding the optimal cut factor
internaltheta=((sides-2)*180)/sides;
if sides==3
    cut_factor=0.5;
elseif sides==4
    cut_factor=0.6;
else
    for i=1:floor(sides/4)
        a=a+cos(i*(pi-internaltheta*pi/180));
    end
    cut_factor=(1+2*a)/(2+2*a);
end

for i=1:sides
    plot(x1(i),y1(i),'o','MarkerFaceColor','w','MarkerSize',10);
end

p=struct('x',centroid_x,'y',centroid_y);
plot(p.x,p.y,'o','MarkerFaceColor','y','MarkerSize',10);
%cut_factor=r;
for iteration=1:N
    i=randi([1,sides],1,1);
    p.x=(p.x + cut_factor * (x1(i) - p.x));
    p.y=(p.y + cut_factor * (y1(i) - p.y));

%     for j=1:sides
%         if i==j
%             plot(x1(j),y1(j),'o','MarkerFaceColor','g','MarkerSize',10);
%         else
%             plot(x1(j),y1(j),'o','MarkerFaceColor','w','MarkerSize',10);
%         end
%     end
%     p.x=(p.x + x1(i))*cut_factor;
%     p.y=(p.y + y1(i))*cut_factor;
    if mode=='c'
        plot(p.x,p.y,'.','Color',colorCodes{mod(i,8)+1});
    end
    if mode=='w'
        plot(p.x,p.y,'.','Color',color);
    end
    nbiterations=iteration;
%     fprintf('iteration : %d;',nbiterations);
    title(['nb of iterations = ',num2str(iteration)]);
    if animation==1
        pause(1/speed);
    end   
end
hold off;
end