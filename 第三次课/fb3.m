clc
clear all
%% 思考题1
%第一小问
B=[1 0 0 0 0 0 0 -1];
A=[1 0 0 0 0 0 0 -0.9];
figure(1)
zplane(B,A);
title("零极点分布图")
%第二小问
[H w]=freqz(B,A,400,'whole');
Hm=abs(H);
Hp=angle(H);
figure(2)
subplot(2,1,1)
plot(w,Hm)
title("幅频特性曲线")
subplot(2,1,2)
plot(w,Hp)
title("相平曲线图")

%% 思考题2
% H1=z/(z+0.8);
% H2=z/(z-1);
% H3=z/(z+1.2);
[xn,fs]=audioread("motherland.wav");
b1=[1 0];
a1=[1 0.8];
n=0:30;
x=(n==0)
h1=filter(b1,a1,x);
y1=conv(xn,h1);
figure(3)
subplot(3,1,1)
plot(y1);

subplot(3,1,2)
b2=[1 0];
a2=[1 -1];
n=0:30;
x=(n==0)
h2=filter(b2,a2,x)
y2=conv(xn,h2);
subplot(3,1,2)
plot(y2);

b3=[1 0];
a3=[1 1.2];
n=0:30;
x=(n==0)
h3=filter(b3,a3,x)
y3=conv(xn,h3);
subplot(3,1,3)
plot(y3);






