BootStrap: library
From: ubuntu:18.10
Library: https://cloud.sylabs.io/library

%labels
    Author kiwiroy@users-noreply.github.com
    Maintainer kiwiroy@users-noreply.github.com
    Version 1.00

%post
    apt-get update && apt-get install -y perlbrew
    perlbrew init
    env | grep -i ^perl >> $SINGULARITY_ENVIRONMENT

%script
    perl
