#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J HTseq_count_bh
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

# Load modules

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view rna_bh_map72.bam | htseq-count -f bam -t CDS  rna_bh_map72.bam /home/alina0/analysis/genome/annotation/E475_corrected_annotation.gtf > rna_bh_72_counts.txt

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view rna_bh_map73.bam | htseq-count -f bam -t CDS rna_bh_map73.bam /home/alina0/analysis/genome/annotation/E475_corrected_annotation.gtf > rna_bh_73_counts.txt

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view rna_bh_map74.bam | htseq-count -f bam -t CDS rna_bh_map74.bam /home/alina0/analysis/genome/annotation/E475_corrected_annotation.gtf > rna_bh_74_counts.txt
