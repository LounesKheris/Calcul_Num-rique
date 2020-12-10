s = 100;
rand("seed",s);

function []= jouet()    
    format("e",16)

xdata = [10:10:100];

for n = xdata
    
     i = n/10;
     
       
        A=rand(n,n); //Crée une matrice de dimension n,n avec la fonction rand
        disp('Matrice A :',A);
        
        xex = rand(n,1); //Remplir un vecteur colonne avec la fonction rand()(x exact)
        disp('Vecteur : ',xex);
        
        b = A * xex; //b = A * xex ( calcul de b )
        disp("Le vecteur obtenu b : ",b);
        
        x = A\b; //résolution du système ( x approcher )
        
        //Calcul erreur avant ( erreur sur x )
        frelres(i) = norm(x-xex)/norm(xex);
        disp("Erreur avant :    ",frelres(i));
        
        
        //Calcul erreur arriere ( erreur sur b )
        brelres(i) = norm(b-(A*x))/norm(b);
        disp("Erreur arriere :  ",brelres(i));
        
        //Calcul du conditionnement (dépendance de la solution aux données)
        disp("conditionnement de A :    ",cond(A));
        conditionnement(i)=cond(A)
        //borne pour l'erreur avant
        disp("borne ( A*erreur arriere ):   ",cond(A)*brelres(i));
        born(i)=cond(A)*brelres(i)
       
 end   
   
    xtitle("Erreur avant vs erreur arrière relative à la perturbation de la matrice A"); 
    plot2d(xdata,[log(frelres) log(brelres) log(born)],[3 5 2],leg="Erreur-avant @ Erreur-arrière @ Born = ( conditionnement * erreur-arrière )");
    xlabel("Taille matrice (n)");
    ylabel("Valeurs erreurs");
    
     
  
 endfunction

jouet();
