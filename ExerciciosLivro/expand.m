syms s;
num=10*(s+2);
den=s*(s+4)*(s+6);
fprintf('num= ');
ex1=expand(num);
disp(ex1);
fprintf('den= ');
ex2=expand(den);
disp(ex2);
