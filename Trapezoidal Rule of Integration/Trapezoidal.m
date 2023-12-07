f = @(x) 2000 * log(140000 / (140000 - 2100 * x)) - 9.8 * x;

a = input("Lower Limit (a): ");
b = input("Upper Limit (b): ");

exval = quad(f, a, b);

segments = [2, 4, 6, 8, 10, 30];
terrors = zeros(size(segments));
apval = zeros(size(segments));
aerror = zeros(size(segments));

for i = 1:length(segments)
    n = segments(i);
    h = (b - a) / n;
    tem = 0;

    for j = 1:n-1
        tem = tem + f(a + j * h);
    end

    apval(i) = (h / 2) * (f(a) + 2 * tem + f(b));
    terrors(i) = exval-apval(i);
    aerror(i) = abs(terrors(i)/exval)*100;

end

printf("Exact Value is: %.2f m\n", exval);

for i = 1:length(segments)
    printf("Segment Value(n): %d \n",segments(i));
    printf("Approximate Value: %.2f m\n",apval(i));
    printf("True Error Value: %.2f \n",terrors(i));
    printf("Absoulate True Error Value: %.2f%%\n",aerror(i));
end

figure;
plot(segments, abs(terrors));
title('Error vs. Number of Segments');
xlabel('Number of Segments');
ylabel('True Error');
grid on;

