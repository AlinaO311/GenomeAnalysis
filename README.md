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
* Preprocessing:
  * Pilon

* Assembly:
  * Celera (for long reads)
  * SPAdes(long and short reads)
  
* Alignment:
  * bwa(-M)

* Annotation  
  * Prokka
  
* Expression analysis
  
My analysis tools:
* Assembly:
  * Canu
  * Spades

* Preprocessing:
  * trimmomatic
  
* Assembly:
  * Canu (for long reads)
  * SPAdes(long and short reads)
  
* Alignment:
  * bwa(-M)

* Annotation  
  * Prokka
  
* Expression analysis

* What may cause time limitations? If there are time limitations, which analyses will require longer times?

 Depending on the access to external server memory and ...
