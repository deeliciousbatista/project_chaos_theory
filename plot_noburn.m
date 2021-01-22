[t,y]=ode45(@lorenz,[0 100],[0 1 0]); 
plot3(y(:,1),y(:,2),y(:,3))

title('') 
xlabel('x') 
ylabel('y') 
zlabel('z') 
grid
hold on

b=8/3;
r=28;
sigma=10;

plot3(sqrt(b*(r-1)),sqrt(b*(r-1)),r-1,'r*') 
plot3(-sqrt(b*(r-1)),-sqrt(b*(r-1)),r-1,'r*') 
plot3(0,0,0,'r*')