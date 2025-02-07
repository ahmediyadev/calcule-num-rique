function[p]=Newton(x,y,z) 
%this function implements the algoritm of divided 
difference 
%z:vector of target point 
%p: the polynomial at all targets 
b=DD(x,y); 
n=length(b); 
for i=1:length(z) 
    p(i)=b(n); 
    for k=(n-1):-1:1 
        p(i)=p(i)*(z(i)-x(k))+b(k); 
    end
end
return