clear

%% Full Car coefficients
I_theta = 600; % moment of area of 1/2 car pitch. kg/m^2
I_phi = 1000; % moment of area of 1/2 car roll. kg/m^2
I = 600; %Moment of area used for half car model. kg/m^2

mb = 1000; % Mass of 1/2 car. kg
a = 1.25; % Distance of front wheel from 1/4 car center of mass. m
b = 1.4; % Distance of rear wheel from 1/4 car center of mass. m
s = 3; % Width of car. m
c = 1.3; % Distance of COM to left wheels. m
d = 1.7; % Distance of COM to right wheels. m

[v, v_hump, delay] = setSpeed(13, a, b); % Car speed. m/s

%% 1/4 car coeffcients
mbh = mb/2; % Half body mass. kg
m1 = mb/4; % 1/4 body mass. kg
m2 = 20; % Tyre mass. kg

ks = 2e4; % Suspention stiffness. N/m
ksstiff = 4e5; % Hardened supention spring stiffness. N/n
ksSteel = 6.6e9; % Steel stiffness of suspention bump stop

kt = 14e4; % Tyre Stiffness. N/m

csc = 600; % Suspention Damping Compression. Ns/m
cse = 1200; % Suspention Damping Extention. N/m

g = 9.81; % Acceler6ation due to gravity. m/s^2

x1 = 0.2; % Extention at which the spring stiffness increases. m 
x2 = 0.25; % maximum spring displacement either positive or negative. m

xt_Lim = 0.1; % Limit of tyre extention. m
%% Coeficients used for Sine wave test road
amplitude = 0.01; % Amplitude of road surface. m
lambda = 1; % Wave length of road. m

Period = lambda/v; % Period of sine wave. s
Fre = 1/Period; % Frequency of sine wave. Hz
Fre_r = Fre*2*pi; % Frequency of sine wave. Hrad/s

%% Coefficients used for hump back bridge
HumpHight = 2; % Height of humpback bridge. m*
HumpLegnth = 20; % Legnth of humback bridge. m


  sim('FullCar_Model')