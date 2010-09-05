# Create a string of the rooting operation
function y=_rooter(curr, p_max)
  if curr>=p_max
    y=sprintf("sqrt(%d)", curr)
  else
    y=sprintf("sqrt(%d + %s)", curr, _rooter(curr+1, p_max))
  endif
end

function y=rooter(x)
  y=_rooter(1, x)
end

# finally...
foo=rooter(20)
printf("%.5f\n", eval(foo));