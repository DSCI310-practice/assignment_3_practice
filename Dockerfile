FROM rocker/rstudio:4.4.2

RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "remotes::install_version('cowsay', repo = 'http://cran.rstudio.com')"

RUN Rscript -e "remotes::install_version('palmerpenguins', repo = 'http://cran.rstudio.com')"
