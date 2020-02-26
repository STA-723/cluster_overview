#!/bin/bash
#SBATCH --partition=common,statdept-low
#SBATCH --account=statdept
#SBATCH -c1

module load R/3.6.0
export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/3.6
Rscript example.R
