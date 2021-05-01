% modulation signal
am=1;
fm=0.05;
tm=1/fm;
t=(0:0.02:200)';
mt=am.*cos(2*pi*fm*t);
nexttile;
plot(mt);
xlabel('Time');
ylabel('Amplitude');
title("modulation signal")

% carrier signal
ac=2;
fc=1;
tc=1/fc;
ct=ac.*cos(2*pi*fc*t);
nexttile;
plot(ct);
xlabel('Time');
ylabel('Amplitude');
title("carrier signal")

% modulated signal for ka = 1/2
ka=1/2;
st=(ac.*(1+ka.*mt)).*cos(2*pi*fc*t);
et=abs(ac.*(1+ka.*mt)); %envelope
u=ka*am;
if et>=0
    if u>1
        disp("it is a overmodulated signal as shown in the graph for ka = 1/2");
         disp(" ");
    elseif u==1 
         disp("it is a standard modulated signal as shown in the graph for ka = 1/2");
          disp(" ");
    else 
         disp("it is a undermodulated signal as shown in the graph for ka = 1/2");
     disp(" ");
    end
    
else
disp("it is not a standard modualted signal as shown in the graph for ka = 1/2");
 disp(" ");
end
nexttile;
plot(st);
xlabel('Time');
ylabel('Amplitude');
title("modulated signal for ka = 1/2")

% modualted signal for ka = 3/2
ka1=3/2;
st1=(ac.*(1+ka1.*mt)).*cos(2*pi*fc*t);
et1=abs(ac.*(1+ka1.*mt));
u1=ka1*am;
if et1>=0
    if u1>1
        disp("it is a overmodulated signal as shown in the graph for ka = 3/2");
     disp(" ");
    elseif u1==1 
         disp("it is a standard modulated signal as shown in the graph for ka = 3/2");
     disp(" ");
    else 
         disp("it is a undermodulated signal as shown in the graph for ka = 3/2");
     disp(" ");
    end
    
else
disp("it is not a standard modualted signal as shown in the graph");
 disp(" ");
end
nexttile;
plot(st1);
xlabel('Time');
ylabel('Amplitude');
title("modulated signal for ka = 3/2")

% modualted signal for ka = 1
ka2=3/2;
st2=(ac.*(1+ka2.*mt)).*cos(2*pi*fc*t);
et2=abs(ac.*(1+ka2.*mt));
u2=ka2*am;
if et2>=0
    if u2>1
        disp("it is a overmodulated signal as shown in the graph for ka = 1");
        disp(" ");
    elseif u2==1 
         disp("it is a standard modulated signal as shown in the graph for ka = 1");
   disp(" "); 
    else 
         disp("it is a undermodulated signal as shown in the graph for ka = 1");
   disp(" "); 
    end
    
else
disp("it is not a standard modualted signal as shown in the graph for ka = 1");
 disp(" ");
end
nexttile;
plot(st2);
xlabel('Time');
ylabel('Amplitude');
title("modulated signal for ka = 1")

disp("for different value of ka we are seeing different type of modulation and also for different am we will have different type of modulation i.e. wether it is overmodualted or undermodualted or standard modulated ");
