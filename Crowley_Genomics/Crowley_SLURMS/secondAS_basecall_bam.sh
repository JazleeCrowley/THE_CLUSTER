#basecall in dorado and directly make a bam file
# is balled secondAS_basecall_bam.sh

#!/bin/bash
#SBATCH -p cqls_gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gres=gpu:4
#SBATCH --cpus-per-task=16
#SBATCH --mem=64G
#SBATCH --time=7-00:00:00
#SBATCH --output=basecalling2_%j.out
#SBATCH --error=basecalling2_%j.err
#SBATCH --job-name=Chloroplast_AS2
#SBATCH --mail-user=crowleja@oregonstate.edu

set -o pipefail

# Input and output directories
POD5_DIR="/nfs7/external/Denver_Lab/JCrowley/pod5_second"
OUTPUT_DIR="/nfs7/external/Denver_Lab/JCrowley/basecalled_secondAS_bams"

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Basecall POD5 files
dorado basecaller \
    --device cuda:all \
    --recursive \
    sup \
    "$POD5_DIR" 

    #add a reference
    --reference
    

echo "Basecalling complete!"

