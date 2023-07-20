import os
import scri
import sys

if os.getcwd().split('/')[-1] != 'GW2':
	print('Error: this script should be run from a GW2 directory.')
	exit(1)

fname = sys.argv[1]
outputDir = './extrapolated-' + fname[0:-3]
os.mkdir(outputDir)

scri.extrapolate(
	InputDirectory = '.',
	OutputDirectory = outputDir,
	DataFile = fname,
	HorizonsFile = '../ApparentHorizons/Horizons.h5',
	UseStupidNRARFormat = True, 
)
