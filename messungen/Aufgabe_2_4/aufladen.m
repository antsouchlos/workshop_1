fileID = fopen('Aufladen', 'r');
temp = textscan(fileID, '%f;%f', 'HeaderLines', 2);

values = temp(1, 2);

fclose(fileID);

V_auf = values{1};

V_auf = 2 * V_auf;

% V_auf: Vektor mit Spannungen bei Aufladung des Kondensators

plot(V_auf, 'r');

xlabel('Zeit in ms');
ylabel('Spannung in V');

fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 3];
print('/home/andreas/docs/kit/len/workshop/doc/latex/spannung_aufladen', '-dsvg', '-r0');
