clc
clear all

A= [-5 0 0 0 0;0 0 1 0 0;-10.5229 -1066.67 -3.38028 23.5107 0;0 993.804 3.135 -23.5107 0; 0 0 0 10 -10]
B= [5;0;0;0;0]
C= [0 0 0 122300 0]
D= [0]
I=[1 0 0 0 0;0 1 0 0 0; 0 0 1 0 0;0 0 0 1 0;0 0 0 0 1]
syms s;
fiA=(s+2.67-j*5.15)*(s+2.67+j*5.15)*(s+16);
fprintf('fiA= ');
disp(fiA);
fprintf('fiA= \n');
ex=expand(fiA);
disp(ex);
pretty(ex)


A3= A*A*A
A2= 21.35*A*A
A1= 119.1*A
 I= 538.42*I

FIA=A2+A2+A1+I

%[ B|AB|A^2B|A^3B|A^4B|]
B
AB= A*B
A2B=A*A*B
A3B=A*A*A*B
A4B=A*A*A*A*B
M=[B AB A2B A3B A4B]
M1=inv(M)

K=[0 0 0 0 1]*M1*FIA