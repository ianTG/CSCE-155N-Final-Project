function [] = vehicleEnduranceAcc(cSubZero,cSubOne,cSubTwo,powerRange)

    %creating the array for values to be put in after being solved in for
    %loop
    efficiency = zeros(1,(powerRange(2)));
    %for loop is used to do the math and put the output into the array
    %created above
    enginePower = powerRange(1):0.1:powerRange(2);
    for i = 1:numel(enginePower)
        powerLoss = cSubZero + (cSubOne*(enginePower(i))) + (cSubTwo*(enginePower(i))^2);
        powerOut = (enginePower(i) - powerLoss);
        efficiency(i) = (powerOut / enginePower(i));
    end
    %uses the finsihed arrays to create a plot to make the curve
    plot(enginePower,efficiency);
    title('Efficiency vs. Power');
    xlabel('Power');
    ylabel('Efficiency');
    xlim([powerRange(1),powerRange(end)]);
    ylim([0 1]);
end