/* [wxMaxima: input   start ] */
f: (sqrt(x+2)-(x+20)^(1/3))/((x+9)^(1/4)-2);
limit(f, x, 7);
/* [wxMaxima: input   end   ] */
/* [wxMaxima: input   start ] */
f: (2^(x+1)+3^(x+1)+5^(x+1)+7^(x+1))/(2+3+5+7);
limit(f, x, 0, minus);
/* [wxMaxima: input   end   ] */
/* [wxMaxima: input   start ] */
f: ((%e^(%pi/n) + %e^(-%pi/n))/(2*cos(%pi/n)))^(n^2);
limit(f, n, inf);
/* [wxMaxima: input   end   ] */
/* [wxMaxima: input   start ] */
f: (%pi^x - %pi^sin(x))/x^3;
limit(f, x, 0, plus);
/* [wxMaxima: input   end   ] */
