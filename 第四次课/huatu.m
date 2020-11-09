function count=huatu(x,N,count,flag)
%% x是函数序列，N是DFT的离散点，count是用于画图编号，flag是判断连续和离散
if flag==0
    for i=1:length(N)
        xk=fft(x,N(i));
        figure(length(N)*(count-1)+i)
        subplot(2,1,1)
        stem(0:length(x)-1,x,'.');
        title("x的波形")
        subplot(2,1,2)
        stem(0:N(i)-1,abs(xk),'.');
        title(strcat("x的",num2str(N(i)),"点fft"))
    end
else
    for i=1:length(N)
        xk=fft(x,N(i));
        figure(length(N)*(count-1)+i)
        subplot(2,1,1)
        stem(0:length(x)-1,x,'.');
        title("x的波形")
        subplot(2,1,2)
        plot(0:N(i)-1,abs(xk));
        title(strcat("x的",num2str(N(i)),"点fft"))
    end
end
end