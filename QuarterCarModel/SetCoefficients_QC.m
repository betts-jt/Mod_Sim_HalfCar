% SetCoefficients_QC.m
%   Sets the values for the coefficients and masses needed for the simulink
%   quarter car model

clear

% Masses
m1 = mb/2; % 1/4 body mass. kg
m2 = 20; % Tyre mass. kg

% Spring Coefficients
ks = 2e4; % Suspension stiffness. N/m
ksstiff = 20*ks; % Hardened supention spring stiffness. N/n
kt = 14e4; % Tyre Stiffness. N/m

x1 = 0.2; % Extention at which the spring stiffness increases. m 
x2 = 0.5; % Limit extention for spring look up table. m

%Damping Coefficients
c = 600; % Suspension coefficients for constant damping case. Ns/m
csc = 600; % Suspension Damping Compression. Ns/m
cse = 1200; % Suspension Damping Extention. Ns/m

%Universal Coefficients
g = 9.81; % Acceleration due to gravity. m/s^2



