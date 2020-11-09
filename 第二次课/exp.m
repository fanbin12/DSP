clc 
clear all
%% ʵ��1.1
%ϵ��
a=[1 1];
b=[3 4 1];
figure(1)
impz(a,b,30);
xlabel('n');
title('��λȡ��1')
grid on


%% ʵ��1.2
% ϵ��
a=[1];
b=[2.5 6 10];
figure(2)
impz(a,b,30);
xlabel('n');
title('��λȡ��2')
grid on

%% ʵ��2
% ����
nx=-2:8;
nh=-5:15;
% x,h�ı��ʽ
x=uDT(nx)-uDT(nx-4);
h=(7/8).^nh.*(uDT(nh)-uDT(nh-10));
y=conv(x,h);
% �����յ�����
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
title('���')

