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
imp=(zl-zo*tanh((a+1i*b)*j))./(zo-zl*tanh((a+1i*b)*j));
%trans=length(imp);
u=length(imp);
v=length(imp);
for a=1:length(imp);
    r0=real(imp(a));
    x0=imag(imp(a));
    u(a)=(r0^2-1+x0^2)/((r0+1)^2+x0^2);
    v(a)=2*x0/((r0+1)^2+x0^2);
end
plot(u(length(imp)),v(length(imp)),'*b')
hold on
plot(u(1),v(1),'*r')
hold on
plot(u,v,'b')
hold on
%imp=((-80.57*exp(-1i*569.63)*exp((-a-1i*b)*j)+33.37*exp(-1i*5.915)*exp((a+1i*b)*j))./(-80.57*exp(-1i*569.63)*exp((-a-1i*b)*j)-33.37*exp(-1i*5.915)*exp((a+1i*b)*j)));
r=[0,0.2,0.4,0.6,0.8,1,1.5,3,10,50];
x1=[0.1,0.3,0.5,0.7,1,1.4,2,4,10,50];
for a=1:length(x1)
    h=1;
    k=1/x1(a);
    radio=1/x1(a);
    t=0:0.01:2*pi;
    z=radio*exp(1i*t)+h+1i*k;
    v=abs(z)>1;
    v=find(v);
    for nn=1:length(v)
        z(v(nn))=NaN;
    end
    plot(z,'r')
    hold on
    
end
for a=1:length(r)
    circulo_c(r(a)/(r(a)+1),0,1/(r(a)+1),'b')
    h=r(a)/(r(a)+1);
    k=0;
    radio=1/(r(a)+1);
    t=0:0.01:2*pi;
    z=radio*exp(1i*t)+h+1i*k;
    v=abs(z)>1;
    v=find(v);
    for nn=1:length(v)
        z(v(nn))=NaN;
    end
    plot(z,'r')
    hold on
end
% for a=1:length(imp)
%     plot(u(length(imp)-a+1),v(length(imp)-a+1),'g')
%     hold on
%     drawnow
% end