clc;
clear all;
close all;

x1=[-1 0 1 2];
y1=[-1 0.5 1 -0.5];
x2=[0 1 2 3 ];
h=[0.5 1 -0.5 0.5];

[n y]=func_convalution(x1,y1,x2,h);

subplot(3,1,1);
stem(x1,y1);
xlabel('X1');
ylabel('Y1');
axis([-5 5 -2 2]);
title("Given Signal");

subplot(3,1,2);
stem(x2,h);
xlabel('x2');
ylabel('h');
axis([-5 5 -2 2]);
title("Impulse Response");

subplot(3,1,3);
stem(n,y);
xlabel('n');
ylabel('y');
axis([-5 5 -2 2]);
title("Convalution Sum");
