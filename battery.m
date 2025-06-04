c=2000
c_rate=2
initial_soc= 5
v=10
dt=1
t=0:dt:20

soc=initial_soc*ones(size(t) )
  state = "charging"

  

for i=(2:length(t))
    if (soc(i)>0  &&  soc(i)<100)
  switch state 
      case "charging"
          I=c_rate
          soc(i)=(soc(i-1)+(I/c)*100*dt)
       
      case "discharging " 
          i=-c_rate
          soc(i)=(soc(i-1)+(I/c)*100*dt)
       

  end 
  end
end 





figure;
plot (t,soc,'k-','LineWidth',3)

