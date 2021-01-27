#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli 
#SBATCH --chdir=/home/alumno08/lab3-conatiner/data
#SBATCH -J Ejercicio_evaluacion_rendimiento
#SBATCH --cpus-per-task=1 
#SBATCH --mail-type=NONE 
#SBATCH --mail-user=maria.llamasl@um.es

# Script para evaluar el rendimiento en pacioli 
echo "Ejecutando k-mer14 en python"
time ./k-mer14.py
echo
echo "Ejecutando k-mer14 en C++"
time ./k-mer14.cpp
echo
echo "Ejecutando k-mer13 en python"
time ./k-mer13.py
echo
echo "Ejecutando k-mer13 en C++"
time ./k-mer13.cpp