#!/bin/bash
#SBATCH -J miss_more
#SBATCH --partition=volfovskylab,statdept,herringlab-low,common
#SBATCH --account=volfovskylab
#SBATCH --output=missrecov_more/%x_%a.out
#SBATCH --error=missrecov_more/%x_%a.err
#SBATCH --array=7-9
#SBATCH --cpus-per-task 2 
#SBATCH --mem=40G
//#SBATCH --mem-per-cpu=4G

singularity exec graphMatPlot.simg Rscript server_missrecov_more.R
 

