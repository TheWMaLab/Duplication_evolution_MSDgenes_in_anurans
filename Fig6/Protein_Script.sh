#Convert Dmrt1 codon sequence to protein using guidance Prank
perl $EBROOTGUIDANCE/www/Guidance/guidance.pl --program GUIDANCE --seqFile pelo_dup.fa  --msaProgram PRANK --seqType codon --outDir . --genCode 1 --bootstraps 100 --proc_num 32

#Output of protein sequence file
MSA.PRANK.PROT.aln

#reorder the names using output file
awk '{print "s/\\b" $2 "\\b/" $1 "/g"}' Seqs.Codes > sed_script.sed
sed -f sed_script.sed MSA.PRANK.PROT.aln > protein_align.txt
#make 1line protein sequence 
sed '/^>/s/$/@/' protein_align.txt |sed -z 's/\n//g'  |sed 's/>/\n>/g' |sed 's/@/\n/g'  >Oneline_protein_aln.fa
for i in `cat list` ;do grep -w -A1 "$i" Oneline_protein_aln.fa >>Reordered.protein.fa;done

#Final reordered file name
Reordered.protein.fa
