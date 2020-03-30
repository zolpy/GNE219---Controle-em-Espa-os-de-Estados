% Exerc�cio Computacional EC4
% Controle em Espa�o de Estados - UFLA
% MATLAB R2011b
% Autores: Jaques Lage Magalh�es Caldeira
%          Luiz Carlos Brand�o Junior

clc
clear all
close all

%% Exercicio 2
T = 1; %Per�odo de amostragem

FT1 = tf([1 0],[1 -1],T);
FT2 = tf([1 1],[1 -1],T);   %Fun��es de transfer�ncia
FT3 = tf([1 0],[1 0.6],T);
FT4 = tf([1 1],[1 0.6],T);

F = [FT1 FT2; FT3 FT4];
step(F)
sys_ss = ss(F)
figure
step(sys_ss)


