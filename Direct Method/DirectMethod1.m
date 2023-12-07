printf("First Order Calculation\n");
t = [0, 10, 15, 20, 22.5, 30];
v = [0, 227.04, 362.78, 517.35, 602.97, 901.67];

t1 = input("Enter Value for T0: ");
t2 = input("Enter Value for T1: ");
tin = input("Enter Time to Calculate: ");

A = [1, t1; 1, t2];
B = [v(t == t1); v(t == t2)];

coefficients = A \ B;

a0 = coefficients(1);
a1 = coefficients(2);

vin = a0 + a1 * tin;

printf("\n Velocity at t= %d sec using First Order Polynomial Interpolation: %.1f\n",tin,vin);
