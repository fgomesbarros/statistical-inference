# Loads the plotting library
library(ggplot2)

# Sets variables that control the simulation
noSim <- 10000
lambda <- 0.2
mns <- var <- NULL

# Sets the seed for generating ramdom numbers
set.seed(8560298)

# Initiates the simulations
for(i in 1:noSim){
  smpl <- rexp(n = 40, rate = 0.2)
  mns <- c(mns, mean(smpl))
  var <- c(var, var(smpl))
}

# Theoretical means and variance
theoricalMean <- 1/lambda
theoricalVar <- (1/lambda)^2

# Mean of sample means
meanMeans <- round(mean(mns), 2)
meanVars <- round(mean(var), 2)
