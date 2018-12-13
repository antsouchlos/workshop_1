fileID = fopen('Aufladen', 'r');
temp = textscan(fileID, '%f;%f', 'HeaderLines', 2);
fclose(fileID);

fileID = fopen('Entladen', 'r');
temp = textscan(fileID, '%f;%f', 'HeaderLines', 2);
fclose(fileID);

values = temp(1, 2);
V_auf = values{1};


values = temp(1, 2);
V_ent = values{1};


% V_auf: Vektor mit Spannnungen bei Aufladen des Kondensators
% V_end: Vektor mit Spannnungen bei Entladen des Kondensators


len = length(V_auf);

% t: Zeitvektor, in Millisekunden

t = [1:len];
t = t.';

I = 220*10^-3 .* (diff(V_auf) ./ diff(t));
V_auf = V_auf(1:(len-1)); % Ein Element des Spannungsvektors muss weggelassen werden, da wegen der 'diff' Funktion der Vektor 'I' ein Element weniger enthält
Q = V_auf .* I;
q = trapz(Q); % Gesamte Energie die zum Aufladen des Kondensators verbraucht wurde


len = length(V_ent);
t = [1:len];
t = t.';

I = 220*10^-3 .* (diff(V_ent) ./ diff(t));
V_ent = V_ent(1:(len-1));
P = V_ent .* I;
p = trapz(P); % Gesamte Energie die beim entladen des Kondensators freigesetzt wurde


wirk = abs(p) / abs(q); % Berechung des Wirkungsgrades