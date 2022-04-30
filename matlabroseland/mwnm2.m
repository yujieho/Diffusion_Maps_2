% function W = mwnm(X,n,m,subi,k)

Dist = [];

for i = 1:m
    Tmp1 = repmat(X(subi(i)),n,1);
    Tmp2 = X-Tmp1;
    Tmp2 = Tmp2.*Tmp2;
    
    Dist = [Dist, sum(Tmp2,2)];
end

Distdel = Dist;
Distdel(subi,:) = [];
Dist = [Dist(subi,:); Distdel];

Dist_sort = sort(Dist,1);
lsigma    = Dist_sort(k+1,:);
lsigma(find(lsigma==0)) = 10000;
sigmasmall = diag(1./lsigma);

Dist_sort = sort(Dist,2);
lsigma     = [lsigma, Dist_sort((m+1):end,k+1)'];
lsigma(find(lsigma==0)) = 10000;
sigma     = sparse(1:n,1:n,1./lsigma,n,n);

W = exp(-sigma*Dist*sigmasmall);
