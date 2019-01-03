function [v , v_hump, delay] = setSpeed(v, a, b)
% This function is used to set the various parameters needed for the car
% model in simulink that relate to the speed of the car.
%   Where;
%   v = Car speed. m/s
%   a = distance from COM to front wheel. m
%   b = distance of COM from rear wheel. m
%   v_hump = speed for humpback road profile. m/s
%   delay = delay for rear road input

%% Set delay for rear wheel road input
% Check if speed = 0 to avoid an infinate delay
if v == 0
    delay = 0;
else
    delay = (a+b)/v;
end

%% Set Speed for humpbakc road profile
% Check if speed = 0 and adjust the humpback road speed to allow it to run
% as it cannot be 0
if v == 0
    v_hump = 0.001; % Set speed for humbback road profile to be very small non zero.
else
    v_hump = v; % Set speed for humpback road profile to be the car speed
end

end
