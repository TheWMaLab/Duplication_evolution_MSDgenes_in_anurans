echo  "dir mdl fgspecies bgspecies om0 lnlm0 npm0 ombnfg ombnbg lnlbn npbn ombffg ombfbg lnlbf npbf" |sed 's/ /\t/g' > compiled_result.txt
grep ">" MSA.PRANK.aln.With_Names |sed 's/>//g' >speciesnames


for sp in `cat speciesnames`; do for cf in F1x4 F3x4; do for m0 in `ls "$sp"_"$cf"_M0.out`; do mdl=`grep "Codon frequency model:" $m0|awk -F ":" '{print $2}'|awk '{print $1}'`; om0=`grep "(dN/dS)" $m0|awk '{print $4}'`; lnlm0=`grep "lnL" $m0|awk '{print $4}' FS=':'|awk '{print $1}' FS=')'|awk '{print $1}'`; npm0=`grep "lnL" $m0|awk '{print $3}' FS=':'|awk '{print $1}' FS=')'|awk '{print $1}'`; done; for bfree in `ls "$sp"_"$cf"_bfree.out`; do ombffg=`grep "(dN/dS)" $bfree|awk '{print $6}'`; ombfbg=`grep "(dN/dS)" $bfree|awk '{print $5}'`; lnlbf=`grep "lnL" $bfree|awk '{print $4}' FS=':'|awk '{print $1}' FS=')'|awk '{print $1}'`; npbf=`grep "lnL" $bfree|awk '{print $3}' FS=':'|awk '{print $1}' FS=')'|awk '{print $1}'`; done; for bneutral in `ls "$sp"_"$cf"_bneutral.out`; do ombnfg=`grep "(dN/dS)" $bneutral|awk '{print $6}'`; ombnbg=`grep "(dN/dS)" $bneutral|awk '{print $5}'`; lnlbn=`grep "lnL" $bneutral|awk '{print $4}' FS=':'|awk '{print $1}' FS=')'|awk '{print $1}'`; npbn=`grep "lnL" $bneutral|awk '{print $3}' FS=':'|awk '{print $1}' FS=')'|awk '{print $1}'`; bgspecies=`grep -A1 "w ratios as labels for TreeView" $bneutral|tail -n1|sed -e 's/(/\n/g' -e 's/)/\n/g' -e 's/,/\n/g'|grep "[A-Z]"|awk '{print $1"\t"$2}'|sed 's/#/\t/g'|awk '$2!=1{print $1}'|tr '\n' ','|sed 's/,$/\n/g'`; fgspecies=`grep -A1 "w ratios as labels for TreeView" $bneutral|tail -n1|sed -e 's/(/\n/g' -e 's/)/\n/g' -e 's/,/\n/g'|grep "[A-Z]"|awk '{print $1"\t"$2}'|sed 's/#/\t/g'|awk '$2==1{print $1}'`; done; echo "$dir $mdl $fgspecies $bgspecies $om0 $lnlm0 $npm0 $ombnfg $ombnbg $lnlbn $npbn $ombffg $ombfbg $lnlbf $npbf" |sed 's/ /\t/g'  >> compiled_result.txt; done; done


module load R
R

a=read.table("compiled_result.txt",header=T,sep='\t')
a$pvalbfmo=pchisq(2*(a$lnlbf-a$lnlm0),df=1,lower.tail=F)
a$pvalbfbn=pchisq(2*(a$lnlbf-a$lnlbn),df=1,lower.tail=F)
a$inference[a$ombffg > a$ombfbg & a$pvalbfmo < 0.05] <- "relaxed_selection"
a$inference[a$ombffg < a$ombfbg & a$pvalbfmo < 0.05] <- "intensification_of_purifying_selection"
a$inference[a$ombffg > a$ombfbg & a$pvalbfbn > 0.05] <- "relaxed_selection"
a$inference[a$ombffg > 1 & a$pvalbfbn < 0.05] <- "positive_selection"
a$inference[a$pvalbfmo > 0.05] <- "nonsignificant"
write.table(a,file="result_with_inference.txt",quote=F,row.names=F,sep="\t")

