function [] = vehicleEnduranceAcc()
    %setting the parameters for the equations of power and 
    cSubZero = 0.6;
    cSubOne = 0.02;
    cSubTwo = 0.0015;
    
    enginePower = [0:1:125];
    %creating the array for values to be put in after being solved in for
    %loop
    efficiencyArray = zeros(1,126);
    %for loop is used to do the math and put the output into the array
    %created above
    for i = (1:126)
        powerLoss = cSubZero + (cSubOne*(enginePower(:,i))) + (cSubTwo*(enginePower(:,i))^ 2);
        powerOut = (enginePower(:,i)) - powerLoss;
        efficiency = powerOut / (enginePower(:,i));
            for j = (1:126)
                efficiencyArray(1,i) = efficiency;
            end
        
    end
    %uses the finsihed arrays to create a plot to make the curve
    plot(enginePower,efficiencyArray);
    title('Efficiency vs. Power');
    xlabel('Power');
    ylabel('Efficiency');
    xlim([0,125]);
end