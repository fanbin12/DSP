% ��ɢϵͳ��Ӧ
clc
clear all
%x,y(n)ϵ��a
a=[3 -4 2];
b=[1 2];
n=0:30;
%x�ı��ʽ
x=(1/2).^n;
%���y
y=filter(b,a,x);
figure(1)
stem(n,y,'fill');
grid on;
xlabel('n');
title("��Ӧϵͳ");

%%��ɢʱ��ϵͳ�ĵ�λȡ��
figure(2)
impz(b,a,30);
grid on;
xlabel('n');
title("ϵͳ��λȡ����Ӧ");

%%��ɢʱ���źŵľ��������
%������ϵͳ,ʱ�䳤��
x1=[1 1 1 1];
x2=[1 1 1 1];
n=0:6;
%�������
y=conv(x1,x2);
figure(3)
stem(n,y,'fill')
grid on
xlabel('n');

%%��ɢʱ���źŵľ����������
nx=-1:5;
ny=-2:10;






