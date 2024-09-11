function z=snowflake(speed,animation,field,particles,xmax,ymax)
figure; axis equal;
hold on;
nField = field;
nParticles = particles;
theta=-60;
%see 'snowflake1' for POINTS representation; this 'snowflake' is for PIXELS representation

pmat= false(nField);
x0=nField/2;y0=nField/2;
pmat(floor(nField/2),floor(nField/2)) = true;
imagesc(pmat);colormap("gray");
plot(nField/2,nField/2,'r.');
pt = struct('x',1,'y',1);
newpt = struct('x',1,'y',1);
length2=nField/2;
length1=cosd(60)*length2/2;
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
%     pt.x = nField;
%     pt.y = nField/2;
    phi=0;
    pt.x = x0 + round(length2*cosd(phi));
    pt.y = y0 + round(length1*sind(phi));
    while true
        newpt.x = pt.x + randi([1,xmax],1,1)-xx ;%-1 or randi([1,2],1,1)-2;
        newpt.y = pt.y + randi([1,ymax],1,1)-yy;
%       z=angletest(newpt.x,newpt.y,nField);
        if newpt.x>nField || newpt.x<1 || newpt.y>nField || newpt.y<1
            phi=0;
            pt.x = x0 + round(length2*cosd(phi));
            pt.y = y0 + round(length1*sind(phi));
        elseif pmat(newpt.y,newpt.x)~=0
            pmat(pt.y,pt.x) = true;
            c=nField/2-(pt.y-nField/2);
            pmat(c,pt.x)=true;
            p1=[nField/2 pt.x;nField/2 pt.y];
            p2=[cosd(theta), -sind(theta); sind(theta), cosd(theta)]*(p1-p1(:,1))+p1(:,1);
            pmat(round(p2(2,2)),round(p2(1,2)))=true;
            p3=[nField/2 pt.x;nField/2 c];
            p4=[cosd(theta), -sind(theta); sind(theta), cosd(theta)]*(p3-p3(:,1))+p3(:,1);
            pmat(round(p4(2,2)),round(p4(1,2)))=true;

            p5=[cosd(theta), -sind(theta); sind(theta), cosd(theta)]*(p2-p2(:,1))+p2(:,1);
            pmat(round(p5(2,2)),round(p5(1,2)))=true;
            p6=[cosd(theta), -sind(theta); sind(theta), cosd(theta)]*(p4-p4(:,1))+p4(:,1);
            pmat(round(p6(2,2)),round(p6(1,2)))=true;

            p7=[cosd(theta), -sind(theta); sind(theta), cosd(theta)]*(p5-p5(:,1))+p5(:,1);
            if round(p7(1,2))>round(field/2) || round(p7(1,2))==0
                break;
            else
                pmat(round(p7(2,2)),round(p7(1,2)))=true;
            end
            p8=[cosd(theta), -sind(theta); sind(theta), cosd(theta)]*(p6-p6(:,1))+p6(:,1);
            pmat(round(p8(2,2)),round(p8(1,2)))=true;

            p9=[cosd(theta), -sind(theta); sind(theta), cosd(theta)]*(p7-p7(:,1))+p7(:,1);
            pmat(round(p9(2,2)),round(p9(1,2)))=true;
            p10=[cosd(theta), -sind(theta); sind(theta), cosd(theta)]*(p8-p8(:,1))+p8(:,1);
            pmat(round(p10(2,2)),round(p10(1,2)))=true;

            p11=[cosd(theta), -sind(theta); sind(theta), cosd(theta)]*(p9-p9(:,1))+p9(:,1);
            pmat(round(p11(2,2)),round(p11(1,2)))=true;
            p12=[cosd(theta), -sind(theta); sind(theta), cosd(theta)]*(p10-p10(:,1))+p10(:,1);
            pmat(round(p12(2,2)),round(p12(1,2)))=true;            
%           imagesc(pmat);
            imagesc(imrotate(pmat,90));
            plot(nField/2,nField/2,'r.');
            theta1 = linspace(0, 2*pi, 7);
            x1 = x0 + nField/2 * sin(theta1);
            y1 = y0 + nField/2 * cos(theta1);
            plot([x1, x1(1)], [y1, y1(1)], 'r-');
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
% either you can do imagesc(pmat) with pt.x=nField/2 and pt.y=nField and c=nField/2-(pt.x-nField/2);
% or you can do imagesc(imrotate(pmat,90)) with pt.x=nField and pt.y=nField/2 and c=nField/2-(pt.y-nField/2);
% the problem with pt.x=nField/2 and pt.y=nField was in randi([1,3],1,1)-2
% so I made it bigger to be randi([1,5],1,1)-3
% note that when you make the interval like randi([1,5],1,1)-3 and bigger, it'll be more like flower,
% if you want it to be more like the link stay at newpt.x = pt.x + randi([1,2],1,1)-2 and newpt.y = pt.y + randi([1,3],1,1)-2;
% also the problem was with nField=100 and nParticles=1000,
% so I made them bigger to be nField=200+ and nParticles=2000+

% z=angletest(newpt.x,newpt.y,nField);
% if newpt.x>nField || newpt.x<1 || newpt.y>nField || newpt.y<1 || z>pi/6 || z<0
%  works only if pt.x=nField and pt.y=nField/2 and newpt.x = pt.x + randi([1,2],1,1)-2 and newpt.y = pt.y + randi([1,3],1,1)-2 idk why