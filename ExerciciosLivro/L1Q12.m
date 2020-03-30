clc
clear all

syms s k1 k2 k3 ke1 ke2 ke3;
A= [0 1 0;0 0 1;-6 -11 -6]
B= [0;0;1]
C= [1 0 0]
D= [0]
I=[1 0 0;0 1 0;0 0 1]
K=[k1 k2 k3]
Ke=[ke1;ke2;ke3]

[num,den] = ss2tf(A,B,C,D)
Gp = tf(num,den)

Controlador=(s+1-j)*(s+1+j)*(s+6);
 fprintf('Controlador= ');
disp(Controlador);
fprintf('Controlador= ');
ex=expand(Controlador);
disp(ex);
disp('----------------------------')
Observador=(s+7)^3;
 fprintf('Observador= ');
disp(Observador);
fprintf('Observador= ');
exO=expand(Observador);
disp(exO);



disp('----------------------------')
disp('Controlador') %|sI-A+BK|
controlador= s*I-A+B*K
detA = det(controlador)
% J=[-1+j -1-j 6]
% place(A,B,J)
% acker(A,B,J)
disp('----------------------------')
disp('Observador') %|sI-A+KeC|
observador= s*I-A+Ke*C
detB = det(observador)

det= detA*detB

% fprintf('fatorado=');
% fac=factor(det);
% disp(fac);

K=[6 3 2]
Ke=[15;46;-104]
SI=s*I
SIA=(SI-A)
KeC=Ke*C
BK=B*K
M=(SI-A+Ke*C+B*K)
inver=inv(M)
formula=K*inver*Ke
disp('Gc(s) =');
pretty(formula);

