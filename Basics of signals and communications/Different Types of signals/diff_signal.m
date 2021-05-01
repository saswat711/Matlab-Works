
t = (-3:0.01:3)';
n = [-1 -0.5 0 0.5 1];

basic_continious = (5*t)-1;

basic_discrete = 5-n;

impulse = t==0;

unitstep = t>=0;

ramp = t*unitstep;

exponential = exp(t);

sinusoidal = sin(2*pi*5*t);

signum = sign(t);
nexttile

plot(t,impulse)
title("impulse signal");
padding = 'compact';
nexttile  

plot(t,unitstep)
title("unitstep signal");
nexttile

plot(t,ramp)
title("ramp signal");

nexttile
plot(t,signum)
title("signum signal");

nexttile
plot(t,sinusoidal)
title("sinusoidoal signal");

nexttile
plot(t,basic_continious)
title("  a continoious signal");

nexttile
stem(n,basic_discrete)
title("a discrete signal");

nexttile
syms t
fplot(rectangularPulse(t), [-1 1])
title("gate signal");
