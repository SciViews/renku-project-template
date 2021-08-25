# Still must rework chart section + make chart plots for distributions
## SciViews R snippets (version 2018.2.0) ######################################
snippet SciViewsR: Install SciViews::R dialect
SciViews::R

snippet fileabschoose: Choose an absoluter file path
"`r file.choose()`"

snippet filerelchoose: Choose a relative file path (to current wd)
"`r data.io::relative_path(file.choose())`"

# This requires R Studio 1.1!
snippet dirabschoose: Choose an absolute directory path
"`r .rs.api.selectDirectory()`"

snippet dirrelchoose: Choose a relative directory path (to current wd)
"`r data.io::relative_path(.rs.api.selectDirectory())`"

snippet r
"`r data.io::relative_path($$)`"

#snippet a
#	"`r data.io::absolute_path($$)`"


## Tools #############################################################################################
snippet ...tools
..t

snippet ..tools: memory
.tm

snippet .tmused: total memory used [pryr]
pryr::mem_used()

snippet .tmobjsize: size of an object [pryr]
pryr::object_size(${1:OBJECT})


## Models #############################################################################################
snippet ...models
..m

snippet ..models: tools
.mt

snippet .mtaic: model's BIC
	BIC(${1:lm.})

snippet .mtaic: model's AIC
AIC(${1:lm.})

snippet .mtpredict: predict new data
predict(${1:lm.}, newdata = list(${2:X} = ${3:c(1, 3, 6)}))

snippet .mtfitted: fitted values
predict(${1:lm.})

snippet .mtaugment: add stats to model [broom]
(${2:DF} <- broom::augment(${1:lm.}))

snippet .mtpardf: linear model parameters as a dataframe [broom]
(${2:DF} <- broom::tidy(${1:lm.}))

snippet .mtmoddf: linear model results as a dataframe [broom]
(${2:DF} <- broom::glance(${1:lm.}))

snippet .mtanova: linear model - anova
anova(${1:lm.})

snippet .mtsummary: linear model - summary
summary(${1:lm.})


snippet ..models: linear
.ml

#snippet .mlplot7: linear model - influence plot [car, chart]
#	chart\$base(car::influencePlot(${1:lm.}, labels = FALSE, id.method = "noteworthy"))

snippet .mlplot6: linear model - plot Cook's dist vs leverage [chart, broom]
	#plot(${1:lm.}, which = 6)
	${1:lm.} %>.%
		chart(broom::augment(.), .cooksd ~ .hat %size=% .cooksd) +
		geom_point() +
		geom_vline(xintercept = 0, colour = NA) +
		geom_abline(slope = seq(0, 3, by = 0.5), colour = "darkgray") +
		geom_smooth(se = FALSE, size = 0.5, method = "loess", formula = y ~ x) +
		labs(x = expression("Leverage h"[ii]), y = "Cook's distance") +
		ggtitle(expression("Cook's dist vs Leverage h"[ii]/(1-h[ii])))

snippet .mlplot5: linear model - plot residuals vs leverage [chart, broom]
	#plot(${1:lm.}, which = 5)
	${1:lm.} %>.%
		chart(broom::augment(.), .std.resid ~ .hat %size=% .cooksd) +
		geom_point() +
		geom_smooth(se = FALSE, size = 0.5, method = "loess", formula = y ~ x) +
		geom_vline(xintercept = 0) +
		geom_hline(yintercept = 0) +
		labs(x = "Leverage", y = "Standardized residuals") +
		ggtitle("Residuals vs Leverage")

snippet .mlplot4: linear model - plot Cook's distance [chart, broom]
#plot(${1:lm.}, which = 4)
${1:lm.} %>.%
  chart(broom::augment(.), .cooksd ~ seq_along(.cooksd)) +
  geom_bar(stat = "identity") +
  geom_hline(yintercept = seq(0, 0.1, by = 0.05), colour = "darkgray") +
  labs(x = "Obs. number", y = "Cook's distance") +
  ggtitle("Cook's distance")

snippet .mlplot3: linear model - plot scale - location [chart, broom]
#plot(${1:lm.}, which = 3)
${1:lm.} %>.%
  chart(broom::augment(.), sqrt(abs(.std.resid)) ~ .fitted) +
  geom_point() +
  geom_smooth(se = FALSE, method = "loess", formula = y ~ x) +
  labs(x = "Fitted values",
    y = expression(bold(sqrt(abs("Standardized residuals"))))) +
  ggtitle("Scale-Location")

snippet .mlplot2: linear model - residuals QQ plot [chart, broom]
#plot(${1:lm.}, which = 2)
${1:lm.} %>.%
  chart(broom::augment(.), aes(sample = .std.resid)) +
  geom_qq() +
  geom_qq_line(colour = "darkgray") +
  labs(x = "Theoretical quantiles", y = "Standardized residuals") +
  ggtitle("Normal Q-Q")

snippet .mlplot1: linear model - plot residuals vs fitted [chart, broom]
#plot(${1:lm.}, which = 1)
${1:lm.} %>.%
  chart(broom::augment(.), .resid ~ .fitted) +
  geom_point() +
  geom_hline(yintercept = 0) +
  geom_smooth(se = FALSE, method = "loess", formula = y ~ x) +
  labs(x = "Fitted values", y = "Residuals") +
  ggtitle("Residuals vs Fitted")

snippet .mlinpoly3: linear model - polynomial (degree 3)
summary(${1:lm.} <- lm(data = ${2:DF},
  ${3:YNUM} ~  ${4:XNUM} + I(${4:XNUM}^2) + I(${4:XNUM}^3)))
${1:lm.} %>.% (function(lm, model = lm[["model"]], vars = names(model))
  chart(model, aes_string(x = vars[2], y = vars[1])) +
    geom_point() +
    stat_smooth(method = "lm", formula = y ~ x + I(x^2) + I(x^3)))(.)

snippet .mlinpoly2: linear model - polynomial (degree 2)
summary(${1:lm.} <- lm(data = ${2:DF},
  ${3:YNUM} ~  ${4:XNUM} + I(${4:XNUM}^2)))
${1:lm.} %>.% (function (lm, model = lm[["model"]], vars = names(model))
  chart(model, aes_string(x = vars[2], y = vars[1])) +
    geom_point() +
    stat_smooth(method = "lm", formula = y ~ x + I(x^2)))(.)

snippet .mlinsimple0: linear model - simple without intercept
summary(${1:lm.} <- lm(data = ${2:DF}, ${3:YNUM} ~ ${4:XNUM} + 0))
${1:lm.} %>.% (function (lm, model = lm[["model"]], vars = names(model))
  chart(model, aes_string(x = vars[2], y = vars[1])) +
    geom_point() +
    stat_smooth(method = "lm", formula = y ~ x + 0))(.)

snippet .mlinsimple: linear model - simple
summary(${1:lm.} <- lm(data = ${2:DF}, ${3:YNUM} ~ ${4:XNUM}))
${1:lm.} %>.% (function (lm, model = lm[["model"]], vars = names(model))
  chart(model, aes_string(x = vars[2], y = vars[1])) +
    geom_point() +
    stat_smooth(method = "lm", formula = y ~ x))(.)

snippet .mlin: linear model
summary(${1:lm.} <- lm(data = ${2:DF}, ${3:FORMULA}))


## Distributions ####################################################################################
snippet ...(d)istributions
..i


## Distribution: annotations ######################################################################
snippet ..i (d)istribution: annotations
.ia

snippet .iatitle: dist. plot - add a title
title(.label) # Curve characteristics as title

snippet .ialquant: dist. plot - show quantiles (lines)
abline(v = ${1:QUANTILE(S)}, lty = "dashed", lwd = 2, col = "red") # Vertical line(s)

snippet .iapquant: dist. plot -show quantiles (points)
points(.q2 <- ${1:QUANTILE(S)}, rep(0, length(.q2)), pch = 19, col = "red") # Quantile on baseline

snippet .iarprob: dist. plot - shade probability at right
# Upper-tail probability (right area)
.p2 <- ${1:0.05}; .x2 <- .x[.x >= .q(1 - .p2)]
polygon(c(.x2, max(.x2), min(.x2)), .d(c(.x2, -Inf, -Inf)),
  border = .col, col = "salmon")

