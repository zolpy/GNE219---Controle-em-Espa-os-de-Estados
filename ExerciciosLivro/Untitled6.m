clc
clear all

% syms s;
% 
% numerador=10*(s+2);
%  fprintf('numerador= ');
%  ex1=expand(numerador);
% disp(ex1);
% denominador=s*(s+4)*(s+6);
% fprintf('denominador= ');
% ex2=expand(denominador);
% disp(ex2);
% num = [10 20];
% den = [1 10 24 0];
% [A,B,C,D] = tf2ss(num,den)
% 
% J=[-1+j*2 -1-j*2 -5]
% L=[-10 -10]
% K=acker(A,B,J)


A= [0 1 0;0 0 1;0 -24 -10]
B= [0;10;-80]
C= [1 0 0]
D= [0]
I=[1 0 0;0 1 0;0 0 1]

Abb=[0 1; -24 -10];
Aab=[1 0];
L=[-10 -10];

J=[-1+j*2 -1-j*2 -5]
K=acker(A,B,J)
Ke=acker(Abb',Aab',L)'