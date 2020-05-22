function [ux,uy] = getKsimple(x, xdot, beta, betadot)

coder.extrinsic('lqr')

X = [x; xdot; beta; betadot];
% syms x y;
A = [0 1 0 0; 0 -1 -9.8 0; 0 0 0 1; -0.98/(0.33) 0 0 -0.1/(0.33)]
B = [0;
     0;
     0;
     1/0.33];
C = [ 1 0 0 0 ];
% [Abar, Bbar, Cbar, T, k] = ctrbf(A,B,C)
L = (place(A',C',[-40, -50, -60, -70]))'
% K = place(A,B,[-4,-5,-6,-7])
% [22;1761;-6455;-83759]
% 1.0e+05*[0.002186969696867;0.176147281894242; -0.645506052740811;-8.375850372119586]
% eig(A-B*K)

% P = ctrb(A,B);
Q = eye(4);
R = eye(1)/10;

Q(1,1)=100;
Q(2,2)=10;
% K = zeros(2,10);
% [K,~,~] = lqr(A,B,Q,R)
% 

% utemp = -K*X;
eig(A-L*C)
% eig(A-B*K)
% 





end

