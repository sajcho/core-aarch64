#!/bin/sh
#
# Generic locale

localedef -i POSIX -f UTF-8 C.UTF-8 2> /dev/null || true
localedef -i cs_CZ -f UTF-8 cs_CZ.UTF-8
localedef -i en_US -f UTF-8 en_US.UTF-8

# End of file
