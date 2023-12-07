f = @(x) 2000 * log(140000 / (140000 - 2100 * x)) - 9.8 * x;

a = input("Lower Limit (a): ");
b = input("Upper Limit (b): ");
m = (a+b)/2;

exval = quad(f, a, b);
%Solution a.
apvalue = ((b-a)/6) * (f(a)+4*f(m)+f(b));

printf("Approximate Value: %.2f m\n",apvalue);

%solution b.
terror = exval - apvalue;

printf("True Error: %.2f m\n",terror);

%solution c.

aberror = abs(terror/exval)*100;

printf("Absoulate Relative Error: %.4f %%\n",aberror);
