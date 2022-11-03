
preinstall <- c('httpuv', 'xtable', 'R6', 'sourcetools', 
                'later', 'promises', 'crayon', 'rmarkdown', 
                'bitops', 'RColorBrewer', 'shape', 'foreach')

preinstall2 <- c('htmltools', 'shiny', 'caTools', 'latticeExtra',
                 'glmnet')

bioconductor_packages <- c("GO.db", "preprocessCore", "impute",
                           "sva", "metagenomeSeq", "omicade4",
                           "threejs")


install_packages <- c("shiny", "matrixStats", "Hmisc",
                      "splines", "foreach", "doParallel",
                      "fastcluster", "dynamicTreeCut", "survival",
                      "WGCNA", "flexdashboard",
                      "shinythemes", "ggplot2",
                      "ggrepel", "ggdendro", "ggthemes",
                      "dendextend", "pheatmap", "reshape2",
                      "gridExtra", "RColorBrewer", "vegan",
                      "DT", "shinyjs", "cowplot",
                      "visNetwork", "GGally", "sna",
                      "pls", "BiocManager", "iheatmapr",
                      "rmarkdown", "ade4",
                      "igraph", "network",
                      "compositions","grid", "webshot", "igraph", "psych", "circlize", "shinycssloaders")

if(length(setdiff(preinstall, rownames(installed.packages()))) > 0){
  install.packages(c('httpuv', 'xtable', 'R6', 'sourcetools', 'later', 'promises', 'crayon', 'rmarkdown', 'bitops', 'RColorBrewer', 'shape', 'foreach'), repos='https://cloud.r-project.org/')
}

if(length(setdiff(preinstall2, rownames(installed.packages()))) > 0){
  install.packages(c('https://cran.r-project.org/src/contrib/Archive/htmltools/htmltools_0.3.6.tar.gz', 'https://cran.r-project.org/src/contrib/Archive/shiny/shiny_1.3.2.tar.gz', 'https://cran.r-project.org/src/contrib/Archive/caTools/caTools_1.17.tar.gz', 'https://cran.r-project.org/src/contrib/Archive/latticeExtra/latticeExtra_0.6-28.tar.gz', 'https://cran.r-project.org/src/contrib/Archive/glmnet/glmnet_2.0-16.tar.gz'), repos = NULL, type = 'source')
}

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager", repos = "https://cloud.r-project.org")
if (length(setdiff(c(bioconductor_packages, install_packages), rownames(installed.packages()))) > 0) {
  BiocManager::install(setdiff(c(bioconductor_packages, install_packages), rownames(installed.packages())), updates = FALSE)
}


# prevent error writeImpl --> dur to version 0.4.0 of htmltools loaded as a dependency of leaflet
# if ("htmltools" %in% rownames(installed.packages())){
#   i <- installed.packages()
#   if (i["htmltools", "Version"] != "0.3.6"){
#     remove.packages("htmltools")
#     packageurl <- "https://cran.r-project.org/src/contrib/Archive/htmltools/htmltools_0.3.6.tar.gz"
#     install.packages(packageurl, repos=NULL, type="source")
#   }
# }

#define MAX_NUM_DLLS 10000
library("flexdashboard")
library("metagenomeSeq")
library("shiny")
#library("V8")
library("shinythemes")
library("WGCNA")
library("ggplot2")
library("ggdendro")
library("ggrepel")
library("dendextend")
library("ggthemes")
library("pheatmap")
library("reshape2")
library("gridExtra")
library("RColorBrewer")
library("dynamicTreeCut")
library("omicade4")
library("ade4")
library("data.table")
library("vegan")
library("tools")
library("compositions")
library("DT")
library("iheatmapr")
library("threejs")
library("shinyjs")
library("cowplot")
library("igraph")
library("visNetwork")
library("GGally")
library("network")
library("rmarkdown")
library("pls")
library("sva") #Batch correction
#library("plotly")
library("grid")
library("webshot") # save iheatmap
library("igraph") # Keystone index
library("psych") # factor analysis
library("shinycssloaders")
# library("stringr") # to use str_replace function



