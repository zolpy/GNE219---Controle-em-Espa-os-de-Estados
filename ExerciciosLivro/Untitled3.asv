% Exercicios de GNE219 - Controle em Espaço de Estados
% Professor: Daniel Leite
% Aluno: Luiz Carlos Brandão Junior
% Aluno: Jaques Lage Magalhães Caldeira
clear all
close all 
clc


%% Exercicio 15 para testar Selecione e tecle F9

A = [0 1 0;0 0 1;-3 -8 -5]
B=[1;0;0];
C=[1 0 0];
D=[0];
fprintf('comando eig')
eig(A)
% O comando eig retorna os autovalores de uma matriz quadrada
% O autovetor representa uma direção que é preservada por uma tranformação linear
% Os autovalores de uma matriz quadrada são os números que resumem as propriedades 
% essenciais dessa matriz. O autovalor de A é um número que se for subtraído de cada entrada na
% diagonal de A, converte A numa matriz singular. 

fprintf('comando jordan')
jordan(A)

% Este comando retorna a matriz da forma canônica
% Uma matriz quadrada A é diagonalizável quando é semelhante a uma matriz diagonal.
% Em outras palavras, caso exista uma matriz D diagonal, tal que A = S*D*S^-1 com S inversível.
% A diagonalização é o processo para transformar uma matriz diagonalizável em uma matriz diagonal.
% Se uma matriz quadrada tem n auto-valores distintos, ela é semelhante a uma matriz diagonal 
% cujos elementos da diagonal são seus auto-valores.