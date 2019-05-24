clear;
clc;
close all;

theta_0 = 45*pi/180;
phi_0 = 0;
lambda=1;
a = lambda; % radio del arreglo en fracciones de lambda
N = 5; % numero de elementos del arreglo
n = 0:1:(N-1);
phi_n = ((2*pi/N)*n); % posicion de cada antena en el arreglo

% -------------------------------------------------------------------------

theta = -pi/2:1/100:1*pi/2;
phi = 0:1/50:2*pi;
sum = 0;
for cont = 1:N
    sum = sum + exp((j*2*pi*a)*(sin(theta).*cos(phi-phi_n(cont)) - sin(theta_0)*cos(phi_0-phi_n(cont))));
end

fa = abs(sum);
figure(1)
%plot(theta*180/pi,fa);
polar(theta,fa);
grid on;
xlabel('\theta [Grados]')
ylabel('|F.A.|')

% -------------------------------------------------------------------------

[xx yy] = meshgrid(theta,phi);
sum = 0;
for cont = 1:N
    sum = sum + exp((j*2*pi*a)*(sin(xx).*cos(yy-phi_n(cont)) - sin(theta_0)*cos(phi_0-phi_n(cont))));
end

fa = abs(sum);
[X,Y,Z] = sph2cart(xx,yy,fa);

figure(2)
%plot(theta,fa)
mesh(X*180/pi,Y*180/pi,Z)
%mesh(xx*180/pi,yy*180/pi,fa);
xlabel('\theta [Grados]')
ylabel('\phi [Grados]')
zlabel('|F.A.|')

% -------------------------------------------------------------------------

theta = (-pi/2):1/100:(pi/2);
% theta = 0:1/50:2*pi;
phi = 0:1/50:2*pi;
sum = 0;
for cont = 1:N
    sum = sum + exp((j*2*pi*a)*(sin(theta).*cos(phi-phi_n(cont)) - sin(theta_0)*cos(phi_0-phi_n(cont))));
end

fa = abs(sum);
figure(3)
plot(theta*180/pi,fa);
% polar(theta,fa);
grid on;
xlabel('\theta [Grados]')
ylabel('|F.A.|')
