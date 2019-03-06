# levyacotsp

Levyacotsp means Levy ACO for TSP, which Levy ACO for Integrate Levy Flight to improve ACO, mostly based on original Max-min ACO.
1. Levy ACO TSP is based on the acotsp which in website of http://www.aco-metaheuristic.org/aco-code/
2. We modify the original Levy ACO to improve the performance.
3. We build them in Windows, and please refer the run*.bat for start the experiments of Max-min ACO and Levy ACO. In the modification for Levy ACO, we add code to output the mandatory result in stderr, so, 2>>result.csv is add in the bat file for output the result.
4. TSP instance please refer another my project of tsplib.
5. gcc is needed for building ACO source code, and please refer the web link for details, https://sourceforge.net/projects/mingw/, which is a gcc version in windows/dos.
6. I've modified the orignal makefile to support windows/dos with gcc, and please make sure mingw-gcc is installed and add to the path enviroment.
7. run_mm.bat is a dos batch file to run the orignal Max-min ACO.
8. run_mm_levy.bat is a dos batch file to run the Levy ACO based on the original Max-min ACO.
