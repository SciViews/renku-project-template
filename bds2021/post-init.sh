#!/bin/bash

# Copy the relevant system environment variables to the R-specific locations
VariableArray=("GIT_COMMITTER_NAME"  "GIT_AUTHOR_NAME"  "EMAIL")
for var in ${VariableArray[*]}; do
if [ -n "${!var}" ]; then
echo $var=${!var} >> ${HOME}/.Renviron
fi
done

# Add a symlink to the project directory in /home/rstudio
[ -n "$CI_PROJECT" ] && ln -s /work/${CI_PROJECT} /home/rstudio


# Configure rstudio to open the rpath project
if [[ ! -f /home/rstudio/${CI_PROJECT}/${CI_PROJECT}.Rproj ]]; then
cat > /home/rstudio/${CI_PROJECT}/${CI_PROJECT}.Rproj <<- EOM
Version: 1.0
RestoreWorkspace: Default
SaveWorkspace: Default
AlwaysSaveHistory: Default
EnableCodeIndexing: Yes
UseSpacesForTab: Yes
NumSpacesForTab: 2
Encoding: UTF-8
RnwWeave: Sweave
LaTeX: pdfLaTeX
EOM
fi
mkdir -p /home/rstudio/.rstudio/projects_settings
echo /home/rstudio/${CI_PROJECT}/${CI_PROJECT}.Rproj | tee /home/rstudio/.rstudio/projects_settings/next-session-project
chown -R rstudio:root /home/rstudio/.rstudio/projects_settings

# Record the CI_PROJECT directory somewhere for reuse in R
echo /home/rstudio/${CI_PROJECT} > /home/rstudio/.config/renkudir
chown rstudio:rstudio /home/rstudio/.config/renkudir

# Install GitHub credentials
mv /home/rstudio/${CI_PROJECT}/config/credentials /home/rstudio/${CI_PROJECT}/.git/

# If there is a custom RStudio prefs, install it
if [[ -f /home/rstudio/${CI_PROJECT}/config/rstudio-prefs-user.json ]]; then
cp /home/rstudio/${CI_PROJECT}/config/rstudio-prefs-user.json /home/rstudio/.config/rstudio/rstudio-prefs.json
chown rstudio:rstudio /home/rstudio/.config/rstudio/rstudio-prefs.json
fi
