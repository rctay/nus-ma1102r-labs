/* [wxMaxima: input   start ] */
f: %e^cos(x^2);
g: diff(f,x,2)-f;

r1: find_root(g,x,0,4);
r2: find_root(g,x,r1,4);
/* [wxMaxima: input   end   ] */
/* [wxMaxima: input   start ] */
ev(g,x=3.415946);
/* [wxMaxima: input   end   ] */
/* [wxMaxima: input   start ] */
ev(g,x=2.322337);
/* [wxMaxima: input   end   ] */
