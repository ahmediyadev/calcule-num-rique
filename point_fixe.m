function[X,it]=point_fixe(g,x0,tol) 
n=0; 
x=x0; 
xk=g(x); 
k=1; 
while abs(xk-x0)>tol 
    xk=x0; 
    xk=g(xk); 
    k=k+1; 
    n=n+1; 
end 
X=xk;  it=n; 
return 