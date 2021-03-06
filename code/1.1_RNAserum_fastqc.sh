#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J rna_fastqc_after_trim
#SBATCH --mail-type=ALL
#SBATCH --mail-user email

module load bioinfo-tools
module load FastQC

for i in ~/analysis/transcriptome/preproccessing/trimmming/*.fq
do 
	fastqc -o ~/analysis/transcriptome/preproccessing/FASTQC/ $i
done

