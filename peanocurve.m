function z=peanocurve(speed,animation,bgcolor,color,x,N,n)
set(gca,'Color',bgcolor);
hold on;
s=size(x,2);
c=1/(2^N);
if x(2,2)>x(2,1)&&x(2,2)>x(2,3)
    offset1=[x(1,1);x(2,1)+c];
    offset2=[x(1,3);x(2,3)+c];
elseif x(2,2)<x(2,1)&&x(2,2)<x(2,3)
    offset1=[x(1,1);x(2,1)-c];
    offset2=[x(1,3);x(2,3)-c];
elseif x(1,2)>x(1,1)&&x(1,2)>x(1,3)
    offset1=[x(1,1)+c;x(2,1)];
    offset2=[x(1,3)+c;x(2,3)];
elseif x(1,2)<x(1,1)&&x(1,2)<x(1,3)
    offset1=[x(1,1)-c;x(2,1)];
    offset2=[x(1,3)-c;x(2,3)];
end

x1=[0 0.5;-0.5 0]*(x-x(:,1))+offset1;
h1=plot(x1(1,:),x1(2,:),'Color',color);
x2=[0.5 0;0 0.5]*(x-x(:,1))+offset1;
h2=plot(x2(1,:),x2(2,:),'Color',color);
x3=[0.5 0;0 0.5]*(x-x(:,s))+offset2;
h3=plot(x3(1,:),x3(2,:),'Color',color);
x4=[0 -0.5;0.5 0]*(x-x(:,s))+offset2;
h4=plot(x4(1,:),x4(2,:),'Color',color);

if n>1
    delete(h1);
    delete(h2);
    delete(h3);
    delete(h4);
    if animation==1
        pause(1/speed);
    end 
    peanocurve(speed,animation,bgcolor,color,x1,N+1,n-1);
    peanocurve(speed,animation,bgcolor,color,x2,N+1,n-1);
    peanocurve(speed,animation,bgcolor,color,x3,N+1,n-1);
    peanocurve(speed,animation,bgcolor,color,x4,N+1,n-1);
end
hold off;
end