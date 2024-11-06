#!/bin/bash
# ALWAYS specify CPU and RAM resources needed as well as walltime
#SBATCH --partition=teaching_gpu
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2G
#SBATCH --time=0-00:01:00
# job parameters
#SBATCH --output=/opt/users/username/slurm_outputs/cce3207_slurm_%A_%a.out
#SBATCH --error=/opt/users/username/slurm_outputs/cce3207_slurm_%A_%a.err
#SBATCH --job-name=cce3207_simpleCNN
#SBATCH --reservation=cce3207
#SBATCH --account=undergrad
# email user with progress
#SBATCH --mail-user=username@um.edu.mt
#SBATCH --mail-type=all
#
VENV=/opt/users/username/Code/.venv_cce3207_2
if [ -d $VENV ]; then
   echo Virtual environment found, activating
   VENV+=/bin/activate
   source "$VENV"
else
   echo Virtual environment not found!
fi

jupyter nbconvert --execute --to notebook --output "example_script" --output-dir "/opt/users/username/Code/CCE3207 Assignment/" "/opt/users/username/Code/CCE3207 Assignment/example_script_output.ipynb"
