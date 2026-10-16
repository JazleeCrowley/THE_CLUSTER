GNU nano 5.6.1                   basecalling1.sh                    Modified  
#!/bin/bash
#SBATCH -p cqls_gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gres=gpu:4                 # request 4 GPUs on this node
#SBATCH --cpus-per-task=16           # 4 CPUs per GPU
#SBATCH --mem=64G
#SBATCH --time=7-00:00:00
#SBATCH --output=FR_AS_output.out
#SBATCH --job-name=Basecalls
#SBATCH --mail-user=crowleja@oregonstate.edu

cd /nfs7/external/Denver_Lab

dorado basecaller --device cuda:all --recursive --emit-fastq --kit-name QK-NBD114-24 sup /nfs7/external/Denver_Lab/pod5_files/AS_First/FR_AS_pod5 > FR_AS_output.fastq
