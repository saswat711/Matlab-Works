x=[1 2 3 4 5];
L=length(x);

n=0:L-1;
k=0:L-1;
w=exp(-1i*2*pi/L);
 nk=n'*k;
 wmk=w.^nk;
df=x*wmk;

nexttile
stem(abs(df));
title('magnitude of the DTFT');
nexttile
stem(angle(df));
title('angle of the DTFT');
nexttile
stem(real(df));
title('real value of the DTFT');
nexttile
stem(imag(df));
title('imaginary value of the DTFT');