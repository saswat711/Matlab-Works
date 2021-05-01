%q.no-)1
syms t n
disp("we are taking a square wave of amplitude 1 for the program and time period and no of terms mentioned by the user");
T=input('enter the time period of the series'); %taking the time period from the user
n=input('enter the no of terms for whose co-efficients you want '); %taking the no of terms for whose coeeficients user wants
wo=(2*pi)/T; %finding the frequency from the time period given by the user
ao=((1/T)*int(1,t,0,2)); %using the formula for finding the co-efficient ao
an=((2/T)*int(1*cos(n*wo*t),t,0,2)); %using the formula for finding the co-efficient an
bn=((2/T)*int(1*sin(n*wo*t),t,0,2)); %using the formula for finding the co-efficient bn
disp('ao =');disp(ao); disp('an =');disp(an); disp('bn =');disp(bn);


%q.no-)2

t1=0:.01:10;
y=zeros(1,length(t1));
for N=1:2:50
    y=y+sin(N*t1)/N;
end
plot(t1,y);