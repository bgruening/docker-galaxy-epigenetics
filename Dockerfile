# Galaxy - Epigenetics

FROM bgruening/galaxy-ngs-preprocessing:19.01

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND Epigenetics

# Install tools
ADD epigenetics.yml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs
