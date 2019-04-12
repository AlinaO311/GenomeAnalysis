#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J canu_illumina_alignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load bwa
module load samtools

bwa index -p canu_illumina_alignment canu.contigs.fasta 

bwa mem -M canu.contigs.fasta ~/Paper1_raw_data/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz  ~/Paper1_raw_data/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz | samtools sort -O BAM -o canu_illumina_aln.bam

