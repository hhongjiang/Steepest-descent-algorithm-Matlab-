# Steepest-descent-algorithm-Matlab-

用MATLAB实现最速下降法(使用梯度作为下降方向的无限制最优化方法)。使用Armijo准则找步长。<br>
using MATLAB to do steepest descent algorithm（unconstrained optimization method that uses gratitude vector as descent direction）, and find steps by Armijo principle.<br>
English version is placed behind the Chinese one.<br>
 

### 一. 背景简述

#### 1.最速下降法的常用的迭代格式为  

>min f(x) <br> 
>
>xk+1 = xk + αkdk, k =0,1,...  <br>
>
>x0为初始向量，dk为f(x)在xk处的下降方向，αk > 0为步长。<br>

在最速下降法中，dk取负梯度方向-gk。步长采用Armijo准则进行非精确一维搜索。<br>  

#### 2.Armijo准则:  

设f(x)连续可微，dk是f(x)在xk处的下降方向，给定𝜌 ∈ (0, 1), β ∈ (0,1), 我们寻找使得下式成立的最小正整数𝑚𝑘 :  <br>

f(xk + β^m*dk) ≤ f(xk) + ρ*β^m*gkT*dk  <br>

我们需要的步长𝛼𝑘 = 𝛽^𝑚𝑘   <br>


### 二. 算法简述  

步骤1:给出初值𝑥𝑜 以及精度eps  

步骤2:计算gk = -∇f(xk);如果|gk| < eps,停止，输出𝑥𝑘;否则转步骤3。 

步骤3.由Armijo准则搜索线性步长因子𝛼𝑘  

步骤4.计算xk+1 = xk + αkdk ，𝑘 = 𝑘 + 1,转步骤2.  


### 三. Matlab实现  

程序包含4部分,分别是:<br>
最速下降法主函数  `steepest1.m`; <br>
求梯度函数 `fun_grad1.m`; <br>
测试函数 `fun1.m`; <br>
求Armijo步长因子函数 `armijo1.m`<br>

----------------------------

### I.Background explanation

#### 1.The literation form of steepest descent algorithm:<br>

>min f(x)
>
>xk+1 = xk + αkdk, k =0,1,...
>
>x0 is the initialization vector，dk is the descent direction of f(x) at xk.<br>

In steepest descent algorithm, dk = -gk, where gk is gratitude vector. <br>
Here I use Armijo principle to set the steps of inexact line search .<br>

#### II.Armijo Principle

Set f(x) to be continuously differential，and dk is the descent direction of f(x) at xk,<br>

Given 𝜌 ∈ (0, 1), β ∈ (0,1), we are trying to find the least possible integer that satisfy the following inequality:<br>

f(xk + β^m*dk) ≤ f(xk) + ρ*β^m*gkT*dk <br>

And the step we actually need is such: 𝛼𝑘 = 𝛽^𝑚𝑘   <br>

### II.Steps of the algorithm<br>

Step1.Set the initial vlue x0 and precision eps<br>

Step2.Calculate 'gk':gk = -∇f(xk); If |gk| < eps, stop and output xk; Otherwise, turn to Step 3.

Step3.Set the step 𝛼𝑘 by Armijo principle.

Step4.Caculate 'xk+1':xk+1 = xk + αkdk ，𝑘 = 𝑘 + 1; Turn to Step2.

### Matlab code structure:

The codes are formed by four parts:<br>
Main function of steepest descent method: `steepest1.m` <br>
the function used to get the gratitude:`fun_grad1.m` <br>
the testing function :`fun1.m` <br>
the function used to get the step :`armijo1.m` <br>

![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/1.png) 
![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/2.png)
![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/3.png) 
![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/4.png) 
![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/5.png)
![Alt text](https://github.com/liferjane/Steepest-descent-algorithm-Matlab-/blob/master/Screenshots/6.png)



