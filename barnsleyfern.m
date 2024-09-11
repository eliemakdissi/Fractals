function nbiterations=barnsleyfern(speed,animation,bgcolor,color,N)
set(gca,'Color',bgcolor);
hold on;
p=struct('x',0,'y',0);
plot(p.x,p.y,'o','MarkerFaceColor','y','MarkerSize',10);

for iteration=1:N
    i=rand;
    if i<0.01
        p.x=0;
        p.y=0.16*p.y;
    elseif i<0.86
        p.x=0.85*p.x+0.04*p.y;
        p.y=-0.04*p.x+0.85*p.y+1.6;
    elseif i<0.93
        p.x=0.2*p.x-0.26*p.y;
        p.y=0.23*p.x+0.22*p.y+1.6;
    else
        p.x=-0.15*p.x+0.28*p.y;
        p.y=0.26*p.x+0.24*p.y+0.44;
    end
    plot(p.x,p.y,'.','Color',color);
    nbiterations=iteration;
    title(['nb of iterations = ',num2str(iteration)]);
    if animation==1
        pause(1/speed);
    end
end
hold off;
end