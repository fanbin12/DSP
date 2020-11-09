%% 第五题
[xn,p]=audioread("motherland.wav");
x=xn(8000:8199);
huatu(x,512,1,1);
title("音频文件的幅度谱");
xk=fft(x,512);
figure(20)
xH=angle(xk);
plot(xH);
title("音频文件的相位谱");

%% 思考题
x=[1,1,2,2,3,3,2,2,1,1];
x1=zeros(length(x)/2,1);
for i=1:length(x1)
    x1(i)=x(2*i);
end
x2=zeros(length(x)*2,1);
for i=1:length(x)
    x2(2*i-1)=x(i);
end
N=32;
huatu(x,N,2,1);
huatu(x1,N,3,1);
huatu(x2,N,4,1);
    