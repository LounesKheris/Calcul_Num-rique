function [x]= gauss2b(A,B)
    
    [n m]=size(A) //récuperation de la taille de A
    [p q]=size(B) //récuperation de la taille de B
    
     A(:,m+1)=B //copie de B dan la m+1émé colonne de A
     
    //Boucle sur les colonnes
    for j=1:n-1
        //boucle sur les lignes qui sont sous la diagonale
        for i=j+1:n
            //Test pour vérifier que le pivot est bien non nul
            if A(j,j)==0
                error('Erreur : pivot nul')
            end
            A(i,:)=A(i,:)-A(i,j)/A(j,j)*A(j,:)
         end
     end
      
     //x=A
     x=zeros(n,1)
     
     for i=1:n
         A(i,:)=A(i,:)/A(i,i)
     end
     
     x(n)=A(n,n+1)
     for i=n-1:-1:1
         x(i)=A(i,n+1)-sum(A(i,i+1:n).*x(i+1:n)')
     end
        
endfunction


