clear all;
close all;
clc;

%%
teta=.001:.001:2*pi+.001;
F1=(cos(3*pi/2*(cos(teta))))./(sin(teta));
vMax1=max(F1);
F1n=(cos(3*pi/2*(cos(teta))))./(sin(teta)).*(1./vMax1);

figure(1);
plot(teta,F1,teta,F1n);
grid on;
legend('F','Fn');
title('Coordenadas \ cartesianas','interpreter','latex');
xlabel('$\theta$','interpreter','latex');
ylabel('$F$','interpreter','latex');

figure(2);
polarplot(teta,F1n);
title('Coordenadas \ polares','interpreter','latex')

%%
teta2=.001:.001:pi+.001;
F2=(cos(5*pi/2*(cos(teta2))))./(sin(teta2));
vMax2=max(F2);
F2n=(cos(5*pi/2*(cos(teta2))))./(sin(teta2)).*(1./vMax2);

figure(3);
plot(teta2,F2,teta2,F2n);
grid on;
legend('F','Fn');
title('Coordenadas \ cartesianas','interpreter','latex');
xlabel('$\theta$','interpreter','latex');
ylabel('$F$','interpreter','latex');

figure(4);
polarplot(teta2,F2n);
title('Coordenadas \ polares','interpreter','latex')
