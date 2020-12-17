s=10
rand("seed",s)

//initialisation des tailles des matrices

n = 5


A = rand(n,n)
B = zeros(n,n)

  for k=1:n
     B(k,k) = A(k,k); 
    if k<n
        B(k+1,k) = A(k+1,k);
        B(k,k+1) = A(k,k+1);
    end
end

disp(B)

[L,U] = FactoLU(B)
