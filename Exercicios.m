% Exercicios de GNE219 - Controle em Espaço de Estados
% Professor: Daniel Leite
% Alunos: Luiz Carlos Brandão Junior
clear all
close all 
clc
%Exercicio 1
k = 0:2:11
k(3)
% pause 
k1 = 11:-10/3:0
k1(3)
% pause
k1(2:3)
% pause
t=0:0.1:2;
fun = sin(2*pi*10*t+pi*6)
t = 0:0.2/500:0.2-0.2/500;
fun = sin(2*pi*10*t+pi/6);



