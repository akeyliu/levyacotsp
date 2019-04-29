#!/bin/bash

FILE_OUTPUT="run_rd400_mm_levyflight.csv"
TSPFILE="--tsplibfile tsp/rd400.tsp"
OPTIMUM="--optimum 15281"
ANTNUM="-m 400"
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

