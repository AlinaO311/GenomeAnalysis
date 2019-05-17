#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J quast
#SBATCH --mail-type=ALL
#SBATCH --mail-user email

module load bioinfo-tools
module load quast
module load python

python quast.py -r /home/alina0/Paper1_raw_data/E745_assembled_genome.fasta /home/alina0/analysis/assembly/canu_outdir/canu.contigs.fasta 
