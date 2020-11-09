%% 实验一，有理函数部分分时展开式
B=[2 16 44 56 32];
A=[3 3 -15 18 -12];
[R,P,K]=residuez(B,A)

%% 实验2，零极点图，病判断系统是否稳定
figure(1)
B1=[2 -1.6 -0.9];
A1=[1 -2.5 1.96 -0.48];
subplot(2,1,1)
zplane(B1,A1);
title("零极点分布图")
subplot(2,1,2)
B2=[1 -1];
A2=[1 -0.9 -0.65 0.873 0];
zplane(B2,A2)
title("零极点分布图")

%% 实验3，绘制频率响应曲线
B3=[1 0 0];
A3=[1 -3/4 1/8];
[H w]=freqz(B3,A3,400,'whole');
Hm=abs(H);
Hp=angle(H);
subplot(2,1,1)
plot(w,Hm)
grid on
xlabel('\omega(rad\s)')
ylabel('Magnitude')
title('离散系统曲线')
subplot(2,1,2)
plot(w,Hp)
grid on
xlabel('\omega(rad\s)')
ylabel('Phase')
title('离散系统项品响应特性')