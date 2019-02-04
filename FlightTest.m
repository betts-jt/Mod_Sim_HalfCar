vtest = 9.9:0.01:11;

for k = 1:length(vtest)
    k
    [v_hump, delay, Period, Fre_r] = setSpeed(vtest(k), a, b, lambda);
    sim('HalfCar_Model')
    Flight = RearTyreFlight.signals.values.*FrontTyreFlight.signals.values;
    if max(Flight) == 1
        StartFlight = find(Flight, 1, 'first');
        EndFlight = find(Flight, 1, 'last');
        FlightTime = FrontTyreFlight.time(EndFlight)-FrontTyreFlight.time(StartFlight)
        if FlightTime > 0.4
            disp(num2str(vtest(k)))
            return
        end
    end
end