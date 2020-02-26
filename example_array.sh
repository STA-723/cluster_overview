#!/bin/bash
#SBATCH -J example2
#SBATCH --partition=statdept,herringlab-low,volfovskylab-low,common
#SBATCH --account=sta723-s20
#SBATCH --output=results/%x_%a.out
#SBATCH --error=results/%x_%a.err
#SBATCH --array=1-5
#SBATCH --cpus-per-task 2 
#SBATCH --mem=4G

Export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/3.6
module load R
Rscript array.R
