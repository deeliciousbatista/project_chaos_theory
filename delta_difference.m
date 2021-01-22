pert=1;

[t,q] = ode45(@lorenz,[0 100],[0 1 0],odeset('reltol',1e-6, 'abstol', 1e-9));
[t,r] = ode45(@lorenz,[0 100],[1 0 1],odeset('reltol',1e-6, 'abstol', 1e-9));

for i=1:length(q)
    s(i)=norm(q(i)-r(i));
end

time_frame=1:500;
plot(time_frame,log(s(time_frame)))