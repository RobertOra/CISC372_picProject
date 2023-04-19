#!/bin/bash -l
#SBATCH --job-name=image
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --output image-job_%j.out
#SBATCH --error image-job_%j.err
#SBATCH --partition=standard

# Bind your OpenMP threads
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Start my application
srun pthreads pic1.jpg edge
srun openmp pic1.jpg edge
