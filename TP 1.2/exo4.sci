s = 10
rand("seed",s);

U_ferrorb = zeros(10);
U_berrorb = zeros(10);
L_ferrorb = zeros(10);
L_berrorb = zeros(10);

xdata = [10:10:1000];

for n = xdata
    
    i = n/10;
    
    A = rand(n,n);
    U = triu(A);
    L = tril(A);
    xex = rand(n, 1);
    
    b = U * xex;
    
    x = usolve(U, b);
    
    U_ferrorb(i) = norm(xex - x, 2)/norm(xex, 2);
    U_berrorb(i) = norm(b-U*x,2)/norm(xex,2);
    
    b = L * xex;
    
    x = lsolve(L,b);
    
    L_ferrorb(i) = norm(xex - x, 2)/norm(xex, 2);
    L_berrorb(i) = norm(b-L*x,2)/norm(xex,2);
 end   
  
    xtitle("Erreur méthode de remonté vs méthode de descente"); 
    plot2d(xdata,[log(U_ferrorb) log(U_berrorb) log(L_ferrorb) log(L_berrorb)],[3 5 2 4],leg="U_ferrorb ( Erreur avant de usolve) @ U_berrorb ( Erreur arrière de usolve ) @ L_ferrorb ( Erreur avant de lsolve ) @ L_berrorb ( Erreur arrière de lsolve )");
    xlabel("Taille matrice (n)");
    ylabel("Valeurs erreurs");
   


