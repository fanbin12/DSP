function count=huatu(x,N,count,flag)
%% x�Ǻ������У�N��DFT����ɢ�㣬count�����ڻ�ͼ��ţ�flag���ж���������ɢ
if flag==0
    for i=1:length(N)
        xk=fft(x,N(i));
        figure(length(N)*(count-1)+i)
        subplot(2,1,1)
        stem(0:length(x)-1,x,'.');
        title("x�Ĳ���")
        subplot(2,1,2)
        stem(0:N(i)-1,abs(xk),'.');
        title(strcat("x��",num2str(N(i)),"��fft"))
    end
else
    for i=1:length(N)
        xk=fft(x,N(i));
        figure(length(N)*(count-1)+i)
        subplot(2,1,1)
        stem(0:length(x)-1,x,'.');
        title("x�Ĳ���")
        subplot(2,1,2)
        plot(0:N(i)-1,abs(xk));
        title(strcat("x��",num2str(N(i)),"��fft"))
    end
end
end