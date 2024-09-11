function z=peanocurve1(speed,animation,bgcolor,color,n)
hold on;
p1=[-0.5;-0.5]; p2=[0;0]; p3=[0.5;-0.5];
x=[p1,p2,p3];
peanocurve(speed,animation,bgcolor,color,x,1,n);
hold off;
end