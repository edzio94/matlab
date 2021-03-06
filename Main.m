DataGenerator;
Scrambler;
V34Scrambler;

SIGNAL = EncodeV34Signal(V34_SCRAMBLER,SIGNAL,DATA_SIZE,V34_SIZE);
[zera,jedynki] = zlicz(SIGNAL);
figure(1)
hist(zera,1:15)
title('ZERA | RANDOM | V34');
figure(2)
hist(jedynki,1:15);
title('JEDYNKI | RANDOM | V34');
% WYPEŁNIENIE SYGNAŁU ZERAMI
clearvars
DataGenerator;
Scrambler;
V34Scrambler;

SIGNAL = zeros(1,DATA_SIZE);
SIGNAL = EncodeV34Signal(V34_SCRAMBLER,SIGNAL,DATA_SIZE,V34_SIZE);
[zera,jedynki] = zlicz(SIGNAL);
figure(3)
hist(zera,1:15)
title('ZERA | SAME ZERA | V34');
figure(4)
hist(jedynki,1:15);
title('JEDYNKI | SAME ZERA | V34');

%=================================
clearvars
DataGenerator;
Scrambler;
V34Scrambler;

SIGNAL = ones(1,DATA_SIZE);
SIGNAL = EncodeV34Signal(V34_SCRAMBLER,SIGNAL,DATA_SIZE,V34_SIZE);
[zera,jedynki] = zlicz(SIGNAL);
figure(5)
hist(zera,1:15)
title('ZERA | SAME JEDYNKI | V34');
figure(6)
hist(jedynki,1:15);
title('JEDYNKI | SAME JEDYNKI | V34');
%=================================
clearvars
DataGenerator;
Scrambler;
V34Scrambler;

SIGNAL = EncodeSignal(SCRAMBLER,SIGNAL,DATA_SIZE,SIZE);
[zera,jedynki] = zlicz(SIGNAL);
figure(7)
hist(zera,1:15)
title('ZERA | RANDOM | DVB');
figure(8)
hist(jedynki,1:15);
title('JEDYNKI | RANDOM | DVB');
%=================================
clearvars
DataGenerator;
Scrambler;
V34Scrambler;
SIGNAL = zeros(1,DATA_SIZE);
SIGNAL = EncodeSignal(SCRAMBLER,SIGNAL,DATA_SIZE,SIZE);
[zera,jedynki] = zlicz(SIGNAL);
figure(9)
hist(zera,1:15)
title('ZERA | SAME ZERA | DVB');
figure(10)
hist(jedynki,1:15);
title('JEDYNKI | SAME ZERA | DVB');

%=================================
clearvars
DataGenerator;
Scrambler;
V34Scrambler;
SIGNAL = ones(1,DATA_SIZE);
SIGNAL = EncodeSignal(SCRAMBLER,SIGNAL,DATA_SIZE,SIZE);
[zera,jedynki] = zlicz(SIGNAL);
figure(11)
hist(zera,1:15)
title('ZERA | SAME JEDYNKI | DVB');
figure(12)
hist(jedynki,1:15);
title('JEDYNKI | SAME JEDYNKI | DVB');


%SIGNAL = EncodeV34Signal(SCRAMBLER,SIGNAL,15)
%SCRAMBLER = RevalueScrambler(SCRAMBLER,15)


%