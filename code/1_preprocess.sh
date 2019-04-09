#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J trimming
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load trimmomatic

for infile in /home/alina0/Paper1_raw_data/transcriptomics_data/RNA-Seq_Serum/untrimmed/*.fastq.gz
do 
	outfile=$infile\_trimmed.fastq.gz
	java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE -phredd33 $infile $outfile ILLUMINACLIP:TruSeq3-PE.fa:2:20:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:27 MINLEN:36 
done

