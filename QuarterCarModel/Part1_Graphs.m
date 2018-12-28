%% Body displacement Tests
[a, b] = sim('BodyModel');
figure(1)
plot(a,b(:,1))
xlabel('Time, s')
ylabel('Displacement, m')

figure(2)
plot(a,b(:,2))
xlabel('Time, s')
ylabel('Velocity, m/s')

