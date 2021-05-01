%Q.1 fourrier coefficient

t1=(-6:0.01:6);
T=2;
F=1/T;
xt=sign(sin(2*pi*F*t1));
nexttile
plot(t1,xt);
xlabel('Time');
ylabel('Amplitude');
title("square wave x(t)");
syms x n;
xt=sign(sin(2*pi*F*x));
a0=1/T*(int(xt,0,T));
an=2/T*(int(xt.*cos(n*2*pi*F*x),0,T));  %the answer is show in terms of n
bn=2/T*(int(xt.*sin(n*2*pi*F*x),0,T));  %teh answer is shown in terms of n
disp("the fourrier coefficient a0 is");
disp(a0);
disp("the fourrier coefficient an is");
disp(an);
disp("the fourrier coefficient bn is");
disp(bn);

%Q.2 fourrier transform

ut = t1==0;
nexttile
plot(t1,ut);
xlabel('Time');
ylabel('Amplitude');
title("unit impulse function x(t)");
syms j t f;
Xf=int(dirac(t).*exp(-2*pi*1i*f*t),t,-Inf,Inf);
nexttile
plot(abs(fft(ut)));
xlabel('Frequency');
ylabel('Amplitude'); 
title("the fourrier transform of xt");
disp("the fourrier transform of xt is");
disp(Xf);