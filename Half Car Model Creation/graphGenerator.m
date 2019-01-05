clear all
close all
SetCoefficients
[a] = sim('HalfCar_Model');

figure(1)
plot(a,WheelDisp.signals.values, 'r')
xlabel('Time (s)')
ylabel('Pitch (Rad/s)')


set(figure(1),'Position',[10 10 1000 300])