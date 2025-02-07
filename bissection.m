function [x,it] = bissection( a,b,tol )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
c=(a+b)/2; fc=f2(c); i=1;
while abs(b-a)>tol
    if f2(a)*f2(c)<0
        b=c;
        c=(a+b)/2;
        i=i+1;
    else
        a=c;
        c=(a+b)/2;
        i=i+1;
    end
end
x=c; it=i;
return

