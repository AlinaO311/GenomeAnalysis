#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J quast_canu
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load quast
module load python

quast.py -R ~/Paper1_raw_data/E745_assembled_genome.fasta canu.contigs.fasta 
