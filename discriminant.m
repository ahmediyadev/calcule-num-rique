function[x]=discriminant(a,b) 
delta=a^2-4*b; 
if delta<0 
    x='pas de solution'; 
else
    x=[(-a+sqrt(delta))/2,(-a-sqrt(delta))/2];
end 
return