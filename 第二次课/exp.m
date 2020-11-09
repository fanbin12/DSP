clc 
clear all
%% 实验1.1
%系数
a=[1 1];
b=[3 4 1];
figure(1)
impz(a,b,30);
xlabel('n');
title('单位取样1')
grid on


%% 实验1.2
% 系数
a=[1];
b=[2.5 6 10];
figure(2)
impz(a,b,30);
xlabel('n');
title('单位取样2')
grid on

%% 实验2
% 参数
nx=-2:8;
nh=-5:15;
% x,h的表达式
x=uDT(nx)-uDT(nx-4);
h=(7/8).^nh.*(uDT(nh)-uDT(nh-10));
y=conv(x,h);
% 计算终点和起点
n_start=nx(1)+nh(1);
n_end=nx(end)+nh(end);
n=n_start:n_end;
figure(3)
subplot(3,1,1)
stem(nx,x,'fill');
xlabel('n');
title('x')

subplot(3,1,2)
stem(nh,h,'fill');
xlabel('n');
title('h')

subplot(3,1,3)
stem(n,y,'fill');
xlabel('n');
title('卷积')

