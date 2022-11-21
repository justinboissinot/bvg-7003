#!/bin/bash

#SBATCH -J bvg-7003-sabre
#SBATCH -o bvg-7003-sabre-%j.out
#SBATCH -c 1
#SBATCH -A ibismini
#SBATCH -p small
#SBATCH --mail-type=ALL
#SBATCH --mail-user=justin.boissinot.1@ulaval.ca
#SBATCH --time=02:00:00
#SBATCH --mem=20G

module load sabre/1.000

cd ../GBS_data

sabre se -f FC20150701_1.fq.gz -b FC20150701_1.txt -u unk.fastq
