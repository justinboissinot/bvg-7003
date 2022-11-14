#!/bin/bash

#SBATCH -J bvg-7003-samt_var
#SBATCH -o bvg-7003-samt_var-%j.out
#SBATCH -c 2
#SBATCH -A ibismini
#SBATCH -p small
#SBATCH --mail-type=ALL
#SBATCH --mail-user=justin.boissinot.1@ulaval.ca
#SBATCH --time=02:00:00
#SBATCH --mem=20G

module load samtools/1.8
module load bcftools/1.8

DATA=../GBS_data/bamlist
REF=../refgenome/Gmax_275_v2.0.fa
OUT=variantcalling
CPU=2

mkdir ../results1
cd ../results1

samtools mpileup -g -f $REF -b $DATA > variants.bcf

	if [ $? -ne 0 ]
                        then
                                printf "There is a problem at the samtools_mpileup step"
                                exit 1
                fi


bcftools call -mv variants.bcf > variants.vcf

	if [ $? -ne 0 ]
                        then
                                printf "There is a problem at the bcf2vcf step"
                                exit 1
                fi
