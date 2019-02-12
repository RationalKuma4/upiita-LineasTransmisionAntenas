%%
%Voltajes y corrientes
%Definimos cualquier valor para R,L,G,C y la frecuencia
clear all;
clc;
R=10;
L=30;
G=20;
C=21;
f=100;
T=1/f;
t=0:50;
w=2*pi*t/10;
Z=R+j*2*pi*L;
Y=G+j*2*pi*C;
%Se calcula gama y z0
gama=sqrt(Z*Y);
z0=sqrt(Z/Y);
beta=imag(gama);
lamda=((2*pi)/beta);
dx=lamda/1000;
x=0:dx:5*lamda;
alpha=real(gama);
%%
for m=w
v1=exp(alpha*x).*real(cos(m-beta*x));
v2=exp(-alpha*x).*real(cos(m-beta*x));
i1=(-1/z0)*exp(alpha*x).*real(cos(m-beta*x));
i2=(1/z0)*exp(-alpha*x).*real(cos(m-beta*x));
pause(0.1)
figure(1)
subplot(2,1,1)
plot(v1)
axis([0 5000 -10 10])
subplot(2,1,2)
plot(v2)
axis([0 5000 -10 10])
end

%%
gam=(Z-z0)/(Z+z0);
for m=w
i1=10*exp(-alpha*x).*real(cos(m-beta*x));
i2=10*exp(-2*alpha*x).*real(gam*cos(m-beta*x));
pause(0.1)
subplot(2,1,1)
plot(i1)
axis([0 10 -10 10])
subplot(2,1,2)
plot(i2)
axis([0 10 -10 10])
end