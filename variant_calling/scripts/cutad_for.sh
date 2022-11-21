#!/bin/bash

#SBATCH -J bvg-7003-cutadapt
#SBATCH -o bvg-7003-cutadapt-%j.out
#SBATCH -c 1
#SBATCH -A ibismini
#SBATCH -p small
#SBATCH --mail-type=ALL
#SBATCH --mail-user=justin.boissinot.1@ulaval.ca
#SBATCH --time=02:00:00
#SBATCH --mem=20G

module load cutadapt/3.2

cd ../GBS_data

ADAP=AGATCGGAA

for i in *.fq;
	do
		cutadapt -a $ADAP -o $i.fastq $i
	done

