function nbiterations=chaos3d(speed,animation,bgcolor,color,sides,N)
xlim([-2 2]);
ylim([-2 2]);
zlim([-2 2]);
set(gca,'Color',bgcolor);
hold on;
if sides==3
    vertices = [0 0 0; 1 0 0; 0.5 sqrt(3)/2 0; 0.5 sqrt(3)/6 sqrt(3)/sqrt(2)];
elseif sides==4
    vertices = [0 0 0; 1 0 0; 1 1 0; 0 1 0; 0 0 1; 1 0 1; 1 1 1; 0 1 1];
else
    phi = (1 + sqrt(5)) / 2;
    vertices = [1, 1, 1; 1, 1, -1; 1, -1, 1; 1, -1, -1; -1, 1, 1; -1, 1, -1; -1, -1, 1; -1, -1, -1; 
            0, phi, 1/phi; 0, phi, -1/phi; 0, -phi, 1/phi; 0, -phi, -1/phi;  1/phi, 0, phi; 
            1/phi, 0, -phi; -1/phi, 0, phi; -1/phi, 0, -phi; phi, 1/phi, 0; phi, -1/phi, 0; 
            -phi, 1/phi, 0; -phi, -1/phi, 0];
end

xlim([-2 2]);
ylim([-2 2]);
zlim([-2 2]);

axis equal;

if sides==3
    for i=1:4
        plot3(vertices(i,1),vertices(i,2),vertices(i,3),'o','MarkerFaceColor','w','MarkerSize',10);
    end
elseif sides==4
    for i=1:8
        plot3(vertices(i,1),vertices(i,2),vertices(i,3),'o','MarkerFaceColor','w','MarkerSize',10);
    end
else
    for i=1:20
        plot3(vertices(i,1),vertices(i,2),vertices(i,3),'o','MarkerFaceColor','w','MarkerSize',10);
    end    
end

if sides==3
    p = sum(vertices)/4;
elseif sides==4
    p = sum(vertices)/8;
else
    p = sum(vertices)/20;
end

if sides==3
    cut_factor=0.5;
elseif sides==4
    cut_factor=0.6;
else
    cut_factor=0.618;
end
for iteration = 1:N
    if sides==3
        vertex = vertices(randi(4), :);
    elseif sides==4
        vertex = vertices(randi(8), :);
    else
        vertex = vertices(randi(20), :);
    end
    p=(p + cut_factor * (vertex - p));
    
    plot3(p(1), p(2), p(3), '.','Color',color);
    nbiterations=iteration;
    title(['nb of iterations = ',num2str(iteration)]);
    if animation==1
        pause(1/speed);
    end 
end
grid on;
hold off;
end
