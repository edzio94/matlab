function [ encodedSignal ] = EncodeSignal(scrambler,signal,data_size, scrambler_size )
%Encoding singal with scrambler
%   Detailed explanation goes here
encodedSignal = signal;
for i=1:data_size
    lastValue = scrambler(scrambler_size);
    preLastValue = scrambler(scrambler_size - 1);
    
    encodedSignal(i) = xor(encodedSignal(i),xor(lastValue,preLastValue));
    scrambler = RevalueScrambler(scrambler,scrambler_size);
end
signal;
encodedSignal;

%REMEMBER TO SCRAMBLE REAL SCRAMBLE, NOT LOCAL!!!!!!!!!!
end