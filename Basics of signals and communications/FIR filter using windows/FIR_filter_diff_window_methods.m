% FIR FILTER DESIGN USING MULTIPLE WINDOWS.
%In signal processing, a finite impulse response (FIR) filter is a filter whose impulse response (or response to any finite length input) is of finite duration, because it settles to zero in finite time. This is in contrast to infinite impulse response (IIR) filters, which may have internal feedback and may continue to respond indefinitely (usually decaying).
%In the window design method, one first designs an ideal IIR filter and then truncates the infinite impulse response by multiplying it with a finite length window function. The result is a finite impulse response filter whose frequency response is modified from that of the IIR filter.


%Order of filter
n=20;
disp("order of fitler is selected to be 20");
%PassBand Frequency
frequency_pass = input('Enter the passband frequency = '); %values used in testing is 200
%StopBand Frequency
frequency_stop = input('Enter the stopband frequency = '); % values used in testing is 600
%Sampling Frequency
frequency_sampling = input('Enter the sampling frequency = ');%values used in testing is 1000 

wp=2*(frequency_pass/frequency_sampling); %PassBand Edge Frequencies
ws=2*(frequency_stop/frequency_sampling);  %StopBand Edge Frequencies
%wn=[wp,wa];
window_type = input('Enter "R" - for Rectangular Window or "T" - for Triangular Window or "M" - for Hamming Window or "N" - for Hanning Window or "K" - for Kaiser Window ');
   switch(window_type)
   case {'R','r'} 
   window=boxcar(n+1); %Rectangular Window
   disp("Rectangular Window is selected");
   case {'T','t'}
   window=bartlett(n+1); %Triangular Window
   disp("Triangular Window is selected");
   case {'M','m'}
   window = hamming(n+1);  %Hamming Window
   disp("Hamming Window is selected");
   case {'N','n'} 
   window = hanning(n+1);  %Hanning Window
   disp("Hanning Window is selected");
   case {'K','k'} 
   window = kaiser(n+1);  %Kaiser Window
   disp("Kaiser Window is selected");
   otherwise
   window=boxcar(n+1); %Default window is Rectangular Window
   disp("By Default Rectangular Window is selected");
   end

wn=2*(frequency_pass/frequency_sampling);

filter = input('Enter "H" - for high pass filter or "L" - for low pass filter');
   switch(filter)
   case {'L','l'}
      b=fir1(n,wn,window); %For LowPass filter
      disp("LowPass is selected");
   case {'H','h'} 
      b=fir1(n,wn,'high',window); %Fow HighPass filter
      disp("HighPass is selected");
   otherwise
      b=fir1(n,wn,window); %Default fitler is Lowpass fitler
      disp("By Default LowPass filter is selected");
   end

[H,w]=freqz(b,1);
%plotting the magnitude response
nexttile
plot(w/pi,20*log(abs(H)));
xlabel('nf');
ylabel('magnitude in db');
title('Magnitude Response');

%Plotting the phase response
nexttile
plot(w/pi,angle(H));
xlabel('nf');
ylabel('angle');
title('Phase Response');