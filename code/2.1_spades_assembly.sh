#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J spades_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load spades

spades.py -t 4 -1 ~/Paper1_raw_data/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz -2 ~/Paper1_raw_data/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz --nanopore ~/Paper1_raw_data/genomics_data/Nanopore/E745_all.fasta.gz --careful --cov-cutoff auto -o ~/analysis/genome/assembly/spades_outdir
