/* [wxMaxima: input   start ] */
f: (sqrt(x+2)-(x+20)^(1/3))/((x+9)^(1/4)-2);
limit(f, x, 7);
float(%);
/* [wxMaxima: input   end   ] */
/* [wxMaxima: input   start ] */
f: ((2^(x+1)+3^(x+1)+5^(x+1)+7^(x+1))/(2+3+5+7))^(1/x);
limit(f, x, 0, minus);
float(%);
/* [wxMaxima: input   end   ] */
/* [wxMaxima: input   start ] */
f: ((%e^(%pi/n) + %e^(-%pi/n))/(2*cos(%pi/n)))^(n^2);
limit(f, n, inf);
float(%);
/* [wxMaxima: input   end   ] */
/* [wxMaxima: input   start ] */
f: (%pi^x - %pi^sin(x))/x^3;
limit(f, x, 0, plus);
float(%);
/* [wxMaxima: input   end   ] */
