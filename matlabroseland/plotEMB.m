function plotEMB(X,n)
% -----------------------------------------------------
% plot embedding space
% -----------------------------------------------------


% set colormap
col    = colormap(turbo(n));


% figure;
% scatter(X(:,3),X(:,2),30,col,'.');


scatter3(X(:,3),X(:,2),X(:,1),10,col,'.');
