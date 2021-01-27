#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli 
#SBATCH --chdir=/home/alumno08/lab3-container/data
#SBATCH -J Ejercicio_eval_singularity
#SBATCH --cpus-per-task=1 
#SBATCH --mail-type=NONE 
#SBATCH --mail-user=maria.llamasl@um.es

module load singularity/3.7.0

echo Ejecutando k-mers14 con C++ usando la imagen python_latest.sif
time ./k-mer14 python_latest.sif
echo
echo Ejecutando k-mers14 con Python usando la imagen python_latest.sif
time ./k-mer14.py python_latest.sif
echo
echo Ejecutando k-mers13 con C++ usando la imagen python_latest.sif
time ./k-mer13 python_latest.sif
echo
echo Ejecutando k-mers13 con Python usando la imagen python_latest.sif
time ./k-mer13.py python_latest.sif