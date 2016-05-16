function [ encodedSignal ] = EncodeSignal(scrambler,signal,data_size, scrambler_size )
%Encoding singal with scrambler
%   Detailed explanation goes here
    encodedSignal = signal;
    onSignal = true;
for i=data_size:-1:1
    lastValue = scrambler(scrambler_size);
    preLastValue = scrambler(scrambler_size - 1);
    B = strfind(signal,[0 0 0 0 0 0 0]);
        

    
    for j = 1:length(B)
        if  i == B(j)
        disp('Signal lost');
        onSignal = false;
        end
    end
    
        onSignal = checkUniqueSignal(i,signal,onSignal);
    
    if onSignal == true
    encodedSignal(i) = xor(encodedSignal(i),xor(lastValue,preLastValue));
    scrambler = RevalueScrambler(scrambler,scrambler_size);
    else
        encodedSignal(i) = -1;
        scrambler = RevalueScrambler(scrambler,scrambler_size);
    end
    
end

%REMEMBER TO SCRAMBLE REAL SCRAMBLE, NOT LOCAL!!!!!!!!!!
end