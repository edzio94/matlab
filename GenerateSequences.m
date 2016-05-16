function [ Signal ] = GenerateSequences( StarterSignal,Data_size )
%Generate sequences for signal
A = [1 0 0 1 0 1 0 0 0 1];
A_size = 10
Signal = StarterSignal;

for i=1:Data_size
    x = mod(i,100);
    if x == 0
        for j= 1:A_size
            if i+j < Data_size
                Signal(i+j) = A(j);
            end
        end
        
    end
    
    
end



end

