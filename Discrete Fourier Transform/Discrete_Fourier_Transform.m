%Q.1 ->

N = 4;  %no of dft points
xn =[1 2 3 4];  %The sequence
ln = length(xn);       %find the length of the sequence
xn = [xn zeros(1,N-ln)];
xk = zeros(1,N);  %initialize an array of same size as that of input sequence
ixk = zeros(1,N); %initialize an array of same size as that of input sequence
%the DFT of the sequence
for k = 0:N-1
    for n = 0:N-1
        xk(k+1) = xk(k+1)+(xn(n+1)*exp((-1i)*2*pi*k*n/N));
    end
end
magnitude = abs(xk);
disp("Q.1 ->")
disp('DFT Sequence = ');
disp(magnitude);
phase = angle(xk); % .the phases of individual DFT points
disp('Phase in degree = ');
disp(phase);

%code for the IDFT sequence
for n = 0:N-1
    for k = 0:N-1
        ixk(n+1) = ixk(n+1)+(xk(k+1)*exp(1i*2*pi*k*n/N));
    end
end
ixk = ixk./N;
disp('IDFT Sequence = ');
disp(ixk);

%Q.2 ->

N = 8;  %no of dft points
xn =[1 2 3 4];  %The sequence
ln = length(xn);       %find the length of the sequence
xn = [xn zeros(1,N-ln)];
xk = zeros(1,N);  %initialize an array of same size as that of input sequence

%the DFT of the sequence
for k = 0:N-1
    for n = 0:N-1
        xk(k+1) = xk(k+1)+(xn(n+1)*exp((-1i)*2*pi*k*n/N));
    end
end
%to plot the input sequence
disp("Q.2 ->")
magnitude = abs(xk); % the magnitudes of individual DFT points
disp('DFT Sequence = ');
disp(magnitude);
%to plot the DFT sequence
phase = angle(xk); % the phases of individual DFT points
disp('Phase in degree = ');
disp(phase);

%Q.3 ->

N = 4;  %no of dft points
xn = [1 1 1 1];  %The sequence
ln = length(xn);       %find the length of the sequence
xn = [xn zeros(1,N-ln)];
xk = zeros(1,N);  %initialize an array of same size as that of input sequence
ixk = zeros(1,N); %initialize an array of same size as that of input sequence
%the DFT of the sequence
for k = 0:N-1
    for n = 0:N-1
        xk(k+1) = xk(k+1)+(xn(n+1)*exp((-1i)*2*pi*k*n/N));
    end
end
%to plot the input sequence
t = 0:N-1;
nexttile
stem(t,xn);
ylabel('Magnitude');
xlabel('n');
title('Input Sequence');
disp("Q.3 ->")

magnitude = abs(xk); % the magnitudes of individual DFT points
disp('DFT Sequence = ');
disp(magnitude);

%to plot the DFT sequence
t = 0:N-1;
nexttile
stem(t,magnitude);
ylabel('Magnitude');
xlabel('K');
title('DFT Sequence');

phase = angle(xk)*180/pi; % the phases of individual DFT points
disp('Phase in degree= ');
disp(phase);

%to plot the Phase Response
t = 0:N-1;
nexttile
stem(t,phase);
ylabel('Phase');
xlabel('K');
title('Phase Response');


