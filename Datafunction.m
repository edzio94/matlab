function [ vector,A ] = Datafunction( Enc_signal )
A = Enc_signal;
vector = Enc_signal;
    for(i=1:length(Enc_signal))
        if(Enc_signal(i) == -1)
            vector(i) = 0;
        else
            vector(i) =  1;
        end
       
    end
   A = sum(vector(:) == 1)/(sum(vector(:) == 1) + sum(vector(:) == 0));
end

