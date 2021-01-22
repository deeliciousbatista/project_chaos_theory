function out = lorenz(t,in)

x=in(1);
y=in(2);
z=in(3);

b=8/3;
r=28;
sigma=10;

xdot=sigma*(y-x);
ydot=r*x-y-x*z;
zdot=x*y-b*z;

out=[xdot ydot zdot]';