t=-5:1:5;
r=max(0,t);

stem(t,r,'b','filled');

xlabel('Time (t)');
ylabel('Ramp Function r(t)');
title('Stem Plot of Ramp Function');

grid on;
axis([-5 5 -1 6]);