BootStrap: docker
From: ubuntu:bionic

%labels
    Author kiwiroy@users-noreply.github.com
    Maintainer kiwiroy@users-noreply.github.com
    Version 1.00

%post
    export PERLBREW_ROOT=/opt/perl5/perlbrew
    mkdir -p ${PERLBREW_ROOT}
    apt-get -y update && apt-get -y install curl perl
    curl -L https://install.perlbrew.pl | bash
    env
    ${PERLBREW_ROOT}/bin/perlbrew init
    ${PERLBREW_ROOT}/bin/perlbrew install-cpanm
    SHELL=bash ${PERLBREW_ROOT}/bin/perlbrew env >> $SINGULARITY_ENVIRONMENT 

%runscript
    perl -lE 'say q{hello}; say $^X;'
