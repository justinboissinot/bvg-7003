#!/bin/bash

#SBATCH -D /home/
#SBATCH -J Imputation
#SBATCH -o imputation-vcf-%j.out
#SBATCH -c 1
#SBATCH -p soyagen
#SBATCH -A soyagen
#SBATCH --mail-type=ALL
#SBATCH --mail-user=$MY_EMAIL
#SBATCH --time=5-00:00
#SBATCH --mem=10240

module load vcftools/0.1.12b
module load java/jdk/1.8.0_102
module load beagle/4.1.0

./ImputeBeagle.sh
