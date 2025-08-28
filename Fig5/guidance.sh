#Extract Dmrt1 gene sequences, including complete duplicated copies, from the genomes of 54 species.
#Perform alignment
perl $EBROOTGUIDANCE/www/Guidance/guidance.pl --program GUIDANCE --seqFile DMRT1.FA  --msaProgram PRANK --seqType codon --outDir . --genCode 1 --bootstraps 100 --proc_num 32

#MODELTEST
modeltest-ng -i MSA.PRANK.aln.With_Names -t ml -T raxml -p 32
BICmodel=`grep -A 2 "Best model according to BIC" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
AICmodel=`grep -A 2 "Best model according to AICc" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
echo $BICmodel $AICmodel
model=`grep -A 2 "Best model according to BIC" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
#Using the PRANK alignment best model according to BIC
echo "Model $model has been selected." >> "$i".log

#RAXML
raxml-ng --all -msa MSA.PRANK.aln.With_Names --model HKY+I+G4 --bs-trees 1000 --threads 2






