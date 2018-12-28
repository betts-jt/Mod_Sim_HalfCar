clear all
close all
SetCoefficients
%% Body displacement Tests
a=0;
[a, b] = sim('BodyModel');
figure(1)
plot(a,b(:,1))
xlabel('Time, s')
ylabel('Displacement, m')


figure(2)
plot(a,b(:,2))
xlabel('Time, s')
ylabel('Velocity, m/s')

a=1;
[a, b] = sim('BodyModel');

figure(3)
plot(a,b(:,1))
xlabel('Time, s')
ylabel('Displacement, m')


figure(4)
plot(a,b(:,2))
xlabel('Time, s')
ylabel('Velocity, m/s')

clear a b BodyDisplacement BodyVelocity
%% Suspention model tests
s2 = 1; s2d = 0; s1 = 0; s1d = 0;
[a] = sim('SuspentionModel');
figure(5)
plot(a,SusForce.signals.values)
xlabel('Time, s')
ylabel('Force, N')

s2 = 0; s2d = 1; s1 = 0; s1d = 0;
[a] = sim('SuspentionModel');
figure(6)
plot(a,SusForce.signals.values)
xlabel('Time, s')
ylabel('Force, N')

s2 = 0; s2d = 0; s1 = 1; s1d = 0;
[a] = sim('SuspentionModel');
figure(7)
plot(a,SusForce.signals.values)
xlabel('Time, s')
ylabel('Force, N')

s2 = 0; s2d = 0; s1 = 0; s1d = 1;
[a] = sim('SuspentionModel');
figure(8)
plot(a,SusForce.signals.values)
xlabel('Time, s')
ylabel('Force, N')

clear s2 s2d s1 s1d SusForce

%% Wheel Model Tests
kt = 0;

k=0;
Fs = 0;
[a] = sim('WheelModel');

figure(9)
plot(a,WheelDisp.signals.values)
xlabel('Time, s')
ylabel('Displacement, m')

figure(10)
plot(a,WheelVel.signals.values)
xlabel('Time, s')
ylabel('Velocity, m/s')

Fs = -m2*g;
[a] = sim('WheelModel');

figure(11)
plot(a,WheelDisp.signals.values)
xlabel('Time, s')
ylabel('Displacement, m')
axis([0 a(end) -0.000001 0.000001])

figure(12)
plot(a,WheelVel.signals.values)
xlabel('Time, s')
ylabel('Velocity, m/s')
axis([0 a(end) -0.000001 0.000001])

% For these graphs set the  time to 0.5s to get a clear graph. Also in
% these the saturatuion block has been removes to avoid the value
% constantly rising

kt = 14e4;
Fs = 0;
g=0;
k=1;
[a] = sim('WheelModel');

figure(13)
plot(a,WheelDisp.signals.values)
xlabel('Time, s')
ylabel('Force, N')
xlabel('Time, s')
ylabel('Displacement, m')

figure(14)
plot(a,WheelVel.signals.values)
xlabel('Time, s')
ylabel('Force, N')
xlabel('Time, s')
ylabel('Velocity, m/s')

clear WheelDisp WheelVel Fs k a g

%% Quarter car model tests
clear 
SetCoefficients

k=0;
[a] = sim('QuaterCar_Model');

figure(15)
hold on
grid on
plot(a,WheelDisp.signals.values)
xlabel('Time, s')
ylabel('Displacement, m')

figure(16)
hold on
grid on
plot(a,WheelVel.signals.values)
xlabel('Time, s')
ylabel('Velocity, m/s')

figure(17)
hold on
grid on
plot(a,BodyDisp.signals.values)
xlabel('Time, s')
ylabel('Displacement, m')

figure(18)
hold on
grid on
plot(a,BodyVel.signals.values)
xlabel('Time, s')
ylabel('Velocity, m/s')

clear all
SetCoefficients
ks = 1e6;
cs=1e10;
g=0;
k=1;
[a] = sim('QuaterCar_Model');

figure(19)
hold on
grid on
plot(a,WheelDisp.signals.values)
xlabel('Time, s')
ylabel('Displacement, m')

figure(20)
hold on
grid on
plot(a,BodyDisp.signals.values)
xlabel('Time, s')
ylabel('Displacement, m')

