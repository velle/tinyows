#!/usr/bin/env sh

# Will clean up any file created by `make`

# This script is meant to be called by _make target_ 'distclean',
# and this code could actually just as well be placed there. Should it?
# I have placed it here for now, because I am cautious with touching the
# Makefile(.in) too much.

# Naming `distclean` given in accordance with Make target naming heuristics:
# https://www.gnu.org/software/automake/manual/html_node/Standard-Targets.html.

rm -f tinyows
rm -rf tinyows.dSYM

# If `make` (target `all`) goes well, it will remove tinyows.dSYM itself.