snippet .ialprob: dist. plot - shade probabilty at left
# Lower-tail probability (left area)
.p2 <- ${1:0.05}; .x2 <- .x[.x <= .q(.p2)]
polygon(c(.x2, max(.x2), min(.x2)), .d(c(.x2, -Inf, -Inf)),
  border = .col, col = "salmon")

snippet .iacprob: dist. plot - shade central probability
# Central probability
.p2 <- ${1:0.95}; .x2 <- .x[.x >= .q(0.5 - .p2/2) & .x <= .q(0.5 + .p2/2)]
polygon(c(.x2, max(.x2), min(.x2)), .d(c(.x2, -Inf, -Inf)),
  border = .col, col = "salmon")


## Distribution: F ##############################################################################
snippet ..i (d)istribution: F
.if

snippet .ifrlabel: F dist. - add label to the right
text(0.5, .d(0.5), .label, pos = 4, col = .col) # Label at right

snippet .ifllabel: F dist. - add label to the left
text(1, .d(1), .label, pos = 2, col = .col) # Label at left

snippet .ifcumul: F dist. - cumulative dens. plot
# Fisher-Snedecor's F distribution (cumulative probability) with parameter:
.df1 <- ${1:NUMERATOR_DF}; .df2 <- ${2:DENOMINATOR_DF} # numerator (.df1) and denominator (.df2) df
.col <- ${3:1}; .add <- ${4:FALSE} # Plot parameters
.x <- seq(0, qf(0.999, df1 = .df1, df2 = .df2), l = 1000)  # Quantiles
.d <- function (x) pf(x, df1 = .df1, df2 = .df2)           # Distribution function
.q <- function (p) qf(p, df1 = .df1, df2 = .df2)           # Quantile for lower-tail prob
.label <- bquote(F(.(.df1), .(.df2)));                     # Curve parameters
curve(.d(x), xlim = range(.x), ylim = 0:1, xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Cumulative probability") # Curve
abline(h = 0:1, col = "gray") # Baseline

snippet .ifdens: F dist. - density plot
# Fisher-Snedecor's F distribution (density probability) with parameter:
.df1 <- ${1:NUMERATOR_DF}; .df2 <- ${2:DENOMINATOR_DF} # numerator (.df1) and denominator (.df2) df
.col <- ${3:1}; .add <- ${4:FALSE} # Plot parameters
.x <- seq(0, qf(0.999, df1 = .df1, df2 = .df2), l = 1000)  # Quantiles
.d <- function (x) df(x, df1 = .df1, df2 = .df2)           # Distribution function
.q <- function (p) qf(p, df1 = .df1, df2 = .df2)           # Quantile for lower-tail prob
.label <- bquote(F(.(.df1), .(.df2)))                      # Curve parameters
curve(.d(x), xlim = range(.x), xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Probability density") # Curve
abline(h = 0, col = "gray") # Baseline

snippet .ifrandom: F dist. - random
rf(${1:N}, df1 = ${2:NUMERATOR_DF}, df2 = ${3:DENOMINATOR_DF})

snippet _ifquant: F dist. - quantiles
qf(${1:PROBABILITIES}, df1 = ${2:NUMERATOR_DF}, df2 = ${3:DENOMINATOR_DF}, lower.tail = ${4:TRUE})

snippet .ifproba: F dist. - probabilities
pf(${1:QUANTILES}, df1 = ${2:NUMERATOR_DF}, df2 = ${3:DENOMINATOR_DF}, lower.tail = ${4:TRUE})


## Distribution: chi-squared #########################################################################
snippet ..i (d)istribution: chi2
.ic

snippet .icrlabel: Chi2 dist. - add label to the right
text(.df, .d(.df), .label, pos = 4, col = .col) # Label at right

snippet .icllabel: Chi2 dist. - add label to the left
text(.df, .d(.df), .label, pos = 2, col = .col) # Label at left

snippet .iccumul: Chi2 dist. - cumulative dens. plot
# Chi-square distribution (cumulative probability) with parameter:
.df <- ${1:DEGREES_OF_FREEDOM} # Degree of freedom .df
.col <- ${2:1}; .add <- ${3:FALSE} # Plot parameters
.x <- seq(0, qchisq(0.999, df = .df), l = 1000)  # Quantiles
.d <- function (x) pchisq(x, df = .df)           # Distribution function
.q <- function (p) qchisq(p, df = .df)           # Quantile for lower-tail prob
.label <- bquote(paste(chi^2,(.(.df))))          # Curve parameters
curve(.d(x), xlim = range(.x), ylim = 0:1, xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Cumulative probability") # Curve
abline(h = 0:1, col = "gray") # Baseline

snippet .icdens: Chi2 dist. - density plot
# Chi-square distribution (density probability) with parameter:
.df <- ${1:DEGREES_OF_FREEDOM} # Degree of freedom .df
.col <- ${2:1}; .add <- ${3:FALSE} # Plot parameters
.x <- seq(0, qchisq(0.999, df = .df), l = 1000)  # Quantiles
.d <- function (x) dchisq(x, df = .df)           # Distribution function
.q <- function (p) qchisq(p, df = .df)           # Quantile for lower-tail prob
.label <- bquote(paste(chi^2,(.(.df))))          # Curve parameters
curve(.d(x), xlim = range(.x), xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Probability density") # Curve
abline(h = 0, col = "gray") # Baseline

snippet .icrandom: Chi2 dist. - random
rchisq(${1:N}, df = ${2:DEGREES_OF_FREEDOM})

snippet .icquant: Chi2 dist. - quantiles
qchisq(${1:PROBABILITIES}, df = ${2:DEGREES_OF_FREEDOM}, lower.tail = ${3:TRUE})

snippet .icproba: Chi2 dist. - probabilities
pchisq(${1:QUANTILES}, df = ${2:DEGREES_OF_FREEDOM}, lower.tail = ${3:TRUE})


## Distribution: poisson #########################################################################
snippet ..i (d)istribution: poisson
.ip

snippet .ipcumul: poisson dist. - cumulative dens. plot
plot(0:(${1:MEAN_OCCURENCES}+20), dpois(0:(${1:MEAN_OCCURENCES}+20), lambda = ${1:MEAN_OCCURENCES}), type = "s",
  col = "black", xlab = "Quantiles", ylab = "Cumulative probability")

snippet .ipdens: poisson dist. - density plot
plot(0:(${1:MEAN_OCCURENCES}+20), dpois(0:(${1:MEAN_OCCURENCES}+20), lambda = ${1:MEAN_OCCURENCES}), type = "h",
  col = "black", xlab = "Quantiles", ylab = "Probability mass")

snippet .iptable: poisson dist. - table of probabilities
(.table <- data.frame(occurences = 0:(${1:MEAN_OCCURENCES}+20), probability = dpois(0:(${2:MEAN_OCCURENCES}+20),
  lambda = ${2:MEAN_OCCURENCES})))

snippet .iprandom: poisson dist. - random
rpois(${1:<N>}, lambda = ${2:MEAN_OCCURENCES})

snippet .ipquant: poisson dist. - quantiles
qpois(${1:PROBABILITIES}, lambda = ${2:MEAN_OCCURENCES}, lower.tail = ${3:TRUE})

snippet .ipproba: poisson dist. - probabilities
ppois(${1:QUANTILES}, lambda = ${2:MEAN_OCCURENCES}, lower.tail = ${3:TRUE})


## Distribution: binomial #########################################################################
snippet ..i (d)istribution: binomial
.ib

snippet .ibcumul: binomial dist. - cumulative dens. plot
plot(0:${1:N_TRIALS}, pbinom(0:${1:N_TRIALS}, size = ${1:N_TRIALS}, prob = ${2:SUCCESS_PROB), type = "s",
  col = "black", xlab = "Quantiles", ylab = "Cumulative probability")

snippet .ibdens: binomial dist. - density plot
plot(0:${1:N_TRIALS}, dbinom(0:${1:N_TRIALS}, size = ${1:N_TRIALS}, prob = ${2:SUCCESS_PROB}), type = "h",
  col = "black", xlab = "Quantiles", ylab = "Probability mass")

snippet .ibtable: binomial dist. - table of probabilities
(.table <- data.frame(success = 0:${1:N_TRIALS},
  probability = dbinom(0:${1:N_TRIALS}, size = ${1:N_TRIALS}, prob = ${2:SUCCESS_PROB})))

snippet .ibrandom: binomial dist. - random
rbinom(${1:N}, size = ${2:N_TRIALS}, prob = ${3:SUCCESS_PROB})

snippet .ibquant: binomial dist. - quantiles
qbinom(${1:PROBABILITIES}, size = ${2:N_TRIALS}, prob = ${3:SUCCESS_PROB}, lower.tail = ${4:TRUE})

snippet .ibproba: binomial dist. - probabilities
pbinom(${1:QUANTILES}, size = ${2:N_TRIALS}, prob = ${3:SUCCESS_PROB}, lower.tail = ${4:TRUE})


## Distribution: t (Student) ######################################################################
snippet ..i (d)istribution: t (Student)
.it

snippet .itrlabel: Student t dist. - add label to the right
text(.mu+.s, .d(.mu+.s), .label, pos = 4, col = .col) # Label at right

snippet .itllabel: Student t dist. - add label to the left
text(.mu-.s, .d(.mu-.s), .label, pos = 2, col = .col) # Label at left

snippet .itcumul: Student t dist. - cumulative dens. plot
# Student's t distribution (cumulative probability) with parameters:
.mu <- ${1:0}; .s <- ${2:1}; .df <- ${3:DEGREES_OF_FREEDOM} # .mu, .s (sigma) and .df
.col <- ${4:1}; .add <- ${5:FALSE} # Plot parameters
.x <- seq(-4.5*.s+.mu, 4.5*.s+.mu, l = 1000)     # Quantiles
.d <- function (x) pt((x-.mu)/.s, df = .df)      # Distribution function
.q <- function (p) qt(p, df = .df) * .s + .mu    # Quantile for lower-tail prob
.label <- bquote(t(.(.mu), .(.s), .(.df)))       # Parameters
curve(.d(x), xlim = range(.x), ylim = 0:1, xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Cumulative probability") # Curve
abline(h = 0:1, col = "gray") # Baseline

snippet .itdens: Student t dist. - density plot
# Student's t distribution (density probability) with parameters:
.mu <- ${1:0}; .s <- ${2:1}; .df <- ${3:DEGREES_OF_FREEDOM} # .mu, .s (sigma) and .df
.col <- ${4:1}; .add <- ${5:FALSE} # Plot parameters
.x <- seq(-4.5*.s+.mu, 4.5*.s+.mu, l = 1000)     # Quantiles
.d <- function (x) dt((x-.mu)/.s, df = .df)/.s   # Distribution function
.q <- function (p) qt(p, df = .df) * .s + .mu    # Quantile for lower-tail prob
.label <- bquote(t(.(.mu), .(.s), .(.df)))       # Parameters
curve(.d(x), xlim = range(.x), xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Probability density") # Curve
abline(h = 0, col = "gray") # Baseline

snippet .itrandom: Student t dist. - random
.mu <- ${2:0}; .s <- ${3:1}; .mu + .s * rt(${1:N}, df = ${4:DEGREES_OF_FREEDOM})

snippet .itquant: Student t dist. - quantiles
.mu <- ${2:0}; .s <- ${3:1}; .mu + .s * qt(${1:PROBABILITIES}, df = ${4:DEGREES_OF_FREEDOM}, lower.tail = ${5:TRUE})

snippet .itproba: Student t dist. - probabilities
.mu <- ${2:0}; .s <- ${3:1}; pt((${1:QUANTILES} - .mu)/.s, df = ${4:DEGREES_OF_FREEDOM}, lower.tail = ${5:TRUE})


## Distribution: lognormal ######################################################################
snippet ..i (d)istribution: log-normal
.il

snippet .ilrlabel: log-Normal dist. - add label to the right
text(exp(.mul)+exp(.sl), .d(exp(.mul)+exp(.sl)), .label, pos = 4, col = .col) # Label at right

snippet .illlabel: log-Normal dist. - add label to the left
text(exp(.mul)-exp(.sl), .d(exp(.mul)-exp(.sl)), .label, pos = 2, col = .col) # Label at left

snippet .ilcumul: log-Normal dist. - cumulative dens. plot
# Log-Normal distribution (cumulative probability) with parameters:
.mul <- ${1:0}; .sl <- ${2:1} #  .mul and .sl(sigma) in log scale
.col <- ${3:1}; .add <- ${4:FALSE} # Plot parameters
.x <- seq(0, qlnorm(0.999, meanlog = .mul, sdlog = .sl), l = 1000) # Quantiles
.d <- function (x) plnorm(x, meanlog = .mul, sdlog = .sl) # Density function
.q <- function (p) qlnorm(p, meanlog = .mul, sdlog = .sl) # Quantile for lower-tail prob
.label <- bquote(logN(.(.mul), .(.sl))) # Curve parameters
curve(.d(x), xlim = range(.x), ylim = 0:1, xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Cumulative probability") # Curve
abline(h = 0:1, col = "gray") # Baseline

snippet .ildens: log-Normal dist. - density plot
# Log-Normal distribution (density probability) with parameters:
.mul <- ${1:0}; .sl <- ${2:1} #  .mul and .sl(sigma) in log scale
.col <- ${3:1}; .add <- ${4:FALSE} # Plot parameters
.x <- seq(0, qlnorm(0.999, meanlog = .mul, sdlog = .sl), l = 1000) # Quantiles
.d <- function (x) dlnorm(x, meanlog = .mul, sdlog = .sl) # Density function
.q <- function (p) qlnorm(p, meanlog = .mul, sdlog = .sl) # Quantile for lower-tail prob
.label <- bquote(logN(.(.mul), .(.sl))) # Curve parameters
curve(.d(x), xlim = range(.x), xaxs = "i", n = 1000, col = .col,
  dd = .add, xlab = "Quantiles", ylab = "Probability density") # Curve
abline(h = 0, col = "gray") # Baseline

snippet .ilrandom: log-Normal dist. - random
rlnorm(${1:N}, meanlog = ${2:0}, sdlog = ${3:1})

snippet .ilquant: log-Normal dist. - quantiles
qlnorm(${1:PROBABILITIES}, meanlog = ${2:0}, sdlog = ${3:1}, lower.tail = ${4:TRUE})

snippet .ilproba: log-Normal dist. - probabilities
plnorm(${1:QUANTILES}, meanlog = ${2:0}, sdlog = ${3:1}, lower.tail = ${4:TRUE})


## Distribution: normal #########################################################################
snippet ..i (d)istribution: normal
.in

snippet .inrlabel: Normal dist. - add label to the right
text(.mu+.s, .d(.mu+.s), .label, pos = 4, col = .col) # Label at right

snippet .inllabel: Normal dist. - add label to the left
text(.mu-.s, .d(.mu-.s), .label, pos = 2, col = .col) # Label at left

snippet .incumul: Normal dist. - cumulative dens. plot
# Normal distribution (cumulative probability) with parameters:
.mu <- ${1:0}; .s <- ${2:1} #  mu = .mu and sigma = .s
.col <- ${3:1}; .add <- ${4:FALSE} # Plot parameters
.x <- seq(-3.5*.s+.mu, 3.5*.s+.mu, l = 1000)     # Quantiles
.d <- function (x) pnorm(x, mean = .mu, sd = .s) # Density function
.q <- function (p) qnorm(p, mean = .mu, sd = .s) # Quantile for lower-tail prob
.label <- bquote(N(.(.mu), .(.s)))               # Curve parameters
curve(.d(x), xlim = range(.x), ylim = 0:1, xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Cumulative probability") # Curve
abline(h = 0:1, col = "gray") # Baseline

snippet .indens: Normal dist. - density plot
# Normal distribution (density probability) with parameters:
.mu <- ${1:0}; .s <- ${2:1} #  mu = .mu and sigma = .s
.col <- ${3:1}; .add <- ${4:FALSE} # Plot parameters
.x <- seq(-3.5*.s+.mu, 3.5*.s+.mu, l = 1000)     # Quantiles
.d <- function (x) dnorm(x, mean = .mu, sd = .s) # Distribution function
.q <- function (p) qnorm(p, mean = .mu, sd = .s) # Quantile for lower-tail prob
.label <- bquote(N(.(.mu), .(.s)))               # Curve parameters
curve(.d(x), xlim = range(.x), xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Probability density") # Curve
abline(h = 0, col = "gray") # Baseline

snippet .inrandom: Normal dist. - random
rnorm(${1:N}, mean = ${2:0}, sd = ${3:1})

snippet .inquant: Normal dist. - quantiles
qnorm(${1:PROBABILITIES}, mean = ${2:0}, sd = ${3:1}, lower.tail = ${4:TRUE})

snippet .inproba: Normal dist. - probabilities
pnorm(${1:QUANTILES}, mean = ${2:0}, sd = ${3:1}, lower.tail = ${4:TRUE})


## Distribution: uniform #########################################################################
snippet ..i (d)istribution: uniform
.iu

snippet .iurlabel: uniform dist. - add label to the right
text(.max, .d(.max)*.95, .label, pos = 4, col = .col) # Label at right

snippet .iullabel: uniform dist. - add label to the left
text(.min, .d(.min)*.95, .label, pos = 2, col = .col) # Label at left

snippet .iucumul: uniform dist. - cumulative dens. plot
# Uniform distribution (cumulative probability) with parameters:
.min <- ${1:0}; .max <- ${2:1} #  .min and .max range of possible events
.col <- ${3:1}; .add <- ${4:FALSE} # Plot parameters
.x <- seq(.min-(.max-.min)/4, .max+(.max-.min)/4, l = 1000)     # Quantiles
.d <- function (x) punif(x, min = .min, max = .max)             # Density function
.q <- function (p) qunif(p, min = .min, max = .max) # Quantile for lower-tail prob
.label <- bquote(U(.(.min), .(.max))); .col <- 1 # Curve parameters
curve(.d(x), xlim = range(.x), ylim = 0:1, xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Cumulative probability") # Curve
abline(h = 0:1, col = "gray") # Baseline

snippet .iudens: uniform dist. - density plot
# Uniform distribution (density probability) with parameters:
.min <- ${1:0}; .max <- ${2:1} #  .min and .max range of possible events
.col <- ${3:1}; .add <- ${4:FALSE} # Plot parameters
.x <- seq(.min-(.max-.min)/4, .max+(.max-.min)/4, l = 1000) # Quantiles
.d <- function (x) dunif(x, min = .min, max = .max)         # Distribution function
.q <- function (p) qunif(p, min = .min, max = .max)  # Quantile for lower-tail prob
.label <- bquote(U(.(.min), .(.max)))
curve(.d(x), xlim = range(.x), xaxs = "i", n = 1000, col = .col,
  add = .add, xlab = "Quantiles", ylab = "Probability density") # Curve
abline(h = 0, col = "gray") # Baseline

snippet .iurandom: uniform dist. - random
runif(${1:N}, min = ${2:0}, max = ${3:1})

snippet .iuquant: uniform dist. - quantiles
qunif(${1:PROBABILITIES}, min = ${2:0}, max = ${3:1}, lower.tail = ${4:TRUE})

snippet .iuproba: uniform dist. - probabilities
punif(${1:QUANTILES}, min = ${2:0}, max = ${3:1}, lower.tail = ${4:TRUE})


## Hypothesis tests ####################################################################################
snippet ...hypothesis tests
..h


## Hypothesis tests: Correlation #########################################################################
snippet ..hypothesis tests: correlation
.hc

snippet .hccorr: correlation test
cor.test(data = ${1:DF}, ~ ${2:YNUM} + ${3:XNUM},
  alternative = "two.sided", method = "pearson")


## Hypothesis tests: Variances #########################################################################
snippet ..hypothesis tests: variances
.hv

snippet .hvftest: two-variances F-test
var.test(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR},
  alternative = "two.sided", conf.level = 0.95)

snippet .hvlevene: Levene test
car::levene.test(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR})

snippet .hvbartlett: Bartlett test
bartlett.test(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR})


## Hypothesis tests: Proportions #######################################################################
snippet ..hypothesis tests: proportions
.hp

snippet .hpuni: univariate proportion test
prop.test(rbind(table(${1:DF}\$XFACTOR)),
  alternative = "two.sided", p = ${3:0.5}, conf.level = 0.95, correct = FALSE)

snippet .hpbi: bivariate proportion test
prop.test(rbind(table(${1:DF}\$XFACTOR, ${1:DF}\$YFACTOR)),
  alternative = "two.sided", conf.level = 0.95, correct = FALSE)


## Hypothesis tests: Nonparametric ####################################################################
snippet ..hypothesis tests: nonparametric
.hn

snippet .hnfried: Friedman test
friedman.test(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR} | ${4:BLOCK})

snippet .hnkrusmult: Kruskal-Wallis - multiple comparisons [nparcomp]
summary(kw_comp. <- nparcomp::nparcomp(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR}))
plot(kw_comp.)

snippet .hnkrus: Kruskal-Wallis test
kruskal.test(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR})

snippet .hnwilkindep: independent Wilcoxon test
wilcox.test(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR},
  alternative = "two.sided", conf.level = 0.95)

snippet .hnwilkpaired: paired Wilcoxon test
wilcox.test(${1:DF}\$XNUM, ${1:DF}\$YNUM,
  alternative = "two.sided", conf.level = 0.95, paired = TRUE)


## Hypothesis tests: Means #############################################################################
snippet ..hypothesis tests: means
.hm

snippet .hmanovamult: anova - multiple comparisons [multcomp]
summary(anovaComp. <- confint(multcomp::glht(anova.,
  linfct = multcomp::mcp(${1:XFACTOR} = "Tukey")))) # Add a second factor if you want
.oma <- par(oma = c(0, 5.1, 0, 0)); plot(anovaComp.); par(.oma); rm(.oma)

snippet .hmanovaresid: anova - residuals
residuals(anova.)

snippet .hmanovaqqplot: anova - residuals QQ-plot
#plot(anova., which = 2)
anova. %>.%
  chart(broom::augment(.), aes(sample = .std.resid)) +
  geom_qq() +
  geom_qq_line(colour = "darkgray") +
  labs(x = "Theoretical quantiles", y = "Standardized residuals") +
  ggtitle("Normal Q-Q")

snippet .hmanova2nested: two-way ANOVA (nested model)
anova(anova. <- lm(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR} + ${4:BLOCK} %in% ${3:XFACTOR}))

snippet .hmanova2noint: two-way ANOVA (without interactions)
anova(anova. <- lm(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR1} + ${4:XFACTOR2}))

snippet .hmanova2: two-way ANOVA (complete model)
anova(anova. <- lm(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR1} * ${4:XFACTOR2}))

snippet .hmanova2desc: two-way ANOVA (description)
${1:DF} %>.%
  group_by(., ${2:XFACTOR1}, ${3:XFACTOR2}) %>.%
  summarise(., mean = mean(${4:YNUM}), sd = sd(${4:YNUM}), count = sum(!is.na(${4:YNUM})))

snippet .hmanova1: one-way ANOVA
anova(anova. <- lm(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR}))

