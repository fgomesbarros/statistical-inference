# Loads the plotting library
library(ggplot2)

# Sets variables that control the simulation
sampleSize <- 40
noSim <- 10000
lambda <- 0.2
means <- vars <- NULL

# Sets the seed for generating ramdom numbers
set.seed(856098)

# Initiates the simulations
for(i in 1:noSim){
  x <- rexp(n = sampleSize, rate = lambda)
  xMeans <- c(means, mean(smpl))
  xVars <- c(vars, var(smpl))
}

# Theoretical means and variance
mu <- 1/lambda
sigma <- (1/lambda)^2

# Cumultative mean of sample means
cumMeans <- cumsum(means)/(1:noSim)
cumVars <- cumsum(vars)/(1:noSim)

# Plot graph of means
g <- ggplot(data.frame(x = 1:noSim, y = meanMeans), aes(x = x, y = y))
g <- g + geom_hline(yintercept = mu, linetype = "dashed") + 
  geom_line(size = 1, colour = "blue")
g <- g + labs(x = "Number of simulations", y = "Cumulative mean") 
g

# Plot graph of variances
h <- ggplot(data.frame(x = 1:noSim, y = meanVars), aes(x = x, y = y))
h <- h + geom_hline(yintercept = sigma, linetype = "dashed") + 
  geom_line(size = 1, colour = "red")
h <- h + labs(x = "Number of simulations", y = "Cumulative mean")
h

# Normalize distribution of means

