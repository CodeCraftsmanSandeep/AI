# http://crantastic.org

# browseURL("http://cran.r-project.org/web/views")

# Install ggplot2 package
install.packages("ggplot2")

# Load ggplot2 packageno
library(ggplot2)

# Linear regression anlaysis package
install.packages("LiblineaR")

# Loading LiblineaR
library("LiblineaR")

library() # list of all installed packages

search() # listing all loaded packages

require("LiblineaR")

detach("package:LiblineaR", unload = "true") # unloading package

# Uninstall package
remove.packages("LiblineaR")

# to know more
? ggplot2