function [v] = countData(  )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
dlugosc =  2000;
zmienna = 50;
range =  dlugosc/zmienna;
v = zeros(1,range);
    for (i=zmienna:zmienna:dlugosc)
       DataGenerator; 
       Scrambler;
       SIGNAL,SCRAMBLER = GenerateSequences(SIGNAL,DATA_SIZE,SCRAMBLER,10+i);
       ENC_SIGNAL = EncodeSignal(SCRAMBLER,SIGNAL,DATA_SIZE,SIZE);
      % ENC_SIGNAL = SIGNAL;
       [x,A]  = Datafunction(ENC_SIGNAL);
        v(i/zmienna) = A;
    end
    

end

