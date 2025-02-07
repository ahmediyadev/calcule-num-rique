function[X]=downsubstitution(c,b)
n=length(b);
U=c;  f=b;
for i=i:n
    x(i)=f(i);
    for j=1:(i-1)
        x(i)=x(i)-U(i,j)*x(j);
    end
    x(i)=x(i)/U(i,i);
end
X=x;
return