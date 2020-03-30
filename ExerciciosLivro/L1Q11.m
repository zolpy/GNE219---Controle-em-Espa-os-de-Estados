clc
clear all

A= [0 1 0;0 0 1; -5 -6 0]
B= [0;0;1]
C= [1 0 0]
D= [0]
I=[1 0 0;0 1 0; 0 0 1]
syms s;
fiA=(s+10-j)*(s+10+j)*(s+15);
fprintf('fiA= ');
disp(fiA);
fprintf('fiA= ');
ex=expand(fiA);
disp(ex);

A3= A*A*A
A2= 35*A*A
A1=401*A
 I=1515*I

FIA=A3+A2+A1+I

CA=C*A
CA2=C*A*A
M1=inv([C;CA;CA2])
M2=[0;0;1]
M3=M1*M2

Ke = FIA*M3

% % J=[-4.13+j*0.5238 -4.13-j*0.5238 -20]
% J=[-10+j -10-j -15]
% K= acker(A,B,J)