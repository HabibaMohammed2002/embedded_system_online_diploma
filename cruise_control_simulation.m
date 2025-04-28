target_speed=100/3.6
vo=0
kp=10
mass=1000
tspan=[0 60]
vehicle_dynamics=@(t,v) (kp*(target_speed-v))/mass
[t,v]= ode45(vehicle_dynamics, tspan, vo)

figure;
plot(t,v,'k-','LineWidth',3)
xlabel('time')
ylabel('speed')
grid on ;
