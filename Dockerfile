FROM rocker/rstudio
COPY . /home/rstudio
WORKDIR /home/rstudio
RUN chown -R rstudio /home/rstudio

RUN apt-get update  && apt-get install -y \
  libpq-dev \
  build-essential \
  libcurl4-gnutls-dev \ 
  libxml2-dev \
  libssl-dev \
  libz-dev

RUN R -e "install.packages('mlr', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('mlrCPO', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('dplyr', dependencies=TRUE, repos='http://cran.rstudio.com/')" 
RUN R -e "install.packages('R6', dependencies=TRUE, repos='http://cran.rstudio.com/')" 
RUN R -e "install.packages('corrplot', dependencies=TRUE, repos='http://cran.rstudio.com/')" 
RUN R -e "install.packages('future', dependencies=TRUE, repos='http://cran.rstudio.com/')" 
RUN R -e "install.packages('MASS', dependencies=TRUE, repos='http://cran.rstudio.com/')" 
RUN R -e "install.packages('ggplot2', dependencies=TRUE, repos='http://cran.rstudio.com/')" 
RUN R -e "install.packages('ranger', dependencies=TRUE, repos='http://cran.rstudio.com/')" 
RUN R -e "devtools::install_github('giuseppec/featureImportance')"
RUN R -e "install.packages('future.apply')"
RUN R -e "install.packages('networkD3', dependencies = TRUE, repos = 'http://cran.rstudio.com/')" 
RUN R -e "install.packages('htmlwidgets', dependencies = TRUE, repos = 'http://cran.rstudio.com/')" 
RUN R -e "install.packages('webshot', dependencies = TRUE, repos = 'http://cran.rstudio.com/')" 
RUN R -e "install.packages('PMA', dependencies = TRUE, repos = 'http://cran.rstudio.com/')" 
RUN R -e "install.packages('kernlab', dependencies = TRUE, repos = 'http://cran.rstudio.com/')" 
RUN R -e "install.packages('batchtools', dependencies = TRUE, repos = 'http://cran.rstudio.com/')" 
RUN R -e "webshot::install_phantomjs()" 
