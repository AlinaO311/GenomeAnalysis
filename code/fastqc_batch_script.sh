#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J rna_fastqc
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load FastQC

for i in ~/Paper1_raw_data/transcriptomics_data/RNA-Seq_Serum/untrimmed/*.fastq.gz
do 
	fastqc -o ~/analysis/transcriptome/preproccessing/FASTQC/ $i
done

