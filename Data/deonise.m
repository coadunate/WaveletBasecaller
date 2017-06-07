figure(3);
plot(signal_v);
title('Original Signal');
%xlim([135 165]);
xlabel('Event Number');
%set(gca, 'xtick', 130:2:200);
ylabel('Mean Signal, pA');
%set(gca, 'ytick', 40:5:75);
grid on;
saveas(3, 'original.png');

fd = wden(signal_v, 'sqtwolog', 'h', 'one', 1, 'haar');
fe = wden(signal_v, 'sqtwolog', 'h', 'one', 2, 'haar');
ff = wden(signal_v, 'sqtwolog', 'h', 'one', 3, 'haar');
figure(1);
aaa = plot(fd);
ylabel('Mean Signal, pA');
xlabel('Event Number');
title('First Level Decomposition');
%xlim([135 165]);
%set(gca, 'xtick', 130:2:200);
%set(gca, 'ytick', 40:5:75);
grid on;
saveas(1, 'denoise_1.png');
xlim([120 210])
figure(2);
aab = plot(fe);
title('Denoise Level 2');
xlim([120 300])
set(gca, 'xtick', 135:165);
set(gca, 'ytick', 40:75);
grid on;
saveas(2, 'denoise_2.png');
figure(4);
aac = plot(ff);
title('Denoise Level 3');
xlim([120 210])
saveas(4, 'denoise_3.png');
