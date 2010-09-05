function y=f(n,x)
  if n == 0
    y=1-abs(x)
  else
    y=1-abs(1-2*f(n-1,x))
  endif
end

arr=0:0.1:10;
plot(arr,map(arr,@(x) f(10, x)))