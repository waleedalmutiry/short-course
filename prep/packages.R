## check to see that the version of R is at least 3.2.0
print(R.version.string)
stopifnot(getRversion()>="3.2.0")

options(warn=2)

## get list of packages to install
pkglist <- scan(
  what=character(0),
  text="
bbmle
coda
colorspace
deSolve
foreach
ggplot2
gridExtra
gtable
knitr
lhs
magrittr
maptools
mvtnorm
nloptr
plyr
RColorBrewer
reshape2
scales
sos
sp
stringr
subplex
xtable
"
)

pkglist <- setdiff(pkglist,rownames(installed.packages()))

if (length(pkglist)>0) install.packages(pkglist)
update.packages()

install.packages(c("pomp","pompExamples"),
                 repos="http://kinglab.eeb.lsa.umich.edu/R")

cat("all packages installed successfully!\n")