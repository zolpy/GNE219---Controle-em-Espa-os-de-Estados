close all 
clear all
clc

%% Exercicio 12 para testar Selecione e tecle F9
% representa��o em vari�veis de estado na forma control�vel
A=[0 -0.4;1 -1.3]
B=[0.8;1]
C=[0 1]
D=[0];

s=tf('s');
SI=[s 0; 0 s]
SIA= SI-A
% Fun��o de transfer�ncia das tabelas anteriores
[num,den] = ss2tf(A,B,C,D);
tf1=tf(num,den)

% % Passando para fra��es parciais / canonica diagonal
% s=tf('s');
% % Usando residue para obter coeficientes e ra�zes
% [R,P,K] = residue([1],[1 5 2]);
% % fra��es parciais 
% funcao1= (R(1)/(s-P(1))) 
% funcao2= (R(2)/(s-P(2)))