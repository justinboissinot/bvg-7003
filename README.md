# bvg-7003
Scripts et travaux pour le cours BVG-7003 - Analyses des informations génomiques : du génome au phénome

## Dossiers : data & scripts
*Dossier contenant des fichiers remis lors de la semaine 2.*

## Dossier : fast-gbs
*Dossier contenant des fichiers remis lors de la semaine 3.*
Scripts permettant d'exécuter le pipeline Fast-GBS (voir https://bitbucket.org/jerlar73/fast-gbs/wiki/Home) conçu pour l'extraction de SNPs. 

Les grandes étapes d'exécution sont : 

- Créer les répertoires avec `makeDir.sh`
- Préparer le fichier de paramètres `parameters.txt`
- Exécuter `fastgbs.sh` à l'aide du SLURM `SLURM_GBS.sh`
- Réaliser l'imputation de données manquantes avec `SLURM_Imputation.sh`

## Dossier : Biopython
*Dossier contenant des fichiers remis lors de la semaine 6.*

## Dossier : santa
*Dossier contenant des fichiers remis lors de la semaine 7.*

## Dossier : variant_calling
*Dossier contenant des fichiers remis lors de la semaine 9.* 
Scripts permettant l'appel de variants à partir d'un jeu de données fourni (fichier FASTQ et fichier de code-barres; voir https://bitbucket.org/jerlar73/soyagen-bioinformatics-workshop-1/src/master/exercise1/) et d'un génome de référence fourni (Gmax_275_v2.0.fa; voir https://phytozome-next.jgi.doe.gov/info/Gmax_Wm82_a2_v1).

Les grandes étapes d'exécution sont :

- Démultiplexage des échantillons à partir des données brutes avec sabre (`sabre.sh`)
- Élagage des séquences avec cutadapt (`cutad_for.sh`)
- Alignement des séquences au génome de référence avec BWA-MEM `mapping.sh`
- Conversion des fichiers d'alignement SAM en fichiers BAM (`sam2bam.sh`)
- Appel de variants avec BCFtools (`samt_var.sh`)
