function branch = randomtree3d(speed,animation,color1,color2,x,r,layer,level,layer1)
s=round(log(level))+9;
i=randi([2,s+1],1,1);
mu = r;
sigma = 0.5*r;
mu1 = 5;
sigma1 = 10/3;

for j=1:ceil(i/8)+1
    theta=mu1 + sigma1*randn;
    phi=mu1 + sigma1*randn;
    beta=mu1 + sigma1*randn;
    r= normrnd(mu, sigma);
    r= min(max(r, 0), 1);   
    x1=r*[cosd((j-1)*theta) -sind((j-1)*theta) 0 ; sind((j-1)*theta) cosd((j-1)*theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd((j-1)*phi) -sind((j-1)*phi) ; 0 sind((j-1)*phi) cosd((j-1)*phi)]*[cosd((j-1)*beta) 0 -sind((j-1)*beta) ; 0 1 0 ; sind((j-1)*beta) 0 cosd((j-1)*beta)]*[x-x(:,1)] + x(:,2);
    plot3(x1(1,:), x1(2,:), x1(3,:), 'Color',color1,'LineWidth',1/level+0.5);
    if layer>=2&&layer<=layer1-1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color2,color2,x1,r,layer-1,level+1,layer1);     
    elseif layer>1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color1,color2,x1,r,layer-1,level+1,layer1);  
    end
end
for j=1:ceil(i/8)+1
    theta=mu1 + sigma1*randn;
    phi=mu1 + sigma1*randn;
    beta=mu1 + sigma1*randn;
    r= normrnd(mu, sigma);
    r= min(max(r, 0), 1);   
    x1=r*[cosd((j-1)*theta) -sind((j-1)*theta) 0 ; sind((j-1)*theta) cosd((j-1)*theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd((j-1)*phi) -sind((j-1)*phi) ; 0 sind((j-1)*phi) cosd((j-1)*phi)]*[cosd((j-1)*beta) 0 sind((j-1)*beta) ; 0 1 0 ; -sind((j-1)*beta) 0 cosd((j-1)*beta)]*[x-x(:,1)] + x(:,2);
    plot3(x1(1,:), x1(2,:), x1(3,:), 'Color',color1,'LineWidth',1/level+0.5);
    if layer>=2&&layer<=layer1-1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color2,color2,x1,r,layer-1,level+1,layer1);     
    elseif layer>1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color1,color2,x1,r,layer-1,level+1,layer1);  
    end
end
for j=1:ceil(i/8)+1
    theta=mu1 + sigma1*randn;
    phi=mu1 + sigma1*randn;
    beta=mu1 + sigma1*randn;
    r= normrnd(mu, sigma);
    r= min(max(r, 0), 1);   
    x1=r*[cosd((j-1)*theta) -sind((j-1)*theta) 0 ; sind((j-1)*theta) cosd((j-1)*theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd((j-1)*phi) sind((j-1)*phi) ; 0 -sind((j-1)*phi) cosd((j-1)*phi)]*[cosd((j-1)*beta) 0 -sind((j-1)*beta) ; 0 1 0 ; sind((j-1)*beta) 0 cosd((j-1)*beta)]*[x-x(:,1)] + x(:,2);
    plot3(x1(1,:), x1(2,:), x1(3,:), 'Color',color1,'LineWidth',1/level+0.5);
    if layer>=2&&layer<=layer1-1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color2,color2,x1,r,layer-1,level+1,layer1);    
    elseif layer>1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color1,color2,x1,r,layer-1,level+1,layer1);  
    end
end
for j=1:ceil(i/8)+1
    theta=mu1 + sigma1*randn;
    phi=mu1 + sigma1*randn;
    beta=mu1 + sigma1*randn;
    r= normrnd(mu, sigma);
    r= min(max(r, 0), 1);   
    x1=r*[cosd((j-1)*theta) -sind((j-1)*theta) 0 ; sind((j-1)*theta) cosd((j-1)*theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd((j-1)*phi) sind((j-1)*phi) ; 0 -sind((j-1)*phi) cosd((j-1)*phi)]*[cosd((j-1)*beta) 0 sind((j-1)*beta) ; 0 1 0 ; -sind((j-1)*beta) 0 cosd((j-1)*beta)]*[x-x(:,1)] + x(:,2);
    plot3(x1(1,:), x1(2,:), x1(3,:), 'Color',color1,'LineWidth',1/level+0.5);
    if layer>=2&&layer<=layer1-1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color2,color2,x1,r,layer-1,level+1,layer1);    
    elseif layer>1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color1,color2,x1,r,layer-1,level+1,layer1);  
    end
