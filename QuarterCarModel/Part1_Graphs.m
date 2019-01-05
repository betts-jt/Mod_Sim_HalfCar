clear all
close all
SetCoefficients_QC
%% Body displacement Tests
a=0;
[a, b] = sim('BodyModel');
figure(1)
hold on
grid on
plot(a,b(:,1), 'r')
xlabel('Time, s')
ylabel('Displacement, m')
set(figure(1),'Position',[10 10 1000 300])


figure(2)
hold on
grid on
plot(a,b(:,2))
xlabel('Time, s')
ylabel('Velocity, m/s')
set(figure(2),'Position',[10 10 1000 300])

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
plot(a,WheelDisp.signals.values, 'r')
xlabel('Time (s)')
ylabel('Displacement (m)')
set(figure(9),'Position',[10 10 1000 300])

figure(10)
plot(a,WheelVel.signals.values)
xlabel('Time (s)')
ylabel('Velocity (m/s)')
set(figure(10),'Position',[10 10 1000 300])

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
hold on
grid on
plot(a,WheelDisp.signals.values, 'r')
xlabel('Time, s')
ylabel('Force, N')
xlabel('Time, s')
ylabel('Displacement, m')
set(figure(13),'Position',[10 10 1000 300])

figure(14)
hold on
grid on
plot(a,WheelVel.signals.values)
xlabel('Time, s')
ylabel('Force, N')
xlabel('Time, s')
ylabel('Velocity, m/s')
set(figure(14),'Position',[10 10 1000 300])

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
plot(a,BodyDisp.signals.values, 'r--')
xlabel('Time, s')
ylabel('Displacement, m')
legend('Wheel','Body')

figure(16)
hold on
grid on
plot(a,WheelVel.signals.values)
xlabel('Time, s')
ylabel('Velocity, m/s')

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

clear all
SetCoefficients
g=9.81;
ks= 1e8;
m2=20;
cs=10000;

[a] = sim('QuaterCar_Model');

figure(21)
hold on
grid on
plot(a,WheelDisp.signals.values)
plot(a,BodyDisp.signals.values, 'r--')
xlabel('Time, s')
ylabel('Displacement, m')

figure(22)
hold on
grid on
plot(a,BodyDisp.signals.values)
xlabel('Time, s')
ylabel('Displacement, m')

clear all
SetCoefficients_QC
g=0;
kt= 1e8;
m2=.1;
cs = 0;
cse=0;
csc=0;

[a] = sim('QuaterCar_Model');

figure(23)
hold on
grid on
plot(a,WheelDisp.signals.values)
xlabel('Time, s')
ylabel('Displacement, m')

figure(24)
hold on
grid on
plot(a,BodyDisp.signals.values)
xlabel('Time, s')
ylabel('Displacement, m')
