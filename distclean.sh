#!/usr/bin/env sh

# Will clean up after ./configure

# This script is meant to be called by _make target_ 'distclean',
# and this code could actually just as well be placed there. Should it?
# I have placed it here for now, because I am cautious with touching the
# Makefile(.in) too much.

# Naming `distclean` given in accordance with Make target naming heuristics:
# https://www.gnu.org/software/automake/manual/html_node/Standard-Targets.html.

rm -f configure~
rm -f Makefile
rm -f demo/install.sh
rm -f demo/tinyows.xml
rm -f src/ows_define.h
rm -f test/wfs_100/config_wfs_100.xml
rm -f test/wfs_100/install_wfs_100.sh
rm -f test/wfs_110/config_wfs_110.xml
rm -f test/wfs_110/install_wfs_110.sh

# file `configure~` is created by ./configure, but only when folder
# `autom4te.cache` (created by autoconf) is deleted before running ./configure.
# foo
