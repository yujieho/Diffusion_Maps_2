% -----------------------------------------------------
% roseland
% -----------------------------------------------------


Wros = mwnm(X,n,m,subi);
W    = Wros*Wros';
Dros = mdnn(W,n, .5);
Qros = Dros*Wros;

[U,S,V] = svds(Qros, q+1);
L = S.*S;

U = U(:,2:end);
L = L(2:end,2:end);

EMBros = Dros*U*L;





