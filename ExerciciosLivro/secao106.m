clc
clear all

syms s k1 k2 k3 ke1 ke2 ke3;
A= [0 1 0;0 0 1;0 -24 -10]
B= [0;10;-80]
C= [1 0 0]
D= [0]
I=[1 0 0;0 1 0;0 0 1]
K=[k1 k2 k3]
Ke=[ke1;ke2;ke3]

Controlador=(s+1-j*2)*(s+1+j*2)*(s+5);
 fprintf('Controlador= ');
disp(Controlador);
fprintf('Controlador= ');
ex=expand(Controlador);
disp(ex);
disp('----------------------------')
Observador=(s+10)^2;
 fprintf('Observador= ');
disp(Observador);
fprintf('Observador= ');
exO=expand(Observador);
disp(exO);

disp('----------------------------')
disp('Controlador') %|sI-A+BK|
controlador= s*I-A+B*K
detA = det(controlador)
% J=[-1+j*2 -1-j*2 -5]
% place(A,B,J)
% acker(A,B,J)
disp('----------------------------')
disp('Observador') %|sI-A+KeC|
Observador2= s*I-A+Ke*C
detB = det(Observador2)
% L=[-10 -10 1]
% acker(A,B,L)

det= detA*detB