%% fft函数的使用
N=8;
x=[4:-1:1 1:4];
xk=fft(x,N);
figure(1)
subplot(2,1,1)
stem(0:length(x)-1,x,'.');
subplot(2,1,2)
stem(0:N-1,abs(xk),'.');