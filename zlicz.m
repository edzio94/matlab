function [z,j] = zlicz(signal)
%zwraca zliczone ciagi zer i jedynek
%   Detailed explanation goes here
[m,length]=size (signal);
%zliczanie zer
temp=0;
z=-1;
for i = 1:length
    if signal(i)==0
        temp=temp+1;          
    elseif temp>0
        if (z==-1)
            z(1)=temp; temp=0;
        else
            z(end+1)=temp; temp=0;
        end
    end        
end
if temp>0
    z(end+1)=temp; temp=0;
end

%zliczanie jedynek
j=-1;
for i = 1:length
    if signal(i)==1
        temp=temp+1;
    elseif temp>0
        if (j==-1)
            j(1)=temp; temp=0;
        else
            j(end+1)=temp; temp=0;
        end
    end        
end
if temp>0
    j(end+1)=temp;
end

end

