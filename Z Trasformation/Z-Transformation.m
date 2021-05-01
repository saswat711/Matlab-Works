% Q.1. x1(z) = 2 + 3Z^−1 + 4Z^−2 and x2(z) = 3 + 4Z^−1 + 5Z^−2. Determine X3(z) =X1(z)X2(z).
% as per the eqn

syms Z;
x1 = 2 + 3*Z^(-1) + 4*Z^(-2);
x2 = 3 + 4*Z^(-1) + 5*Z^(-2);
x3 =expand(x1*x2) ;
disp("the value of X3(z) =X1(z)X2(z) in Q.1 is")
disp(x3);
x11=[2,3,4];
x12=[3,4,5];
x13=conv(x11,x12);

disp("verify by convulation method for Q.1");
disp("coefficients in ascending powers of Z^−1")
disp(x13);

 
%Q.2 x1(z) = Z + 2 + 3Z^−1 and x2(z) = 2Z^2 + 3 + 4Z^-1 . Determine X3(z) = X1(z)X2(z).

x1 = Z + 2 + 3*(Z^(-1));
x2 = 2*(Z^2) + 3 + 4*(Z^(-1));
x3 =expand(x1*x2) ;
disp("the value of X3(z) =X1(z)X2(z) in Q.2 is")
disp(x3);
 x11=[1,2,3]; 
 x12=[2,0,3,4]; n2=(-2:1);
 x13=conv(x11,x12);
 disp("verify by convulation method for Q.2");
 disp("coefficients in ascending powers of Z^−1")
 disp(x13);



% Q.3. X(z) =Z/(3.Z^2 − 4z + 1) convert this rational function in ascending powers of Z−1. Sketch its pole-zero plot.
disp("X(Z) = (Z^-1)/(3 - 4*Z^-1 + Z^-2)  % In terms of ascending power of Z^-1")
n=[0,1];
d=[3,-4,1];
[R,p,k]=residuez(n,d);
disp("verify by partial fraction exapnsion method of Q.3")
disp("Residues = ")
disp(R)
disp("poles = ")
disp(p)
disp("direct terms = ")
disp(k)
nexttile
zplane(n,d)
title("pole-zero of the system 3");


% Q.4. Causal system y(n)=0.9y(n − 1) + x(n) a. Sketch its pole-zero plot. b. Plot |H (ejω)| and ∠H (ejω).
%the system is casual

H=  1/(1 - (0.9*(Z^-1))) ;
disp("the Z transform of the eqn is ")
disp(H);
b = [1, 0]; a = [1, -0.9];
nexttile
zplane(b,a);
title("pole-zero of the system 4")
w = (0:1:100)*pi/100; H = freqz(b,a,w);
magH = abs(H); phaH = angle(H);
nexttile
plot(w/pi,magH); 
xlabel("frequency in pi units");
ylabel("Magnitude")
title("Magnitude Response")
nexttile 
plot(w/pi,phaH/pi);
xlabel("frequency in pi units"); 
ylabel("Phase in pi units")
title("Phase Response")