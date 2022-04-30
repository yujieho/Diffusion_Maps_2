function D = mdnn(mat,n,pwer)

tmp = sum(mat,2);
tmp = tmp.^pwer;
tmp = 1./tmp;

D = sparse(1:n,1:n,tmp,n,n);

