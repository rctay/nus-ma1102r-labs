arr = -pi:0.1:pi
f=@(x)(sin(200*x)-e^x-2)

# plot to see
plot(arr, map(arr,f))