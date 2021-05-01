% Q.1. This message DSB-AM modulates the carrier c (t) =cos (2πf c t).Plot the m (t), c (t) and modulated signal s (t).Assume that t 0 =0.15s and f c =250Hz.

fc = 250;  %carrier frequency
t0= 0.15;   %signal duraiton
ts = 0.001;%sampling interval
fs = 1/ts; %sampling frequency
ka=1; %Amplitude sensitivity
t=(-t0:ts:t0);

for i=1:1:size(t,2)   %message signal is m(t)
    if(t(i)>=0 && t(i)<=t0/3)
        mt(i)=1;
    elseif(t(i)>t0/3 && t(i)<=2*t0/3)
        mt(i)=-2;
    else
        mt(i)=0;
    end
end

ct = cos(2*pi*fc*t); %carrier signal
st=ct.*mt;  %modulated signal
nexttile
plot(t,mt); %plotting the message signal
title("m(t)");
xlabel("Time");
nexttile
plot(t,ct);%plotting the carrier signal
title("c(t)");
xlabel("Time");
nexttile
plot(t,st);%plotting the am-dsb signal
title("s(t)");
xlabel("Time");

% Fourier transform
X=fft(mt);%F.T of message signal
n=length(X);
Y = fftshift(X);
fshift = (-n/2:n/2-1)*(fs/n); % zero-centered frequency range
powershift = abs(Y);     % zero-centered power
nexttile
plot(fshift,powershift); % ploting frequency spectrum of message signal
title(" fourier tranform of m(t)");
xlabel("Frequency");
ylabel("Magnitude");
nexttile
X1=fft(st);%F.T of modulated signal
n1=length(X1);
Y1 = fftshift(X1);
fshift1 = (-n1/2:n1/2-1)*(fs/n1); % zero-centered frequency range
powershift1 = abs(Y1);     % zero-centered power
plot(fshift1,powershift1); %ploting frequency spectrum of modulated signal
title("fourier transform of s(t)");
xlabel("Frequency");
ylabel("Magnitude");
%other method to find the foruier transform wihtout using fft but it can't be
%used in ploting and various calculation to be performed on it.
syms t f
mf = int(mt.*exp(-2*pi*1i*f*t),t,-Inf,Inf); 
sf = int(st.*exp(-2*pi*1i*f*t),t,-Inf,Inf);
