clear all
close all
SetCoefficients
[h] = sim('HalfCar_Model');

figure(1)
hold on
grid on
plot(Displacements.time,Displacements.signals(1).values, 'b')
plot(Displacements.time,Displacements.signals(2).values, 'r')
plot(Displacements.time,Displacements.signals(3).values, 'g')
plot(Displacements.time,Displacements.signals(4).values, 'm')
plot(Displacements.time,Displacements.signals(5).values, 'k--')
xlabel('Time (s)')
ylabel('Displacement (m)')
legend('Front Left','Front Right','Rear Left','Rear Right','COM')

set(figure(1),'Position',[10 10 1000 300])

figure(2)
hold on
grid on
plot(RollAngle.time,RollAngle.signals.values, 'b')
plot(RollAngle.time,PitchAngle.signals.values, 'r')
xlabel('Time (s)')
ylabel('Angle (Rad)')
legend('Pitch','Roll')

set(figure(2),'Position',[10 10 1000 300])

figure(3)
hold on
grid on
plot(FrontTyreFlight.time, FrontBodyDisp.signals.values, 'r')
plot(FrontTyreFlight.time, BodyDisp.signals.values, 'b')
plot(FrontTyreFlight.time, RearBodyDisp.signals.values, 'g')
plot(FrontTyreFlight.time, RoadProfile.signals.values, 'k--')
xlabel('Time (s)')
ylabel('Displacement (m)')
legend('Front','COM','Rear','Road Profile')

set(figure(3),'Position',[10 10 1000 300])



%% Transmissability not Transmissability
MaxTestVelocity = 30;
TimeStep =0.5;
InitialTestVelocity = 0.1;
speedRange=InitialTestVelocity:TimeStep:MaxTestVelocity;
v = InitialTestVelocity;
for k= 1: numel(speedRange)
    [v_hump, delay, Period, Fre_r] = setSpeed(v,a,b, lambda);
    [h] = sim('HalfCar_Model');
    Displacement =COM_Disp.signals.values;
    Velocity = COM_Vel.signals.values;
    FrontVel = FrontVel.signals.values;
    RearVel = RearVel.signals.values
    
    Displacement = Displacement(length(h)/2:end);
    Velocity = Velocity(length(h)/2:end);
    FrontVel = FrontVel(length(h)/2:end);
    RearVel = RearVel(length(h)/2:end);
    
    MaxDisp = max(Displacement);
    MinDisp = min(Displacement);
    MaxVel = max(Velocity);
    MinVel = min(Velocity);
    MaxFrontVel = max(FrontVel);
    MinFrontVel = min(FrontVel);
    MaxRearVel = max(RearVel);
    MinRearVel = min(RearVel);
    
    DispAmp(k) = (MaxDisp-MinDisp)/2;
    VelAmp(k) = (MaxVel-MinVel)/2;
    FrontVelAmp(k) = (MaxFrontVel-MinFrontVel)/2;
    RearVelAmp(k) = (MaxRearVel-MinRearVel)/2;
    v = v+TimeStep;
    v
end

figure(1)
hold on
grid on
plot(speedRange,VelAmp)
plot(speedRange,FrontVelAmp)
plot(speedRange,RearVelAmp)
xlabel('Velocity (m/s)')
ylabel('Velocity Amplitude (m/s)')
legend('COM','Front','Rear')