#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno07/Practicas-HPC/lab3/Rdata
#SBATCH -J TEST
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END
#SBATCH --mail-user=alberto.izquierdom@um.es

echo "Primero cargamos el modulo singularity"
module load singularity/3.7.0
echo
echo "El fichero lleva a cabo una suma, asignamos a x los valores de 1 a 50 y rnorm() genera datos aleatorios con probabilidad normal"
echo
singularity exec r-base Rscript Prueba_sing2.R
echo

echo fin