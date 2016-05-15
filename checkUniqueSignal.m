function [ checkSignal ] = checkUniqueSignal( i,Signal,onSignal )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
A = [1 0 0 0 1];
checkSignal = onSignal;
indexes = strfind(Signal,A);

for index=1:indexes
    if (i == index) and (checkSignal == false)
        checkSignal= true;
    end
end

end

