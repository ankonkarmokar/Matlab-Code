x = 0:0.1:10;
y = sin (x);
z = cos (x);
subplot (3,1,1);
plot (x,y);
grid on;
subplot (3,1,2);
plot (x,z);
grid on; 
hold on;
subplot (3,1,3);
stem (x,z);
grid on;
hold on;
subplot (3,1,3);
stem (x,y,'r');
