function[X]=Bsubstitution(A,b)
n=length(b);
[U,f]=Gauss(A,b);
for i=n:-1:1
    x(i)=f(i);
    for j=(i+1):n
        x(i)=x(i)-U(i,j)*x(j);
    end
    x(i)=x(i)/U(i,i);
end
X=x;
return