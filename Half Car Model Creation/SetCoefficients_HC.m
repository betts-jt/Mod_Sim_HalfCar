% SetCoefficients_HC.m
%   Sets the values for the coefficients and masses needed for the simulink
%   Half car model

clear

%% 1/2 Car coefficients

I = 600; % Second moment of area of 1/2 car. kg/m^2
mbh = 500; % Mass of 1/2 car. kg
a = 1.25; % Distance of front wheel from 1/4 car center of mass. m
b = 1.4; % Distance of rear wheel from 1/4 car center of mass. m

v = 1; % Car speed. m/s

% Check if speed = 0 to avoid an infinate delay
if v == 0
    delay = 0;
else
    delay = (a+b)/v;
end

%% 1/4 car coeffcients
% Masses
m1 = mbh/2; % 1/4 body mass. kg
m2 = 20; % Tyre mass. kg

% Spring Coefficients
ks = 2e4; % Suspention stiffness. N/m
ksstiff = 20*ks; % Hardened supention spring stiffness. N/n
kt = 14e4; % Tyre Stiffness. N/m

x1 = 0.2; % Extention at which the spring stiffness increases. m 
x2 = 0.5; % Limit extention for spring look up table. m

%Damping Coefficients
csc = 600; % Suspention Damping Compression. Ns/m
cse = 1200; % Suspention Damping Extention. N/m

%Universal Coefficients
g = 9.81; % Acceleration due to gravity. m/s^2


%% Coeficients used for Sine wave test road
amplitude = 0.01; % Amplitude of road surface. m
lambda = 1; % Wave length of road. m

Period = lambda/v; % Period of sine wave. s
Fre = 1/Period; % Frequency of sine wave. Hz
Fre_r = Fre*2*pi; % Frequency of sine wave. Hrad/s