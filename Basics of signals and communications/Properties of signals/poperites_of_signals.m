n=[0 1 2 3];
xrev=[2 1.5 1 3];
nshift=[-2 -1 0 1 2 3];
xshift=[1 2 3 2 4 5];
ntscale=[-3 -2 -1 0 1 2 3];
xtscale=[1 2 3 4 3 2 1];
nampscale=[0 1 2 3];
xampscale=[1 2 3 2];
x1add=[1 3 2 1];
x2add=[1 -2 3 2];
xadd=x1add+x2add;
x1sub=[1 3 2 1];
x2sub=[1 -2 3 2];
xsub=x1sub-x2sub;
x1mul=[1 2 -2 3];
x2mul=[1 0.5 0.5 2];
nexttile
stem(n,xrev)
title("time reversal x(n)");
nexttile
stem(-n,xrev)
title("time reversal x(-n)");
nexttile
stem(nshift,xshift)
title("time shift x(n)");
nexttile
stem(nshift-3,xshift)
title("time shift x(n+3)");
nexttile
stem(-(nshift+2),xshift)
title("time shift x(-n-2)");
xmul= x1mul .* x2mul;
nexttile
stem(nampscale,xampscale)
title("time scale x(n)");
nexttile
stem(nampscale,2*xampscale)
title("amplitude scale 2x(n)");
nexttile
stem(n,xadd)
title("addition of signal");
nexttile
stem(n,xsub)
title("subtract of signal");
nexttile
stem(n,xmul)
title("multiple of signal");
nexttile
stem(ntscale,xtscale)
title("time scaling x(n)");
nexttile
stem(2*ntscale,xtscale)
title("time scaling x(n/2)");
nexttile
stem(ntscale/2,xtscale)
title("time scale x(2n)");