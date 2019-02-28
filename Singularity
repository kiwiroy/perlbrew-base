BootStrap: docker
From: ubuntu:bionic

%labels
    Author kiwiroy@users-noreply.github.com
    Maintainer kiwiroy@users-noreply.github.com
    Version 1.00

%post
    apt-get update && apt-get install -y perlbrew
    perlbrew init
    source ~/perl5/perlbrew/etc/bashrc
    env >&2

%script
    perl -lE 'say q{hello};'
