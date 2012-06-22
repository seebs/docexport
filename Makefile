VERSION=0.8
PACKAGE=DocExport
EXTRAFILES=prettydoc
DOC_TYPES=pts

default: prettydocs

include ../addon.mk

prettydocs:
	for type in $(DOC_TYPES); do ./prettydoc $$type "$(PTS)"; done

tarballs:
	[ -d pts ] && tar czf pts.tgz pts
	[ -d live ] && tar czf live.tgz live
