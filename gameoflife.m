function z=gameoflife(nbiterations,p,N)
A = zeros(N+2, N+2);
imagesc(A); colormap("gray");
hold on;
zoom on;
while 0<1
    [x,y,b] = ginput(1); 
    if isempty(b) 
        break;
    elseif b==2 %middle(wheel) click with mouse
        ax = axis; width=ax(2)-ax(1); height=ax(4)-ax(3);
        axis([x-width/2 x+width/2 y-height/2 y+height/2]);
        zoom(1/2);
    elseif b==3 %right click with mouse
        ax = axis; width=ax(2)-ax(1); height=ax(4)-ax(3);
        axis([x-width/2 x+width/2 y-height/2 y+height/2]);
        zoom(2);  
    elseif b==1 %left click with mouse
        x = round(x); y = round(y);
        A(y, x) = 1;
        imagesc(A);
    elseif b==32
        x = round(x); y = round(y);
        A(y, x) = 0;
        imagesc(A);
    else 
        break;
    end
end
G = A;
imagesc(G);
for i = 1:nbiterations
    A = zeros(N+2, N+2);
    for j = 2:N+1
       for k = 2:N+1
           n = G(j-1, k-1)+G(j-1, k+1)+G(j+1, k-1)+G(j+1, k+1)+G(j-1, k)+G(j, k-1)+G(j, k+1)+G(j+1, k);
           if (G(j, k)== 1) && ((n < 2) || (n > 3))
               A(j, k) = 0;
           elseif (G(j, k)== 1) && ((n == 2) || (n == 3))
               A(j, k) = 1;
           elseif (G(j, k)== 0) && (n == 3)
               A(j, k) = 1;
           end
       end
    end
    G = A;
    pause(1/p);
    imagesc(G);
    drawnow;
end
end