snippet .hmanova1desc: one-way ANOVA (description)
${1:DF} %>.%
  group_by(., ${2:XFACTOR}) %>.%
  summarise(., mean = mean(${3:YNUM}), sd = sd(${3:YNUM}), count = sum(!is.na(${3:YNUM})))

snippet .hmttestindep: independent Student's t-test
	t.test(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR},
		alternative = "two.sided", conf.level = 0.95, var.equal = TRUE)

snippet .hmttestpaired: paired Student's t-test
t.test(${1:DF}\$XNUM, ${1:DF}\$YNUM,
  alternative = "two.sided", conf.level = 0.95, paired = TRUE)

snippet .hmttestuni: univariate Student's t-test
	t.test(${1:DF}\$2:XNUM,
		alternative = "two.sided", mu = 0, conf.level = 0.95)


## Hypothesis tests: Distribution #######################################################################
snippet ..hypothesis tests: distribution
	.hd

snippet .hdnorm: Shapiro-Wilk test of normality
	shapiro.test(${1:DF}\$XNUM)


## Hypothesis tests: Contingency #######################################################################
snippet ..hypothesis tests: contingency
	.hc

snippet .hcfisher: Fisher test of independence
	fisher.test(${1:{TABLE})

snippet .hcchi2comp: Chi2 test (components)
	round(chisq.test(${1:TABLE})[["residuals"]]^2, 2)

snippet .hcchi2bi: Chi2 test (independence)
	(chi2. <- chisq.test(${1:TABLE})); cat("Expected frequencies:\n"); chi2.[["expected"]]

snippet .hcchi2uni: Chi2 test (univariate)
	chisq.test(${1:TABLE}, p = ${2:PROBABILITIES}, rescale.p = FALSE)


## Charts ###############################################################################################
snippet ...charts
	..c


## Charts: Add ##########################################################################################
snippet ..charts: add layers or annotations
	.ca

snippet .caplotly: convert last ggplot2 into interactive chart
	plotly::ggplotly()

snippet .caylab: add or change Y label
	${1:CHART} +
		ylab("${2:YOUR Y LABEL HERE}")

snippet .caxlab: add or change X label
	${1:CHART} +
		xlab("${2:YOUR X LABEL HERE}")

snippet .catitle: add a plot title
	${1:CHART} +
		ggtitle("${2:YOUR TITLE HERE}")


## Charts: Multivariate #################################################################################
snippet ..charts: multivariate
	.cm

snippet .cmcorr: correlation chart
	corrplot::corrplot(cor(${1:DF}[, ${2:1:3}],
		use = "pairwise.complete.obs"), method = "ellipse")

snippet .cmxy: multivariate X-Y scatterplot
	GGally::ggscatmat(as.data.frame(${1:DF}), ${2:1:3})


## Charts: Bivariate ####################################################################################
snippet ..charts: bivariate
	.cb

snippet .cbhistfact: histogram by factor (facets)
	chart(data = ${1:DF}, ~${2:XNUM} %fill=% ${3:XFACTOR} | ${3:XFACTOR}) +
		geom_histogram(data = select(${1:DF}, -${3:XFACTOR}), fill = "grey", bins = ${4:30}) +
		geom_histogram(bins = ${4:30}, show.legend = FALSE)


snippet .cberrbar2: error bars by two factors
	chart(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR1} %col=% ${4:XFACTOR2}) +
		geom_jitter(alpha = 0.4, position = position_dodge(0.4)) +
		stat_summary(geom = "point", fun.y = "mean", position = position_dodge(0.4)) +
		stat_summary(geom = "errorbar", width = 0.1, position = position_dodge(0.4),
			fun.data = "mean_cl_normal", fun.args = list(conf.int = 0.95))


