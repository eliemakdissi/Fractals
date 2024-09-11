figure;
set(gca,'Color','k');
hold on;
% nbiterations=chaos(1500,4,'c');
% nbiterations=restrictedchaos1(2500,5,0.5);
%nbiterations=restrictedchaos2(1000,4,0.5);
%nbiterations=restrictedchaos3(2000,4,0.5);
%nbiterations=restrictedchaos4(3000,5,0.5);
% nbiterations=vicsekfractal(1500,5,0.6666666666666666666667);
% nbiterations=sierpinskicarpet(2500,4,0.6666666666666666666667);
%nbiterations=barnsleyfern(3000);
%nbiterations=chaos3d(3000,5);
%nbiterations=mengersponge(3000);

%----------------------Tree Forest-----------------------
% trunk1=[0 0;0 1];
% trunk2=[3 3;0 1];
% trunk3=[1.5 1.5;2 3];
% theta=45;
% r=0.57;
% h1=line(trunk1(1,:),trunk1(2,:),'Color',[0.6 0.2 0]);
% %delete(h);
% tree(trunk1,r,theta,[0.6 0.2 0],8);
% h2=line(trunk2(1,:),trunk2(2,:),'Color',[0.6 0.2 0]);
% tree(trunk2,r,theta,[0.6 0.2 0],8);
% h3=line(trunk3(1,:),trunk3(2,:),'Color',[0.6 0.2 0]);
% tree(trunk3,r,theta,[0.6 0.2 0],8);
%-------------------------------------------------------

%----------------Heighway Dragon (Dragon Curve)---------
% trunk=[0 3;0 3];
% trunk1=[6 3;0 3];
% theta=45;
% r=0.7;
% h=line(trunk(1,:),trunk(2,:),'Color','k');
% delete(h);
% 
% dragoncurve(trunk,r,theta,'red',10);
% dragoncurve(trunk1,r,theta,'blue',10);
%-------------------------------------------------------

%----------------Lévy C Curve (Lévy Dragon)-------------
% trunk = [0 0;0 1];
% theta=45;
% r=1/sqrt(2);
% xlabel(['r=',num2str(r),'   ' ,'\theta=',num2str(theta),'^o']);
% h=line(trunk(1,:),trunk(2,:),'Color','k');
% delete(h);
% 
% levycurve(trunk,r,theta,'red',13);
% levycurve(trunk,r,-theta,'red',13);
%-------------------------------------------------------

%----------------Outside Lévy Tapestry------------------
% trunk = [0 0;0 1];
% trunk1 = [0 -1;0 0];
% trunk2 = [0 0;0 -1];
% trunk3 = [0 1;0 0];
% theta=45;
% r=1/sqrt(2);
% xlabel(['r=',num2str(r),'   ' ,'\theta=',num2str(theta),'^o']);
% 
% h=line(trunk(1,:),trunk(2,:),'Color','k');
% delete(h);
% levycurve(trunk,r,theta,'red',10);
% levycurve(trunk,r,-theta,'blue',10);
% 
% h1=line(trunk1(1,:),trunk1(2,:),'Color','k');
% delete(h1);
% levycurve(trunk1,r,theta,'red',10);
% levycurve(trunk1,r,-theta,'blue',10);
% 
% h2=line(trunk2(1,:),trunk2(2,:),'Color','k');
% delete(h2);
% levycurve(trunk2,r,theta,'red',10);
% levycurve(trunk2,r,-theta,'blue',10);
% 
% h3=line(trunk3(1,:),trunk3(2,:),'Color','k');
% delete(h3);
% levycurve(trunk3,r,theta,'red',10);
% levycurve(trunk3,r,-theta,'blue',10);
%-------------------------------------------------------

