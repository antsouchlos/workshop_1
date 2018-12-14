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

P = V .^ 2 / R;

plot(V, I)

xlabel('Spannung in V');
ylabel('Stromstärke in A');

hold on

yyaxis right
plot(V, P)
ylabel('Leistung in W');

hold off

%fig = gcf
%fig.PaperUnits = "inches"
%fig.PaperPosition = [0 0 5 1.5]
%print('/home/andreas/docs/kit/len/workshop/doc/latex/spannung_led', '-dsvg', '-r0')