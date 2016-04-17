function [newScrambler] = RevalueScrambler( scrambler,size )
%Revalue scrambler using XOR operations
%   Detailed explanation goes here
LAST_VALUE = scrambler(size);
PRE_LAST_VALUE = scrambler(size - 1);

    for i=size-1:-1:1
        scrambler(i+1) = scrambler(i);
    end
    scrambler(1) = xor(LAST_VALUE,PRE_LAST_VALUE);

newScrambler = scrambler;
end