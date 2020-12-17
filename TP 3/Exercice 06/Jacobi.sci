function [x, iter]=Jacobi(A,b,tol,iterMax,x)
// 
// Calcule par Jacobi la solution du systeme Ax=b
// tol =epsilon du test d'arret
// iterMax = nombre maximal d''iterations
//  x=x_0
[m,n]=size(A);
if m~=n then, error('la matrice n''est pas carree'), end;
if abs(det(A)) < 1.e-12 then, error('la matrice n''est pas inversible'); end;
if ~(JacobiCvg(A)) then , error('Jacobi ne convergera pas'); end;
[sortie, entree]=argn(0);
// Valeurs par defaut des arguments
if entree==4 then, x=zeros(b);end;
if entree==3 then, x=zeros(b);iterMax=200;end;
if entree==2 then, x=zeros(b);iterMax=200;tol=1.e-4;end;
M=diag(diag(A));
// Initialisation
iter=0;r=b-A*x;
while (norm(r)>tol)&(iter<iterMax) do 
   y=M\r;
   x=x+y;
   r=r-A*y;
   iter=iter+1;
end;

endfunction
