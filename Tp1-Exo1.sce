//Exo 1
//Vecteur x à 1 ligne et 4 colonnes
x = [1 2 3 4]
x2 = [4, 3, 2, 1]
disp(x)
disp(x2)

//Vecteur y à 4 lignes et 1 colonne
y =[1; 2; 3; 4]
disp(y)

//Operation z=x+y  et s=xy
//z = x1+y
//disp(z)   // erreur : afin d'additionner 2 matrice elles doivient être de même dimension
s = x*y
disp(s)// affiche le produit matriciel des 2 vecteur, nbr lignes de x(gauche) * nbr colonnes de y(droite)

//Calculer la taille des vecteurs x et y ( Leurs dimenssion )

disp(size(x)) //dimenssion 1,4
disp(size(y)) //dimenssion 4,1

//Calculer la norme 2 de x avec la fonction norme
disp(norm(x ,2))

//Matrice A à 4 lignes et 3 colonnes
A=[1 2 3; 4 5 6; 7 8 9; 1 4 7]
disp(A)

//Transposé de A
disp(A')

//Operations de bases avec des matrices carré A et B
C = [5 4; 7 2]
disp(C)
B = [9 8; 6 5]
disp(B+C)
disp(C*B)

//Calculer le conditionnement de A
disp(cond(A))
