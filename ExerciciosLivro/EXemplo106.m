clc
clear all

A= [0 20.6;1 0]
B= [0;1]
C= [0 1]
D= [0]
I=[1 0 ;0 1 ]
syms s;
fiA=(s+10)*(s+10);
fprintf('fiA= ');
disp(fiA);
fprintf('fiA= ');
ex=expand(fiA);
disp(ex);

A2= A*A
A1= 20*A
I=100*I

FIA=A1+A2+I

CA=C*A
CCA=[C;CA]
M1=inv([C;CA])
M2=[0;1]
M3=M1*M2

Ke = FIA*M3

% % J=[-4.13+j*0.5238 -4.13-j*0.5238 -20]
% J=[-10+j -10-j -15]
% K= acker(A,B,J)