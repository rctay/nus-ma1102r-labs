# Create parameterized functions
function y=create_k(k)
  y = @(t) \
    ((e ^ sin(t)) - 2 * cos(k * t) + (sin((2*t - pi)/24))^5)
end

arr = -pi:0.1:pi
# requires the use of my map() implementation
polar(arr, map(arr, create_k(3)))