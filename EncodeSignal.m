function [ encodedSignal ] = EncodeSignal(scrambler,signal,data_size, scrambler_size )
%Encoding singal with scrambler
%   Detailed explanation goes here
encodedSignal = signal;
onSignal = true;
for i=data_size:-1:1
    lastValue = scrambler(scrambler_size);
    preLastValue = scrambler(scrambler_size - 1);
    onSignal = checkUniqueSignal(i,signal,onSignal);
    if onSignal == true
    encodedSignal(i) = xor(encodedSignal(i),xor(lastValue,preLastValue));
    scrambler = RevalueScrambler(scrambler,scrambler_size);
    else
        encodedSignal(i) = 0;
    end
    
end

%REMEMBER TO SCRAMBLE REAL SCRAMBLE, NOT LOCAL!!!!!!!!!!
end