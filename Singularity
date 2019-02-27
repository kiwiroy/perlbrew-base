Bootstrap: library
From: ubuntu:18.10

%labels
Maintainer kiwiroy@users-noreply.github.com
Version 1.00

%post
    apt-get update && apt-get install -y perlbrew
    perlbrew init
    env | grep -i ^perl >> $SINGULARITY_ENVIRONMENT

%script
    perl
