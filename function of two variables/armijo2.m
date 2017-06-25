function [ alpha ] = armijo2( v )
%use ARMIJO principle to find the proper step length factor-alpha
%if alpha=beta^mmax, the length might be too little,and there would be a hint for users. 

v1=v;

beta=0.5;rho=0.2;  
% defining the parameters, beta should be 0 to 1, rho should be 1-0.5 

m=1;mmax=20;

% because (0.5)&1/2 would be a rather small number,so we set mmax to be 20


while(m<mmax) 
    
    gk=grad(v1); %use grad() to calculate the derivative.
    
    dk=-gk; %descent direction = -1*gratitude
   
    
    v2=v1+(beta^m)*dk; % calculate what the next point is
    
    if(fun2(v2)<=fun2(v1)+rho*(beta^m)*gk*dk') %test if m is the right number
       
        alpha=beta^m;return;  
        %if true, return alpha=beta^m and end this function
    end
    
    v1=v2;m=m+1;
 
end
alpha=beta^m; 
%if after itering 10 times, m still can¡¯t pass the test,return alpha=beta^mmax 


disp('alpha is already (1/2)^20,the step may be too little');
%tell the user that the step length might be too small to be used.
%Maybe the user should try another way to find the step length factor.

end

