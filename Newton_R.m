function[x,it]=Newton_R(x0,tol)
x=sym('x');
g=@(x)p(x);
h(x)=diff(g(x),x,1);
xk=x0-p(x0)/(vpa(h(x0),3));
i=1;
while (abs(xk-x0)>tol)
    x0=xk;
    xk=x0-p(x0)/(vpa(h(x0),3));
    i=i+1;
end
x=xk; it=i;
return