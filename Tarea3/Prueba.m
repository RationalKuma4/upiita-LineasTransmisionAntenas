%Graficar
%V(s), I(s) y Z(s)
%Para una l�nea determinada en c.c. y c.a. Sin p�rdidas
%Repetir para una l�nea con p�rdidas a=0.5Np
%Longitud de la l�nea de 0 a 3/2 * lamda
clear all
close all
clc

alpha=0;        %Sin perdidas = 0;
beta=2*pi;      %
gamma=alpha+j*beta;
lamda=2*pi/beta;
Vo=20;
Zo=10;
s=0:1/1000:10*lamda;

CoRefl=-1;        %Circuito en corto -1      %Circuito abierto  1

Vs=Vo*(exp(gamma.*s)+CoRefl*exp(-gamma.*s));
Is=(Vo/Zo)*(exp(gamma.*s)-CoRefl*exp(-gamma.*s));
Zs=Vs./Is;

figure (1);
subplot(3,1,1);
plot(s,abs(Vs));
title('\bf Circuito en corto   \Gamma_{(0)}=-1   Z_{0}=10\Omega   V_{0}=20V');
xlabel('s [m]')
ylabel('|V(s)| [V]')

subplot(3,1,2);
plot(s,abs(Is));
xlabel('s [m]')
ylabel('|I(s)| [A]')

subplot(3,1,3);
plot(s,abs(Zs));
xlabel('s [m]')
ylabel('|Z(s)| [\Omega]')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CoRefl=1;        %Circuito en corto -1  %Circuito abierto  1

Vs=Vo*(exp(gamma.*s)+CoRefl*exp(-gamma.*s));
Is=(Vo/Zo)*(exp(gamma.*s)-CoRefl*exp(-gamma.*s));
Zs=Vs./Is;

figure (2);

subplot(3,1,1);
plot(s,abs(Vs));
title('\bf Circuito Abierto   \Gamma_{(0)}=1   Z_{0}=10\Omega   V_{0}=20V');
xlabel('s [m]')
ylabel('|V(s)| [V]')

subplot(3,1,2);
plot(s,abs(Is));
xlabel('s [m]')
ylabel('|I(s)| [A]')

subplot(3,1,3);
plot(s,abs(Zs));
xlabel('s [m]')
ylabel('|Z(s)| [\Omega]')



alpha=0.5/lamda;
s=0:1/1000:2/3*lamda;

CoRefl=-1;        %Circuito en corto -1      %Circuito abierto  1

Vs=Vo*(exp(gamma.*s)+CoRefl*exp(-gamma.*s));
Is=(Vo/Zo)*(exp(gamma.*s)-CoRefl*exp(-gamma.*s));
Zs=Vs./Is;

figure (3);
subplot(3,1,1);
plot(s,abs(Vs));
title('\bf Circuito en corto   \Gamma_{(0)}=-1   Z_{0}=10\Omega   V_{0}=20V  \alpha=0.5/\lambda');
xlabel('s [m]')
ylabel('|V(s)| [V]')

subplot(3,1,2);
plot(s,abs(Is));
xlabel('s [m]')
ylabel('|I(s)| [A]')

subplot(3,1,3);
plot(s,abs(Zs));
xlabel('s [m]')
ylabel('|Z(s)| [\Omega]')


CoRefl=1;        %Circuito en corto -1      %Circuito abierto  1

Vs=Vo*(exp(gamma.*s)+CoRefl*exp(-gamma.*s));
Is=(Vo/Zo)*(exp(gamma.*s)-CoRefl*exp(-gamma.*s));
Zs=Vs./Is;

figure (4);
subplot(3,1,1);
plot(s,abs(Vs));
title('\bf Circuito abierto   \Gamma_{(0)}=1   Z_{0}=10\Omega   V_{0}=20V  \alpha=0.5/\lambda');
xlabel('s [m]')
ylabel('|V(s)| [V]')

subplot(3,1,2);
plot(s,abs(Is));
xlabel('s [m]')
ylabel('|I(s)| [A]')

subplot(3,1,3);
plot(s,abs(Zs));
xlabel('s [m]')
ylabel('|Z(s)| [\Omega]')