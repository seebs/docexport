VERSION=0.4
PACKAGE=DocExport
EXTRAFILES=prettydoc

default: prettydocs

include ../addon.mk

prettydocs:
	-./prettydoc pts "$(PTS)"
	#-./prettydoc live "$(RIFT)"
