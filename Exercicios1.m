% Exercicios de GNE219 - Controle em Espaço de Estados
% Professor: Daniel Leite
% Alunos: Luiz Carlos Brandão Junior
clear all
close all 
clc
%% Exercicio a Letra a
fprintf('Exercicio 1:\n\ta)')
A= [1 1 6;5 -2 -1;-8 2 -3];
B = [2 9;-5 -1;9 2];

linha= length(A(:,1));
coluna= length(A(1,:));
if linha==coluna
    disp('Matriz quadrada')
else
    disp('Matriz não quadrada')
end

%Exercicio 1b
[linha,coluna]= find(A==-1)

%Exercicio 1c
[linhaMenor,colunaMenor]= find(A<0)

%% Exercicio 2 para testar Selecione e tecle F9
polinomio = [1 0 0 1];
fprintf('\n\tAs três raízes cúbicas são:')
Raizes = roots(polinomio)

%% Exercicio 3 para testar Selecione e tecle F9
polinomio = zeros(51);
polinomio(1) = 1;
polinomio(51) = 1;
fprintf('\n\tAs 50 raízes:')
Raizes = roots(polinomio(:,1))

%% Exercicio 4 para testar Selecione e tecle F9
t=-2:0.01:4;
a = sin(3*t);
b = exp(-0.5*t);
y=a.*b;
plot (t,y);
grid on
xlabel('tempo')
ylabel('amplitude')

%% Exercicio 5 para testar Selecione e tecle F9
%Exercicio 5a
fprintf('Exercicio 5a')
zero= [5 5];
polo= [1 0.13 4.46 0.5798]; %multiplicação do denominador
[r,p,k]= residue(zero,polo)
% r — Residues of partial fraction expansion column vector of numbers
% p — Poles of partial fraction expansion column vector of numbers
% k — Direct term row vector of numbers

%Exercicio 5b
fprintf('Exercicio 5b')
[r,p,k] = residue([1 2 3], [1 3 3 1])%s^3+3*s^2+ 3*s^1 +1

%% Exercicio 6 para testar Selecione e tecle F9
%Exercicio 6a
fprintf('Exercicio 6a')
num = [3 10 3]
den = [1 8 6]
[A,B,C,D] = tf2ss(num,den)

%Exercicio 6b
fprintf('Exercicio 6b')
num = [1 20]
den = [1 3 3 1] %s^3+3*s^2+ 3*s^1 +1
% den = conv(conv([1 1], [1 1], [1 1]))
[A,B,C,D] = tf2ss(num,den)

%% Exercicio 7 para testar Selecione e tecle F9
%Exercicio 7a
fprintf('Exercicio 7a')
A = [0 1 ; 2 4];
B = [0 ; 1];
C = [1 0];
D = [0];
[num,den] = ss2tf(A,B,C,D)
g = tf(num,den)
step(g)
grid

%Exercicio 7b
fprintf('Exercicio 7b')
A = [1 1 0; -2 0 4; 6 2 9];
B = [-1; 0; 1];
C = [0 1 0];
D = [0]; %numeros de zeros iguais a numeros de polos D<>0 unico caso que vai ser diferente
[num,den] = ss2tf(A,B,C,D)
g = tf(num,den)
step(g)
grid

%% Exercicio 8 para testar Selecione e tecle F9
%Exercicio 8a
fprintf('Exercicio 8a')
A = [0 1 0; 0 0 1; -3 -2 -5];
B = [0; 0; 1];
C = [1 0 0 ];
D = [0];
t=(0:0.1:10);
% [num,den] = ss2tf(A,B,C,D)
% a = tf(num,den)
x0 =[0 -1 1]'; %Matrix Transposta
initial (A,B,C,D,x0,t)
grid
% step(t,a)

%Exercicio 8b
fprintf('Exercicio 8b')
x0 = [0; -1; 1]
t=10;
A = [0 1 0; 0 0 1; -3 -2 -5];
Mt = expm(A*t)*x0 % Matriz de transição

