s = 100
rand("seed")

n=100

U=rand(n,n);//Ici on génère une matrice carée avec des nombre aléatoires

            
b=rand(n,1);//Vecteur solution


xex=rand(n,1);//Vecteur solution

b =  U*xex;//Creation du second membre

//xl = lsolve(U,b)
xu = gauss3b(U,b)

//Calcul de l'erreur en avant
fErrorB = norm(xex-xu,2)/norm(xex,2)

//Calcul de l'erreur arrière
bErrorB = norm(b-U*xu,2)/norm(b,2)
