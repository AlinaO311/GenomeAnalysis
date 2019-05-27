#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J pilon_bh_aln
#SBATCH --mail-type=ALL
#SBATCH --mail-user email

module load bioinfo-tools
module load bwa
module load samtools

bwa index -p rna_bh_map /home/alina0/analysis/transcriptome/alignment/BH/pilon2.fasta
bwa mem -M rna_bh_map trim_paired_ERR1797972_pass_1.fastq.gz trim_paired_ERR1797972_pass_2.fastq.gz | samtools sort -o rna_bh_map72.bam

module load bioinfo-tools
module load bwa
module load samtools

bwa index -p rna_bh_map /home/alina0/analysis/transcriptome/alignment/BH/pilon2.fasta
bwa mem -M rna_bh_map trim_paired_ERR1797973_pass_1.fastq.gz trim_paired_ERR1797973_pass_2.fastq.gz | samtools sort -o rna_bh_map73.bam

module load bioinfo-tools
module load bwa
module load samtools

bwa index -p rna_bh_map /home/alina0/analysis/transcriptome/alignment/BH/pilon2.fasta
bwa mem -M rna_bh_map trim_paired_ERR1797974_pass_1.fastq.gz trim_paired_ERR1797974_pass_2.fastq.gz | samtools sort -o rna_bh_map74.bam





