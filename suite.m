function[X]=suite(u0,kmax) 
k=1; uk=sqrt(5*u0+2); 
while (k<=kmax) 
    u0=uk; 
    uk=sqrt(5*u0+2); 
    k=k+1; 
end
X=uk;
return