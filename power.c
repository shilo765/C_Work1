#include "myMath.h"
double Power(double x , int y){
int a;
double b;
b=x;
for( a = 0; a <y-1; a = a + 1 ){
      x*=b;
   }
   return x;
}
double Exponent(int x){
return Power(2.718281828,x);
}