clc
clear all

syms s k1 k2 k3;
A= [-0.04167 0 -0.0058;0.0217 -0.24 0.0058;0 100 -2.4]
B= [5.2;-5.2;0]
C= [0 0 1]
D= [0]
I=[1 0 0;0 1 0;0 0 1]
K=[k1 k2 k3]

% SIA=(s*I-A)
% BK=B*K
% SIABK=SIA+BK
% Determinante=det(SIABK)
% pretty(Determinante)
% 
% 
% desejavel=(s+0.05-j*6.82e-2)*(s+0.05+j*6.82e-2)*(s+0.3);
% fprintf('Expandido=');
% ex=expand(desejavel);
% disp(ex);

J=[0.05-j*6.82e-2 0.05+j*6.82e-2 0.3]
acker(A,B,J)