%----------------Inside Lévy Tapestry------------------
% trunk = [-2 -1;0 0];
% trunk1 = [2 1;0 0];
% trunk2 = [0 0;2 1];
% trunk3 = [0 0;-2 -1];
% theta=45;
% r=1/sqrt(2);
% xlabel(['r=',num2str(r),'   ' ,'\theta=',num2str(theta),'^o']);
% 
% h=line(trunk(1,:),trunk(2,:),'Color','k');
% delete(h);
% levycurve(trunk,r,theta,'blue',12);
% levycurve(trunk,r,-theta,'blue',12);
% 
% h1=line(trunk1(1,:),trunk1(2,:),'Color','k');
% delete(h1);
% levycurve(trunk1,r,theta,'green',12);
% levycurve(trunk1,r,-theta,'green',12);
% 
% h2=line(trunk2(1,:),trunk2(2,:),'Color','k');
% delete(h2);
% levycurve(trunk2,r,theta,'yellow',12);
% levycurve(trunk2,r,-theta,'yellow',12);
% 
% h3=line(trunk3(1,:),trunk3(2,:),'Color','k');
% delete(h3);
% levycurve(trunk3,r,theta,'red',12);
% levycurve(trunk3,r,-theta,'red',12);
%-------------------------------------------------------



%----------------Pythagorean Tree-----------------------
trunk=[0,0 ; 1,0 ; 1,1 ; 0,1 ; 0,0]';
theta=45;
plot(trunk(1,:), trunk(2,:),'Color',[0.6 0.2 0]);
pythagoreantree(trunk,theta,[0.6 0.2 0],10);
%-------------------------------------------------------

%---------------------H Tree----------------------------
% trunk=[0 1;0 0];
% theta=90;
% r=1/sqrt(2);
% h=line(trunk(1,:),trunk(2,:),'Color','k');
% tree(trunk,r,theta,[0.6 0.2 0],10);
%-------------------------------------------------------

%----------------Koch Snowflake-------------------------
% theta=60;
% r=1/3;
% trunk1=[1 0;0 0];
% h1=line(trunk1(1,:),trunk1(2,:),'Color','r');
% delete(h1);
% kochcurve(trunk1,r,theta,'r',5);
% 
% trunk2=[0 0.5;0 sqrt(3)/2];
% h2=line(trunk2(1,:),trunk2(2,:),'Color','b');
% delete(h2);
% kochcurve(trunk2,r,theta,'b',5);
% 
% trunk3=[0.5 1;sqrt(3)/2 0];
% h3=line(trunk3(1,:),trunk3(2,:),'Color','g');
% delete(h3);
% kochcurve(trunk3,r,theta,'g',5);
%-------------------------------------------------------

%----------------Koch AntiSnowflake---------------------
% theta=-60;
% r=1/3;
% trunk1=[0 1;0 0];
% h1=line(trunk1(1,:),trunk1(2,:),'Color','k');
% delete(h1);
% kochcurve(trunk1,r,theta,'k',5);
% 
% trunk2=[0.5 0;-sqrt(3)/2 0];
% h2=line(trunk2(1,:),trunk2(2,:),'Color','k');
% delete(h2);
% kochcurve(trunk2,r,theta,'k',5);
% 
% trunk3=[1 0.5;0 -sqrt(3)/2];
% h3=line(trunk3(1,:),trunk3(2,:),'Color','k');
% delete(h3);
% kochcurve(trunk3,r,theta,'k',5);
%-------------------------------------------------------

%----------------Cesàro Fractal-------------------------
% theta=85;
% r=0.46;
% trunk=[0 1;0 0];
% h=line(trunk(1,:),trunk(2,:),'Color','k');
% delete(h);
% kochcurve(trunk,r,theta,'k',8);
%-------------------------------------------------------

%----------------Apollonian Gasket----------------------
% hold on;
% zc=apollonian(0,0,1,5,90,'r');
% xp=zc(1,1); yp=zc(1,2);
% 
% apollonianIFS1(xp,yp,zc,5,5000);
% hold off;
%-------------------------------------------------------

%----------------De Rham Curve--------------------------
% alpha=0.5;
% beta=1;
% delta=-0.5;
% epsilon=0;
% zeta=0.5;
% eta=0;
% N=1000000;
% deRham(alpha,beta,delta,epsilon,eta,zeta,N);
%-------------------------------------------------------

%-----------------Peano curve---------------------------
% peanocurve1(5);
%-------------------------------------------------------