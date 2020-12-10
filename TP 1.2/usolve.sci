function [x]= usolve(U,b)
    
    n=size(U,1)
    m=size(b,2)
    
    x= zeros(size(b,1),size(b,2))
    
    x(n,1:m)=(b(n,1:m))./U(n,n);
    
    for i=1-n:-1:1
        x(i,1:m) = (b(i,1:m)-U(i,i+1:n)*(x((i+1):n,1:m)))./U(i,i)
    end
    
endfunction
