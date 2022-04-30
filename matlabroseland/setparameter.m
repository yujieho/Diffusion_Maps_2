% set parameters
% -----------------------------------------------------
% 
% X       = data set
% [n,dim] = # of data points, dim of data points
% beta    = 
% m       = # of landmark points (n^beta)
% subi    = index of landmark points
% q       = dim of DM space
% k       = k nearest neighbors
% 
% -----------------------------------------------------

X = Pulses_GE_ECG; %(1:30000,:);
X = sparse(double(X));

[n,dim] = size(X);
beta    = .3;
m       = 10; % round(n^beta);
q       = 5;
k       = 7;
subi    = sort(randperm(n,m)); % (0:m-1)*m + 1;    % i = sort(permutation(n)[:m]) %






