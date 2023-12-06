x1 = input("Guess 1(a): ");
x2 = input("Guess 2(b): ");
E = input("Error Tolerance: ");

x_old = (x1 + x2) / 2;

g = @(x) ((x^4)-2);

step = 1;
while (1)
  x_new = g(x_old);
  error = abs((x_new - x_old) / x_new) * 100;
  x_old = x_new;
  fprintf("Iteration %d | The root is: %.4f | Relative Abs error %.4f\n",step,x_new,error);
  if (error <= E)
    break;
  end
  step++;
end
fprintf("Final Result.\n");
fprintf("The root is: %.4f\n", x_new);
fprintf("The relative abs error is: %f\n", error);
fprintf("No of iterations: %d\n", step);
