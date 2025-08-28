#Dm region phylogeny for all Dmrts and duplicated Dmrt1 nucleotide sequences######

#perform alignment
perl $EBROOTGUIDANCE/www/Guidance/guidance.pl --program GUIDANCE --seqFile dm_region_all_dmrts.fa  --msaProgram PRANK --seqType nuc --outDir . --genCode 1 --bootstraps 1000 --proc_num 20

#model selection
modeltest-ng -i MSA.PRANK.aln.With_Names -t ml -T raxml -p 20
BICmodel=`grep -A 2 "Best model according to BIC" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
AICmodel=`grep -A 2 "Best model according to AICc" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
echo $BICmodel $AICmodel
model=`grep -A 2 "Best model according to BIC" MSA.PRANK.aln.With_Names.out|tail -1|awk '{print $2}'`
#Using the PRANK alignment best model according to BIC
echo "Model $model has been selected." >> "$i".log
#run raxml
raxml-ng --all -msa MSA.PRANK.aln.With_Names --model GTR+I+G4 --bs-trees 1000 --threads 1







