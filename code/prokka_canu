#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J prokka_canu
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load prokka

prokka --outdir ~/analysis/genome/annotation/ --prefix canu_E745 canu.contigs.fasta
