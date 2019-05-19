clc;
clear all;
close all;

N=10;
lambda=1;
beta=2*pi/lambda;
teta=.001:.001:pi-.001;

%% 1/4
d=1/4;
psi=beta*d*cos(teta);
fan=sin((N*psi)/2)./sin(psi/2);
figure(1);
%polar(teta,fan);
polar(teta,abs(fan));
title('$$d=\frac{\lambda}{4}$$','interpreter','latex')

%% 1/2
d=1/2;
psi=beta*d*cos(teta);
fan=sin((N*psi)/2)./sin(psi/2);
figure(2);
%polar(teta,fan);
polar(teta,abs(fan));
title('$$d=\frac{\lambda}{2}$$','interpreter','latex')

%% 3/4
d=3/4;
psi=beta*d*cos(teta);
fan=sin((N*psi)/2)./sin(psi/2);
figure(3);
%polar(teta,fan);
polar(teta,abs(fan));
title('$$d=\frac{3 \lambda}{4}$$','interpreter','latex')

%% 1
d=1;
psi=beta*d*cos(teta);
fan=sin((N*psi)/2)./sin(psi/2);
figure(4);
%polar(teta,fan);
polar(teta,abs(fan));
title('$$d=\lambda$$','interpreter','latex')

%% 2
d=2;
psi=beta*d*cos(teta);
fan=sin((N*psi)/2)./sin(psi/2);
figure(5);
%polar(teta,fan);
polar(teta,abs(fan));
title('$$d=2 \lambda$$','interpreter','latex')
