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

%% Suspention model tests
figure(5)
