function [D, Dsmall] = md(W,n,m)

Dsmall = diag( 1./sqrt(sum(W,1)) );

D      = sparse(1:n,1:n, 1./sqrt(sum(W,2)), n,n);