m = 0.111;
R = 0.015;
g = -9.8;
L = 1.0;
d = 0.03;
J = 9.99e-6;

K = (m*g*d)/(L*(J/R^2+m));

num = [-K];
den = [1 0 0];
plant=tf(num,den);



axis([-5 5 -2 2])

zo = 0.01;
po = 5;
contr=tf([1 zo],[1 po]);

rlocus(contr*plant);

sgrid(0.70, 1.9);

[k,poles] = rlocfind(contr*plant);

sys_cl=feedback(k*contr*plant,1);
t=0:0.01:5;
figure
step(sys_cl,t);