snippet .cberrbar: error bars by factor
	chart(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR}) +
		geom_jitter(alpha = 0.4, width = 0.2) +
		stat_summary(geom = "point", fun.y = "mean") +
		stat_summary(geom = "errorbar", width = 0.1,
			fun.data = "mean_cl_normal", fun.args = list(conf.int = 0.95))

snippet .cbviolin: violinplot by factor
	chart(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR}) +
		geom_violin()

snippet .cbbox: boxplot by factor
	chart(data = ${1:DF}, ${2:YNUM} ~ ${3:XFACTOR}) +
		geom_boxplot()

snippet .cbxy: X-Y scatterplot
	chart(data = ${1:DF}, ${2:YNUM} ~ ${3:XNUM}) +
		geom_point()


## Charts: Univariate ###################################################################################
snippet ..charts: univariate
	.cu

snippet .cuqqchisq: QQ plot - chi-square
	car::qqPlot(${1:DF}[["${2:XNUM}"]], distribution = "chisq", df = ${3:DEGREES_OF_FREEDOM},
		envelope = 0.95, col = "Black", ylab = "${2:XNUM}")

snippet .cuqqf: QQ plot - F
	car::qqPlot(${1:DF}[["${2:XNUM}"]], distribution = "f", df1 = ${3:NUMERATOR_DF}, df2 = ${4:DENOMINATOR_DF},
		envelope = 0.95, col = "Black", ylab = "${2:XNUM}")

