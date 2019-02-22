clear all;
close all;
clc;


%% Comprtamiento de Zo
alpha=0.1151292546;
beta=2*pi;
gama=alpha+1j*beta;
lambda=2*pi*beta;
Zl=100;
Zo=50;

s=0:.01:2*lambda-.01;
Gama=(Zl-Zo)/(Zl+Zo);

Zs=Zo*((1+Gama*exp(-2*gama*s))./(1-Gama*exp(-2*gama*s)));

% figure(2);
% subplot(2,1,1);
% plot(s, real(Zs));
% xlabel('$\lambda$','Interpreter','latex');
% ylabel('$\Gamma_r$','Interpreter','latex');
% grid on;
% 
% subplot(2,1,2);
% plot(s, imag(Zs));
% xlabel('$\lambda$','Interpreter','latex');
% ylabel('$\Gamma_i$','Interpreter','latex');
% grid on;

%% Carta de Smith
t = linspace(0, 2*pi, 100);
x = cos(t);
y = sin(t);
plot(x, y, 'linewidth', 1); axis equal; 

hold on;

r=[0 .2 .4 .6 .8 1 1.5 3 10 50];
xc=[.1 .3 .5 .7 1 1.4 2 4 10 50];
centros=r./(1+r);
radios=1./1+r;

centroI=1./xc;
radioI=1./xc;   

for i = 1 : length(centros)
    x(i,:) = centros(i) + (1 - centros(i)) * cos(t);
    y(i,:) = (1 - centros(i)) * sin(t);
    plot(x(i,:), y(i,:),'k');
    
    a(i,:) = 1 +centroI(i) * cos(t);
    b(i,:) = centroI(i) + centroI(i) * sin(t);
    plot(a(i,:), b(i,:),':', a(i,:), -b(i,:),':');
    axis([-1 1 -1 1]);
end 

hold on;
%%figure(2);
rr=real(Zs./Zo);
xx=imag(Zs./Zo);
%u=(1-rr.^2-xx.^2)./((1-rr).^2+xx.^2);
%v=(2.*xx)./((1-rr).^2+xx.^2);
u=(rr.^2-1+xx.^2)./((rr+1).^2+xx.^2);
v=(-2.*xx)./((rr+1).^2+xx.^2);

plot(u,v);
title('Carta de Smith');
set(gca,'xticklabel',{[]});
set(gca,'yticklabel',{[]});







