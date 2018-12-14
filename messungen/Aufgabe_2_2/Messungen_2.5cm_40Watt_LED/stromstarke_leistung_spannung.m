R = [10 110 210 310 470 690 910 1130 1500 1720 1940 2160 2200 3200 4200 5200];
V = [];

formatSpec = '%s';

for i = 1:16
	filename = int2str(R(i));
	fileID = fopen(filename, 'r');
	temp = textscan(fileID, '%f;%f', 'HeaderLines', 2);
	
	values = temp(1, 2);
	values_v = values{1};
	
	len = length(values_v);
	average = sum(values_v) / len;
	
	V(i) = average;
	
	fclose(fileID);
end

I = V ./ R;

P = V .* V ./ R;

hold on

yyaxis left
plot(V, I)

xlabel('Spannung in V');
ylabel('Stromstärke in A');

yyaxis right
plot(V, P)
ylabel('Leistung in W');

[p, u] = max(P);

disp(p);
disp(u);
disp(V(u));

yyaxis left

line([0 V(u)], [I(u) I(u)], 'Color', [1 0 1], 'LineStyle', '--');
line([V(u) V(u)], [0 I(u)], 'Color', [1 0 1], 'LineStyle', '--');

fig = findobj('Type', 'figure');
plots = findall(fig, 'Type', 'Line');
legend(plots([4, 1, 2]), {'Spannung', 'Leistung', 'Darstellung MPP'}, 'Position', [0.75 0.3 0 0]);

hold off

fig.PaperUnits = "inches"
fig.PaperPosition = [0 0 5 2.5]
print('/home/andreas/docs/kit/len/workshop/doc/latex/stromstarke_leistung_spannung_led', '-dsvg', '-r0')