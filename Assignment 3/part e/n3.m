[t3,x3]= ode45('func3', [0.00001:0.1:10], [1 0]);

rR = [0:0.01:1];

theta = rR-1;

den = (1.35e-5)*(theta).^3;
den2 = (1.35e-5)*(x3(:,1)).^3;
figure();
plot(theta,den);
hold on
plot(x3(:,1),den2)
xlabel('r / Rstar','fontsize',14)
ylabel('Density (\rho)','fontsize',14)
title('Solutions for Lane-Emden Equation','fontsize',14)

figure();
plot(t3,x3(:,1));
hold on
plot(t3,x3(:,2));
plot(t3,zeros(length(t3),1),'--r') 




x0=interp1(x3(:,1),t3,0)
xdot0=interp1(x3(:,2),t3,6.89)