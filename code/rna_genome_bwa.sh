#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J canu_rna_alignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user alina.orozco12@gmail.com

module load bioinfo-tools
module load bwa
module load samtools

bwa index -p canu_rna_aln canu_tig00000001.fasta 

total_files=`find -name '*.fastq' | wc -l`
arr=( $(ls *.fastq.gz) )
echo "mapping started" >> map.log
echo "---------------" >> map.log

for ((i=0; i<$total_files; i+=2))
{
sample_name=`echo ${arr[$i]} | awk -F "_" '{print $1}'`
echo "[mapping running for] $sample_name"
printf "\n"
echo "bwa mem -t 12 canu_tig00000001.fasta ${arr[$i]} ${arr[$i+1]} > $sample_name.sam" >> map.log
bwa mem -t 12 canu_tig00000001.fasta ${arr[$i]} ${arr[$i+1]} > $sample_name.sam
} 

