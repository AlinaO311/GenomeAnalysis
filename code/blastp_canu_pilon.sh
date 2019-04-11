#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J blastp
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load blast

blastp -query canu.contigs.fasta -subject ~/analysis/genome/assembly/preproccessing/Pilon/pilon.fasta > ~/analysis/genome/assembly/alignment/blastp_ouput.out
