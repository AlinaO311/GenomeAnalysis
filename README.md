# GenomeAnalysis
Repository for materials for Genome Analysis Course 1MB462(Spring2019)

## Project Plan

### Purpose
* What is the goal of this project? What question(s) is this research answering?

The goal of this project is to verify and try to recreate the research carried out by Zhang et al. BMC Genomics in the paper *RNA-seq and Tn-seq reveal fitness determinants of vancomycin-resistant Enterococcus faecium during growth in human serum* https://www.ncbi.nlm.nih.gov/pubmed/29162049.

The questions that this research aims to answer are:
1. Which genes contribute to the growth of E. faecium in human serum?

2. What genes may serve as targets for the development of novel anti-infectives for the treatment of E. faecium bloodstream infections?

### Analysis Pipeline

* What type of analyses will be performed to answer these questions? And in which order? 

Using the original Metadata, the analysis workflow will be similar to that defined by the researchers, however, there will be alternative tools used to keep the analysis in line with the concepts of the course. Steps will roughly follow this workflow:

1. Preprocessing 
2. Assembly
3. Alignment
4. Expression analysis 
5. Annotation
6. Synteny/Phylogeny analysis

#### Software

Analysis tools used by Zhang et al.:

* Assembly:
  * Celera (for long reads)
  * SPAdes(long and short reads)
  
* Alignment:
  * bwa(-M)

* Annotation  
  * Prokka
  
* Expression analysis

* Synteny/Phylogeny analysis
  * MEGA
  * ParSNP

My analysis tools:

 * Assembly:
   * Canu
   * Spades

 * Preprocessing:
   * trimmomatic
   * FastQC
   * Pilon
  
 * Assembly:
   * Canu (for long reads)
   * SPAdes(long and short reads)
  
 * Alignment:
   * bwa(-M)

 * Annotation  
   * Prokka
  
 * Expression analysis
   * DEseq
   * HTseq

#### Timeline

* What may cause time limitations? If there are time limitations, which analyses will require longer times?

Depending on the access to external server memory and ...

* What is the time frame for your project? Can you define some time checkpoints for when you should have finished certain analyses? When do you need to have finished running all the softwares so you can start to analyze the data?

#### Data 
* What types of data will be used? How much space is needed to store those data? 

The Data comes from the NCBI Sequence Read Archive (SRA), a repository of next-generation sequencing data. To avoid exceeding space allocation, some of the read files were pre-trimmed or subsampled. The files are named according to their SRA accession, which can also be found in the paper. 

* How will you organize your data? 

