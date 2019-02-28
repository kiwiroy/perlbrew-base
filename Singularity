BootStrap: docker
From: ubuntu:bionic

%labels
    Author kiwiroy@users-noreply.github.com
    Maintainer kiwiroy@users-noreply.github.com
    Version 1.00

%post
    apt-get update && apt-get install -y perlbrew
    perlbrew init
    SHELL=bash perlbrew env >> $SINGULARITY_ENVIRONMENT 

%runscript
    source $PERLBREW_ROOT/etc/bashrc
    perl -lE 'say q{hello};'
