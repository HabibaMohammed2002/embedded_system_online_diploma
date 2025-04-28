dt=0.01
t=0:dt:10

real_speed=linspace(0,100/3.6,length(t))
%generates a linearly spaced vector from start to end using num_points elements.

noise=randn(size(t))
%generates a vector of random numbers the same size as t, drawn from a normal (Gaussian) distribution.

speed=real_speed+noise 

%% 
window_size=20
filtered_speed=movmean(speed,window_size)

figure;
plot(t,real_speed,'k--','LineWidth',2) ;hold on ;
plot(t,speed,'b--','LineWidth',1) ;hold on;
plot(t,filtered_speed,'r-','LineWidth',3) ;hold on ;

