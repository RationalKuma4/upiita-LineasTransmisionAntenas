clear all;
close all;
clc;

%% Antena onda completa
angulo=0:pi/18:pi;
angulo2=2*pi:-pi/18:pi;
angulos=[0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180];

%potenciadBm=[-23 -25 -26 -27 -30 -31 -34 -36 -33 -33 -34 -32 -31 -29 -29 -27 -27 -28 -28]; %[dBm]
%potenciadB=potenciadBm-30;
%potenciaWatts=10.^(potenciadB./10);

%vals=[angulos' potenciadBm' potenciadB' potenciaWatts'];
% 
% 
% figure(1);
% polarplot(angulo,potenciadBm);
% hold on;
% polarplot(angulo2,potenciadBm);
% title('Patron de radiacion onda completa [dBm]','Interpreter','latex');
% 
% figure(2);
% polarplot(angulo,potenciadB);
% hold on;
% polarplot(angulo2,potenciadB);
% title('Patron de radiacion onda completa [dB]','Interpreter','latex');
% 
% figure(3);
% polarplot(angulo,potenciaWatts);
% hold on;
% polarplot(angulo2,potenciaWatts);
% title('Patron de radiacion onda completa [W]','Interpreter','latex');

%% Antena dipolo doblado
potenciadBm=[-29 -33 -34 -36 -36 -31 -31 -28 -30 -27 -27 -25 -27 -30 -33 -37 -36 -38 -30]; %[dBm]
potenciadB=potenciadBm-30;
potenciaWatts=10.^(potenciadB./10);
vals=[angulos' potenciadBm' potenciadB' potenciaWatts'];

figure(4);
polarplot(angulo,potenciadBm);
hold on;
polarplot(angulo2,potenciadBm);
title('Patron de radiacion dipolo dobadlo [dBm]','Interpreter','latex');

figure(5);
polarplot(angulo,potenciadB);
hold on;
polarplot(angulo2,potenciadB);
title('Patron de radiacion dipolo dobadlo [dB]','Interpreter','latex');

figure(6);
polarplot(angulo,potenciaWatts);
hold on;
polarplot(angulo2,potenciaWatts);
title('Patron de radiacion dipolo dobadlo [W]','Interpreter','latex');


