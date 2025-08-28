#!/bin/bash
#SBATCH --job-name=paml
#SBATCH --time=10:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --output=slurm_ind.%out
#SBATCH --output=slurm_ind.%err

module load R-bundle-Bioconductor/3.15-foss-2022a-R-4.2.1
module load PAML/4.9j-GCCcore-11.3.0

codeml demo.ctl
