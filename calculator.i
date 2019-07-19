/* file : calculator.i */
  
/* name of module to use*/
%module calculator 
%{ 
    /* Every thing in this file is being copied in  
     wrapper file. We include the C header file necessary 
     to compile the interface */
    #include "calculator.h" 
  
    /* variable declaration*/
     double myvar; 
%} 
  
/* explicitly list functions and variables to be interfaced */
double myvar; 
long long int fact(long long int n1); 
int my_mod(int m, int n); 
int sum(int a,int b);
int sub(int a,int b);
long divx(long a,long b);
long sqrt_no(long a);
  
/* or if we want to interface all functions then we can simply 
   include header file like this -  
   %include "calculator.h" 
*/
