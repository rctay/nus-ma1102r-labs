/* [wxMaxima: input   start ] */
f(x):=a*x^10 + b*x^9 + c*x^8 + d*x^7 + e*x^6 + f*x^5 + g*x^4 + h*x^3 + i*x^2 + j*x + k;
solve([f(0)=0, f(1)=16, f(-1)=-16, f(2)=5486, f(-2)=-5486, f(3)=192984, f(-3)=-192984, f(4)=2482444, f(-4)=-2482444, f(5)=18177560, f(-5)=-18177560], [a,b,c,d,e,f,g,h,i,j,k]);
/* [wxMaxima: input   end   ] */
/* [wxMaxima: input   start ] */
f0(a,b,c,d,e,f,g,h,i,j,k,x):=a*x^10 + b*x^9 + c*x^8 + d*x^7 + e*x^6 + f*x^5 + g*x^4 + h*x^3 + i*x^2 + j*x + k;
f0(0,9,0,8,0,-9,0,21,0,-13,0,1102);
/* [wxMaxima: input   end   ] */
