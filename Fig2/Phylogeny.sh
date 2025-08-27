#Perform the Alignment 
module load GUIDANCE/2.02-GCC-12.3.0
#perl $EBROOTGUIDANCE/www/Guidance/guidance.pl --program GUIDANCE --seqFile 54_species.fa  --msaProgram PRANK --seqType nuc --outDir . --genCode 1  --proc_num 40


## Check the best model
modeltest-ng -i MSA.PRANK.aln.With_Names.out -t ml -T raxml -p 40
BICmodel=`grep -A 2 "Best model according to BIC" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
AICmodel=`grep -A 2 "Best model according to AICc" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
echo $BICmodel $AICmodel

model=`grep -A 2 "Best model according to BIC" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`

#Using the PRANK alignment best model according to BIC
echo "Model $model has been selected." >> "$i".log


##performed  Raxml
raxml-ng --all -msa MSA.PRANK.aln.With_Names.out --model GTR+I+G4 --bs-trees 1000 --threads 40






