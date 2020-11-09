clc
clear all
%% 思考题
% 确定长度为19
nx=-5:5;
nh=-5:5;
len=size(nx,2)+size(nh,2)-1;
 %函数
 x=[0 0 3 11 7 0 -1 4 2 0 0];
 h=[0 0 0  0 2 3 0 -5 2 1 0];
 n_start=nx(1)+nh(1);
 n_end=nx(end)+nh(end);
 n=n_start:n_end;
 y=conv(x,h);
 figure(1)
 subplot(2,1,1)
 stem(n,y)
 title("stem函数卷积")
 
 %% 将h对称
 n_center=find(nh==0);
 for i=1:n_center
     hh=h(i);
     h(i)=h(2*n_center-i);
     h(2*n_center-i)=hh;
 end
  %% 卷积
   x=[zeros(1,size(h,2)-1) x zeros(1,size(h,2)-1)]
%   x=[zeros(1,nx(1)-n_start) x zeros(1,n_end-n(end))]
  for i=1:size(nh,2)+size(nx,2)-1
      xx=x(i:size(h,2)+i-1);
      y=sum(xx.*h);
      yy(i)=y;
  end
  subplot(2,1,2)
  stem(n,yy,'fill')
  title("自己写的卷积")
