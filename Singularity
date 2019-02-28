BootStrap: docker
From: ubuntu:bionic

%labels
    Author kiwiroy@users-noreply.github.com
    Maintainer kiwiroy@users-noreply.github.com
    Version 1.00

%environment
    export PERLBREW_ROOT=/opt/perl5/perlbrew

%post
    env
    mkdir -p /opt/perl5/perlbrew
    curl -L https://install.perlbrew.pl | bash
    perlbrew init
    SHELL=bash perlbrew env >> $SINGULARITY_ENVIRONMENT 

%runscript
    source $PERLBREW_ROOT/etc/bashrc
    perl -lE 'say q{hello}; say $^X;'
