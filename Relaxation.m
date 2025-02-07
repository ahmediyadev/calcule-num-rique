function[X]=Relaxation(A,b,kmax,w)
n=length(b); x0=zeros(n,1);
D=diag(diag(A)); E=-tril(A-D); F=-triu(A-D);
ER=((1/w)*D-E)\((1/w-1)*D+F); qR=((1/w)*D-E)\b;
k=1;
xk=ER*x0+qR;
while k<=kmax
    x0=xk;
    xk=ER*x0+qR;
    k=k+1;
end
X=xk;
return