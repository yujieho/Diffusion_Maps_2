% -----------------------------------------------------
% nystrom
% -----------------------------------------------------


Wnys          = W;%mw(X,n,m,subi,k);
[Dnys,Dsmall] = md(Wnys,n,m);
Qnys          = Dnys*Wnys*Dsmall;

[au,as,al] = svd(Qnys(1:m,:));
as = diag(diag(as).^(1/2));
A  = au*as*al;

F = Qnys*A;

[U,S,L] = svds(F,q+1);
S = diag(diag(S).^(1/2));
U = Dnys*U;

EMBnys = U*S;
for i = 1:m
    j = subi(i);
    EMBnys = [EMBnys(1:j,:); 
              EMBnys(m+1-i,:);
              EMBnys((j+1):end,:)];
    EMBnys(m+1-i,:) = [];
end
