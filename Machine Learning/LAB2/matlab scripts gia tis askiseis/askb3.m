randn('seed',0)
m= [0 0]';
S= [0.3 -0.5; -0.5 2;];
N= 500;
X=mvnrnd(m,S,N)';

figure(1), plot(X(1,:),X(2,:),'.');
figure(1), axis equal
figure(1), axis ([-7 7 -7 7])

%o kodikas einai aytos, apla allazoyme tis times toy S gia kathe mia
%periptosh