snippet .cuqqt: QQ plot - Student t
	car::qqPlot(${1:DF}[["${2:XNUM}"]], distribution = "t", df = ${3:DEGREES_OF_FREEDOM},
		envelope = 0.95, col = "Black", ylab = "${2:XNUM}")

snippet .cuqqnorm: QQ plot - normal
	car::qqPlot(${1:DF}[["${2:XNUM}"]], distribution = "norm",
		envelope = 0.95, col = "Black", ylab = "${2:XNUM}")

snippet .cuhbar: horizontal bars
	chart(data = ${1:DF}, ~factor(${2:VAR})) +
		geom_bar() + coord_flip()

snippet .cuvbar: vertical bars
	chart(data = ${1:DF}, ~factor(${2:VAR})) +
		geom_bar()

snippet .cuhist: histogram
	chart(data = ${1:DF}, ~${2:VARNUM}) +
		geom_histogram(binwidth = ${3:30})


## Exploratory statistics ##############################################################################
snippet ...exploratory stats
	..e


## Exploratory statistics: Contingency #################################################################
snippet ..exploratory stats: contingency
	.ec

snippet .ectabpieanumbers: contingency table - pie chart legend and numbers [chart, data.io]
	chart(data = as_dataframe(${1:TABLE}), n ~ 1 %fill=% factor(Var1, levels = Var1)) +
		geom_bar(width = 1, stat = "identity") +
		geom_text(f_aes(cumsum(rev(n)) - rev(n)/2  ~ 1.2, label = rev(n))) +
		labs(fill = "${1:TABLE}") +
		coord_polar(theta = "y") +
		theme_void()

snippet .ectabpielegend: contingency table - pie chart with legend [chart, data.io]
	chart(data = as_dataframe(${1:TABLE}), n ~ 1 %fill=% factor(Var1, levels = Var1)) +
		geom_bar(width = 1, stat = "identity") +
		labs(fill = "${1:TABLE}") +
		coord_polar(theta = "y") +
		theme_void()

snippet .ectabpieannot: contingency table - pie chart annotated [chart, data.io]
	chart(data = as_dataframe(${1:TABLE}), n ~ 1 %fill=% factor(Var1, levels = Var1)) +
		geom_bar(width = 1, stat = "identity", show.legend = FALSE) +
		geom_text(f_aes(cumsum(rev(n)) - rev(n)/2  ~ 1.2,
			label = rev(paste0(Var1, "\n(", n, ")")))) +
		coord_polar(theta = "y") +
		theme_void()

snippet .ectabhbar: contingency table - horizontal barplot [chart, data.io]
	chart(data = s_dataframe(${1:TABLE}), n ~ factor(Var1, levels = Var1)) +
		geom_bar(stat= "identity") +
		labs(x = "${1:TABLE}", y = "Frequencies") +
		annotate(geom = "text", x = 1:length(${1:TABLE}),
			y = max(${1:TABLE}) * 1.05, label = ${1:TABLE}) +
		coord_flip()

snippet .ectabvbar: contingency table - vertical barplot [chart, data.io]
	chart(data = as_dataframe(${1:TABLE}), n ~ factor(Var1, levels = Var1)) +
		geom_bar(stat= "identity") +
		labs(x = "${1:TABLE}", y = "Frequencies") +
		annotate(geom = "text", x = 1:length(${1:TABLE}),
			y = max(${1:TABLE}) * 1.05, label = ${1:TABLE})

snippet .ectabsums: contingency table - add sums to table
	addmargins(${1:TABLE})

snippet .ectabrprop: contingency table - proportions per rows
	prop.table(${1:TABLE}, 1) # Props by rows

snippet .ectabcprop: contingency table - proportions per cols
	prop.table(${1:TABLE}, 2) # Props by cols

snippet .ectabprop: contingency table - proportions
	prop.table(${1:TABLE})

