% If you put this file in your working directory you can just 
% type the name of the file (without the .m) to execute these commands.

% To read the hipparcos data from file hipparcos.txt:

fid=fopen('hipparcos.txt');

% Read the data into a matrix M

M=fscan(fid,'%g %g %g %g',[4,inf]);

fclose(fid);


% M(N,:) will be an array of data from column N.  For example, to define an array x consisting of the data in column 3:

par=M(1,:);
Vmag=M(2,:);
Bmag=M(3,:);
Imag=M(4,:);

% Calculate the things you need...
for i=Bmag, j=Vmag;
  BV(i,j) = Bmag-Vmag;
end

% Now make a plot
plot(Vmag, BV(i,j));


newplot;
hold on; % This allows you to keep plotting on the same graph without erasing it.

%
% Plot graph.  Look at the help page for the plot command.  
% You may also want to look at the commands "xlim", "ylim", "xlabel", "ylabel", and "axis ij".
%

hold off;
