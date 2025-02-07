function[P]=Lagrange(x,y,z) 
%P: the polynomial evalueted at all targets z 
L=POL(x,z); 
P=L'*y; 
%plot(x,P,"-r",x,y,"-b") 
return 