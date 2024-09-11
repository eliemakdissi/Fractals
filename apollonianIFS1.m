function z=apollonianIFS1(speed,animation,color2,x,y,zc,n,nbiterations)
xp=x; yp=y;
i=randi(n+1);
hold on;
for j=1:n+1
    if i==j
        op1=[zc(i+1,1) xp; zc(i+1,2) yp];
        length_op1=sqrt((zc(i+1,1)-xp)^2 +(zc(i+1,2)-yp)^2);
        f1=(zc(i+1,3)/length_op1)^2;
        op=f1*(op1-op1(:,1))+op1(:,1);
        pp1=[op(1,2) xp; op(2,2) yp];
        plot(op(1,2),op(2,2),'.','Color',color2);
        if animation==1
            pause(1/speed);
        end  
        %plot(pp1(1,:),pp1(2,:),'r');
    end
end
if nbiterations>1
    apollonianIFS1(speed,animation,color2,op(1,2),op(2,2),zc,n,nbiterations-1);
end
hold off;
end