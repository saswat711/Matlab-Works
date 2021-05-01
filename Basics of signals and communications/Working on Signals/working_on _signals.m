%QN.1
n=0:9;
xorg=n-n+2;
xorg1=(-n)-(-n)+2;
xodd=((xorg-xorg1)/2);
xeven=((xorg+xorg1)/2);
nexttile
stem(n,xorg)
title("orignal X(n)")
nexttile
stem(n,xodd)
title("odd func. of X(n)")
nexttile
stem(n,xeven)
title("even func. of X(n)")
nexttile
stem(n,(xeven+xodd))
title("xeven(n)+xodd(n)")

%Q.N.2-A)
n1=-5:5;
impl1= n1==-2;
impl2= n1==4;
nexttile
stem(n1,2*impl1)
title("2*δ(n + 2)")
nexttile
stem(n1,impl2)
title("δ(n - 4)")
nexttile
stem(n1,((2*impl1)-impl2))
title("2*δ(n + 2) - δ(n - 4)")

%Q.N.2-B)
n2=-10:9;
i=[1 5 4 3 2];
m=1;
i5=zeros(1,20);
for j=1:20
    if m==1
        i5(j)=i(m);
        m=m+1;
    elseif m==2
        i5(j)=i(m);
          m=m+1;
    elseif m==3
        i5(j)=i(m);
          m=m+1;
    elseif m==4
        i5(j)=i(m);
          m=m+1;
    elseif m==5
        i5(j)=i(m);
          m=m+1;
    else
        i5(j)=i(1);
        m=2;
        
    end
    
end
nexttile
stem(n2,i5)
title("repeating x(n)")


