% If you put this file in your working directory you can just 
% type the name of the file (without the .m) to execute these commands.
function A1Q1G1;

% To read the hipparcos data from file hipparcos.txt:

fid=fopen('hipparcos.txt');

% Read the data into a matrix M

M=fscanf(fid,'%g %g %g %g',[4,inf]);

fclose(fid);

% M(N,:) will be an array of data from column N.  For example, to define an array x consisting of the data in column 3:

para=M(1,:);
vmag=M(2,:);
bmag=M(3,:);
imag=M(4,:);

% Calculate the things you need...

bv = bmag-vmag;
d = 1 * (1000./para);
absv = vmag - 5*log10(d/10);
T = 4000./(0.93 + bv);
Lrat = 10.^(0.4*(4.83 - absv));
rsun = 6.957e+08;
sig = 5.67367e-08;
Lsun = 3.846e+26;

L1 = 4.*pi*(rsun^2)*sig*(T.^4.);
L2 = 4.*pi*((0.2*rsun)^2)*sig*(T.^4.);
L3 = 4.*pi*((5.*rsun)^2)*sig*(T.^4.);

% Now make a plot
figure();
scatter(bv, absv,"k", "*");
  axis ij;
  xlabel('B-V');
  ylabel('V Magnitude');
  title('Absolute V Magnitude as a Function of (B-V) Colour');

% Lrat wrt T
figure();
x = log10(T);
y = log10(Lrat);
y1= log10(L1/Lsun);
y2= log10(L2/Lsun);
y3=log10(L3/Lsun);

scatter(x, y, "k");
  set(gca,'xdir', 'reverse');
  xlabel('Log of Temperature');
  ylabel('Log of L(star)/L(sun)');
  title('Log of L(star)/L(Sun) with respect to Log of Temperature');
hold on;
p1=plot(x,y1,'LineWidth',2);
hold on;
p2=plot (x,y2,'LineWidth',2);
hold on;
p3=plot (x,y3,'LineWidth',2);
hold on;
legend([p1,p2,p3],'R(sun)','0.2 R(sun)','5 R(sun)');
xlim([3.1, 3.7])
hold off;

