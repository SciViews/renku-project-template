# For finding latest versions of the base image see
# https://github.com/SwissDataScienceCenter/renkulab-docker
# For finding rocker images see
# https://github.com/rocker-org/rocker-versioned2

# define build arguments
ARG RENKU_BASE=renku/renkulab-py:3.8-0.8.0
ARG BASE_IMAGE=rocker/geospatial:4.0.5

# define base images
FROM $RENKU_BASE as renku_base
FROM $BASE_IMAGE

LABEL maintainer="Philippe Grosjean <phgrosjean@sciviews.org>"

USER root

ENV NB_USER rstudio
ENV NB_UID 1000
ENV NB_GID 1000
ENV VENV_DIR /srv/venv
ENV HOME /home/${NB_USER}
ENV SHELL bash
ENV CONDA_PATH /opt/conda

# prepend conda and local/bin to PATH
ENV PATH ${HOME}/.local/bin:${CONDA_PATH}/bin:$PATH

# The `rsession` binary that is called by nbrsessionproxy to start R
# doesn't seem to start without this being explicitly set
ENV LD_LIBRARY_PATH /usr/local/lib/R/lib

# pin the version of RStudio
ENV RSTUDIO_VERSION 1.3.959
#ENV RSESSION_PROXY_RSTUDIO_1_4 yes # Required if RStudio version is >= 1.4
# Set PATH for R! It doesn't read from the environment...
# and install pinned RStudio version
RUN echo "PATH=${PATH}" >> /usr/local/lib/R/etc/Renviron && \
echo "PATH=${PATH}" >> /etc/profile.d/set_path.sh && \
/rocker_scripts/install_rstudio.sh

# Add Tini
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini && ln -s /tini /usr/bin/

# install dependencies
RUN apt-get update --fix-missing && \
    apt-get install -yq --no-install-recommends \
    bzip2 \
    ca-certificates \
    curl \
    gpg-agent && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
    apt-get update && \
    apt-get install -yq --no-install-recommends \
    git-lfs \
    gnupg \
    jq \
    nodejs \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender1 \
    libzmq3-dev \
    wget \
    vim \
    # added for SciViews Box/BioDataScience
    hunspell-en-us \
    hunspell-en-gb \
    hunspell-fr-modern \
    nano && \
    apt-get purge && \
    apt-get clean && \
    apt autoremove --yes && \
    rm -rf /var/lib/apt/lists/*

# inject the renku-jupyter stack
COPY --from=renku_base /opt/conda /opt/conda
COPY --from=renku_base --chown=rstudio:rstudio  /usr/local/bin/ /usr/local/bin/
COPY --from=renku_base --chown=rstudio:rstudio  /home/jovyan/ /home/rstudio/
COPY --from=renku_base /entrypoint.sh /entrypoint.sh

# set permissions of the R library directory to be editable by NB_USER
# This is done in the original image, but we don't want this: we want users to
# install packages in the ~/R folder instead
#ADD fix-permissions.sh /usr/local/bin
#RUN fix-permissions.sh /usr/local/lib/R
RUN chown 1000:1000 /opt/conda && \
    usermod -a -G users rstudio && \
    # this hack lets some of the setup from the base renku image work here
    ln -s /home/${NB_USER} /home/jovyan

# customize RStudio
COPY config/dictionaries/* /usr/share/hunspell/
RUN mkdir -p /home/rstudio/.config/rstudio/dictionaries && \
    chown 1000:1000 /home/rstudio/.config/rstudio/dictionaries && \
    mkdir -p /home/rstudio/.config/rstudio/dictionaries/languages-system && \
    chown 1000:1000 /home/rstudio/.config/rstudio/dictionaries/languages-system && \
    cp /usr/share/hunspell/en_US.aff /home/rstudio/.config/rstudio/dictionaries/languages-system/en_US.aff && \
    cp /usr/share/hunspell/en_US.dic /home/rstudio/.config/rstudio/dictionaries/languages-system/en_US.dic && \
    cp /usr/share/hunspell/en_US.dic_delta /home/rstudio/.config/rstudio/dictionaries/languages-system/en_US.dic_delta && \
    cp /usr/share/hunspell/en_GB.aff /home/rstudio/.config/rstudio/dictionaries/languages-system/en_GB.aff && \
    cp /usr/share/hunspell/en_GB.dic /home/rstudio/.config/rstudio/dictionaries/languages-system/en_GB.dic && \
    cp /usr/share/hunspell//en_GB.dic_delta /home/rstudio/.config/rstudio/dictionaries/languages-system/en_GB.dic_delta && \
    cp /usr/share/hunspell/fr.aff /home/rstudio/.config/rstudio/dictionaries/languages-system/fr_FR.aff && \
    cp /usr/share/hunspell/fr.dic /home/rstudio/.config/rstudio/dictionaries/languages-system/fr_FR.dic && \
    cp /usr/share/hunspell//fr_FR.dic_delta /home/rstudio/.config/rstudio/dictionaries/languages-system/fr_FR.dic_delta && \
    chown 1000:1000 /home/rstudio/.config/rstudio/dictionaries/languages-system/* && \
    chown 1000:1000 /home/rstudio/.config/rstudio && \
    mkdir -p /etc/rstudio/snippets
COPY config/snippets/r.snippets /etc/rstudio/snippets
COPY config/rstudio-prefs.json /etc/rstudio

# Uncomment and adapt if code is to be included in the image
# COPY src /code/src

USER ${NB_USER}

# set up conda in the NB_USER environment
RUN echo ". ${CONDA_PATH}/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate base" >> ~/.bashrc && \
    pip install "jupyter-rsession-proxy==1.1" && \
    # install IRKernel
    R --quiet -e "install.packages('IRkernel')" && \
    R --quiet -e "IRkernel::installspec(prefix='${CONDA_PATH}')" && \
    echo "source ~/.bashrc" >> ~/.bash_profile

# install R and python dependencies, and create a directory for GitHub repos
COPY install.R /tmp/
COPY requirements.txt /tmp/
RUN R -f /tmp/install.R && \
    pip3 install -r /tmp/requirements.txt && \
    mkdir -p ~/github

COPY post-init.sh /post-init.sh
ENTRYPOINT [ "/tini", "--", "/entrypoint.sh" ]
CMD [ "jupyterhub-singleuser" ]

WORKDIR ${HOME}
