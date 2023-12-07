printf("Quadratic Interpolation\n");
t = [0, 10, 15, 20, 22.5, 30];
v = [0, 227.04, 362.78, 517.35, 602.97, 901.67];

t0 = input("Enter Value for T0: ");
t1 = input("Enter Value for T1: ");
t2 = input("Enter Value for T2: ");
tin = input("Enter Time to Calculate: ");

% Calculate the coefficients for the quadratic polynomial
b0 = v(t == t0); % b0 = v(t0)
b1 = (v(t == t1) - v(t == t0)) / (t1 - t0); % b1 = (v(t1) - v(t0)) / (t1 - t0)
b2 = (((v(t == t2) - v(t == t1)) / (t2 - t1)) - b1) / (t2 - t0); % b2 calculation

% Calculate the interpolated velocity using the quadratic polynomial
vin = b0 + b1 * (tin - t0) + b2 * (tin - t0) * (tin - t1);

printf("\nVelocity at t = %d sec using Quadratic Polynomial Interpolation: %.2f\n", tin, vin);

