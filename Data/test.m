for ii=1:length(s200)
    cset = [0+ii/length(s200) 0+ii/length(s200) 0+ii/length(s200)]
    plot(t200(ii), s200(ii), '-o', 'markerfacecolor', cset)
end