set.seed(77)

# Number of simulations
sims <- 10000
mns <- NULL
var <- NULL
sd <- NULL

# Simulations
for(i in 1:sims){
  smpl <- rexp(n = 40, rate = 0.2)
  mns <- c(mns, mean(smpl))
  var <- c(var, var(smpl))
  sd <- c(sd, sd(smpl))
}