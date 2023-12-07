f = @(x) 2000 * log(140000 / (140000 - 2100 * x)) - 9.8 * x;

n = input("Number of Segments (n): ");
a = input("Lower Limit (a): ");
b = input("Upper Limit (b): ");
h = (b - a) / n;

exval = quad(f, a, b);

odd = 0;
even = 0;

t1 = 0;
t2 = 0;
t3 = 0;
for i = 1:3:n-2
    t1 = t1 + f(a + i * h);
end
for i = 2:3:n-1
    t2 = t2 + f(a + i * h);
end
for i = 3:3:n-3
    t3 = t3 + f(a + i * h);
end


apvalue = ((3 * h) / 8) * (f(a) + 3 * t1 + 3 * t2 + 2 * t3 + f(b));

% Solution a.
printf("Approximate Value using Simpson's 3/8 rule: %.2f m\n", apvalue);

% Solution b.
terror = exval - apvalue;

printf("True Error: %.2f m\n", terror);

% Solution c.
aberror = abs(terror / exval) * 100;

printf("Absolute Relative Error: %.4f %%\n", aberror);

