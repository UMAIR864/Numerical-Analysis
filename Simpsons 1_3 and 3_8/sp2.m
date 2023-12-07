f = @(x) 2000 * log(140000 / (140000 - 2100 * x)) - 9.8 * x;

n = input("Number of Segments (n): ");
a = input("Lower Limit (a): ");
b = input("Upper Limit (b): ");
h = (b - a) / n;

exval = quad(f, a, b);

odd = 0;
even = 0;

tem = a + h;
for i = 1:n-1
  if(rem(i, 2) == 1)
    odd = odd + f(tem);
  else
    even = even + f(tem);
  end
  tem = tem + h;
end

apvalue = (h / 3) * (f(a) + 4 * odd + 2 * even + f(b));

fprintf("Approximate Value: %.2f m\n", apvalue);

% Solution b.
terror = exval - apvalue;

fprintf("True Error: %.2f m\n", terror);

% Solution c.
aberror = abs(terror / exval) * 100;

fprintf("Absolute Relative Error: %.4f %%\n", aberror);

