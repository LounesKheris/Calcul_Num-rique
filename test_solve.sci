s = 100
rand("seed")

n=3

U=rand(n,n);//Ici on génère une matrice carée avec des nombre aléatoires

//UL=tril(U);//On prend la partie triangulaire inferieur de la matrice A 
           //On aura une matrice triangulaire inferieur
UU=triu(U);//On va prend la partie triangulaire superieur de la matrice A
            //On aura une matrice triangulaire superieur
            
xex=rand(n,1);//Vecteur solution

b =  UU*xex;//Creation du second membre

//xl = lsolve(U,b)
xu = usolve(U,b)

//Calcul de l'erreur en avant
fErrorB = norm(xex-xu,2)/norm(xex,2)

//Calcul de l'erreur arrière
bErrorB = norm(b-U*xu,2)/norm(b,2)
