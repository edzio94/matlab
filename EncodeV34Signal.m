function [ encodedSignal ] = EncodeV34Signal( scrambler,signal,data_size,scrambler_size)
%TEST
%
mySignal

encodedSignal = signal;
for i=1:data_size
    last_value = scrambler(scrambler_size);
    second_value = scrambler(18);
    
    encodedSignal(i) = xor(xor(last_value,second_value),signal(i));
    scrambler = RevalueV34Scrambler(scrambler,scrambler_size,encodedSignal(i));
end
signal;
encodedSignal;
end

