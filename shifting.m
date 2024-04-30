close all;
clear all;
clc;
 
n = -7:7;
x= [0 0 0 0 -2 0 1 -3 2 -1 3 0 0 0 0]
subplot(3,1,1);
stem (n,x);
xlabel('Time');
ylabel('Amplitude');
title('Original Signal');
axis([-7 7 -4 4]);
grid on;
grid minor;
 
m = n+3; 
subplot(3,1,2);
stem (m,x);
xlabel('Time');
ylabel('Amplitude');
title('Time right shifted signal');
axis([-7 7 -4 4]);
grid on;
grid minor;

l = n-2; 
subplot(3,1,3);
stem (l,x);
xlabel('Time');

ylabel('Amplitude');
title('Time left shifted signal');
axis([-7 7 -4 4]);
grid on;
grid minor;
