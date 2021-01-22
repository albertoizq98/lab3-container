#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno07/Practicas-HPC/lab3
#SBATCH -J TEST
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END
#SBATCH --mail-user=alberto.izquierdom@um.es

echo "Voy a llevar a cabo la ejecución de los 4 programas midiendo el tiempo de cada uno"
echo "Programa de k-mer13 de c++:"
time ./k-mer13 
echo
echo "Programa de k-mer13 de python:"
time python k-mer13.py
echo
echo "Programa de k-mer14 de c++:"
time ./k-mer14
echo
echo "Programa de k-mer14 de python:"
time python k-mer14.py
echo
echo "Fin de la ejecución"
