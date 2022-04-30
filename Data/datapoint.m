n=2000;

% t = 2*pi*(1:n)./n;
% r = 4+2*rand(1,n);
% 
% A(:,1) = r.*cos(t);
% A(:,2) = r.*sin(t);
% 
% plot(A(:,1),A(:,2),'.');

%s = 0.5*pi+pi*normrnd(0,0.3,n,1);

% r = 10;
%z = [sin((1:n/2)*2*pi/n) cos((n/2+1:n)*2*pi/n)];
% z = sin((1:n)*4*pi/n);
% q1 = rand(1,n);
% q2 = rand(1,n);
% q3 = .3*rand(1,n);
% A(:,1) = 10.*sin(s).*cos(t);
% A(:,2) = 10.*sin(s).*sin(t);
% A(:,3) = 10.*cos(s);

% A(:,1) = r.*cos(t);%+q1;
% A(:,2) = r.*sin(t);%+q2;
% A(:,3) = z;%+q3;


r = 2+(1:n)/n*4;
t = 4*pi*(1:n)/n;

z = randperm(n);

A(:,1) = r.*cos(t);
A(:,3) = r.*sin(t);
A(:,2) = [rand(1,n/10) rand(1,n/10)+1 rand(1,n/10)+2 rand(1,n/10)+3 rand(1,n/10)+4 rand(1,n/10)+5 rand(1,n/10)+6 rand(1,n/10)+7 rand(1,n/10)+8 rand(1,n/10)+9];

A(:,1) = A(z,1);
A(:,3) = A(z,3);
plot3(A(:,1),A(:,2),A(:,3),'.');
