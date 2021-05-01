
%Q.1 ->

shi=0;
fc=20*(10^3); % carrier frequency
ts=1/(10*fc);
fs=1/ts;
t=(0:200)*ts; %time vector
xt=cos(2*pi*2000*t); %original signal
yt=xt.*cos(2*pi*fc*t); %modulated signal
nexttile
plot(t,xt);
title("x(t)");
nexttile
plot(t,yt);
title("y(t)");
wt = yt.*cos((2*pi*fc*t)+shi);
[BlpFilt,AlpFilt] = butter(4,0.1);
vt =filter(BlpFilt,AlpFilt,wt);
wf=fft(wt)/fs; %same can be found through below method also  
% syms t f 
% wf = int(wt.*exp(-1i*2*pi*f*t),t,-Inf,Inf);
nexttile
plot(t,wt);
title("w(t)");
nexttile;
plot(t,vt);
title("v(t)");

%frequency spectrum
nexttile
plot(t,abs(fftshift(fft(xt))));
title("magnitude spectrum of x(t)");
nexttile
plot(t,abs(fftshift(fft(yt))));
title("magnitude spectrum of y(t)");
nexttile
plot(t,abs(fftshift(fft(wt))));
title("magnitude spectrum of w(t)");
nexttile;
plot(t,abs(fftshift(fft(vt))));
title("magnitude spectrum of v(t)");




