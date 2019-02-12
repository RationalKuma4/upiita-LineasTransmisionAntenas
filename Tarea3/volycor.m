function volycor(f,z0,zl,l,gama)
T=1/f;
t=0:50;
w=2*pi*t/10;
%Se calcula gama y z0
gammal=(zl-z0)/(zl+z0);
beta=imag(gama);
lamda=((2*pi)/beta);
dx=lamda/1000;
x=0:dx:5*lamda;
alpha=real(gama);
for m=w
v1=abs(10*i)*exp(-alpha*x).*real(cos(m-beta*x));
v2=abs(10*i)*exp(-alpha*(2*l-x)).*real(gammal*cos(m-beta*(2*l-x)));
i1=abs(10*i)*exp(-alpha*x).*real((1/z0)*cos(m-beta*x));
i2=abs(10*i)*exp(-alpha*(2*l-x)).*real((1/z0)*gammal*cos(m-beta*(2*l-x)));
pause(0.1)
figure(1)
subplot(2,1,1)
plot(v1)
axis([0 5000 -10 10])
subplot(2,1,2)
plot(v2)
axis([0 5000 -10 10])
figure(2)
subplot(2,1,1)
plot(i1)
axis([0 5000 -1 1])
subplot(2,1,2)
plot(i2)
axis([0 5000 -1 1])
end
