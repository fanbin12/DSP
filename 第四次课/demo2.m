%% 任务一
clc
clear all
x1=[1 1 1 1 0 0 0 0];
x2=[1:1:4 4:-1:1];
n=[1:1:8];
N=[8 16];
%% x4和x5都是x4的序列，只不过点数不同
x4=[cos(pi/4.*n)];
x5=[cos(pi/4.*[1:1:16])];
x=[x1;x2;x4]
for i=1:size(x,1)-1
    huatu(x(i,:),N,i,0); 
end
count=5;
huatu(x4,N(1),count,0);
count=count+1;
huatu(x5,N(2),count,0);
count=count+1;

N=[16 32 64];
for i=1:length(N)
n=[0:1/64:(N(i)-1)*(1/64)];
x6=cos(8*pi.*n)+cos(16*pi.*n)+cos(20*pi.*n);
huatu(x6,N(i),count,0);
count=count+1;
end


