function [ decodedSignal ] = DecodeV34Signal( scrambler,signal,data_size,scrambler_size)
%TEST
%
onSignal = true;
decodedSignal = signal;
for i=data_size:-1:1
last_value = scrambler(scrambler_size);
second_value = scrambler(18);
onSignal = checkUniqueSignal(i,signal,onSignal);
if signal(i) ~= -1
decodedSignal(i) = xor(xor(last_value,second_value),signal(i));
scrambler = RevalueV34Scrambler(scrambler,scrambler_size,signal(i));

else
decodedSignal(i) = -1; 
scrambler = RevalueV34Scrambler(scrambler,scrambler_size,signal(i));
end

end
signal;
decodedSignal;
end
