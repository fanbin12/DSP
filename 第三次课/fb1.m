%% ��������Z�任�Ĳ��ַ�ʱչ��ʽ

B=[18];
A=[18,3,-4,-1];
[R,P,K]=residuez(B,A)


%% ϵͳ�������㼫�����
B=[1,0.32];
A=[1,1,0.16];
[R,P,K]=tf2zp(B,A)
zplane(B,A)

%%ϵͳ�������㼫��ֲ������������ԵĹ�ϵ

%% ��ɢʱ��LTIϵͳ��Ƶ����Ӧ����
b=[1 0.96 0.9028];
a=[1 -1.56 0.8109];
[H w]=freqz(b,a,400,'whole');
Hm=abs(H);
Hp=angle(H);
subplot(2,1,1)
plot(w,Hm),grid on
xlabel('\omega(rad\s)')
ylabel('Magnitude')
title('��ɢϵͳ����')
subplot(2,1,2)
plot(w,Hp)
grid on
xlabel('\omega(rad\s)')
ylabel('Phase')
title('��ɢϵͳ��Ʒ��Ӧ����')