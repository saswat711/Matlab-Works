%Q.1> Plot the following signals and calculate the energy of signal using matlab.
syms x T;
t=(-16:0.01:16)';
ut= t>=0;

%1.a-)
a1=(exp(-10*t)).*ut;
nexttile;
plot(t,a1);
xlabel('Time');
ylabel('Amplitude');
title("e^-10t * u(t)");
mod_a1= (exp(-10*x).*heaviside(x)).*conj(exp(-10*x).*heaviside(x));
ene_a1=int(mod_a1,x,-Inf,Inf);
disp("energy of signal 1-a is");
disp(ene_a1);

%1.b-)
ut15= t>=15;
b1=ut-ut15;
nexttile;
plot(t,b1);
xlabel('Time');
ylabel('Amplitude');
title("u(t) - u(t-15)"); 
mod_b1=@(y) (heaviside(y)-heaviside(y-15)).*(conj(heaviside(y)-heaviside(y-15)));
ene_b1=integral(mod_b1,-Inf,Inf);
disp("energy of signal 1-b is");
disp(ene_b1);

%1.c-)
u2t= heaviside(2-t);
co=cos(10*3.14*t);
c1=co.*u2t.*ut;
nexttile;
plot(t,c1);
xlabel('Time');
ylabel('Amplitude');
title("cos(10*pi*t)*u(t)*u(2-t)"); 
mod_c1=(cos(10*pi*x).*heaviside(x).*heaviside(2-x)).*(conj(cos(10*pi*x).*heaviside(x).*heaviside(2-x)));
ene_c1=int(mod_c1,x,-Inf,Inf);
disp("energy of signal 1-c is")
disp(ene_c1);

%Q.2> Plot the following signals and calculate the power of signal using matlab.

%2.a-)
a2=(1+exp(-5*t)).*ut;
nexttile;
plot(t,a2);
xlabel('Time');
ylabel('Amplitude');
title("(1+e^-5t) * u(t)");
mod_a2=((1+exp(-5*x)).*heaviside(x)).*conj((1+exp(-5*x)).*heaviside(x));
ene_a2=int(mod_a2,x,-T/2,T/2);
pow_a2=limit(ene_a2/T,T,Inf);
disp("power of signal 2-a is");
disp(pow_a2);

%2.b-)
rt= t.*ut;
ut2= t>=2;
rt2 = (t-2).*ut2;
b2=rt-rt2;
nexttile;
plot(t,b2);
xlabel('Time');
ylabel('Amplitude');
title("r(t)-r(t-2)");
mod_b2=((x.*heaviside(x))-((x-2).*heaviside(x-2))).*(conj((x.*heaviside(x))-((x-2).*heaviside(x-2))));
ene_b2=int(mod_b2,-T/2,T/2);
pow_b2=limit(ene_b2/T,T,Inf);
disp("power of signal 2-b is");
disp(pow_b2);