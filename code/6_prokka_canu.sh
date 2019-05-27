#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J prokka_canu
#SBATCH --mail-type=ALL
#SBATCH --mail-user email
module load bioinfo-tools
module load prokka

prokka --outdir ~/analysis/genome/annotation/ --prefix E475_corrected_annotation pilon2.fasta
