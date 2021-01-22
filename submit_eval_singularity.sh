#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno07/Practicas-HPC/lab3/singularity
#SBATCH -J TEST
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END
#SBATCH --mail-user=alberto.izquierdom@um.es

echo "Para empezar se carga el modulo de singularity"
module load singularity/3.7.0 
echo
echo "A continuacion, voy a llevar a cabo la ejecución de los 4 programas midiendo el tiempo de cada uno utilizando la imagen"
echo "Programa de k-mer13 de c++:"
time singularity exec python_latest.sif ./k-mer13
echo
echo "Programa de k-mer13 de python:"
time singularity exec python_latest.sif ./k-mer13.py
echo
echo "Programa de k-mer14 de c++:"
time singularity exec python_latest.sif ./k-mer14
echo
echo "Programa de k-mer14 de python:"
time singularity exec python_latest.sif ./k-mer14.py
echo
echo "Fin de la ejecución"
