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

for i in ~/Paper1_raw_data/transcriptomics_data/RNA-Seq_Serum/untrimmed/*_1.fastq.gz
do 
	f2=${i%%_1.fastq.gz}"_2.fastq.gz"
	file1 = `basename $i`
	file2 = `basename $f2`
	java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE -phred33 $i $f2 ${file1%%_1.fastq.gz}_1.paired.fq ${file1%%_1.fastq.gz}_1.unpaired.fq ${file2%%_1.fastq.gz}_2.paired.fq ${file2%%_1.fastq.gz}_2.unpaired.fq ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/rackham/adapters/TruSeq3-PE-2.fa:2:20:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:27 MINLEN:36 
done

