clc
clear all

A= [-1 -2 -3;0 -1 1;1 0 -1]
B= [2;0;1]
C= [1 1 0]
D= [0]

syms s;
fiA=(s+15-j*1.145)*(s+15+j*1.145)*(s+75);
fprintf('fiA= ');
disp(fiA);
fprintf('fiA= ');
ex=expand(fiA);
disp(ex);
pretty(ex)

J=[-4.13+j*0.5238 -4.13-j*0.5238 -20]
K= acker(A,B,J)