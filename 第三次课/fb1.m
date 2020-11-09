%% 有理函数的Z变换的部分分时展开式

B=[18];
A=[18,3,-4,-1];
[R,P,K]=residuez(B,A)


%% 系统函数的零极点分析
B=[1,0.32];
A=[1,1,0.16];
[R,P,K]=tf2zp(B,A)
zplane(B,A)

%%系统函数的零极点分布于其是与特性的关系

%% 离散时间LTI系统的频率响应特性
b=[1 0.96 0.9028];
a=[1 -1.56 0.8109];
[H w]=freqz(b,a,400,'whole');
Hm=abs(H);
Hp=angle(H);
subplot(2,1,1)
plot(w,Hm),grid on
xlabel('\omega(rad\s)')
ylabel('Magnitude')
title('离散系统曲线')
subplot(2,1,2)
plot(w,Hp)
grid on
xlabel('\omega(rad\s)')
ylabel('Phase')
title('离散系统项品响应特性')