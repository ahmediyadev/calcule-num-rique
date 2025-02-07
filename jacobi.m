function[X]=jacobi(A,b,kmax) 
n=length(b);  x0=zros(n,1); 
D=diag(diag(A)); E=-tril(A-D);  F=-triu(A-D); 
Ej=D\(E+F); qj=D\b; 
i=1; 
xk=Ej*x0+qj; 
while i<=kmax 
    x0=xk; 
    xk=Ej*x0+qj; 
    i=i+1; 
end 
X=xk; 
return  