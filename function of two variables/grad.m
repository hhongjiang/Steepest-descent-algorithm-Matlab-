function [ j ] = grad(v2)
%using diff() to find the partial derivatives of x1,x2 each, then return j = gratitude    

syms x1 x2

v=[x1,x2];

v1=v2;

j1=[diff(fun2(v),x1),diff(fun2(v),x2)]; %calculating the partial derivatives 

j=[subs(j1(1),v,v1),subs(j1(2),v,v1)]; % replacing x1,x2 by actual number

end

