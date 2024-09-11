function z=browniantree1(speed,animation,field,particles,xmax,ymax,bgcolor,color)
figure;
axis equal;
set(gca,'Color',bgcolor);
xlim([0 field]);
ylim([0 field]);
hold on;
nField = field;
nParticles = particles;
x0=nField/2;
y0=nField/2;

pmat= false(nField);
pmat(round(nField/2),round(nField/2)) = true;

plot(nField/2,nField/2,'r.');
pt = struct('x',1,'y',1);
newpt = struct('x',1,'y',1);

if xmax==3 || ymax==3
    xx=2;
    yy=2;
elseif xmax==5 || ymax==5
    xx=3;
    yy=3;
elseif xmax==7 || ymax==7
    xx=4;
    yy=4;
else
    xx=xmax-4;
    yy=ymax-4;
end

for i=1:nParticles
    pt.x = x0 + randi([0,nField],1,1)-nField/2;
    pt.y = y0 + randi([0,nField],1,1)-nField/2;
    while true
        newpt.x = pt.x + randi([1,xmax],1,1)-xx;
        newpt.y = pt.y + randi([1,ymax],1,1)-yy;
        if newpt.x>nField || newpt.x<1 || newpt.y>nField || newpt.y<1
            pt.x = x0 + randi([0,nField],1,1)-nField/2;
            pt.y = y0 + randi([0,nField],1,1)-nField/2;
        elseif pmat(newpt.y,newpt.x)~=0
            pmat(pt.y,pt.x) = true;
            plot(pt.x,pt.y,'.','Color',color);
            if animation==1
                pause(1/speed);
            end
            break;
        else
            pt = newpt;
        end
    end
end
hold off;
end
