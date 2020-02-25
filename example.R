# check that the package is installed correctly 
library(beepr)
print("package installed correctly")

# save your results
vec = rnorm(5)
saveRDS(vec, "rnorm.rds")