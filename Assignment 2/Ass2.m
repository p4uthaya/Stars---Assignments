% Question 2

% 2a
c=3.00e+8;% m/s speed of light in vaccum
h=6.625e-34;% J.s Planck constant 
k=1.38e-23;%  T/K Boltzmann constant
lambda=[100e-9:1e-9:2e-6];
nu=[0.15e14:0.01e14:30e14];
T=5500;
Blam=(2*h.*(c.^2))./((lambda.^5).*(exp((h.*c)./(k.*T.*lambda))-1));
plot(lambda*1e9,Blam)
hold on
grid
xlabel('Wavelength \lambda (nm)')
ylabel('B_{\lambda}')
title('Intesity of Blackbody Radiation per Wavelength for T = 5500K')
hold off

% 2b 
figure(2);
Bnu=(2*h.*(nu.^3))./((c.^2).*(exp((h.*nu)./(k.*T))-1));
plot(nu*1e-14,Bnu)
hold on
grid
xlabel('Frequency \nu (10^{14} Hz)')
ylabel('B_{\nu}')
title('Intesity of Blackbody Radiation per Frequency for T = 5500K')
hold off

% 2e

figure(3);
T1=3000;
T2=5500;
T3=30000;

Blam3000 =(2*h.*(c.^2))./((lambda.^5).*(exp((h.*c)./(k.*T1.*lambda))-1));
Blam5500 = (2*h.*(c.^2))./((lambda.^5).*(exp((h.*c)./(k.*T2.*lambda))-1));
Blam30000 =(2*h.*(c.^2))./((lambda.^5).*(exp((h.*c)./(k.*T3.*lambda))-1));

p1=plot(log10(lambda),log10(lambda.*Blam3000));
hold on 
p2=plot(log10(lambda),log10(lambda.*Blam5500));
hold on
p3=plot(log10(lambda),log10(lambda.*Blam30000));
hold on
grid
xlabel('log_{10}(\lambda)')
ylabel('log_{10}(\lambda B_{\lambda})')
title('log_{10}(\lambda B_{\lambda}) vs. log_{10}(\lambda)')
legend([p1,p2,p3],'3000 K','5500K','30000K');
hold off

figure (4);
lamvis = [400e-9:1e-9:800e-9];

Blam3000v = (2*h.*(c.^2))./((lamvis.^5).*(exp((h.*c)./(k.*T1.*lamvis))-1));
Blam5500v = (2*h.*(c.^2))./((lamvis.^5).*(exp((h.*c)./(k.*T2.*lamvis))-1));
Blam30000v =(2*h.*(c.^2))./((lamvis.^5).*(exp((h.*c)./(k.*T3.*lamvis))-1));

p4=plot(log10(lamvis),log10(lamvis.*Blam3000v));
hold on 
p5=plot(log10(lamvis),log10(lamvis.*Blam5500v));
hold on
p6=plot(log10(lamvis),log10(lamvis.*Blam30000v));
hold on
grid
xlabel('log_{10}(\lambda)')
ylabel('log_{10}(\lambda B_{\lambda})')
title('log_{10}(\lambda B_{\lambda}) vs. log_{10}(\lambda) for Visible Wavelengths')
legend([p4,p5,p6],'3000 K','5500K','30000K');
hold off

%-----------------------------------------------------------------------------
% Question 4

% 4a 
Te = 10000;
den = 1e-6;
opa = 3;
s = [0,01,1000000];
Ttwo = ((3/4)^(1/4))*(Te)*(((den.*opa.*s).+(2/3)).^(1/4));

figure(5);
plot(s.*1e-3, Ttwo);
hold on
grid
xlabel('Distance s (km)')
ylabel('Temperature T (K)')
title('Temperature of A-type MS Star with Respect to Distance ')
hold off

% 4c
me = 9.11e-31;
mp = 1.67e-27;
ro = 1e-6;
Tt = ((3/4)^(1/4))*(Te)*(((den.*opa.*s).+(2/3)).^(1/4));
w = ((2*pi*me.*k.*Tt).^(3/2)).*(exp((-13.6)./(k.*Tt)));
frac2 = -((mp/ro).*w).- w.*(((mp/ro)^2)-4*(mp.*s)).^(1/2)

figure(6);
plot(s.*1e-3,frac2)

