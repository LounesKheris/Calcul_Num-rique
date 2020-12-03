s=10
rand("seed",s)

//initialisation des tailles des matrices
M= 3
N= 3
P= 3

//On fait 1 run sur des matrices de tailles 3,3 
for i=1:1
    //N=N+10
    //M=M+10
    
    A=rand(M,N)
    B=rand(M,N)
   
    //On fait 10 run pour chaque boucles ce qui fait on va avoir le laps de temps passer dans la boucle 
    for j=1:3

        tic();
            matmat3b(A,B,M,N,P)          
        toc
    
        tic();
            matmat2b(A,B,M,N,P)     
        toc
    
        tic();
            matmat1b(A,B,M,N,P)         
        toc
    
        
    end
       
tic();
C = A*B //Appel direct de BLAS3
toc
   
end
