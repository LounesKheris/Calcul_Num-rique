n=5;

eps=1e-12;

maxiter=100;

A=4*eye(n)+diag(ones(1,n-1),1)+diag(ones(1,n-1),-1);

xex=ones(n,1);

b=A*xex;

x0=zeros(n,1);
x=jacobi(A,b,x0,eps,maxiter);

[p,q]=size(x);

err=[];

for i=1:q
	err=[err,norm(xex-x(:,i))];
end

figure(1)

plot(1:q,log(err))

a=polyfit(1:q,log(err),1);

exp(a(1))D=diag(diag(A));

max(abs(eig(eye(n)-D\A)))

title(’Convergence de lam ́ethode de Jacobi’)
