[cLNN,lLNN] = wavedec(new_signal, 3, 'haar');
DN = detcoef(cLNN,lLNN,'cells');

[cAN, cDN] = dwt(new_signal, 'haar');

figure(2);
plot_cAN_100 = plot(cAN);
ylim([50 200]);
saveas(2, 'plot_cAN_100.png');
figure(3);
plot_sign_200 = plot(signal_v);
xlim([120 300])
ylim([0 180])
saveas(3, 'plot_sign_200.png');
figure(4);
[cA2,cD2] = dwt(cDN,'haar');
plot_cA2 = plot(cA2);
ylim([-30 50]);
saveas(4, 'plot_cA2.png');
figure(5);
[cA3,cD3] = dwt(cD2,'haar');
plot_cA3 = plot(cA3);
ylim([-30 40]);
saveas(5, 'plot_cA3.png');

%figure(5);
%subplot(4,1,1);
%sPlot = plot(new_signal);
%ylim([40 90])
%subplot(4,1,2);
%dPlot1 = plot(cAN);
%subplot(4,1,3);
%dPlot2 = plot(cA2);
%subplot(4,1,4);
%dPlot3 = plot(cA3);
%saveas(5,'approxPlot.png');
