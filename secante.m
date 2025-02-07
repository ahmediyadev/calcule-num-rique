function[x,it]=secante(x0,x1,tol) 
xk=x1-(fe(x1))*(x1-x0)/(fe(x1)-fe(x0)); 
k=1; 
while (abs(xk-x1)>tol) 
    x0=x1; 
    x1=xk; 
    xk=x1-(fe(x1))*(x1-x0)/(fe(x1)-fe(x0)); 
    k=k+1; 
end 
x=xk; it=k;  
return 