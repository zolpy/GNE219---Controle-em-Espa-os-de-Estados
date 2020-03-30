clc
clear all

syms s k1 k2 k3 ke1 ke2 ke3;
A= [0 1 0;0 0 1;-6 -11 -6]
B= [0;0;1]
C= [1 0 0]
D= [0]
J=[-1+j -1-j -6]
K=acker(A,B,J)

L=[-7 -7 -7]
Ke=acker(A',C',L)'

AA=A-Ke*C-B*K
BB=Ke
CC=K
DD=0
[num,den]=ss2tf(AA,BB,CC,DD)
