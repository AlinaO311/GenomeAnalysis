#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J HTseq_count_serum
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

# Load modules

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view rna_bh_map69.bam | htseq-count -f bam -t CDS  rna_serum_map69.bam /home/alina0/analysis/genome/annotation/E475_corrected_annotation.gtf > rna_serum_69_counts.txt

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view rna_serum_map70.bam | htseq-count -f bam -t CDS rna_serum_map70.bam /home/alina0/analysis/genome/annotation/E475_corrected_annotation.gtf > rna_serum_70_counts.txt

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view rna_serum_map71.bam | htseq-count -f bam -t CDS rna_serum_map71.bam /home/alina0/analysis/genome/annotation/E475_corrected_annotation.gtf > rna_serum_71_counts.txt
