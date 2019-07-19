# Python-C-wrapper

This is a basic calculator python wrapper for C code. 

## Preprocessing Steps

Install swig

<b> sudo apt-get install swig </b>

Create your c main code,header file and preprocessor .i code. 

<b> swig -python calculator.i </b> 

After executing this command a wrapper code with name “calculator_wrap.c” is created. This files contains a bloated version of our original C code with various error handling code etc. Another file “calculator.py” is generated which is the module we will import in our python script.

After this, we have to generate position-independent code which will be used in shared library by compiling “calculator_wrap.c” and “calculator.c” using the following command –
 
<b>gcc -c -fpic calculator_wrap.c main.c -I/use/include/python2.7</b>

Now, at last, we have to link generated objects files together to create a shared object which is analogous to dll files in windows. Use the following command, this will generate a “_gfg.so” shared object file –

<b> gcc -shared calculator.o calculator_wrap.o -o _calculator.so</b>

## Testing

python2 test.py 

## Output

Factorial of 5 is 125 <br>
Sum of 2 and 5 is 7 <br>
Division of 10 and 5 is 2 <br>
Sub of 5 and 7 is -2<br>
sqrt of 49 is 7 <br>
