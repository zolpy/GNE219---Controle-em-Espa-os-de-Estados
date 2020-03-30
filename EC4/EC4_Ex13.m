% Exercício Computacional 3
% Controle em Espaço de Estados - UFLA
% MATLAB R2011b
% Autores: Jaques Lage Magalhães Caldeira
%          Luiz Carlos Brandão

clc 
clear all
close all
%% Exercício 13

syms z
G = [0 -0.16; 1 -1];
H = [0;1];
C = [0 1];
Q = obsv(G,C);                  % Matriz de observabilidade Q.
rank (Q);                       % A matriz Q tem posto 2, ou seja, o sistema é observável.
z1 = 0.2 + j*0.1;
z2 = 0.2 - j*0.1;
ECD = (z-z1)*(z-z2)    % Equação característica desejada
simplify(ECD)
alfa1 = -0.4;                   % Parâmetros desejados obtidos
alfa2 = 0.05;
FiG = G*G + alfa1*G + alfa2*eye(2) %Equação característica desejada avaliada em G
Ke = FiG*inv(Q)*[0;1] %Matriz de ganho Ke
