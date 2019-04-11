#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J sam_variant
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load samtools

samtools faidx canu.contigs.fasta 

samtools sort canu_illumina_aln.bam canu_illumina_sorted.bam

samtools index canu_illumina_sorted.bam
