#!/bin/bash

FILE_OUTPUT="run_a280_mm.csv"
TSPFILE="--tsplibfile tsp/a280.tsp"
OPTIMUM="--optimum 2579"
ANTNUM="-m 280"
OTHEROPT="--time 86400. --rho 0.1 --q0 0.9 "

#Initialize the Log File.

for method in "mmas";
do
	mkdir -p ./result/${method}/
	rm -f ./result/${method}/${FILE_OUTPUT}
	for i in {1..100}
	do
		./acotsp --quiet ${TSPFILE} ${OPTIMUM} ${ANTNUM} ${OTHEROPT} --${method} 2>> ./result/${method}/${FILE_OUTPUT}
	done
done

