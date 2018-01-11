#!/usr/bin/env bash

#PBS -W group_list=bhurwitz
#PBS -q standard
#PBS -l select=1:ncpus=1:mem=1gb
#PBS -l walltime=2:00:00
#PBS -l cput=2:00:00
#PBS -M scottdaniel@email.arizona.edu
#PBS -m ea
#PBS -j oe
#PBS -N combineReadfiles
#PBS -o pbs_logs/
#PBS -e pbs_logs/

cd $PBS_O_WORKDIR

echo "Bash script started at $(date)"

./combineReadFiles.py /rsgrps/bhurwitz/hurwitzlab/data/infant_t1/fastq $PBS_O_WORKDIR/fastq

echo "Bash script ended at $(date)"
