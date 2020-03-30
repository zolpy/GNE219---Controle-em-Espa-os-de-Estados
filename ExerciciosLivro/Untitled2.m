% Exercicios de GNE219 - Controle em Espa�o de Estados
% Professor: Daniel Leite
% Aluno: Luiz Carlos Brand�o Junior
% Aluno: Jaques Lage Magalh�es Caldeira
clear all
close all 
clc

%% Exercicio 12 para testar Selecione e tecle F9
% representa��o em vari�veis de estado na forma control�vel
A=[0 1 0;0 0 1; -3 -8 -5];
B=[1;0;0];
C=[1 0 0];
D=[0];
% Fun��o de transfer�ncia das tabelas anteriores
[num,den] = ss2tf(A,B,C,D);
tf1=tf(num,den)

% Passando para fra��es parciais / canonica diagonal
s=tf('s');
% Usando residue para obter coeficientes e ra�zes
[R,P,K] = residue([1],[1 5 8 3]);
% fra��es parciais 
funcao1= (R(1)/(s-P(1))) 
funcao2= (R(2)/(s-P(2)))
funcao3= (R(3)/(s-P(3)))