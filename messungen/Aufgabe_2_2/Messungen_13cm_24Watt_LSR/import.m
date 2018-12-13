R = [10 110 210 310 470 690 910 1130 1500 1720 1940 2160 2200 3200 4200 5200];

V = []

for k = 1:16
    x = importfile(int2str(R(k)));   
    V(k) = mean(x);
end

P = (V .* V) ./ R

plot(V, P);