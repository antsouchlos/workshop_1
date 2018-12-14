fileID = fopen('Entladen', 'r');
temp = textscan(fileID, '%f;%f', 'HeaderLines', 2);

values = temp(1, 2);

fclose(fileID);

V_ent = values{1};

V_ent = 2 * V_ent;

% V_ent: Vektor mit Spannungen bei Entladung des Kondensators

plot(V_ent);

xlabel('Zeit in ms');
ylabel('Spannung in V');

fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 3];
print('/home/andreas/docs/kit/len/workshop/doc/latex/spannung_entladen', '-dsvg', '-r0');
