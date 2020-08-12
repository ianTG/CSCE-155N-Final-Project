function [] = vehicleEnduranceFuel(thermalEfficiency, gasEnergy, enginePower,fuelCapArray )

    %created the array of y elements for the plot
    %fuelCapArray = [25 : 100];
    %created the empty array that will have values added to it after they
    %are solved for inside the for loop below
    enduranceArray = zeros(1,numel(fuelCapArray));
    
    for i = (1:numel(fuelCapArray))
        fuelFlow = enginePower / (gasEnergy*thermalEfficiency);
        endurance = fuelCapArray(1,i) / fuelFlow; 
            for j = (1:numel(fuelCapArray))
                enduranceArray(1,i) = endurance;
            end 
             
    end 
    plot(fuelCapArray,enduranceArray);
    title('Fuel Capacity vs. Endurance');
    xlabel('Fuel Capacity');
    ylabel('Endurance');
    xlim([fuelCapArray(1),fuelCapArray(end)]);
    
end