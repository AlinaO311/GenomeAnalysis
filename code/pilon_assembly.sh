#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J pilon
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load Pilon

pilon  --genome canu.contigs.fasta --frags canu_illumina_aln.bam --tracks --outdir ~/analysis/genome/assembly/preproccessing/Pilon/ --output pilon2
