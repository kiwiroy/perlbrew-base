#!/bin/sh

NAME=ubuntu
BOOTSTRAP=docker://${NAME}:bionic
BOOSTRAP_IMG=${NAME}.simg
OVERLAY=temp-overlay.img

rm -f "${OVERLAY}"

singularity build "$BOOTSTRAP_IMG" "$BOOTSTRAP"

singularity image.create "${OVERLAY}"

sudo singularity shell --cleanenv --overlay "${OVERLAY}" "$BOOTSTRAP_IMG"
