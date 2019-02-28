BootStrap: docker
From: ubuntu:bionic

%labels
    Author kiwiroy@users-noreply.github.com
    Maintainer kiwiroy@users-noreply.github.com
    Version 1.00

%post
    export PERLBREW_ROOT=/opt/perl5/perlbrew
    env
    mkdir -p ${PERLBREW_ROOT}
    apt-get -y update && apt-get -y install curl perl
    curl -L https://install.perlbrew.pl | bash
    ${PERLBREW_ROOT}/bin/perlbrew init
    SHELL=bash perlbrew env >> $SINGULARITY_ENVIRONMENT 

%runscript
    source $PERLBREW_ROOT/etc/bashrc
    perl -lE 'say q{hello}; say $^X;'
