VERSION=0.7
PACKAGE=DocExport
EXTRAFILES=prettydoc

default: prettydocs

include ../addon.mk

prettydocs:
	-./prettydoc pts "$(PTS)"
	#-./prettydoc live "$(RIFT)"
