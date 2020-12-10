function [x]= lsolve(U,b)
    
    n=size(U,1)
    m=size(b,2)
    
    x=zeros(size(b,1),size(b,2))
    
    x(1,1:m)=(b(1,1:m))./U(1,1);
    
    for i=2:n
        x(i,1:m) = (b(i,1:m)-U(i,1:(i-1))*(x(1:(i-1),1:m)))./U(i,i)
    end
    
endfunction
