%somewhere set the initial guess at source location
%Guess = [1,3,5];

function rv = hej(Guess,t1,t2,t3,t4)
%
% this is the function that returns the square deviations of the time 
% differences from a source at the Guess position and the measured 
% delays. This is what Marquart-Levenberg will work on.
%

% Locations of microphones
xyz = [0,2,2,0;
    0,0,2,2;
    0,0,0,0];

% Wave propagation velocity
v = 1482;

% Time delays of pair 1-2,1-3 and 1-4
Measured_delay = [0.00012,0.000104,0.000328];

% Ranges from assumed location to microphones:

Range_1 = sqrt((xyz(1,1)-Guess(1))^2 + (xyz(2,1)-Guess(2))^2 + (xyz(3,1)-Guess(3))^2);
Range_2 = sqrt((xyz(1,2)-Guess(1))^2 + (xyz(2,2)-Guess(2))^2 + (xyz(3,2)-Guess(3))^2);
Range_3 = sqrt((xyz(1,3)-Guess(1))^2 + (xyz(2,3)-Guess(2))^2 + (xyz(3,3)-Guess(3))^2);
Range_4 = sqrt((xyz(1,4)-Guess(1))^2 + (xyz(2,4)-Guess(2))^2 + (xyz(3,4)-Guess(3))^2);

% Calculated range difference

Range_12 = sqrt((Range_1 - Range_2)^2);
Range_13 = sqrt((Range_1 - Range_3)^2);
Range_14 = sqrt((Range_1 - Range_4)^2);

% Calculated time delays

Calculated_delay_12 = Range_12/v;
Calculated_delay_13 = Range_13/v;
Calculated_delay_14 = Range_14/v;

rv=(Measured_delay(1)-Calculated_delay_12)^2+(Measured_delay(2)-Calculated_delay_13)^2+(Measured_delay(3)-Calculated_delay_14)^2;