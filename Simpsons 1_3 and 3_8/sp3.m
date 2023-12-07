f = @(x) 2000 * log(140000 / (140000 - 2100 * x)) - 9.8 * x;

a = input("Lower Limit (a): ");
b = input("Upper Limit (b): ");
h = (b-a)/3;

exval = quad(f, a, b);
%Solution a.

apvalue = (3*h/8) *(f(a) + 3*f(a+h) + 3*f(a+2*h) + f(a+3*h));

printf("Approximate Value: %.2f m\n",apvalue);

%solution b.
terror = exval - apvalue;

printf("True Error: %.2f m\n",terror);

%solution c.

aberror = abs(terror/exval)*100;

printf("Absoulate Relative Error: %.4f %%\n",aberror);
