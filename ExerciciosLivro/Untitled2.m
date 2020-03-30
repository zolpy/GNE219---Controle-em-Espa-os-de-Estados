% Exercicios de GNE219 - Controle em Espaço de Estados
% Professor: Daniel Leite
% Aluno: Luiz Carlos Brandão Junior
% Aluno: Jaques Lage Magalhães Caldeira
clear all
close all 
clc

%% Exercicio 12 para testar Selecione e tecle F9
% representação em variáveis de estado na forma controlável
A=[0 1 0;0 0 1; -3 -8 -5];
B=[1;0;0];
C=[1 0 0];
D=[0];
% Função de transferência das tabelas anteriores
[num,den] = ss2tf(A,B,C,D);
tf1=tf(num,den)

% Passando para frações parciais / canonica diagonal
s=tf('s');
% Usando residue para obter coeficientes e raízes
[R,P,K] = residue([1],[1 5 8 3]);
% frações parciais 
funcao1= (R(1)/(s-P(1))) 
funcao2= (R(2)/(s-P(2)))
funcao3= (R(3)/(s-P(3)))