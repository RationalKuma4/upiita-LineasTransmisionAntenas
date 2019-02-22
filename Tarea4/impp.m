clear all;
close all;
clc;

a=0.11;
lambda=1;
b=2*pi/lambda;
l=40;
j=-2:1e-3:0;
w=2*pi*300e6;
zo=50;
zl=100;
imp=zo*(zl-zo*tanh((a+1i*b)*j))./(zo-zl*tanh((a+1i*b)*j));
subplot(2,1,1)
plot(j,real(imp))
subplot(2,1,2)
plot(j,imag(imp))