end
for j=1:ceil(i/8)+1
    theta=mu1 + sigma1*randn;
    phi=mu1 + sigma1*randn;
    beta=mu1 + sigma1*randn;
    r= normrnd(mu, sigma);
    r= min(max(r, 0), 1);   
    x1=r*[cosd((j-1)*theta) sind((j-1)*theta) 0 ; -sind((j-1)*theta) cosd((j-1)*theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd((j-1)*phi) -sind((j-1)*phi) ; 0 sind((j-1)*phi) cosd((j-1)*phi)]*[cosd((j-1)*beta) 0 -sind((j-1)*beta) ; 0 1 0 ; sind((j-1)*beta) 0 cosd((j-1)*beta)]*[x-x(:,1)] + x(:,2);
    plot3(x1(1,:), x1(2,:), x1(3,:), 'Color',color1,'LineWidth',1/level+0.5);
    if layer>=2&&layer<=layer1-1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color2,color2,x1,r,layer-1,level+1,layer1);    
    elseif layer>1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color1,color2,x1,r,layer-1,level+1,layer1);  
    end
end
for j=1:ceil(i/8)+1
    theta=mu1 + sigma1*randn;
    phi=mu1 + sigma1*randn;
    beta=mu1 + sigma1*randn;
    r= normrnd(mu, sigma);
    r= min(max(r, 0), 1);   
    x1=r*[cosd((j-1)*theta) sind((j-1)*theta) 0 ; -sind((j-1)*theta) cosd((j-1)*theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd((j-1)*phi) -sind((j-1)*phi) ; 0 sind((j-1)*phi) cosd((j-1)*phi)]*[cosd((j-1)*beta) 0 sind((j-1)*beta) ; 0 1 0 ; -sind((j-1)*beta) 0 cosd((j-1)*beta)]*[x-x(:,1)] + x(:,2);
    plot3(x1(1,:), x1(2,:), x1(3,:), 'Color',color1,'LineWidth',1/level+0.5);
    if layer>=2&&layer<=layer1-1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color2,color2,x1,r,layer-1,level+1,layer1);     
    elseif layer>1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color1,color2,x1,r,layer-1,level+1,layer1); 
    end
end
for j=1:ceil(i/8)+1
    theta=mu1 + sigma1*randn;
    phi=mu1 + sigma1*randn;
    beta=mu1 + sigma1*randn;
    r= normrnd(mu, sigma);
    r= min(max(r, 0), 1);   
    x1=r*[cosd((j-1)*theta) sind((j-1)*theta) 0 ; -sind((j-1)*theta) cosd((j-1)*theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd((j-1)*phi) sind((j-1)*phi) ; 0 -sind((j-1)*phi) cosd((j-1)*phi)]*[cosd((j-1)*beta) 0 -sind((j-1)*beta) ; 0 1 0 ; sind((j-1)*beta) 0 cosd((j-1)*beta)]*[x-x(:,1)] + x(:,2);
    plot3(x1(1,:), x1(2,:), x1(3,:), 'Color',color1,'LineWidth',1/level+0.5);
    if layer>=2&&layer<=layer1-1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color2,color2,x1,r,layer-1,level+1,layer1);    
    elseif layer>1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color1,color2,x1,r,layer-1,level+1,layer1);  
    end
end
for j=1:ceil(i/8)+1
    theta=mu1 + sigma1*randn;
    phi=mu1 + sigma1*randn;
    beta=mu1 + sigma1*randn;
    r= normrnd(mu, sigma);
    r= min(max(r, 0), 1);   
    x1=r*[cosd((j-1)*theta) sind((j-1)*theta) 0 ; -sind((j-1)*theta) cosd((j-1)*theta) 0 ; 0 0 1]*[1 0 0 ; 0 cosd((j-1)*phi) sind((j-1)*phi) ; 0 -sind((j-1)*phi) cosd((j-1)*phi)]*[cosd((j-1)*beta) 0 sind((j-1)*beta) ; 0 1 0 ; -sind((j-1)*beta) 0 cosd((j-1)*beta)]*[x-x(:,1)] + x(:,2);
    plot3(x1(1,:), x1(2,:), x1(3,:), 'Color',color1,'LineWidth',1/level+0.5);
    if layer>=2&&layer<=layer1-1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color2,color2,x1,r,layer-1,level+1,layer1);     
    elseif layer>1
        if animation==1
            pause(1/speed);
        end
        randomtree3d(speed,animation,color1,color2,x1,r,layer-1,level+1,layer1);  
    end
end
end
%theta=Z rotation; phi=X rotation; beta=Y rotation