function [x]= gauss3b(A,b)
    
    [n m]=size(A) //récuperation de la taille de A
    [p q]=size(b) //récuperation de la taille de B
    
     
     
    
    for k=1:n-1
        
        for i=k+1:n
            m = A(i,k)/A(k,k)
            b(i)=b(i)-m*b(k)
            
            for j=k+1:n
                A(i,j)=A(i,j)-m*A(k,j)
            end
            
         end
     end
      
     //x=A
     
    x(n) = b(n)/A(n,n);
     
    for i=n-1:-1:1
    x(i) = (b(i)-A(i,(i+1):n)*x((i+1):n))/A(i,i);
    end
        
     
        
    
endfunction
