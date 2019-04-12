clear all;
close all;
clc;

%% Antena onda completa
angulo=0:pi/18:pi;
angulo2=2*pi:-pi/18:pi;

potenciadBm=[-23 -25 -26 -27 -30 -31 -34 -36 -33 -33 -34 -32 -31 -29 -29 -27 -27 -28 -28]; %[dBm]
potenciadB=potenciadBm-30;
potenciaWatts=10.^(potenciadBm./10);

figure(1);
polarplot(angulo,potenciadBm);
hold on;
polarplot(angulo2,potenciadBm);
title('dBm');

figure(2);
polarplot(angulo,potenciadB);
hold on;
polarplot(angulo2,potenciadB);
title('dB');

figure(3);
polarplot(angulo,potenciaWatts);
hold on;
polarplot(angulo2,potenciaWatts);
title('Watt');

%% Antena dipolo doblado
potenciadBm=[-29 -33 -34 -36 -36 -31 -31 -28 -30 -27 -27 -25 -27 -30 -33 -37 -36 -38 -30]; %[dBm]
potenciadB=potenciadBm-30;
potenciaWatts=10.^(potenciadBm./10);

figure(4);
polarplot(angulo,potenciadBm);
hold on;
polarplot(angulo2,potenciadBm);
title('dBm');

figure(5);
polarplot(angulo,potenciadB);
hold on;
polarplot(angulo2,potenciadB);
title('dB');

figure(6);
polarplot(angulo,potenciaWatts);
hold on;
polarplot(angulo2,potenciaWatts);
title('Watt');


