printf("Linear Interpolation\n");
t = [0, 10, 15, 20, 22.5, 30];
v = [0, 227.04, 362.78, 517.35, 602.97, 901.67];

t0 = input("Enter Value for T0: ");
t1 = input("Enter Value for t1: ");
tin = input("Enter Time to Calculate: ");

b0 = v(t == t0); %Because, b0 = v(t0)
b1 = (v(t == t1) - v(t == t0)) / (t1 - t0); %Because b1= (v(t0) - v(t0))/t0-t0

vin = b0 + b1 * (tin - t0);

printf("\n Velocity at t= %d sec using Linear Polynomial Interpolation: %.1f\n",tin,vin);


