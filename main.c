#include <stdio.h>
# include "power.c"
#include "basicMath.c"
int main()
{
	double x;
	double result,result2,result3,temp;
	printf("please enter a real number:");
	scanf("%lf", &x);
	result=add(Exponent(x),Power(x,3));
    result=sub(result,2);	
	result2= mul(x,3);
	temp=Power(x,2);
	temp= mul(temp,2);
	result2=add(result2,temp);
	result3=Power(x,3);
	result3=mul(result3,4);
	temp=mul(x,2);
	result3=div(result3,5);
	result3=sub(result3,temp);
	printf("the value of f(x)=e^x+x^3-2 at the point %0.2lf is %0.4lf\n",x,result);
	printf("the value of f(x)=3X+2x^2 at the point %0.2lf is %0.4lf\n",x,result2);
	printf("the value of f(x)=(4X^3)/5-2x at the point %0.2lf is %0.4lf\n",x,result3);
	
}