% Daten importieren


filename = 'langzeit';

fileID = fopen(filename, 'r');
temp = textscan(fileID, '%f;%f', 'HeaderLines', 2);

values = temp(1, 2);
U = values{1};

U = 2*U;


% Mit Werten rechnen

% U: Vektor mit Spannungen, Anzahl der Elemente entspricht der Zeit in Sekunden

G = 1/200000 + 1/1000;
R = 1 / G;

P = U .* U ./ R;

W_s = trapz(P); % Energie in Wattsekunden
W_h = (W_s/60)/60; % Energie in Wattstunden


% Werte ausgeben


fprintf('Energie in Ws: %f\n', W_s);
fprintf('Energie in Wh: %f\n', W_h);

%plot(U, 'r');
%ylabel('Spannung in Volt');
%xlabel('Zeit in Sekunden');
%xlim([0 7600])

%fig = gcf
%fig.PaperUnits = "inches"
%fig.PaperPosition = [0 0 7 5]
%print('/home/andreas/docs/kit/len/workshop/doc/latex/spannung_langzeit', '-dsvg', '-r0')