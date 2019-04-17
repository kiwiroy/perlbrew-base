BootStrap: docker
From: ubuntu:bionic

%labels
    Author kiwiroy@users-noreply.github.com
    Maintainer kiwiroy@users-noreply.github.com
    Version 1.00

%environment
    PERLBREW_CPAN_MIRROR=https://cpan.metacpan.org
    export PERLBREW_CPAN_MIRROR

%post -c /bin/bash
    export PERLBREW_ROOT=/opt/perl5/perlbrew
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
