function [ newScrambler ] = RevalueV34Scrambler( scrambler,size, encodedValue )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

for i = size-1:-1:1
    scrambler(i+1) = scrambler(i);
end
scrambler(1) = encodedValue;

newScrambler = scrambler;

end

