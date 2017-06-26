# Steepest-descent-algorithm-Matlab-
 using MATLAB to do steepest descent algorithm(use Armijo) ,  
 aiming at finding the extreme point of functions of one variable & two variables,  
 
for the reason that matlab can't show Chinese note in .m ,the notes are all English  

you can change the function in fun1.m or fun2.m

中文注释在experiment report里面。

基于 MATLAB 的最速下降法实现 无约束优化问题指下列优化问题  


一. 原理简述  

求解此类问题的常用的迭代格式为  

min f(x)  

xk+1 = xk + αkdk, k =0,1,...  

x0为初始向量，dk为f(x)在xk处的下降方向，αk > 0为步长。在最速下降法中，dk取负梯度方向-gk。步长采用Armijo准则进行非精确一维搜索。  

Armijo准则:  

设f(x)连续可微，dk是f(x)在xk处的下降方向，给定𝜌 ∈ (0, 1), β ∈ (0,1), 我们寻找使得下式成立的最小正整数𝑚𝑘 :  

f(xk + β^m*dk) ≤ f(xk) + ρ*β^m*gkT*dk  

我们需要的步长𝛼𝑘 = 𝛽^𝑚𝑘  


二. 算法简述  

步骤1:给出初值𝑥𝑜 以及精度eps  

步骤2:计算gk = -∇f(xk);如果|gk| < eps,停止，输出𝑥𝑘;否则转步骤3。 步骤3.由Armijo准则搜索线性步长因子𝛼𝑘  

步骤4.计算xk+1 = xk + αkdk ，𝑘 = 𝑘 + 1,转步骤2.  


三. Matlab实现  

程序包含4部分:分别是最速下降法主函数steepest1.m; 求梯度函数fun_grad1.m; 测试函数 fun1.m;Armijo 求步长因子函数 armijo1.m  

![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/1.png) 
![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/2.png)
![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/3.png) 
![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/4.png) 
![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/5.png)
![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/6.png)



