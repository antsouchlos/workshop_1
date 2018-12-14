% Wie in der Diskussion hergeleitet, ist die Formel zur Berechnung der Spannung in Abhänigkeit der Zeit bei der Entladung eines Kondensators folgende:
%	 U = U_0 * e .^ (- t / tau)
% Für dieses Beispiel wird U_0 = 0.42 V gesetzt, was in etwa der maximalen Spannung der Kondensators im realen Experiment entspricht

tau = 110; % Wie in der Diskussion berechnet


% Graphische Darstellung der Spannung


x = [1:600]; % Zeit in Sekunden
y  = 0.84 * exp(1) .^ (- x ./ tau);

plot(x, y);


% Weitere Betonung bestimmter Zeitpunkte


t1 = tau;
t2 = 2 * tau;
t3 = 3 * tau;
t4 = 4 * tau;
t5 = 5 * tau;

y1 = 0.84 * exp(1) .^ (- t1 ./ tau);
y2 = 0.84 * exp(1) .^ (- t2 ./ tau);
y3 = 0.84 * exp(1) .^ (- t3 ./ tau);
y4 = 0.84 * exp(1) .^ (- t4 ./ tau);
y5 = 0.84 * exp(1) .^ (- t5 ./ tau);

hold on

line([0 t1], [y1 y1], 'Color', 'red');
line([0 t2], [y2 y2], 'Color', 'red');
line([0 t3], [y3 y3], 'Color', 'red');
line([0 t4], [y4 y4], 'Color', 'red');
line([0 t5], [y5 y5], 'Color', 'red');

line([t1 t1], [0 y1], 'Color', 'red');
line([t2 t2], [0 y2], 'Color', 'red');
line([t3 t3], [0 y3], 'Color', 'red');
line([t4 t4], [0 y4], 'Color', 'red');
line([t5 t5], [0 y5], 'Color', 'red');

xlabel("Zeit in s");
ylabel("Spannung in V");

legend('Spannung', 'Darstellung \tau');

set(gca,'XTick',[t1 t2 t3 t4 t5],'XTickLabel',{'\tau', '2\tau', '3\tau', '4\tau', '5\tau'});

fig = findobj('Type', 'figure');
fig.PaperUnits = "inches";
fig.PaperPosition = [0 0 6 4]
print('/home/andreas/docs/kit/len/workshop/doc/latex/theorie_kondensator', '-dsvg', '-r0')