#summarizing the raw data from my first adaptive sequencing run on ficus religiosa

  GNU nano 5.6.1                  firstAS_summary.sh                            
#! /bin/bash
#SBATCH -J first_summary #first_summary (optional)
#SBATCH -o firstAS_summary.out   # File to which standard out will be written
#SBATCH -e first_summary_standarderr.err   # File to which standard err will be>
#SBATCH -N 1
#SBATCH -n 8
#SBATCH -p all.q

for sample in `ls Denver_Lab/JCrowley/Demultiplexed_FR`
do
dir="Denver_Lab/JCrowley/Demultiplexed_FR" # same path as above
base=$(basename $sample ".bam") # establishing the naming convention

samtools stat ${dir}/${base}.bam > ${dir}/${base}.stats.txt
done

# samtools stat: provide the input bam
# output is a txt file, per each bam

# Line 9: this is the path to your bams, outputted from minimap or similar

# samtools stat: provide the input bam
# output is a txt file, per each bam

# Line 9: this is the path to your bams, outputted from minimap or similar
