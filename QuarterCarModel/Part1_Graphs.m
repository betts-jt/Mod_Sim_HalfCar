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

clear a
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
