#!/bin/bash
# ALWAYS specify CPU and RAM resources needed as well as walltime
#SBATCH --partition=teaching_gpu
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2G
#SBATCH --gres=gpu:1
#SBATCH --time=0-02:00:00
# job parameters
#SBATCH --output=/opt/users/gpel0001/cce3207/ssh/out/cce3207_slurm_%A_%a.out
#SBATCH --error=/opt/users/gpel0001/cce3207/ssh/err/cce3207_slurm_%A_%a.err
#SBATCH --job-name=cce3207_assignment
#SBATCH --account=undergrad
##SBATCH --reservation
# email user with progress
#SBATCH --mail-user=graham.pellegrini.22@um.edu.mt
#SBATCH --mail-type=all

# Set CUDA environment variables
export PATH=/usr/local/cuda-11.2/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-11.2/lib64:$LD_LIBRARY_PATH

# Activate virtual environment if needed
VENV_PATH="/opt/users/gpel0001/cce3207/cce3207-venv/bin/activate"
if [ -f "$VENV_PATH" ]; then
    source "$VENV_PATH"
fi

# Check if GPU is visible
echo "Checking GPU visibility with nvidia-smi"
nvidia-smi

# Define the path to the Python script
PYTHON_SCRIPT_PATH="/opt/users/gpel0001/cce3207/ssh/gpu_test.py"

# Check if the Python script exists
if [ -f "$PYTHON_SCRIPT_PATH" ]; then
    # Run the Python script
    python "$PYTHON_SCRIPT_PATH"
else
    echo "Python script not found at $PYTHON_SCRIPT_PATH"
    exit 1
fi