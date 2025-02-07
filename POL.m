function[L]=POL(x,z) 
%x est le pont d interpolation 
%z is a target points 
n=length(x); m=length(z);  L=[]; 
for k=1:m 
    T=[]; 
    for p=1:n 
        v=x; a=v(p); v(p)=[]; 
        A=[]; B=[]; 
        for j=1:(n-1) 
            A=[A,z(k)-v(j)]; B=[B,a-v(j)]; 
        end
        l(p)=prod(A)/prod(B); T=[T;l(p)];
    end
    L=[L,T];
end 
return  