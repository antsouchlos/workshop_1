fileID = fopen('mit_Kondensator', 'r');
temp = textscan(fileID, '%f;%f', 'HeaderLines', 2);

values = temp(1, 2);
V_withC = values{1};

fclose(fileID);

fileID = fopen('ohne_Kondensator', 'r');
temp = textscan(fileID, '%f;%f', 'HeaderLines', 2);

values = temp(1, 2);
V_withoutC = values{1};

fclose(fileID);

hold on
plot(V_withC);
plot(V_withoutC);
xlabel('Zeit in Sekunden');
ylabel('Spannung in Volt');
hold off

legend('Mit Kondensator', 'Ohne Kondensator');

fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 3];
print('/home/andreas/docs/kit/len/workshop/doc/latex/spannung_kondensator', '-dsvg', '-r0');
