function [] = vehicleEnduranceFuel()
%setting the parameters of the equation that are always contant
    thermalEfficiency = 0.25;
    gasEnergy = 8.8;
    enginePower = 298;
    %created the array of y elements for the plot
    fuelCapArray = [25 : 100];
    %created the empty array that will have values added to it after they
    %are solved for inside the for loop below
    enduranceArray = zeros(1,76);
    
    for i = (1:76)
        fuelFlow = enginePower / (gasEnergy*thermalEfficiency);
        endurance = fuelCapArray(1,i) / fuelFlow; 
            for j = (1:76)
                enduranceArray(1,i) = endurance;
            end 
             
    end 
    plot(fuelCapArray,enduranceArray);
    title('Fuel Capacity vs. Endurance');
    xlabel('Fuel Capacity');
    ylabel('Endurance');
    xlim([25,100]);
    
end