%% Exercicio 9 para testar Selecione e tecle F9
fprintf('Exercicio 9')
A1 = [0 1 0; 0 0 1; -4 -5 -8];
B1 = [0; 0; 4];
C1 = [1 0 0 ];
D1 = [0];
[num1,den1] = ss2tf(A1,B1,C1,D1)
G1 = tf(num1,den1)
A2 = [0.5000 0.5000 0.7071; -0.5000 -0.5000 0.7071; -6.3640 -0.7071 -8.000];
B2 = [0; 0; 4];
C2 = [0.7071  -0.7071 0];
D2 = [0];
[num2,den2] = ss2tf(A2,B2,C2,D2)
G2 = tf(num2,den2)
 
fprintf('Os polos dos sistemas são iguais, e também possuem o mesmo ganho')
fprintf('Equações de espaços de estados diferentes podem ter a mesma equação de transferencia no sistema S');


%% Exercicio 10 para testar Selecione e tecle F9
%Exercicio 10a
fprintf('Exercicio 10a')
%Variaveis de estado para o controlador
num = [0 1];
den = [1 2];
Controlador = tf(num,den)
fprintf('As variaveis de estado do controlador são: ')
[A,B,C,D] = tf2ss(num,den)

%Exercicio 10b
fprintf('Exercicio 10b')
%Variaveis de estado para o processo
num = [1];
den = [1 2 4];
Processo = tf(num,den)
fprintf('As variaveis de estado do processo sao: ')
[A,B,C,D] = tf2ss(num,den)

%Exercicio 10c
fprintf('Exercicio 10c')
%Variaveis de estado do sistema em malha fechada
numc = [0 1]; %num do controlador
denc = [1 2]; %den do controlador
nump = [1];  %num do processo
denp = [1 2 4];  %den do processo
Controlador = tf(numc,denc) %funcao de transferencia do controlador
Processo = tf(nump,denp)  %funcao de transferencia do processador
sys = series(Controlador, Processo) % função serie para multiplicar as ft do controlador e do processo em malha aberta
fprintf('Funcao de Transferecia do sistema em malha fechada: ')
mf = feedback(sys, 1)  %funcao feedback para calcular a ft do sistema em malha fechada, o sensor tem constante igual a 1 neste sistema
impulse(mf) %pode usar o step(mf)
grid

%% Exercicio 11 para testar Selecione e tecle F9
fprintf('Exercicio 11')
A = [0 1; -2 -5];
B=[0 1];
sys = ss(A,B',[1 0],[0])
x0 = [1;0]
t = 0:0.1:5;
u = zeros(1,size(t,2));
[y x t] = lsim(sys,u,t, x0)

%% Exercicio 13 para testar Selecione e tecle F9
% Uma Matriz qualquer 
A0=[ -1 -2 3; 4 -5 6; 7 8 9];

%Provando a 1ª propriedade da matriz de transição de estados
fprintf('Propriedade 1:');
a = expm(A0*0)
b=A0*inv(A0)

%Provando a 2ª propriedade da matriz de transição de estados
fprintf('Propriedade 2:');
a=(expm(A0*1))^-1
b=expm(-A0*1)
 
%Provando a 3ª propriedade da matriz de transição de estados
fprintf('Propriedade 3:');
a=expm(A0*1)*expm(A0*2)
b=expm(A0*2)*expm(A0*1)

%Provando a 4ª propriedade da matriz de transição de estados
fprintf('Propriedade 4:');
a=(expm(A0*1))^2 
b=expm(2*A0*1)

%Provando a 5ª propriedade da matriz de transição de estados
fprintf('Propriedade 5:');
a=expm(A0*2-A0*1)*expm(A0*1-A0*0)
b=expm(A0*2-A0*0)

%% Exercicio 14 para testar Selecione e tecle F9
fprintf('Exercicio 14')
A = [1 2 3; 4 5 6; 7 8 9];

EXPM = expm(A) % Função para calcular a exponencial da matriz A
EXP = exp(A)  % Funcao calcula a exponencial da matriz A elemento por elemento
EIG = eig(A)  % Funcao eig calcula o autovalor da matriz A.

% Se utilizarmos os valores encontrados pelo comando eig sendo a diagonal principal  e utilizarmos
% os comandos expm e exp, encontraremos os mesmos valores quando se aplica as funcoes exp expm na matriz origina