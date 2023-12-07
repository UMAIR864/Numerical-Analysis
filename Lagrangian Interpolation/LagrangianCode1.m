fprintf("First Order Calculation\n");
function result = lagin(x, y, xi)
  n = length(x);
  result = 0;
  t0 = 0;
  t1 = 0;
  for k = 1:n
    if x(k) <= xi && xi <= x(k+1)
      t0 = k;
      t1 = k+1;
    end
  end
  for i = t0:t1
    term = y(i);
    if i>=t0 && i<=t1
      for j = t0:t1
           if i ~= j
                 term = term * (xi - x(j)) / (x(i) - x(j));;
        end
     end
         result = result + term;
    end
  end
end

% Example usage
xi = input("Enter Time to Calculate: ");
x_values = [0, 10, 15, 20, 22.5, 30];
y_values = [0, 227.04, 362.78, 517.35, 602.97, 901.67];

result = lagin(x_values, y_values, xi);
fprintf("Result is: %.1f m/s for time %d sec\n", result, xi);

