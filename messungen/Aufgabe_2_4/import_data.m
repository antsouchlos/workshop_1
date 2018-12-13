fileID = fopen('Aufladen', 'r');
temp = textscan(fileID, '%f;%f', 'HeaderLines', 2);

values = temp(1, 2);
V_auf = values{1};

fclose(fileID);

%fileID = fopen('Entladen', 'r');
%temp = textscan(fileID, '%f;%f', 'HeaderLines', 2);

%values = temp(1, 2);
%V_ent = values{1};

%fclose(fileID);

plot(V_auf, 'r');
%plot(V_ent);
xlabel('Zeit in ms');
ylabel('Spannung in V');

%fig = gcf;
%fig.PaperUnits = 'inches';
%fig.PaperPosition = [0 0 6 3];
%print('/home/andreas/docs/kit/len/workshop/doc/latex/spannung_aufladen', '-dsvg', '-r0');
