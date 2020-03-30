% Exerc�cio Computacional EC4
% Controle em Espa�o de Estados - UFLA
% MATLAB R2011b
% Autores: Jaques Lage Magalh�es Caldeira
%          Luiz Carlos Brand�o Junior

clear all
close all

%% Exercicio 12

syms z
G = [0 1; -0.16 -1];
H = [0;1];
M = ctrb(G,H);           % Calcula a matriz de controlabilidade M = [H GH].
rank(M);                 % Retorna o posto da matriz de controlabilidade M. 
                         % Como rank(M) = n, os estados s�o completamente control�veis.
ECO = poly(G)            % Equa��o caracter�stica original |zI -G|
a1 = 1;                  % Par�metros a1 e a2 retirados da equa��o caracter�stica original
a2 = 0.16;
z1 = 0.4 + j*0.3;        % P�los desejados
z2 = 0.4 - j*0.3;
ECD = (z-z1)*(z-z2)      %Equa��o caracter�stica desejada
simplificada= simplify(ECD)
alfa1 = -0.8;               % Par�metros alfa1 e alfa2 retirados da equa��o caracter�stica desejada
alfa2 = 0.25;
Khat = [alfa2-a2 alfa1-a1]
I = eye(2);
T = I;                      % A matriz G est� na f�rmula can�nica control�vel, ent�o T = I
K = Khat*T  %A matriz de ganho K = [0.16 -0.2]