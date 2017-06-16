############################################################
# Makefile for the regression tests that are run on travis
############################################################
ROOT = ../../../..

test-documentation:
	(cd $(ROOT)/AixLib; Resources/Scripts/runUnitTests.py --validate-html-only)

test-jmodelica:
	(docker pull modelicainaction/jmodelica:1.0; \ 
		cd $(ROOT)/AixLib && python ../bin/runUnitTests.py --batch --jmodelica)