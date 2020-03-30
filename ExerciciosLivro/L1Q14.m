clc
clear all

A= [-0.435 0.209 0.02;0.268 -0.394 0;0.227 0 -0.02]
B= [1;0;0]
C= [0.0003 0 0]
D= [0]
I=[1 0 0;0 1 0; 0 0 1]
syms s;
fiA=(s+1/15)^2*(s+1/3);
fprintf('fiA= ');
disp(fiA);
fprintf('fiA= \n');
ex=expand(fiA);
disp(ex);
pretty(ex)


A3= A*A*A
A2= 0.46*A*A
A1= 4.88e-2*A
 I= 1.48e-3*I

FIA=A2+A2+A1+I

%[ B|AB|A^2B ]
AB= A*B
A2B=A*A*B
M=[B AB A2B]
M1=inv(M)

K=[0 0 1]*M1*FIA