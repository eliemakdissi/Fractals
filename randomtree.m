function branch = randomtree(speed,animation,color1,color2,x,r,layer,level,layer1)

s=round(log(level))+3;
i=randi([2,s+1],1,1);
mu = r;
sigma = 0.5*r;
mu1 = 5;
sigma1 = 10/3;
for j=1:i/2
    theta=mu1 + sigma1*randn;
    r= normrnd(mu, sigma);
    r= min(max(r, 0), 1);
    x1=r*[cosd((j-1)*theta) -sind((j-1)*theta) ; sind((j-1)*theta) cosd((j-1)*theta)]*[x-x(:,1)] + x(:,2);
    plot(x1(1,:),x1(2,:),'Color',color1,'LineWidth',1/level);
    if layer>=2&&layer<=layer1-1
%         c=[1 0 0 0.4+1/level];
        if animation==1
            pause(1/speed);
        end
        randomtree(speed,animation,color2,color2,x1,r,layer-1,level+1,layer1);
    elseif layer>1
%         c=[1 1 1 1];            
        if animation==1
            pause(1/speed);
        end
        randomtree(speed,animation,color1,color2,x1,r,layer-1,level+1,layer1);
    end
end
for k=1:ceil(i/2)+1
    theta=mu1 + sigma1*randn;
    r= normrnd(mu, sigma);
    r= min(max(r, 0), 1);        
    x1=r*[cosd((k-1)*theta) sind((k-1)*theta) ; -sind((k-1)*theta) cosd((k-1)*theta)]*[x-x(:,1)] + x(:,2);
    plot(x1(1,:),x1(2,:),'Color',color1,'LineWidth',1/level);
    if layer>=2&&layer<=layer1-1
%         c=[1 0 0 0.4+1/level];
        if animation==1
            pause(1/speed);
        end
        randomtree(speed,animation,color2,color2,x1,r,layer-1,level+1,layer1);
    elseif layer>1
%         c=[1 1 1 1];            
        if animation==1
            pause(1/speed);
        end
        randomtree(speed,animation,color1,color2,x1,r,layer-1,level+1,layer1);
    end
end

end
