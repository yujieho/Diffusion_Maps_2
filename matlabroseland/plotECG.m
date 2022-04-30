function plotECG(X,n,dim)
% -----------------------------------------------------
% plot ECG signal
% -----------------------------------------------------


figure;

col    = colormap(turbo(n));
height = (max(X,[],'all')-min(X,[],'all'))/2;
yind   = 1:dim;

hold on;
for i = 1:25:n
    plot(yind,X(i,:),'Color', col(i,:));
end
hold off;

axis([1 dim -height height])
colorbar