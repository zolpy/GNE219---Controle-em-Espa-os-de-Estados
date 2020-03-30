clc
clear all

syms s;
A= [0 1;20.6 0]
B= [0;1]
C= [1 0]
D= [0]
I=[1 0;0 1]
K=[29.6 3.6]
Ke=[16;84.6]
AA=A-Ke*C-B*K
BB=Ke
CC=K
DD=0

[num,den]=ss2tf(AA,BB,CC,DD)
SI=s*I
SIA=(SI-A+Ke*C+B*K)
inver=inv(SIA)
formula=K*inver*Ke
pretty(formula)
