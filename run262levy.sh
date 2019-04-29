#!/bin/bash

FILE_OUTPUT="run_gil262_mm_levyflight.csv"
TSPFILE="--tsplibfile tsp/gil262.tsp"
OPTIMUM="--optimum 2378"
ANTNUM="-m 262"
OTHEROPT="--time 86400. --rho 0.1 --q0 0.9 "

#Initialize the Log File.

for method in "mmas";
do
	mkdir -p ./result/${method}/
	rm -f ./result/${method}/${FILE_OUTPUT}
	for i in {1..100}
	do
		./acotsp --quiet ${TSPFILE} ${OPTIMUM} ${ANTNUM} ${OTHEROPT} --${method} -L 0.8,3 2>> ./result/${method}/${FILE_OUTPUT}
	done
done

