
set FILE_OUTPUT="runtest_mm_levy.csv"set TSPFILE= --tsplibfile lin318.tsp set OPTIMUM= --optimum 42029 set ROUND=101
# Initialize the Log File.del /q %FILE_OUTPUT%
# Begin Runmkdir -p ./result
rm -f ./result/${FILE_OUTPUT}
for i in {1..100}
do
	for j in 0 0.05 0.10 0.15 0.20 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.60 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1
	do
		for k in 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1
		do
			./acotsp --quiet ${TSPFILE} ${OPTIMUM} ${ANTNUM} ${OTHEROPT} -L ${j};${k} 2>> ./result/${method}/${FILE_OUTPUT}
		done
	done
done
