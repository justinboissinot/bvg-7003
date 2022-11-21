#!/bin/bash

#SBATCH -J bvg-7003-mapping
#SBATCH -o bvg-7003-mapping-%j.out
#SBATCH -c 2
#SBATCH -A ibismini
#SBATCH -p small
#SBATCH --mail-type=ALL
#SBATCH --mail-user=justin.boissinot.1@ulaval.ca
#SBATCH --time=02:00:00
#SBATCH --mem=20G

module load bwa/0.7.17

REF=../refgenome/Gmax_275_v2.0.fa
CPU=2
THR=2

cd ../GBS_data
		parallel -j $CPU bwa mem -t $THR $REF {}.fastq ">" {}.sam ::: $(ls -1 *.fastq | sed 's/.fastq//')
		if [ $? -ne 0 ]
			then 
				printf There is a problem in the alignment step
				exit 1
		fi
