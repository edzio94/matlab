function [ checkSignal ] = checkUniqueSignal( i,Signal,onSignal )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
A = [1 0 0 1 0 1 0 0 0 1];
checkSignal = onSignal;
indexes = strfind(Signal,A);

for index=1:length(indexes)
    if i == indexes(index)
            disp('i == index');
        if checkSignal == false
        disp('i == index && checkSIgnal == false');
        checkSignal= true;
        end
    end 
end

end

