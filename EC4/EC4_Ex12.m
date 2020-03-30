% Exercício Computacional EC4
% Controle em Espaço de Estados - UFLA
% MATLAB R2011b
% Autores: Jaques Lage Magalhães Caldeira
%          Luiz Carlos Brandão Junior

clear all
close all

%% Exercicio 12

syms z
G = [0 1; -0.16 -1];
H = [0;1];
M = ctrb(G,H);           % Calcula a matriz de controlabilidade M = [H GH].
rank(M);                 % Retorna o posto da matriz de controlabilidade M. 
                         % Como rank(M) = n, os estados são completamente controláveis.
ECO = poly(G)            % Equação característica original |zI -G|
a1 = 1;                  % Parâmetros a1 e a2 retirados da equação característica original
a2 = 0.16;
z1 = 0.4 + j*0.3;        % Pólos desejados
z2 = 0.4 - j*0.3;
ECD = (z-z1)*(z-z2)      %Equação característica desejada
simplificada= simplify(ECD)
alfa1 = -0.8;               % Parâmetros alfa1 e alfa2 retirados da equação característica desejada
alfa2 = 0.25;
Khat = [alfa2-a2 alfa1-a1]
I = eye(2);
T = I;                      % A matriz G está na fórmula canônica controlável, então T = I
K = Khat*T  %A matriz de ganho K = [0.16 -0.2]