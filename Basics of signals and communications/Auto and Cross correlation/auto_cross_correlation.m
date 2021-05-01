%auto correlation
disp("now give input for auto correlation")
p=input('enter the value of sequence');
q=fliplr(p);
nexttile
stem(p);
title('the sequence');
p1=length(p);
q1=length(q);
k=p1+q1-1;
qq=[q zeros(1,k-q1)];
pp=zeros(k);
pp(1:p1,1)=p;
for l=2:k
    for z=2:k
        pp(z,l)=pp(z-1,l-1);
      
    end
end
bb=pp*qq';
nexttile
stem(bb);
title('auto correlation of sequence');




%cross correlation
disp("now give input for cross correlation")
x=input('enter the value of 1st sequence');
z=input('enter the value of 2nd sequence');
h=fliplr(z);
nexttile
stem(x);
title('the 1st sequence');
nexttile
stem(z);
title('the 2nd sequence');
x1=length(x);
h1=length(h);
n=x1+h1-1;
hh=[h zeros(1,n-h1)];
xx=zeros(n);
xx(1:x1,1)=x;
for i=2:n
    for z=2:n
        xx(z,i)=xx(z-1,i-1);
      
    end
end
yy=xx*hh';
nexttile
stem(yy);
title('cross correlation of 1st and 2nd sequence');



