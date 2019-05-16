#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J pilon_serum_aln
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load bwa
module load samtools

bwa index -p rna_serum_map /home/alina0/analysis/transcriptome/alignment/BH/pilon2.fasta
bwa mem -M rna_serum_map trim_paired_ERR1797969_pass_1.fastq.gz trim_paired_ERR1797969_pass_2.fastq.gz | samtools sort -o rna_serum_map69.bam

module load bioinfo-tools
module load bwa
module load samtools

bwa index -p rna_serum_map /home/alina0/analysis/transcriptome/alignment/BH/pilon2.fasta
bwa mem -M rna_serum_map trim_paired_ERR1797970_pass_1.fastq.gz trim_paired_ERR1797970_pass_2.fastq.gz | samtools sort -o rna_serum_map70.bam

module load bioinfo-tools
module load bwa
module load samtools

bwa index -p rna_serum_map /home/alina0/analysis/transcriptome/alignment/BH/pilon2.fasta
bwa mem -M rna_serum_map trim_paired_ERR1797971_pass_1.fastq.gz trim_paired_ERR1797971_pass_2.fastq.gz | samtools sort -o rna_serum_map71.bam





