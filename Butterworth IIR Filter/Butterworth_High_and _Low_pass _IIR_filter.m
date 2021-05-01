% 1. Design Butterworth low pass IIR Filter.
clc;
disp("enter the specification for the butterworth lowpass IIR filter");
%Enter the passband ripple
ripple_pass = input('Enter the passband ripple = ');
%enter the stopband rupple
ripple_stop = input('Enter the stopband ripple = ');
%enter the passband frequency
frequency_pass = input('Enter the passband frequency = ');
%enter the stopband frequency
frequency_stop = input('Enter the stopband frequency = ');
%enter the smapling frequency
frequency_sampling = input('Enter the sampling frequency = ');
w1 = 2*frequency_pass/frequency_sampling;
w2 = 2*frequency_stop/frequency_sampling;
%calculation the order and wC
[N,wC] = buttord(w1,w2,ripple_pass,ripple_stop);
[b,a] = butter(N,wC,'low');
%PLOTTING THE VALUES
w = 0:0.01:pi;
[h,om] = freqz(b,a,w);
m = 20*log10(abs(h));
an = angle(h);
nexttile
plot(om/pi,m);
title('Magnitude Response lowfilter');
ylabel('Gain in dB ->');
xlabel('Normalised Frequency ->');
grid on;
nexttile
plot(om/pi,an);
title('Phase Response lowfilter');
xlabel('Normalised Frequency ->');
ylabel('Phase in radians ->');
grid on;
    

% 2. Design Butterworth high pass IIR Filter.

clc;
disp("enter the specification for the butterworth Highpass IIR filter");
%Enter the passband ripple
ripple_pass_high = input('Enter the passband ripple = ');
%enter the stopband rupple
ripple_stop_high = input('Enter the stopband ripple = ');
%enter the passband frequency
frequency_pass_high = input('Enter the passband frequency = ');
%enter the stopband frequency
frequency_stop_high = input('Enter the stopband frequency = ');
%enter the smapling frequency
frequency_sampling_high = input('Enter the sampling frequency = ');
%calculating the order and wc
w1_high = 2*frequency_pass_high/frequency_sampling_high;
w2_high = 2*frequency_stop_high/frequency_sampling_high;
[N_high,wC_high] = buttord(w1_high,w2_high,ripple_pass_high,ripple_stop_high);
%performing butterworth operation
[b_high,a_high] = butter(N_high,wC_high,'high');
%PLOTTING THE VALUES
w = 0:0.01:pi;
[h_high,om_high] = freqz(b_high,a_high,w);
m_high = 20*log10(abs(h_high));
an_high = angle(h_high);
nexttile
plot(om_high/pi,m_high);
title('Magnitude Response high filter');
ylabel('Gain in dB ->');
xlabel('Normalised Frequency ->');
grid on;
nexttile
plot(om_high/pi,an_high);
title('Phase Response high filter');
xlabel('Normalised Frequency ->');
ylabel('Phase in radians ->');
grid on;