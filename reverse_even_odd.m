clc;
clear all;
close all;
 
%plotting the original signal
x1=[-2 -1 0 1 2 ];
y1=[5 6 3 4 1];
subplot(2,2,1);
stem(x1,y1);
xlabel('n');
ylabel('amplitude');
title('orginal signal:x[n]');
 
%plotting the reversed signal
x2=fliplr(-x1);
y2=fliplr(y1);
subplot(2,2,2);
stem(x2,y2);
xlabel('n');
ylabel('amplitude');
title('reversed signal:x[-n]');
 
 
%equivalent the axis both signal
n=min(min(x1),min(x2)):1:max(max(x1),max(x2));
 
m1=zeros(1,length(n));
m2=zeros(1,length(n));
 
temp=1;
for(i=1:length(n))
    if(n(i)>=min(x1) & n(i)<=max(x1))
        m1(i)=y1(temp);
        temp=temp+1;
        
    else
        m1(i)=0;
    end
end
 
 
temp=1;
for(i=1:length(n))
    if(n(i)>=min(x2) & n(i)<=max(x2))
        m2(i)=y2(temp);
        temp=temp+1;
        
    else
        m2(i)=0;
    end
end
 
%equation of even and odd part of the signal
xe=0.5*(m1+m2);
xo=0.5*(m1-m2);
 
%plotting the even signal
subplot(2,2,3);
stem(n,xe);
xlabel('n');
ylabel('amplitude');
title('even signal:xe[n]');
 
 
%plotting the odd signal
subplot(2,2,4);
stem(n,xo);
xlabel('n');
ylabel('amplitude');
title('odd signal:xo[n]');