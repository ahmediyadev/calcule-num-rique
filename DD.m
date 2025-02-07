function[b]=DD(x,y) 
%cette fonction implemente l algo de dfference de division  
%x:vecteur des point d interpolation  
%y:valeur de vecteurs fonction  
%b: solution des coefficient de Newton 
n=length(x); b=y; 
for i=2:n 
    for j=2:i 
        b(i)=(b(i)-b(j-1))/(x(i)-x(j-1)); 
    end
end
return 