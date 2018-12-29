clear

m1 = 250; % 1/4 body mass. kg
m2 = 20; % Tyre mass. kg

ks = 2e4; % Suspention stiffness. N/m
ksstiff = 20*ks; % Hardened supention spring stiffness. N/n
kt = 14e4; % Tyre Stiffness. N/m

csc = 600; % Suspention Damping Compression. Ns/m
cse = 1200; % Suspention Damping Extention. N/m

g = 9.81; % Acceleration due to gravity. m/s^2

x1 = 0.2; % Extention at which the spring stiffness increases. m 
x2 = 0.5; % Limit extention for spring look up table. m