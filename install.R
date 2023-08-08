# speeding-up with multipe cores
options(Ncpus = parallel::detectCores()-1)
# getCordex and trollExp smk deps
install.packages(c(
  'devtools',
  'tidyverse', 
  'vroom', 
  'terra', 
  'foreach', 
  'plyr',
  'patchwork',
  'zoo',
  'REddyProc',
  'ggfortify',
  'gdalUtilities',
  'sf',
  'osmdata',
  'nominatimlite',
  'corrplot',
  'ggtern',
  'CDFt',
  'ncdf4'
), repos = "https://cloud.r-project.org",
dependencies = c('Depends', 'Imports', 'LinkingTo'))
# rcontroll deps
install.packages(c(
  'readr', 
  'dplyr', 
  'magrittr', 
  'reshape2', 
  'ggplot2',
  'viridis', 
  'doParallel', 
  'doSNOW', 
  'iterators',
  'Rcpp',
  'gganimate', 
  'tidyr', 
  'tibble', 
  'lubridate', 
  'lidR',
  'ecmwfr',
  'zoo'
), repos = "https://cloud.r-project.org",
dependencies = c('Depends', 'Imports', 'LinkingTo'))
# rcontroll V4
devtools::install_github("sylvainschmitt/rcontroll", ref = "TROLLV4", 
                         dependencies = c('Depends', 'Imports', 'LinkingTo'))
