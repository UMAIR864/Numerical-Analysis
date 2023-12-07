printf("Second Order Calculation\n");
t = [0, 10, 15, 20, 22.5, 30];
v = [0, 227.04, 362.78, 517.35, 602.97, 901.67];

t1 = input("Enter Value for T0: ");
t2 = input("Enter Value for T1: ");
t3 = input("Enter Value for T2: ");
tin = input("Enter Time to Calculate: ");

A = [1, t1, t1^2; 1, t2, t2^2; 1, t3, t3^2];
B = [v(t == t1); v(t == t2); v(t == t3)];

coefficients = A \ B;

a0 = coefficients(1);
a1 = coefficients(2);
a2 = coefficients(3);

vin = a0 + a1 * tin + a2 * tin * tin;

printf("\nVelocity at t = %d sec using Second Order Polynomial Interpolation: %.1f\n", tin, vin);

