# Create parameterized functions
function y=curry_k(k)
  y = @(t) \
    ((e ^ sin(t)) - 2 * cos(k * t) + (sin((2*t - pi)/24))^5)
end

arr = -50:0.1:50;
# requires the use of my map() implementation
polar(arr, map(arr, curry_k(3)))