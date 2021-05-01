%Q.1 ->

hn =[1 3 5 4]; %the sequence
n = 0:3;
N=length(hn);
y = hn(mod(-n,N)+1);  %circular folding
y1= hn(mod(n-1,N)+1);  %circular folding
disp("Q.1 ->")
nexttile
stem(n,hn); 
title("Original sequence")
disp("Original sequence")
xlabel('n'); 
ylabel('x(n)');
disp(hn)
nexttile
stem(n,y);
title('FOR X((-n))N')
xlabel('n');
ylabel('x(-n mod N)');
disp('FOR X((-n))N')
disp(y)
nexttile
stem(n,y1);
title('FOR X((n-1))N')
xlabel('n');
ylabel('x(n-1 mod N)');
disp('FOR X((n-1))N')
disp(y1)

%Q.2 ->

%Using time domain

x=[2 3 4];
h=[1 2 3 4];
m=length(x);%length of sequence x(n)
n=length(h);%length of sequence h(n)
N=4;%length of output sequence y(n)
%For equating both sequence length
x=[x,zeros(1,N-m)];
h=[h,zeros(1,N-n)];
for n=1:N
    Y(n)=0;
    for i=1:N
        j=n-i+1;
        if(j<=0)
            j=N+j;
        end
        Y(n)=(Y(n)+x(i)*h(j));
    end
end
n=0:N-1;%Range of all Sequences
nexttile
disp("Q.2 ->")
disp('Convoluted Sequence Y(n) is:')
disp(Y)
stem(n,Y)
xlabel('n')
ylabel('Y(n)')
title('Circular Convoluted Sequence')


%Using frequency domain using DFT OF X AND H


x=[2 3 4];
disp('1st i/p sequence is');
disp(x);
h=[1 2 3 4];
disp('2nd i/p sequence is');
disp(h);
lx=length(x);
lh=length(h);
N=4;
xx=[x zeros(N-lx)];
HH=[h zeros(N-lh)];
W=zeros(N,N);
for n=0:N-1
    for k=0:N-1
        W(n+1,k+1)=exp(-1i*2*pi*n*k/N);
    end
end
X=W*xx.';
H=W*HH.';
disp('DFT of 1st sequence is');
disp(X.');
disp('DFT of 2nd sequence is');
disp(H.');

YY=X.*H;
w=zeros(N,N);
for n=0:N-1
    for k=0:N-1
        w(n+1,k+1)=exp(1i*2*pi*n*k/N);
    end
end
B=w*YY;
Y=B/N;
disp('Dft of o/p sequence is');
disp(YY.');
disp('IDFT of o/p sequence is');
disp(Y.');
nexttile
plot(YY,'*');
title('o/p DFT sequence of cconv');
nexttile
stem(abs(Y));
title('circular convoluted o/p');