snippet .ectabtodf: contingency table - as dataframe [data.io]
	(${1:DF} <- as_dataframe(${2:TABLE}))

snippet .ectable2f: contingency table - 2 entries from frequencies
	(${1:TABLE} <- xtabs(data = ${2:DF}, ${3:FREQ} ~ ${4:FACTOR1} + ${5:FACTOR2}))

snippet .ectable2: contingency table - 2 entries
	(${1:TABLE} <- table(${2:DF}[["${3:FACTOR1}"]], ${2:DF}[["${4:FACTOR2}"]]))

snippet .ectable1f: contingency table - 1 entry from frequencies
	(${1:TABLE} <- xtabs(data = ${2:DF}, ${3:FREQ} ~ ${4:FACTOR}))

snippet .ectabfromvec: contingency table - 1 entry from vector
	(${1:TABLE} <- as.table(c(${2:LEVEL1 = VALUE1}, ${3:LEVEL2 = VALUE2})))

snippet .ectable1: contingency table - 1 entry from variable
	(${1:TABLE} <- table(${2:DF}[["${3:FACTOR}"]]))


## Exploratory statistics: Summary #####################################################################
snippet ..exploratory stats: summary
	.es

snippet .escovar: variance-covariance matrix
	cov(${1:DF}[, ${2:INDEX_EXPRESSION}], use = "complete.obs", method = "pearson")

snippet .escor: correlation matrix
	cor(${1:DF}[, ${2:INDEX_EXPRESSION}], use = "complete.obs", method = "pearson")

snippet .escor: correlation matrix (enhanced) [SciViews]
	correlation(${1:DF}[, ${2:INDEX_EXPRESSION}], use = "complete.obs", method = "pearson")

snippet .esfive: five numbers for a numeric variable
	fivenum(${1:DF}"${2:VARNUM}"]])

snippet .essum: summary stats of a dataframe
	summary(${0:DF})


## Dataframes ############################################################################################
snippet ...dataframes
	..d


## Dataframes: Combine ###################################################################################
snippet ..dataframes: combine
	.dc

snippet .dccbind: bind dataframes by columns [dplyr]
	${3:DF} <- bind_cols(${2:DATAFRAME1}, ${3:DATAFRAME2})

snippet .dcrbind: bind dataframes by rows [dplyr]
	${1:DF} <- bind_rows(${2:DATAFRAME1}, ${3:DATAFRAME2})

snippet .dcdiff: rows in df1 but not in df2 [dplyr]
	${1:DF} <- setdiff(${2:DATAFRAME1}, ${3:DATAFRAME2})

snippet .dcunion: rows in either or both df1 and df2
	${1:DF} <- union(${2:DATAFRAME1}, ${3:DATAFRAME2})

snippet .dcintersect: rows in both df1 and df2 [dplyr]
	${1:DF} <- intersect(${2:DATAFRAME1}, ${3:DATAFRAME2})

snippet .dcantijoin: rows in df1 not matching df2 by var [dplyr]
	${1:DF} <- anti_join(${2:DATAFRAME1}, ${3:DATAFRAME2}, by = ${4:VAR})

snippet .dcsemijoin: rows in df1 that match df2 by var [dplyr]
	${1:DF} <- semi_join(${2:DATAFRAME1}, ${3:DATAFRAME2}, by = ${4:VAR})

snippet .dcfulljoin: join all rows from df1 and df2 by var [dplyr]
	${1:DF} <- full_join(${2:DATAFRAME1}, ${3:DATAFRAME2}, by = ${4:VAR})

snippet .dcinnerjoin: rows in both df1 and df2 by var [dplyr]
	${1:DF} <- inner_join(${2:DATAFRAME1}, ${3:DATAFRAME2}, by = ${4:VAR})

snippet .dcrightjoin: matching rows from df1 to df2 by var [dplyr]
	${1:DF} <- right_join(${2:DATAFRAME1}, ${3:DATAFRAME2}, by = ${4:VAR})

snippet .dcleftjoin: matching rows from df2 to df1 by var [dplyr]
	${1:DF} <- left_join(${2:DATAFRAME1}, ${3:DATAFRAME2}, by = ${4:VAR})


## Dataframes: Group data ##################################################################################
snippet ..dataframes: group data
	.dg

snippet .dggroups: show groups [dplyr]
	groups(${1:DF})


snippet .dgungroup: remove grouping information [dplyr]
	${1:DF} %>.%
		ungroup(.) -> ${2:DF2}

snippet .dggroupby: group data according to a factor [dplyr]
	${1:DF} %>.%
		group_by(., ${2:FACTOR}) -> ${3:DF2}


## Dataframes: Summarise ##################################################################################
snippet ..dataframes: summarise
	.ds

snippet .dscount: count rows for each factor level [dplyr]
	${1:DF} %>.%
		count(., ${2:FACTOR}) # Use wt = for weight

snippet .dssummeach: apply summary to each var [dplyr]
	${1:DF} %>.%
		summarise_each(., funs(${2:mean}))

snippet .dssummeansd: summarise data into mean and sd [dplyr]
	${1:DF} %>.%
		summarise(., mean = mean(${2:VAR}), sd = sd(${2:VAR}))

snippet .dssummarise: summarise data into single row [dplyr]
	${1:DF} %>.%
		summarise(., ${2:VAR} = ${3:EXPRESSION})


## Dataframes: Variables ###################################################################################
snippet ..dataframes: variables
	.dv

snippet .dvdrop: drop factor unused levels [dplyr]
	${1:DF} %>.%
		mutate(., ${2:NEWFACTOR} = droplevels(${3:FACTOR})) -> ${4:DF2}

snippet .dvtoordered: convert a variable into ordered [dplyr]
	${1:DF} %>.%
		mutate(., ${2:NEWVAR} = ordered(${3:VAR}, levels = unique(${3:VAR}))) -> ${4:DF2}

snippet .dvtofactor: convert a variable into factor [dplyr]
	${1:DF} %>.%
		mutate(., ${2:NEWVAR} = factor(${3:VAR}, levels = unique(${3:VAR}))) -> ${4:DF2}

snippet .dvtochar: convert a variable into character [dplyr]
	${1:DF.} %>.%
		mutate(., ${2:NEWVAR} = as.character(${3:VAR})) -> ${4:DF2}

snippet .dvtonum: convert a variable into numeric [dplyr]
	${1:DF} %>.%
		mutate(., ${2:NEWVAR} = as.numeric(${3:VAR})) -> ${4:DF2}

snippet .dvtoint: convert a variable into integer [dplyr]
	${1:DF} %>.%
		mutate(., ${2:NEWVAR} = as.integer(${3:VAR})) -> ${4:DF2}

snippet .dvtologi: convert a variable into logical [dplyr]
	${1:DF} %>.%
		mutate(., ${2:NEWVAR} = as.logical(${3:VAR})) -> ${4:DF2}

