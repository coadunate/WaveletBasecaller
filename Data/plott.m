cfs_beg = wrepcoef(coefs,longs);

clf
subplot(6,1,1);
plot(time,signal);
axis tight
for k = 1:level
    subplot(6,1,k+1); plot(cfs_beg(k,:),'Color',[.5 .8 .5]);
    axis tight
    maxi = max(abs(cfs_beg(k,:)));
    hold on
    par = thrParams{k};
    plotPar = {'Color', 'm', 'LineStyle', '-.'};
    for j = 1:size(par,1)-1
        plot([par(j,2),par(j,2)],[-maxi maxi],plotPar{:});
    end
    for j = 1:size(par,1)
        plot([par(j,1),par(j,2)],[par(j,3),Par(j,3)],plotPar{:});
        plot([par(j,1),par(j,2)],-[par(j,3),Par(j,3)],plotPar{:});
    end
    ylim([-maxi*1.05 maxi*1.05]);
end
subplot(6,1,level+1);