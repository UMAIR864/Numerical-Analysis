% Third Order Calculation
printf("Third Order Calculation\n");
t = [0, 10, 15, 20, 22.5, 30];
v = [0, 227.04, 362.78, 517.35, 602.97, 901.67];

t1 = input("Enter Value for T0: ");
t2 = input("Enter Value for T1: ");
t3 = input("Enter Value for T2: ");
t4 = input("Enter Value for T3: ");

tin = input("Enter Time to Calculate: ");

A = [1, t1, t1^2, t1^3; 1, t2, t2^2, t2^3; 1, t3, t3^2, t3^3; 1,t4, t4^2, t4^3];
B = [v(t == t1); v(t == t2); v(t == t3); v(t == t4)];

coefficients = A \ B;

a0 = coefficients(1);
a1 = coefficients(2);
a2 = coefficients(3);
a3 = coefficients(4);

vin = a0 + a1 * tin + a2 * tin * tin + a3 * tin * tin * tin;

printf("\nVelocity at t = %d sec using Third Order Polynomial Interpolation: %.1f\n", tin, vin);

