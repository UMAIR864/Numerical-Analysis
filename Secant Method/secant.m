f = @(x) x^3 - 0.165*x^2 + 3.993*10^-4 ;
x_old = input("Enter First Guess: ");
x_i= input("Enter Second Guess: ");
E = input("Enter error tolerance: ");

step = 1;
while(1)
  x_new = x_i - (f(x_i)*(x_i-x_old)/(f(x_i)-f(x_old)));
  
  error = abs((x_new - x_i)/x_new)*100;
  x_old=x_i;
  x_i = x_new;
  
  if(error<=E)
    break
  endif
    step++;
endwhile

fprintf("The root is: %f\n",x_new);
fprintf("The relative abs error is: %f\n",error);
fprintf("No of iterations: %d\n",step);



