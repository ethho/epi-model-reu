#!/bin/bash

#----------------------------------------------------

#SBATCH -J clustalo
#SBATCH -o clustalo.o%j
#SBATCH -e clustalo.e%j
#SBATCH -p flex
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -A COVID19-Portal

#----------------------------------------------------

module list
clustalo --help > /dev/null
pwd
date

time clustalo --threads=56 --auto -i ../../data/eggnog/KOG3627_unaligned.fasta -o KOG3627_clustalo_aligned.fasta


