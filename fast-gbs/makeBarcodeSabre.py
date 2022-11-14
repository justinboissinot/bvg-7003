#!/usr/bin/python

"""

Error! the barcode file was not found!
Give a valid flowcell and lane specification.
Check the name given to the barcode file is in accord with the name of sequence file.

Usage:
    ./makeBarcodeSabre.py <flowcell> <lane>
"""

import os, sys, fileinput
import sys


# Parse user input
try:
	f = open('barcodes/barcodes_'+sys.argv[1]+'_'+sys.argv[2],'r')
except:
	print(__doc__)
	sys.exit(1)
	
def mkBCfile(flow,lane):
	"""
	"""
	
#	f = open('barcodes/barcodes_'+flow+'_'+lane,'r')
	o = open('data/'+flow+'_'+lane,'w')
	line = f.readline()

	while line:
		list = line.split()
		o.write(list[0]+' '+flow+'_'+lane+'_'+list[1]+'.fq\n')
		line = f.readline()
	f.close()
	o.close()

if __name__ == '__main__':
	#sys.argv[1] = the variable FLOWCELL
	#sys.argv[2] = the variable lane
	mkBCfile(sys.argv[1],sys.argv[2])
