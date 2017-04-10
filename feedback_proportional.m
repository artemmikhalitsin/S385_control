variables;

Kp = 1;

controller = pid(Kp);

sys = feedback(controller*plant, 1);

step(0.25*sys, 0:0.1:60);