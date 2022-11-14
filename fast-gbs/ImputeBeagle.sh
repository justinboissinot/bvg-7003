#!/bin/bash

cd results

nom=$(ls -1 *.vcf | sed 's/.vcf//')

# Filtering variants to keep only bi-allelic SNP and few other parameters
vcftools --vcf "${nom}".vcf --remove-filtered-all --max-missing 0.2 --remove-indels --mac 1 --min-alleles 2 --max-alleles 2 --recode --out "${nom}"

java -Xmx25000m -jar /prg/beagle/4.1.0/beagle.jar gt="${nom}".recode.vcf out="${nom}"_recode_imputed

