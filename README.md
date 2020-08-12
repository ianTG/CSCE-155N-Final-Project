# CSCE 155N Final Project
 **The final project for CSCE 155N done by Ian Gordon**


README Parameter Instructions: to return the same graphs produced as the figures

**Function vehicleEnduranceAcc** :  vehicleEnduranceAcc(.6,.02,.0015,[0 125])

-The .6,.02, and .0015 are the C subscript values that are used in the Power Loss equation that is then later used in the Power Output equation. The Power Output is used in the Efficiency Equation that is used in the plot. The [0 125] is the powerRange that is used to create poperly sized arrays for the for loop and xlim.

**Function vehicleEnduranceFuel** :  vehicleEnduranceFuel(.25,8.8,298,[25 100])

-The .25, 8.8, and 298 are values that are used in the Fuel Flow equation. This equation returns a value that is then used in finding the Endurance. The [25 100] are values that are being counted and used in the the Endurance equation as well. The Endurance equation is a single value in [25 100] divied by Fuel Flow.  