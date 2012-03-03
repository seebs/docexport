VERSION=0.2
PACKAGE=DocExport
EXTRAFILES=prettydoc

default: prettydocs

include ../addon.mk

prettydocs:
	# -./prettydoc pts "$(PTS)"
	-./prettydoc live "$(RIFT)"
