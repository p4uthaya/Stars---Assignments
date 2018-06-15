[t0,x0]= ode45('func', [0.00001:0.1:10], [1 0]);
[t1,x1]= ode45('func1', [0.00001:0.1:10], [1 0]);
[t2,x2]= ode45('func2', [0.00001:0.1:10], [1 0]);
[t3,x3]= ode45('func3', [0.00001:0.1:10], [1 0]);
[t4,x4]= ode45('func4', [0.00001:0.1:10], [1 0]);
[t5,x5]= ode45('func5', [0.00001:0.1:10], [1 0]);

plot(t0,x0(:,1));
hold on
plot(t1,x1(:,1));
hold on
plot(t2,x2(:,1));
hold on 
plot(t3,x3(:,1));
hold on 
plot(t4,x4(:,1));
hold on
plot(t5,x5(:,1));
hold on
axis([0 10 -0.5 1]);
hold on
xlabel('x','fontsize',14)
ylabel('\theta','fontsize',14)
title('Solutions for Lane-Emden Equation','fontsize',14)
legend('n=0','n=1','n=2','n=3','n=4','n=5')
hold off 
