[c,l] = wavedec(signal_v, 3, 'haar');
D = detcoef(c,l,'cells');

figure;

subplot(2,1,1);
h = plot(signal_v)
%h = plot(dyadup(D{1}));
%h.ShowBaseLine = 'off';
h.Marker = '.';
h.MarkerSize = 2;

subplot(2,1,2);
[cA,cD] = dwt(signal_v,'haar');
hA = plot(cA);
%hA.ShowBaseLine = 'off';
hA.Marker = '.';
hA.MarkerSize = 2;

%subplot(3,1,3);
%hD = plot(c);
%hD.ShowBaseLine = 'off';
%hD.Marker = '.';
%hD.MarkerSize = 2;
