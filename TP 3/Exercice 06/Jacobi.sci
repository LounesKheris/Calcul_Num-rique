function [relres1]=Jacobi(A,b,max,x01)
nbr1=0 ;
 funcprot(0);
n1=size(A,1);
x01=zeros(3,1)
x11=ones(3,1);


resvec1=ones(max,1);
 
 
D1 = eye(A).*A

E1=tril(A)- D1
F1=triu(A)- D1



relres1=norm(b-A*x11)/norm(b);

 while ( (relres1>0.00001 )&(nbr1<max) )

     
     nbr1 = nbr1+1
    x11= inv(D1)*(E1+F1)*x01+ ( inv(D1)*b )
    //on garde le x predecent 
    x01=x11
   
    relres1=norm(b-A*x11)/norm(b)
    
    relres1(nbr1)=relres1
       
        
 end 
  
 endfunction

function [resvec]=GaussSeidel(A,b,max,x0)
    
nbr=0 ;
funcprot(0);

n=size(A,1);
x1=ones(n,1);


resvec=ones(max,1);
 
 
D = eye(A).*A

E=tril(A)- D
F=triu(A)- D
res=b-A*x0

relres=norm(res)/norm(b);

 while ( (relres>0.0001 )&(nbr<max) )

     
     nbr = nbr+1
    x1= (inv(D-E)) *F * x0 +(inv(D-E)) *b
    
      x0=x1
    res=b-A*x0
    relres=norm(res)/norm(b)
    
    resvec(nbr)=relres
      
        
   end 
  


endfunction 

max=3;


A=[2 -1 0 
-1 2 1;
0 -1 2 ];
 
b = [ -5 ; 0 ; 5 ];
x0=zeros(3,1)
f=Jacobi(A,b,max,x0)

resvect=GaussSeidel(A,b,max,x0)

plot(1:3,resvect)
plot(1:3,f)
function [relres1]=Jacobi(A,b,max,x01)
nbr1=0 ;
 funcprot(0);
n1=size(A,1);
x01=zeros(3,1)
x11=ones(3,1);


resvec1=ones(max,1);
 
 
D1 = eye(A).*A

E1=tril(A)- D1
F1=triu(A)- D1



relres1=norm(b-A*x11)/norm(b);

 while ( (relres1>0.00001 )&(nbr1<max) )

     
     nbr1 = nbr1+1
    x11= inv(D1)*(E1+F1)*x01+ ( inv(D1)*b )
    //on garde le x predecent 
    x01=x11
   
    relres1=norm(b-A*x11)/norm(b)
    
    relres1(nbr1)=relres1
       
        
 end 
  
 endfunction

function [resvec]=GaussSeidel(A,b,max,x0)
    
nbr=0 ;
funcprot(0);

n=size(A,1);
x1=ones(n,1);


resvec=ones(max,1);
 
 
D = eye(A).*A

E=tril(A)- D
F=triu(A)- D
res=b-A*x0

relres=norm(res)/norm(b);

 while ( (relres>0.0001 )&(nbr<max) )

     
     nbr = nbr+1
    x1= (inv(D-E)) *F * x0 +(inv(D-E)) *b
    
      x0=x1
    res=b-A*x0
    relres=norm(res)/norm(b)
    
    resvec(nbr)=relres
      
        
   end 
  


endfunction 

max=3;


A=[2 -1 0 
-1 2 1;
0 -1 2 ];
 
b = [ -5 ; 0 ; 5 ];
x0=zeros(3,1)
f=Jacobi(A,b,max,x0)

resvect=GaussSeidel(A,b,max,x0)

plot(1:3,resvect)
plot(1:3,f)
