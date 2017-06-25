function [ tk ] = steepest1( t0,eps )
% main function to get the extreme point by steepest descent 
% t0 is the initial value, eps is iteration precision


k=0;kmax=5000; % k is the iteration times

while(k<kmax)
    
    gk=fun_grad1(t0); % calculating the derivatives by function fun_grad1() 
    
    if(abs(gk)<eps) % test if we are getting the extreme point  
        
       tk=t0; 
       
       disp(tk);return; %return tk,tk is the extreme point we want 
       
    else
        
        dk=-gk; % calculating the descent direction
        
        alpha=armijo1(t0); % find the step length factor by function armijo()
        
        t0=t0+alpha*dk; %finding the next point
        
        k=k+1; 
        
    end
    
end
tk=t0; disp('达到最大搜索次数，但还未达到精度');

end

