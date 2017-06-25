function [ gk ] = fun_grad1( t0 )
%calculating the derivatives of the function

syms t

gk = subs(diff(fun1(t)),t,t0); 

end

