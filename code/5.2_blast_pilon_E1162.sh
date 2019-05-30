#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J blast_pilon_e1162
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load blast

blastn -query pilon2.fasta -subject <(gunzip -c GCF_000172675.1_ASM17267v1_genomic.fa.gz) -outfmt 6 > ~/analysis/genome/assembly/alignment/E1162_E745_blast.out
