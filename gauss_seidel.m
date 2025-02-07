function[X]=gauss_seidel(A,b, kmax)
n=length(b); x0=zeros(n,1);
D=diag(diag(A)); E=-tril(A-D); F=-triu(A-D);
EGS=(D-E)\F; qGS=(D-E)\b;
i=1;
xk=EGS*x0+qGS;
while i<kmax
    x0=xk;
    xk=EGS*x0+qGS;
    i=i+1;
end
X=xk;
return