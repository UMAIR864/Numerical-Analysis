y = @(x) x^3 - 0.165*x^2 + 3.993 * 10^(-4);
x_lower = input("Enter first guess: " );
x_upper = input("Enter second guess: " );
E = input('Enter error tolerance: ');
x_mid = (x_upper*y(x_lower)-x_lower*y(x_upper))/(y(x_lower)-y(x_upper));
y_mid = y(x_mid);
it = 1;
while (1)
y_lower = y(x_lower);
y_upper = y(x_upper);
if y_lower*y_mid >0
x_lower = x_mid;
else
x_upper = x_mid;
endif
old_x_mid = x_mid;
x_mid = (x_upper*y(x_lower)-x_lower*y(x_upper))/(y(x_lower)-y(x_upper));
error = abs((x_mid - old_x_mid)/x_mid)*100;
y_mid = y(x_mid);
printf("Iteration %d | x_lower: %.5f | x_upper: %.5f | x_mid: %.5f | Error:
%.4f\n",it,x_lower,x_upper,x_mid,error);
if (error <= E)
break
endif
it++;
endwhile
printf("\nFinal Result\n");
printf("Iteration %d | x_lower: %.5f | x_upper: %.5f | x_mid: %.5f | Error:
%.4f\n",it,x_lower,x_upper,x_mid,error);
printf("\nThe root is: %f\n",x_mid);
printf("No of iterations: %d\n",it);
printf("The relative absoulate error is: %f\n",error);