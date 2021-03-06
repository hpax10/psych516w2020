#!/bin/bash

#SBATCH --time=00:30:00 # walltime
#SBATCH --ntasks=1 # number of processor cores (i.e. tasks)
#SBATCH --nodes=1 # number of nodes
#SBATCH --mem-per-cpu=16384M # memory per CPU core

FSLDIR=/fslhome/hpax10/research_bin/FSL
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh

cd ~/516/data/derivative/tbss
tbss_3_postreg -S
