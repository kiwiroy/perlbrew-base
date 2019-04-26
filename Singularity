BootStrap: docker
From: ubuntu:bionic

%labels
    Author kiwiroy@users-noreply.github.com
    Maintainer kiwiroy@users-noreply.github.com
    Version 1.00

%environment
    PERLBREW_CPAN_MIRROR=https://cpan.metacpan.org
    PERLBREW_SKIP_INIT=1
    export PERLBREW_CPAN_MIRROR PERLBREW_SKIP_INIT

%post -c /bin/bash
    echo '****************************************************'
    echo 'Setup/Display Environment'
    echo '****************************************************'
    ## where to install (similar to HOME=/opt)
    export PERLBREW_ROOT=/opt/perl5/perlbrew
    export PERLBREW_HOME=/opt/.perlbrew
    mkdir -p "${PERLBREW_ROOT}" "${PERLBREW_HOME}"
    env | grep -i ^perl
    
    echo '****************************************************'
    echo 'Install dependencies / utils'
    echo '****************************************************'
    apt-get -y update && apt-get -y install curl perl patch build-essential git
    
    echo '****************************************************'
    echo 'Install perl'
    echo '****************************************************'
    curl -L https://install.perlbrew.pl | bash
    ${PERLBREW_ROOT}/bin/perlbrew init
    source ${PERLBREW_ROOT}/etc/bashrc
    perlbrew install-cpanm --yes
    perlbrew install-patchperl --yes
    
    echo '****************************************************'
    echo 'Store Environment'
    echo '****************************************************'
    echo '# Using bash as default shell' >  $SINGULARITY_ENVIRONMENT
    echo "export SHELL=$SHELL"           >> $SINGULARITY_ENVIRONMENT
    echo "export PERLBREW_HOME=$PERLBREW_HOME"    >> $SINGULARITY_ENVIRONMENT
    perlbrew env >> $SINGULARITY_ENVIRONMENT
    echo 'export PATH="${PERLBREW_PATH}:${PATH}"' >> $SINGULARITY_ENVIRONMENT

%runscript
    perl -lE 'say q{hello}; say $^X;'

%test
    if test "${SINGULARITY_CHECKTAGS:-}" = "bootstrap"; then
      . $SINGULARITY_ENVIRONMENT
    fi
    perlbrew version
    env | grep -i ^perl
