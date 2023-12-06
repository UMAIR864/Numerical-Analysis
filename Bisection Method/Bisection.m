f = @(x) x^3 - 0.165*x^2 + 3.993*10^-4;
x_lower = input("Enter first guess: " );
x_upper = input("Enter second guess: " );
e = input('Enter error tolerance: ');
while(1)
y1 = f(x_lower);
y2 = f(x_upper);
if(y1*y2 > 0)
printf("Not in Range.\n");
x_lower = input("Enter first guess: " );
x_upper = input("Enter second guess: " );
else
x_mid = (x_lower+x_upper)/2;
ym = f(x_mid);
break;
endif
endwhile
it = 1;
while(1)
if(y1*ym < 0)
x_upper = x_mid;
elseif(y2*ym <0)
x_lower = x_mid;
else
printf("Root: %0.5d", x_mid);
break;
endif
prev_m = x_mid;
x_mid = (x_lower+x_upper)/2;
ym = f(x_mid);
error = abs(x_mid-prev_m)/x_mid*100;
printf("Iteration %d | x_lower: %.5f | x_upper: %.5f | x_mid: %.5f | Error:
%.4f\n",it,x_lower,x_upper,x_mid,error);
if(error <= e)
break;
endif
it++;
endwhile
printf("\nFinal Result\n");
printf("Iteration %d | x_lower: %.5f | x_upper: %.5f | x_mid: %.5f | Error:
%.4f\n",it,x_lower,x_upper,x_mid,error);
printf("\nThe root is: %f\n",x_mid);
printf("No of iterations: %d\n",it);
printf("The relative absoulate error is: %f\n",error);