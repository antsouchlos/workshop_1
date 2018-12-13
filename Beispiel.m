%Beispiel zum Einfügen von MATLAB-Code und Tabellen aus Matlab in Latex

M(1,:)=[0:2*pi];
M(2,:)=sin(M(1,:));
M(3,:)=cos(M(1,:));
M=transp(M);
latex(M);
