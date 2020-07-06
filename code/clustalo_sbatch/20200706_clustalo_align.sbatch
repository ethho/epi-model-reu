#!/bin/bash

#----------------------------------------------------

#SBATCH -J clustalo
#SBATCH -o clustalo.o%j
#SBATCH -e clustalo.e%j
#SBATCH -p development
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -A COVID19-Portal

module list
clustalo --help > /dev/null
pwd
date

time clustalo --threads=56 --auto -i KOG3627_unaligned.fasta -o KOG3627_clustalo_%j.fasta


