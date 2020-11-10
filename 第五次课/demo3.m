clear all
clc
xn=[1:14 13:-1:1];
%% ·½·¨1
xk_32=fft(xn,32);
figure(1)
subplot(3,2,1)
plot([0:31]/32,abs(xk_32))
subplot(3,2,2)
stem([0:26],xn,'.');

xk_16=xk_32(1:2:32);
subplot(3,2,3)
stem([0:7],abs(xk_16(1:8)),'.');
subplot(3,2,4)
stem([1:16],ifft(xk_16,16),'.');

subplot(3,2,5)
stem([0:15],abs(xk_32(1:16)),'.');
subplot(3,2,6)
stem([1:32],ifft(xk_32,32),'.');
