# -*- makefile -*-
#
# Platform-specific makefile rules. This one's for any unix (FreeBSD, OpenBSD, etc.)
#

PLATFORM_MCS_FLAGS =
PLATFORM_RUNTIME = $(RUNTIME)
PLATFORM_CORLIB = mscorlib.dll
PLATFORM_TEST_HARNESS_EXCLUDES =

EXTERNAL_MCS = mcs
EXTERNAL_MBAS = mbas
EXTERNAL_RUNTIME = mono
#ILDISASM = monodis
ILDISASM = false

PLATFORM_PATH_SEPARATOR = :

# Define this if this ever will work on Unix
# PLATFORM_MAKE_CORLIB_CMP = yes

# This is for changing / to \ on windows
PLATFORM_CHANGE_SEPARATOR_CMD = cat

hidden_prefix = .
hidden_suffix = 

platform-check:
	@:
# I tried this but apparently Make's version strings aren't that
# ... consistent between releases. Whatever.
#
#	@if ! $(MAKE) --version |grep '^GNU Make version 3' 1>/dev/null 2>&1 ; then \
#	    echo "*** You need to build MCS with GNU make. Try \`gmake'" ; \
#	    exit 1 ; \
#	fi


PLATFORM_UNIX=1
