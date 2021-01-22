[t,y] = ode45(@lorenz,[0 1000],[0 1 0],odeset('reltol',1e-6, 'abstol', 1e-9));

title('Lorenz system')
xlabel('x')
ylabel('y')
zlabel('z')
hold on
b=8/3;
r=28;
sigma=10;
plot3(sqrt(b*(r-1)),sqrt(b*(r-1)),r-1,'r*') 
plot3(-sqrt(b*(r-1)),-sqrt(b*(r-1)),r-1,'r*') 
plot3(0,0,0,'r*')

curve=animatedline;

grid on
for i=1:length(y(:,1))
    addpoints(curve,y(i,1),y(i,2),y(i,3))
    drawnow
end