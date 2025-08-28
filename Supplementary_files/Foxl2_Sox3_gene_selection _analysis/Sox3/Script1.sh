#!/bin/bash
#SBATCH --job-name=Ind
#SBATCH --time=10:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --output=slurm_ind.%out
#SBATCH --output=slurm_ind.%err



##genome indexing
#module load BWA
#module load SAMtools

#blastn alignment process
#module load  RMBlast

#module load GUIDANCE/2.02-GCC-12.3.0

#perl $EBROOTGUIDANCE/www/Guidance/guidance.pl --program GUIDANCE --seqFile sox3_all_54.fa --msaProgram PRANK --seqType codon --outDir . --genCode 1 --bootstraps 1000 --proc_num 4


module load RAxML-NG
module load ModelTest-NG

#modeltest-ng -i MSA.PRANK.aln.With_Names -t ml -T raxml -p 4


#BICmodel=`grep -A 2 "Best model according to BIC" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
#AICmodel=`grep -A 2 "Best model according to AICc" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
#echo $BICmodel $AICmodel



#model=`grep -A 2 "Best model according to BIC" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
#Using the PRANK alignment best model according to BIC
#echo "Model $model has been selected." >> "$i".log

raxml-ng --all -msa MSA.PRANK.aln.With_Names --model GTR+I+G4 --bs-trees 1000 --threads 1







