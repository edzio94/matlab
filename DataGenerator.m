DATA_SIZE = 5000;
SIGNAL = randi([0 1],1,DATA_SIZE);

%for i = 1:10
%    p = randi([1 100]);
%    if (p == 1)    
%        SIGNAL(i) = not(SIGNAL(i));
%    end
%end