#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J rna_trimming
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load trimmomatic

trimmomatic PE -phred33 ~/Paper1_raw_data/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797969_pass_1.fastq.gz ~/Paper1_raw_data/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797969_pass_2.fastq.gz ERR1797969_1.paired.fq ERR1797969_1.unpaired.fq ERR1797969_2.paired.fq ERR1797969_2.unpaired.fq ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/rackham/adapters/TruSeq3-PE-2.fa:2:20:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:27 MINLEN:36 

trimmomatic PE -phred33 ~/Paper1_raw_data/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797970_pass_1.fastq.gz ~/Paper1_raw_data/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797970_pass_2.fastq.gz ERR1797970_1.paired.fq ERR1797970_1.unpaired.fq ERR1797970_2.paired.fq ERR1797970_2.unpaired.fq ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/rackham/adapters/TruSeq3-PE-2.fa:2:20:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:27 MINLEN:36

trimmomatic PE -phred33 ~/Paper1_raw_data/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797971_pass_1.fastq.gz ~/Paper1_raw_data/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797971_pass_2.fastq.gz ERR1797971_1.paired.fq ERR1797971_1.unpaired.fq ERR1797971_2.paired.fq ERR1797971_2.unpaired.fq ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/rackham/adapters/TruSeq3-PE-2.fa:2:20:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:27 MINLEN:36

