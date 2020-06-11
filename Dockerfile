FROM rocker/rstudio
COPY . /home/rstudio
WORKDIR /home/rstudio
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
