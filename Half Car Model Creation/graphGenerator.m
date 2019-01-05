clear all
SetCoefficients_HC
[a] = sim('HalfCar_BodyModel');

figure(1)
plot(a,PitchVel.signals.values, 'r')
xlabel('Time (s)')
ylabel('Pitch (Rad/s)')


set(figure(1),'Position',[10 10 1000 300])