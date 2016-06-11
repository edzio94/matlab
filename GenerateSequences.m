function [ Signal,scr ] = GenerateSequences( StarterSignal,Data_size,scrambler,modulo )
%Generate sequences for signal
A = [1 0 0 1 0 1 1 0 0 1 ];
A_size = length(A);
Signal = StarterSignal;
scr = scrambler;
for i=1:Data_size
    x = mod(i,modulo);
    if x == 0
        for j= 1:A_size
            if i+j < Data_size
                Signal(i+j) = A(j);
                scr = scrambler;
            end
        end
        
    end
    
    
end



end

