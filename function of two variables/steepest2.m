function [ vk ] = steepest2( v,eps )
% main function to get the extreme point by steepest descent 
% v is the initial value, eps is iteration precision
% noted that v must be given in the form of a list 

v1=v;

dk=-grad(v1); 

k=0;kmax=5000; %k is used to count the iteration times

while(k<kmax)
    
if (norm(dk)<eps) %test if the norm of gratitude is smaller than eps
   
    disp(¡®we have found the extreme point¡¯);
    vk=vpa(v1);return; % v1 is the extreme point we want,return v1
else
    
    dk=-grad(v1); % if v1 failed to pass the test, calculating the descent direction
    
    alpha=armijo2(v1); %calculating alpha
    v1=v1+alpha*dk; % finding the next point
    
    dk=-grad(v1); %
    
    k=k+1; %
    
    disp(k);disp(vpa(dk)); % displaying the gratitude of every point we find
end
end
end


