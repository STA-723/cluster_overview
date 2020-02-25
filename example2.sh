#!/bin/bash
#SBATCH -J example2
#SBATCH --partition=statdept,herringlab-low,volfovskylab-low,common
#SBATCH --account=statdept
#SBATCH --output=example2/%x_%a.out
#SBATCH --error=example2/%x_%a.err
#SBATCH --array=1-5
#SBATCH --cpus-per-task 2 
#SBATCH --mem=4G

Export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/3.6

module load R
Rscript -e "library('beepr'); taskID = Sys.getenv('SLURM_ARRAY_TASK_ID'); cat('Hello world! Packge loaded correctly. Task ID =',taskID)"
