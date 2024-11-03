x=160
mu=165
n=100
s=10
z_stat=(x-mu)/(s/sqrt(n))
z_stat

z=Normal(0,1)

p_value=2*cdf(z,z_stat)
p_value

2*pnorm(5,lower.tail = FALSE)

z.test(
  x,
  y=NULL,
  alternative="two.sided",
  mu=0,
  sigma.x=NULL,
  sigma.y=NULL,
  conf.level=0.95
)