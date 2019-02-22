clear all;
close all;
clc;

%%
Zo=50;
r=[0 .2 .4 .6 .8 1 1.5 3 10 50];
xc=[.1 .3 .5 .7 1 1.4 2 4 10 50];
centros=r./(1+r);
radios=1./1+r;

% Horizontales
t = linspace(0, 2*pi, 100);
x = cos(t);
y = sin(t);
figure(1);
plot(x, y, 'linewidth', 1); axis equal; 
hold on;

for i = 1 : length(centros)
    x(i,:) = centros(i) + (1 - centros(i)) * cos(t);
    y(i,:) = (1 - centros(i)) * sin(t);
    plot(x(i,:), y(i,:))
    a(i,:) = 1 +1/xc(i) * cos(t);
    b(i,:) = 1/xc(i) + 1/xc(i) * sin(t);
    plot(a(i,:), b(i,:), a(i,:), -b(i,:))
    grid on;
end 



%%
% 
% t = linspace(0, 2*pi, 100);
% x = cos(t);
% y = sin(t);
% 
% figure(1);
% plot(x, y, 'linewidth', 1); axis equal; 
% 
% % Place title and remove ticks from axes
% title(' Smith Chart ')
% %set(gca,'xticklabel',{[]});
% %set(gca,'yticklabel',{[]});
% hold on 
% 
% % Draw circles along horizontal axis
% k=[0 .2 .4 .6 .8 1 1.5 3 10 50]./50;
% for i = 1 : length(k)
%     x(i,:) = k(i) + (1 - k(i)) * cos(t);
%     y(i,:) = (1 - k(i)) * sin(t);
%     plot(x(i,:), y(i,:), 'k')
% end 
% 
% % Draw partial circles along vertical axis
% kt = [2.5 pi 3.79 4.22];
% k = [.5 1 2 4];
% for i = 1 : length(kt)
%     t = linspace(kt(i), 1.5*pi, 50);
%     a(i,:) = 1 + k(i) * cos(t);
%     b(i,:) = k(i) + k(i) * sin(t);
%     plot(a(i,:), b(i,:),'k:', a(i,:), -b(i,:),'k:' )
% end