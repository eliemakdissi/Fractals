function t=mandelbulb2(nbiterations,power,color,bgcolor)
figure
hold on;
set(gca, 'Color', bgcolor);
nb=nbiterations;
m=1;
p=zeros(3,1000);
for i=1:nb
    for j=1:nb
        edge=false;
        for k=1:nb
            x=map(i,0,nb,-2,2);
            y=map(j,0,nb,-2,2);
            z=map(k,0,nb,-2,2);
            
            n=power;
            maxiterations=200;
            iteration=0;
            z1x=x;
            z1y=y;
            z1z=z;
            while(true)
                r=(z1x*z1x+z1y*z1y+z1z*z1z)^(1/2);
                theta=atan2(sqrt(z1x*z1x+z1y*z1y),z1z);
                phi=atan2(z1y,z1x);

                znx=(r^n)*cos(n*theta)*cos(phi*n);
                zny=(r^n)*sin(n*theta)*sin(phi*n);
                znz=(r^n)*cos(n*theta);

%               Mandelbrot 3D (n=2)
%               znx=(r^n)*sin(theta)*cos(phi*n);
%               zny=(r^n)*sin(theta)*sin(phi*n);
%               znz=(r^n)*cos(theta);

                z1x=znx+x;
                z1y=zny+y;
                z1z=znz+z;
                iteration=iteration+1;                
                if r>16
                    if(edge)
                        edge=false;
                    end
                    break;
                end
                if iteration>maxiterations
                    if(~edge)
                        edge=true;
                        p(1,m)=x;
                        p(2,m)=y;
                        p(3,m)=z;
                        m=m+1;
                    end
                    break;
                end
            end
        end
    end
end

plot3(p(1,:),p(2,:),p(3,:),'.','Color',color);
hold off;
end