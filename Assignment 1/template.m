% If you put this file in your working directory you can just 
% type the name of the file (without the .m) to execute these commands.
function template;

% To read the hipparcos data from file hipparcos.txt:

fid=fopen('W17_assignment1_orbit.dat');

% Read the data into a matrix M

M=fscanf(fid,'%g %g %g %g',[4,inf]);

fclose(fid);

% M(N,:) will be an array of data from column N.  For example, to define an array x consisting of the data in column 3:

orbph=M(1,:);
radv1=M(2,:);
radv2=M(3,:);
apmag=M(4,:);



% Calculate the things you need...

y=0.596-0.4*apmag;


% Now make a plot
figure();
plot(orbph, radv1);
  xlabel("Orbital Phase (Period - 50 Days)");
  ylabel("Radial Velocity (km/s)");
  title('Radial Velocities of a Binary System as a Function of Time');
hold on;
plot(orbph, radv2);
xlim([0, 1]);
hold on;
legend('Star A', 'Star B');
hold off;

figure();
plot(orbph,y,'LineWidth',2);
  xlabel("Orbital Phase (Period - 50 Days)");
  ylabel("Log of L/Lo ");
  title('Log of L/Lo as a Function of Time');
xlim([0, 1]);
ylim([-0.03,0]);
disp(apmag);
end