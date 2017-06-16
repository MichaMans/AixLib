############################################################
# Makefile for the regression tests that are run on travis
############################################################
ROOT = ../../../..

test-documentation:
	(cd $(ROOT)/AixLib; Resources/Scripts/runUnitTests.py --validate-html-only)

test-jmodelica:
	(cd $(ROOT)/IBPSA && python ../bin/runUnitTests.py --batch --jmodelica)