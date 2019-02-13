%% Graficar
%V(s), I(s) y Z(s)
%Para una línea determinada en c.c. y c.a. Sin pérdidas
%Repetir para una línea con pérdidas a=0.5Np
%Longitud de la línea de 0 a 3/2 * lamda
clear all;
close all;
clc;

beta=2*pi;
lamda=2*pi/beta;
s=0:.001:(3/2)*lamda-.001;

alpha=0;
gamma=alpha+1i*beta;
Vo=10;
Zo=10;

%% Sin perdidas en cc
Gamma=-1;
Vs=Vo*(exp(gamma.*s)+Gamma*exp(-gamma.*s));
Is=(Vo/Zo)*(exp(gamma.*s)-Gamma*exp(-gamma.*s));
Zs=(Vs./Is);

figure (1);
subplot(3,1,1);
plot(s,abs(Vs),'k','LineWidth',1.1);
title('$Voltaje$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$V(s)$','Interpreter','latex');
grid on;

subplot(3,1,2);
plot(s,abs(Is),'k','LineWidth',1.1);
title('$Corriente$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$I(s)$','Interpreter','latex');
grid on;

subplot(3,1,3);
plot(s,abs(Zs),'k','LineWidth',1.1);
title('$Impedancia$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$Z(s)$','Interpreter','latex');
grid on;
suptitle('Linea terminada en c.c. sin perdidas')

%% Sin perdidas en ca
Gamma=1;

Vs=Vo*(exp(gamma.*s)+Gamma*exp(-gamma.*s));
Is=(Vo/Zo)*(exp(gamma.*s)-Gamma*exp(-gamma.*s));
Zs=(Vs./Is);

figure(2);
subplot(3,1,1);
plot(s,abs(Vs),'k','LineWidth',1.1);
title('$Voltaje$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$V(s)$','Interpreter','latex');
grid on;

subplot(3,1,2);
plot(s,abs(Is),'k','LineWidth',1.1);
title('$Corriente$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$I(s)$','Interpreter','latex');
grid on;

subplot(3,1,3);
plot(s,abs(Zs),'k','LineWidth',1.1);
title('$Impedancia$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$Z(s)$','Interpreter','latex');
grid on;
suptitle('Linea terminada en c.a. sin perdidas')

%% Con perdidas en cc
alpha=.5;
gamma=alpha+1i*beta;
Gamma=-1;
Vs=Vo*(exp(gamma.*s)+Gamma*exp(-gamma.*s));
Is=(Vo/Zo)*(exp(gamma.*s)-Gamma*exp(-gamma.*s));
Zs=(Vs./Is);

figure(3);
subplot(3,1,1);
plot(s,abs(Vs),'k','LineWidth',1.1);
title('$Voltaje$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$V(s)$','Interpreter','latex');
grid on;

subplot(3,1,2);
plot(s,abs(Is),'k','LineWidth',1.1);
title('$Corriente$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$I(s)$','Interpreter','latex');
grid on;

subplot(3,1,3);
plot(s,abs(Zs),'k','LineWidth',1.1);
title('$Impedancia$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$Z(s)$','Interpreter','latex');
grid on;
suptitle('Linea terminada en c.c. con perdidas')
%% Con perdidas en ca
Gamma=1;
Vs=Vo*(exp(gamma.*s)+Gamma*exp(-gamma.*s));
Is=(Vo/Zo)*(exp(gamma.*s)-Gamma*exp(-gamma.*s));
Zs=(Vs./Is);

figure(4);
subplot(3,1,1);
plot(s,abs(Vs),'k','LineWidth',1.1);
title('$Voltaje$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$V(s)$','Interpreter','latex');
grid on;

subplot(3,1,2);
plot(s,abs(Is),'k','LineWidth',1.1);
title('$Corriente$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$I(s)$','Interpreter','latex');
grid on;

subplot(3,1,3);
plot(s,abs(Zs),'k','LineWidth',1.1);
title('$Impedancia$','Interpreter','latex');
xlabel('$\lambda$','Interpreter','latex');
ylabel('$Z(s)$','Interpreter','latex');
grid on;
suptitle('Linea terminada en c.a. con perdidas')
