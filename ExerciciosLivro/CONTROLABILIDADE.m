clc
clear all

A= [0 1 0; 0 0 1; -1 -5 -6]
B= [0;0;1]
C= [0 1]
D= [0 0;0 0]

AB=A*B
A2=A^2
A2B=A^2*B
CONTROL= [ B A*B A^2*B]
% CONTROL= [B A*B]
 det1=det(CONTROL)
rank (CONTROL)
% 
% ATCT=A'*C'
% AT2=A'^2
% AT2C=A'^2*C'
% OBSERVL= [ C' A'*C' A'^2*C']
% % det2=det(OBSERVL)
% rank ([C' A'*C' (A'^2)*C'])
% 
% CB = C*B
% CA = C*A
% CAB=C*A*B
% CA2=C*A^2
% CA2B=C*A^2*B
% SAIDA  = [ C*B C*A*B C*A^2*B]
% % detA = det(A)
% % det3=det(SAIDA)
% rank ([C*B C*A*B C*A^2*B])