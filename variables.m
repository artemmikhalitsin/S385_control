m = 0.11;
R = 0.015;
d = 0.03;
g = 9.8;
L = 1.0;
J = 9.99e-6;
r = 0;
theta = 0;
a = 0;

Kp = 0;
Ki = 0;
Kd = 0;

plant = tf(m*g*d, [L*(J/(R^2)+m) 0 0]);