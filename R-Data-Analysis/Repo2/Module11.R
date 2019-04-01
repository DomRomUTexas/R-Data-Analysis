library(manipulate)
library(tidyverse)
library(curl)

outcomes <- c(1, 2, 3, 4, 5, 6)
manipulate(hist(base::sample(x = outcomes, size = n, replace = TRUE), 
        breaks = c(0.5, 1.5, 2.5, 3.5, 4.5, 5.5, 6.5), 
        probability = TRUE, main = paste("Histogram of Outcomes of ", n, " Die Rolls", sep = ""), 
        xlab = "roll", ylab = "probability"), 
        n = slider(0, 10000, initial = 100, step = 100))


nrolls <- 1000
roll <- function(x) { base::sample (1:6, x, replace = TRUE)
}
two_dice <- roll(nrolls) + roll(nrolls)
hist(two_dice, breaks = c(1.5:12.5), probability = TRUE, main = "Rolling Two Dice", 
     xlab = "sum of rolls", ylab = "probability")

12/52
4/52
13/52
3/12
3/12

13/52 
40/52

.7692308+.25
10/52
1.019231-.1923077

outcomes <- c("heads", "tails")
prob <- c(1/2, 1/2)
barplot(prob, ylim = c(0, 0.6), names.arg = outcomes, space = 0.1, xlab = "outcome", 
        ylab = "Pr(X = outcome)", main = "Probability Mass Function")

cumprob <- cumsum(prob)
barplot(cumprob, names.arg = outcomes, space = 0.1, xlab = "outcome", ylab = "Cumulative Pr(X)", 
        main = "Cumulative Probability")

outcomes <- c(1, 2, 3, 4, 5, 6)
prob <- c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6)
barplot(prob, ylim = c(0, 0.5), names.arg = outcomes, space = 0.1, xlab = "outcome", 
        ylab = "Pr(X = outcome)", main = "Probability Mass Function")

cumprob <- cumsum(prob)
barplot(cumprob, names.arg = outcomes, space = 0.1, xlab = "outcome", ylab = "Cumulative Pr(X)", 
        main = "Cumulative Probability")

manipulate(ggplot(data = data.frame(x = c(0, 1)), aes(x)) + stat_function(fun = dbeta, 
                                                                          args = list(shape1 = alpha, shape2 = beta), n = 1000) + xlab("x") + ylab("f(x)") + 
             labs(title = "Exploring the Beta Distribution", subtitle = paste0("Cumulative Probability = ", 
                                                                               round(pbeta(x, alpha, beta), 2))) + stat_function(fun = dbeta, xlim = c(0, 
                                                                                                                                                       x), args = list(shape1 = alpha, shape2 = beta), n = 1000, geom = "area"), 
           alpha = slider(0, 10, initial = 2, step = 0.1), beta = slider(0, 10, initial = 1, 
                                                                  step = 0.1), x = slider(0, 1, initial = 0, step = 0.01))

