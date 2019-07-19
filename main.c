/* file : gfg.c */

#include <stdio.h> 
#include <math.h> 

//our header file 
#include "calculator.h" 
#define ll long long 
double myvar = 3.4; 
// calculate factorial 
ll int fact(ll int n) 
{ 
	if(n <= 1) 
		return 1; 
	else
		return (n * fact(n-1)); 
} 

//find mod 
int my_mod(int n, int m) 
{ 
return(n % m); 
} 

int sum(int a,int b)
{
return a+b;
}

int sub(int a,int b)
{
return a-b;
}

long divx(long a,long b)
{
return a/b;
}

long sqrt_no(long a)
{
return sqrt(a);
}



