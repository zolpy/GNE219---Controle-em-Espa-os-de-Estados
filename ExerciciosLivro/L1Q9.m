clc
clear all


num = [20 100];
den = [1 5 4 0];
Controlador = tf(num,den)
fprintf('As variaveis de estado do controlador são: ')
[A,B,C,D] = tf2ss(num,den)

J=[-5.33+j*7.12 -5.33-j*7.12 -30]
K= acker(A,B,J)