BootStrap: docker
From: ubuntu:bionic

%labels
    Author kiwiroy@users-noreply.github.com
    Maintainer kiwiroy@users-noreply.github.com
    Version 1.00

%environment
    PERLBREW_CPAN_MIRROR=https://cpan.metacpan.org
    PERLBREW_ROOT=/opt/perl5/perlbrew
    export PERLBREW_CPAN_MIRROR PERLBREW_ROOT

%post -c /bin/bash
    echo "# Using bash as default shell" >> $SINGULARITY_ENVIRONMENT
    echo 'export SHELL=/bin/bash'        >> $SINGULARITY_ENVIRONMENT
    ## where to install
    env
    mkdir -p ${PERLBREW_ROOT}
    apt-get -y update && apt-get -y install curl perl patch build-essential
    curl -L https://install.perlbrew.pl | bash
    ${PERLBREW_ROOT}/bin/perlbrew init
    source ${PERLBREW_ROOT}/etc/bashrc
    perlbrew install-cpanm --yes
    perlbrew install-patchperl --yes
    perlbrew env >> $SINGULARITY_ENVIRONMENT
    echo 'export PATH="${PERLBREW_PATH}:${PATH}"' >> $SINGULARITY_ENVIRONMENT

%runscript
    perl -lE 'say q{hello}; say $^X;'

%test
    env
    /opt/perl5/perlbrew/bin/perlbrew version