snippet .dvlogit: logit transformation [dplyr]
	# Logit transformation for proportions (divide by 100 for %)
	${1:DF} %>.%
		mutate(., ${2:VAR}.logit = log(${2:VAR}/(1 - ${2:VAR})) -> ${3:DF2}

snippet .dvasin: arcsinus transformation [dplyr]
	# Asin transformation for proportions (divide by 100 for %)
	${1:DF} %>.%
		mutate(., ${2:VAR}.asin = asin(sqrt(${2:VAR}))) -> ${3:DF2}

snippet .dvresid: residuals by means [dplyr]
	${1:DF} %>.%
		mutate(., ${2:VAR}.res = ${2:VAR} - ave(${2:VAR}, ${3:FACTOR})) -> ${4:DF2}

snippet .dvstandardize: standardize a variable [dplyr]
	${1:DF} %>.%
		mutate(., ${2:VAR}.z = scale(${2:VAR}, center = TRUE, scale = TRUE)) -> ${3:DF2}

snippet .dvlog10: log10 transformation [dplyr]
	${1:DF} %>.%
		mutate(., ${2:VAR}.log10 = log10(${2:VAR})) -> ${3:DF2}

snippet .dvtransmute: compute variables and drop old ones [dplyr]
	${1:DF} %>.%
		transmute(., ${2:NEWVAR} = ${3:EXPRESSION}) -> ${4:DF2}

snippet .dvmuteach: mutate several variables at once [dplyr]
	${1:DF} %>.%
		mutate_each(., funs(${2:half = ./2})) -> ${3:DF2}

snippet .dvmutate: compute (mutate) a new variable [dplyr]
	${1:DF} %>.%
		mutate(., ${2:NEWVAR} = ${3:EXPRESSION}) -> ${4:DF2}

snippet .dvdel: delete a variable [dplyr]
	${1:DF} %>.%
		select(., -${2:VAR}) -> ${3:DF2}

snippet .dvselect: select variables [dplyr]
	${1:DF} %>.%
		select(., ${2:VAR1, VAR2}) -> ${3:DF2}


## Dataframes: Observations ####################################################
snippet ..dataframes: observations
	.do

snippet .donareplace: replace NA with a value [tidyr]
	${1:DF} %>.%
		replace_na(., list(${2:VARNAME} = ${3:NEWVALUE})) -> ${4:DF2}

snippet .donadrop: remove lines with NA [tidyr]
	${1:DF} %>.%
		drop_na(.) -> ${2:DF2}

snippet .dotop: select top n entries [dplyr]
	${1:DF} %>.%
		top_n(., ${2:2}) -> ${3:DF2}

snippet .doslice: select rows by position [dplyr]
	${1:DF} %>.%
		slice(., ${2:10:15}) -> ${3:DF2}

snippet .dosamplen: randomly sample n rows [dplyr]
	${1:DF} %>.%
		sample_n(., ${2:10}, replace = TRUE) -> ${3:DF2}

snippet .dosamplef: randomly sample faction [dplyr]
	${1:DF} %>.%
		sample_frac(., ${2:0.5}, replace = TRUE) -> ${3:DF2}

snippet .dodistinct: remove duplicate rows [dplyr]
	${1:DF} %>.%
		distinct(., ${2:VAR1, VAR2}) -> ${3:DF2}

snippet .dosel: select cases (filter) [dplyr]
	${1:DF} %>.%
		filter(., ${2:CONDITIONS}) -> ${3:DF2}


## Dataframes: Reshape #########################################################
snippet ..dataframes: reshape
	.dr

snippet .drunite: unite several columns into one [tidyr]
	${1:DF} %>.%
		unite(., col = ${2:VARNAME}, ${3:VAR1, VAR2}, sep = "${4:_}") -> ${5:DF2}

snippet .drseparate: separate a column into several [tidyr]
	${1:DF} %>.%
		separate(., col = ${2:VARNAME}, into = ${3:c("VAR1", "VAR2")}, sep = "${4:[^[:alnum:]]+}") -> ${5:DF2}

snippet .drspread: reshape into wide format [tidyr]
	${1:DF} %>.%
		spread(., key = ${2:KEY}, value = ${3:VALUE}, drop = TRUE) -> ${4:DF2}

snippet .drgather: reshape into long format [tidyr]
	${1:DF} %>.%
		gather(., key = ${2:KEY}, value = ${3:VALUE}, ${4:1:3}, na.rm = TRUE) -> ${5:DF2}

snippet .drtranspose: transpose a dataframe
	${1:DF} %>.%
		t(.) %>.%
		as_dataframe(.) -> ${2:DF2}

snippet .drarrangeh: arrange (sort) the dataset from high to low [dplyr]
	${1:DF} %>.%
		arrange(., desc(${2:VAR})) -> ${3:DF2}

snippet .drarrangel: arrange (sort) the dataset from low to high [dplyr]
	${1:DF} %>.%
		arrange(., ${2:VAR}) -> ${3:DF2}

snippet .drrename: rename a variable [dplyr]
	${1:DF} %>.%
		rename(., ${3:NEWNAME} = ${2:OLDNAME}) -> ${4:DF2}


## Dataframes: Management ######################################################
snippet ..dataframes: management
	.dm

snippet .dmrm: remove an object
	rm(${1:DF})

snippet .dmtail: view tail (last lines)
	tail(${1:DF}, n = ${2:6})

snippet .dmhead: view head (first lines)
	head(${1:DF}, n = ${2:6})

snippet .dmcomview: view comment
	comment(${1:DF})

snippet .dmcomedit: edit comment
	comment(${1:DF}) <- "${2:YOUR_COMMENT_HERE}"

snippet .dmsummary: show summary of a dataframe
	summary(${0:DF})

snippet .dmstr: show dataframe structure
	str(${0:DF})

snippet .dmskim: show dataframe content with skimr [skimr]
	skimr::skim(${0:DF})

snippet .dmwritexlsx: write dataframe to an Excel file [writexl]
	write_xlsx(${1:DF}, "${2:FILE_PATH.XLSX")

#snippet .dmwritexls: write dataframe to an Excel file [XLConnect]
#	XLConnect::xlcDump("${1:DF}", file = "${2:FILE_PATH.XLS}", overwrite = TRUE)

snippet .dmwritetsv: write dataframe to a TSV file [readr]
	write_tsv(${1:DF}, "${2:FILE_PATH.TSV}")

snippet .dmwritecsv: write dataframe to a CSV file [readr]
	write_csv(${1:DF}, "${2:FILE_PATH.CSV}")

snippet .dmdata: read data from an R package [data.io]
	${2:DF} <- read(package = "${1:data.io}", "${2:DF}")
	skimr::skim(${2:DF})

snippet .dmdatalang: set default language to use when reading datasets from R packages
	options(data.io_lang = "${1:en}")

snippet .dmdatalist: list datasets available in an R package [data.io]
	read(package = "${1:data.io}")

#snippet .dmclip: read dataframe from clipboard
#	${1:DF} <- read.delim("clipboard", dec = ".")
#	skimr::skim(${1:DF})

snippet .dmreadselrel: read dataframe from a selected file (relative path to wd) [data.io]
	${1:DF} <- read("`r relative_path(file.choose())`")
	skimr::skim(${1:DF})

snippet .dmreadselhere: read dataframe from a selected file (path with here::here) [data.io]
	${1:DF} <- read(here::here("`r sub(here::here("(.+)$"), "\\1", file.choose())`"))
	skimr::skim(${1:DF})

snippet .dmreadselabs: read dataframe from a selected file (absolute path) [data.io]
	${1:DF} <- read("`r file.choose()`")
	skimr::skim(${1:DF})

snippet .dmastibble: convert into a tibble (dataframe) [data.io]
	${2:DF2} <- as_dataframe(${1:DF}, validate = TRUE)

snippet .dmtribble: create a tibble (dataframe) from inline data [tibble & data.io]
	${1:DF} <- as_dataframe(tribble(
		~x, ~y,
		 1,  3,
		 2,  4
	))

snippet .dmtibble: create a tibble (dataframe) [tibble & data.io]
	`r if (!"package:SciViews" %in% search()) 'SciViews::R\n'`${1:DF} <- as_dataframe(tibble(x = c(1, 2), y = c(3, 4)))


## TESTS #################
#snippet .dddocpath
#	`r .rs.api.getActiveDocumentContext()$path`

#snippet .ddprojectpath
#	`r .rs.api.getActiveProject()`

#snippet .ddwdir
#	`r contextdir()`

snippet lib
	library(${1:package})

snippet req
	require(${1:package})

snippet src
	source("${1:file.R}")

snippet ret
	return(${1:code})

snippet mat
	matrix(${1:data}, nrow = ${2:rows}, ncol = ${3:cols})

snippet sg
	setGeneric("${1:generic}", function(${2:x, ...}) {
		standardGeneric("${1:generic}")
	})

snippet sm
	setMethod("${1:generic}", ${2:class}, function(${2:x, ...}) {
		${0}
	})

snippet sc
	setClass("${1:Class}", slots = c(${2:name = "type"}))

snippet if
	if (${1:condition}) {
		${0}
	}

snippet el
	else {
		${0}
	}

snippet ei
	else if (${1:condition}) {
		${0}
	}

snippet fun
	${1:name} <- function(${2:variables}) {
		${0}
	}

snippet for
	for (${1:variable} in ${2:vector}) {
		${0}
	}

snippet while
	while (${1:condition}) {
		${0}
	}

snippet switch
	switch (${1:object},
		${2:case} = ${3:action}
	)

snippet apply
	apply(${1:array}, ${2:margin}, ${3:...})

snippet lapply
	lapply(${1:list}, ${2:function})

snippet sapply
	sapply(${1:list}, ${2:function})

snippet mapply
	mapply(${1:function}, ${2:...})

snippet tapply
	tapply(${1:vector}, ${2:index}, ${3:function})

snippet vapply
	vapply(${1:list}, ${2:function}, FUN.VALUE = ${3:type}, ${4:...})

snippet rapply
	rapply(${1:list}, ${2:function})

snippet ts
	`r paste("#", date(), "------------------------------\n")`

# From Computerworld: ggplot2 code snippets

snippet myg_barplot_basic
	ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) +
	  geom_bar(stat="identity")

snippet myg_barplot_basic_reorderXaxisByYvalue
	ggplot(${1:mydataframe}, aes(x=reorder(${2:myxcolname}, -${3:myycolname}), y=${3:myycolname})) +
	  geom_bar(stat="identity")

snippet myg_barplot_groupedByColor
	ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname}, fill=${4:mygroupcolname})) +
	  geom_bar(stat="identity", position="dodge")

snippet myg_barplot_basic_barsSetOneColor
	ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) +
	  geom_bar(fill="${4:mycolor}", stat="identity")

snippet myg_barplot_basic_bars_blue
	ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) +
	  geom_bar(stat="identity", color = "black", fill="#0072B2")

snippet myg_barplot_barslabeled
	# Code from an R Graphics Cookbook recipe, by Winston Chang
	ggplot(data = ${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) +
	  geom_bar(stat="identity", color = "black", fill="#0072B2") +
	  ggtitle("${4:My Headline}") +
	  xlab("${5:myXaxisname}") +
	  ylab("${6:myYaxisname}") +
	  theme_classic() +
	  geom_text(aes(label=${3:myycolname}), vjust=1.5, colour="white", position=position_dodge(.9), size=5)  +
	  theme(plot.title=element_text(size=24))

snippet myg_barplot_barslabeled_reorderXaxisByYvalue
	# Code adapted from an R Graphics Cookbook recipe, by Winston Chang
	ggplot(${1:mydataframe}, aes(x=reorder(${2:myxcolname}, -${3:myycolname}), y=${3:myycolname})) +
	  geom_bar(stat="identity", color = "black", fill="#0072B2") +
	  ggtitle("${4:myheadline}") +
	  xlab("${5:myXaxisname}") +
	  ylab("${6:myYaxisname}") +
	  theme_classic() +
	  geom_text(aes(label=${3:myycolname}), vjust=1.5, colour="white", position=position_dodge(.9), size=5)  +
	  theme(plot.title=element_text(size=24))

snippet myg_barplot_grouped_withColorPaletteAndHeadline
	ggplot(data = ${1:mydataframe}, aes(x=${2:myXcolname}, y=${3:myYcolname}, fill=${4:mygroup/colorBycolname} )) +
	  geom_bar(stat="identity", position="dodge") +
	  scale_fill_brewer(palette="Dark2") +
	  ggtitle("${5:My Headline}") +
	  theme(plot.title=element_text(size=22))

snippet myg_scatterplot_basic
	ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) +
	  geom_point()

snippet myg_scatterplot_setPointSize
	ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) +
	  geom_point(size=${4:myPointSizeNumber})

snippet myg_scatterplot_setColorByDataValue
	ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) +
	  geom_point(aes(color=${4:myColorBycolname})) + scale_color_gradient(low="${5:mylowcolor}", high="${6:myhighcolor}")

snippet myg_scatterplot_setColorBrewerPaletteByDataValue
	ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) +
	  geom_point(aes(color=${4:myColorBycolname})) + scale_color_brewer(type="seq", palette="${5:mypalettechoice}")

snippet myg_scatterplot_groupAndAutoAnnotateByColor
	# requires package directlabels
	library("directlabels")
	myplot <- ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname}, color=${4:mygroupingcol})) + geom_point()
	direct.label(myplot, "smart.grid")

snippet myg_scatterplot_addJitter
	 + geom_point(position="jitter")

snippet myg_line_basic
	ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) +
	  geom_line()

snippet myg_line_linesByCategory
	ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) +
	  geom_line(aes(color=${4:mycolnameForEachLine}))

snippet myg_line_goupAndAutoAnnotateByColor
	# requires package directlabels; code via https://goo.gl/jpSDtw
	library("directlabels")
	myplot <- ggplot(${1:mydataframe}, aes(x=${2:myxcolname}, y=${3:myycolname})) + geom_line(aes(color=${4:mycolnameForEachLine}))
	direct.label(myplot, list(last.points, hjust = 0.7, vjust = 1))

snippet myg_add_horizontalLine
	 + geom_hline(yintercept=${1:theYintercept})

snippet myg_add_vertictalLine
	 + geom_vline(xintercept=${1:theXintercept})

snippet myg_headline_setTextAndSize
	 + ggtitle("${1:myheadlinetext}") +
	  theme(plot.title = element_text(size = ${2:myintegerPointSize}))

snippet myg_headline_makeBold
	 + theme(plot.title = element_text(face="bold"))

snippet myg_Xaxis_setTitle
	 + xlab("${1:My x-axis title text}")

snippet myg_Yaxis_setTitle
	 + ylab("${1:My y-axis title text}")

snippet myg_Xaxis_setCatVariableLabels
	 + scale_x_discrete(labels=${1:myvectoroflabels})

snippet myg_Yaxis_setContVariableLabels
	 + scale_y_continuous(breaks=${1:myvectorofbreaks})

snippet myg_Yaxis_setLimits
	 + ylim(${1:myYmin}, ${2:myYmax})

snippet myg_Xaxis_rotateLabels45degrees
	 + theme(axis.text.x= element_text(angle=45, hjust = 1.3, vjust = 1.2))

snippet myg_Yaxis_rotateTitle
	 + theme(axis.title.y = element_text(angle = 0))

snippet myg_legend_off
	 + theme(legend.position = "none")

snippet myg_multiplots_1factor_2columns
	 + facet_wrap(~ ${1:mycolname}, ncol=2)

snippet myg_multiplots_2factors_2columns
	 + facet_wrap(${1:mycolname1} ~ ${2:mycolname2}, ncol=2)

snippet myg_multiplots_1factor_2rows
	 + facet_wrap(~ ${1:mycolname}, nrow=2)

snippet myg_multiplots_2factors_2rows
	 + facet_wrap(${1:mycolname1} ~ ${2:mycolname2}, nrow=2)

snippet myg_multiplots_2factors
	  +  facet_grid(${1:mycolname1} ~ ${2:mycolname2})

snippet myg_multiplots_unrelatedPlots_1column
	# gridExtra package required; enter any number of existing plots, each separated by a comma
	gridExtra::grid.arrange(${1:plot1}, ${2:plot2}, ${3:plot3})

snippet myg_multiplots_unrelatedPlots_SetNumColumns
	# gridExtra package required; enter any number of existing plots, each separated by a comma
	gridExtra::grid.arrange(${1:plot1}, ${2:plot2}, ${3:plot3}, ncol=${4:numcolumns})

snippet myg_annotate_addByXYposition
	 + annotate("text", x=${1:myxposition}, y=${2:myyposition}, label="${3:My text}")

snippet myg_corrplot
	# requires package corrplot
	mycorrelationmatrix <- cor(${1:mymatrix})
	col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
	corrplot::corrplot(mycorrelationmatrix, method="shade", shade.col=NA, tl.col="black", tl.srt=45, col=col(200), addCoef.col="black")

snippet myg_interactive_histogram
	# requires package ggvis
	library(ggvis)
	${1:mydataframe} %>%
	  ggvis(x = ~${2:mydatacolumn}, fill := "gray") %>%
	  layer_histograms(width =  input_slider(min=${3:mysliderMinValue}, max=${4:mysliderMax}, value= ${5:mysliderStartingValue}, label = "Bin Width"))

# end Computerworld ggplot2 code snippets
