Fs=[1000 300 200];
n=round(0.064.*Fs);
A=444.128;
aerfa=50*(2^0.5)*pi;
ou=50*(2^0.5)*pi;
N=64;
x1=A.*(exp((-aerfa*(1/Fs(1)).*[0:n(1)-1]))).*sin(ou*(1/Fs(1).*[0:n(1)-1]));
x2=A*(exp((-aerfa*(1/Fs(2)).*[0:n(2)-1]))).*sin(ou*(1/Fs(2).*[0:n(2)-1]));
x3=A*(exp((-aerfa*(1/Fs(3)).*[0:n(3)-1]))).*sin(ou*(1/Fs(3).*[0:n(3)-1]));

%% »­Í¼ 
% figure(1)
subplot(3,2,1)
stem([0:n(1)-1],x1,'.');

xk1=fft(x1,N);
xk1=abs(xk1)/Fs(1);
subplot(3,2,2)
plot(xk1)

subplot(3,2,3)
stem([0:n(2)-1],x2,'.');

xk2=fft(x2,N);
subplot(3,2,4)
xk2=abs(xk2)/Fs(2);
plot(xk2)

subplot(3,2,5)
stem([0:n(3)-1],x3,'.');

xk3=fft(x3,N);
subplot(3,2,6)
xk3=abs(xk3)/Fs(3);
plot(xk3)