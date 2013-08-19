#!/bin/sh

# just a script to run the handful of commands required for a
# bootable domU image

# the buildxen.sh is not as forgiving as I am
set -e

# fetch buildrump.sh and build rump kernel components
git submodule update --init --recursive
./buildrump.sh/buildrump.sh -s rumpsrc -T rumptools -o rumpobj -V NOPIC=1

# build networking driver
(
  cd rumpxenif
  ../rumptools/rumpmake dependall && ../rumptools/rumpmake install
)

# build the domU image
make
