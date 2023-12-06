f = @(x) 3*x^3 - 16*x^2 + 23*x ;
f_prime = @(x) 9*x^2 - 32*x + 23 ;

x_old = input("Enter Guess: ");
E = input("Enter error tolerance: ");

step = 1;
while(1)
  x_new = x_old - (f(x_old)/f_prime(x_old));
  error = abs((x_new - x_old)/x_new)*100;
  x_old = x_new;
  if(error<=E)
    break
  endif
  step++;
endwhile

fprintf("The root is: %f\n",x_new);
fprintf("The relative abs error is: %f\n",error);
fprintf("No of iterations: %d\n",step);



