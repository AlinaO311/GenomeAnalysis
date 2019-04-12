#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J blastn_canu_pilon
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load blast

blastn -query canu.contigs.fasta -subject ~/analysis/genome/assembly/preproccessing/Pilon/pilon.fasta -outfmt 6 > ~/analysis/genome/assembly/alignment/blast_ouput.out
