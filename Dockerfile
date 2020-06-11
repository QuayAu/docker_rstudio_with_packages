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

RUN R -e "install.packages('mlr3', dependencies=TRUE, repos='http://cran.rstudio.com/')"
