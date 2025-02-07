function[U,f]=Gauss(A,b)
n=length(b);
for k=1:n-1
    for i=(k+1):n
        m=A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-m*A(k,j);
        end
        b(i)=b(i)-m*b(k);
    end
end
U=A; f=b;
return