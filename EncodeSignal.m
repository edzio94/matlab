function [ encodedSignal ] = EncodeSignal(scrambler,signal, size )
%Encoding singal with scrambler
%   Detailed explanation goes here
encodedSignal = signal;
for i=1:size
    lastValue = scrambler(size);
    preLastValue = scrambler(size - 1);
    
    encodedSignal(i) = xor(encodedSignal(i),xor(lastValue,preLastValue));
    scrambler = RevalueScrambler(scrambler,size);
end
signal
encodedSignal

end

