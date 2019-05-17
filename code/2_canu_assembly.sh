#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:30:00
#SBATCH -J assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user email

module load bioinfo-tools
module load canu

canu -p canu -d canu_outdir genomeSize=2.7m -pacbio-raw /home/alina0/Paper1_raw_data/genomics_data/PacBio/*

