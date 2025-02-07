function[x]=F(b,t,l,u) 
S=0; 
sk=0; 
k=0; 
for i=0:(b-2) 
    sk=sk+1; 
    k=i+1; 
    for k=1:t   
        for  p=l:u 
            if S>0 
                S=S+(b^p)*(sk*(b^-k)); 
            else
                S=S-(b^p)*(sk*(b^-k));
            end
        end
    end
end
x=S; 
return