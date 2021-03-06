function [ encodedSignal ] = EncodeV34Signal( scrambler,signal,data_size,scrambler_size)
%TEST
%
onSignal = true;
encodedSignal = signal;
for i=data_size:-1:1
    last_value = scrambler(scrambler_size);
    second_value = scrambler(18);
    onSignal = checkUniqueSignal(i,signal,onSignal);
    if onSignal == true
    encodedSignal(i) = xor(xor(last_value,second_value),signal(i));
    scrambler = RevalueV34Scrambler(scrambler,scrambler_size,encodedSignal(i));
   
    else
    encodedSignal(i) = -1;    
    end

end
signal;
encodedSignal;
end

