tau = 110;

x = [1:600];
y  = 9 * exp(1) .^ (- x ./ tau);

t1 = tau;
t2 = 2 * tau;
t3 = 3 * tau;
t4 = 4 * tau;
t5 = 5 * tau;

y1 = 9 * exp(1) .^ (- t1 ./ tau);
y2 = 9 * exp(1) .^ (- t2 ./ tau);
y3 = 9 * exp(1) .^ (- t3 ./ tau);
y4 = 9 * exp(1) .^ (- t4 ./ tau);
y5 = 9 * exp(1) .^ (- t5 ./ tau);

disp(y1);
disp(y2);
disp(y3);
disp(y4);
disp(y5);

plot(x, y);

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