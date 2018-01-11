#!/usr/bin/env bash

#PBS -W group_list=bhurwitz
#PBS -q standard
#PBS -l select=1:ncpus=1:mem=1gb
#PBS -l walltime=72:00:00
#PBS -l cput=72:00:00
#PBS -M scottdaniel@email.arizona.edu
#PBS -m ea
#PBS -j oe
#PBS -N irsync
#PBS -o pbs_logs/
#PBS -e pbs_logs/

export WD=$PBS_O_WORKDIR

cd $WD
echo "Started at $(date)"

echo "Syncing..." 

irsync -r /rsgrps/bhurwitz/hurwitzlab/data/infant_dir/fastq i:/iplant/home/scottdaniel/infantGut

echo "Done at $(date)"
