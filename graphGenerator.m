clear all
close all
SetCoefficients
[a] = sim('HalfCar_Model');

figure(1)
plot(a,FrontBodyDisp.signals.values, 'b')
plot(a,BodyDisp.signals.values, 'r')
plot(a,RearBodyDisp.signals.values, 'g')
xlabel('Time (s)')
ylabel('Displacement (m)')


set(figure(1),'Position',[10 10 1000 300])