function nbiterations=mengersponge(speed,animation,bgcolor,color,N)
vertices = [0 0 0; 1 0 0; 1 1 0; 0 1 0; 0 0 1; 1 0 1; 1 1 1; 0 1 1;
            0.5 0 0; 1 0.5 0; 0.5 1 0; 0 0.5 0; 0.5 0 1; 1 0.5 1;
            0.5 1 1; 0 0.5 1; 0 0 0.5; 1 0 0.5; 1 1 0.5; 0 1 0.5;];

figure;
xlim([-2 2]);
ylim([-2 2]);
zlim([-2 2]);

axis equal;
set(gca,'Color',bgcolor);
hold on;

for i=1:8
    plot3(vertices(i,1),vertices(i,2),vertices(i,3),'o','MarkerFaceColor','w','MarkerSize',10);
end

p = sum(vertices)/8;

cut_factor=2/3;

for iteration = 1:N
    vertex = vertices(randi(20), :);
    p=(p + cut_factor * (vertex - p));
    plot3(p(1), p(2), p(3), '.','Color',color);
    nbiterations=iteration;
    title(['nb of iterations = ',num2str(iteration)]);
    if animation==1
        pause(1/speed);
    end 
end
grid on;
end
