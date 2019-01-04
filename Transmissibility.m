for v = 1:15
    sim('HalfCar_Model')
    [v_hump, delay] = setSpeed(v, a, b);
    COM_Disp_Offset = COM_Disp.signals.values - 0.142;
    transmissability = (RoadProfile.signals.values - COM_Disp_Offset)/RoadProfile.signals.values;
end