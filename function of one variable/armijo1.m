function [ alpha ] = armijo1( t0 )
%use ARMIJO principle to find the proper step length factor-alpha
%if alpha=beta^mmax, the length might be too little,and there would be a hint for users. 


beta=0.5;rho=0.2; %defining the parameters

m=0;mmax=20; 
%m is the search times, mmax is the maximum searching times.

while(m<=mmax)
    
    gk=fun_grad1(t0); %use fun_grad1() to calculate the derivative.
    
    dk=-gk; %the descent direction is -1*derivative
    
    t1=t0+(beta^m)*dk; %calculating what the next point is

    if(fun1(t1) <= fun1(t0) + rho*(beta^m)*gk*dk')
        %tetsing if m is the right number
        
       alpha=beta^m;return; 
       %if true,then return the value of alpha now and end the this function
       
    end
    
    t0=t1; m=m+1;
end

alpha=beta^m;

disp('alpha is already (1/2)^11,the step may be too little');
%进行步长过小的提醒

end

