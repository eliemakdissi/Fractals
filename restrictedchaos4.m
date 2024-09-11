%the currently chosen vertex cannot neighbor the previously chosen vertex if the two previously chosen vertices are the same.
function nbiterations=restrictedchaos4(speed,animation,bgcolor,color,N,sides)
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
rectangle('Position',[center_x-radius, center_y-radius, 2*radius, 2*radius],'Curvature',[1 1],'EdgeColor','r');
axis equal;

for i=1:sides
    plot(x1(i),y1(i),'o','MarkerFaceColor','w','MarkerSize',10);
end

p=struct('x',centroid_x,'y',centroid_y);
plot(p.x,p.y,'o','MarkerFaceColor','y','MarkerSize',10);
cut_factor=0.5;
last=-1;
beforelast=-1;
for iteration=1:N
    i=randi([1,sides],1,1);
    if last==beforelast
        if i==mod(last,sides)+1 || i==mod(last-2,sides)+1
            continue;
        end
    end
    beforelast=last;
    last=i;    
    p.x=(p.x + cut_factor * (x1(i) - p.x));
    p.y=(p.y + cut_factor * (y1(i) - p.y));

    plot(p.x,p.y,'.','Color',color);
    nbiterations=iteration;
%     fprintf('iteration : %d;',nbiterations);
    title(['nb of iterations = ',num2str(iteration)]);
    if animation==1
        pause(1/speed);
    end 
end
hold off;
end