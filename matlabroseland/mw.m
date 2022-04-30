%function W = mw(X,n,m,subi,k)

Xdel = X;
Xdel(subi,:) = [];

dist = [squareform(pdist(X(subi,:)));
        pdist2(Xdel, X(subi,:))];

dist_sort = sort(dist,1);
lsigma    = dist_sort(k+1,:);
lsigma(find(lsigma==0)) = 10000;
sigmasmall = diag(1./lsigma);

dist_sort = sort(dist,2);
lsigma     = [lsigma, dist_sort((m+1):end,k+1)'];
lsigma(find(lsigma==0)) = 10000;
sigma     = sparse(1:n,1:n,1./lsigma,n,n);

W = exp(-sigma*dist*sigmasmall);
