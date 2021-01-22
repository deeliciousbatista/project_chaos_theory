[t,y] = ode45(@lorenz,[0 10000],[2 1 3],odeset('reltol',1e-6, 'abstol', 1e-9)); 
plot3(y(end-5000:end,1),y(end-5000:end,2),y(end-5000:end,3))

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