% 离散系统响应
clc
clear all
%x,y(n)系数a
a=[3 -4 2];
b=[1 2];
n=0:30;
%x的表达式
x=(1/2).^n;
%输出y
y=filter(b,a,x);
figure(1)
stem(n,y,'fill');
grid on;
xlabel('n');
title("响应系统");

%%离散时间系统的单位取样
figure(2)
impz(b,a,30);
grid on;
xlabel('n');
title("系统单位取样响应");

%%离散时间信号的卷积和运算
%激励和系统,时间长度
x1=[1 1 1 1];
x2=[1 1 1 1];
n=0:6;
%卷积函数
y=conv(x1,x2);
figure(3)
stem(n,y,'fill')
grid on
xlabel('n');

%%离散时间信号的卷积运算例题
nx=-1:5;
ny=-2:10;






