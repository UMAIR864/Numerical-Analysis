f = @(x, y) -2.2067*10^-12 *(y^4-81*10^8);

x0 =input("Enter Value for x0: ");
y0 =input("Enter Value for y0: ");
x_end =input("Enter Value for Target(target_x): ");
h =input("Enter Value for step(h): ");

results = [];
x = x0;
y = y0;

results = [results; x, y];

while x < x_end
    slope = f(x, y);
    y = y + h * slope;
    x = x + h;
    results = [results; x, y];
end

plot(results(:,1), results(:,2), '-');
xlabel('x');
ylabel('y');
title('Euler''s Method for Ordinary Differential Equations');
grid on;


